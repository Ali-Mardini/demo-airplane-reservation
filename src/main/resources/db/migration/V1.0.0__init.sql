CREATE TABLE IF NOT EXISTS customers(
    customerId UUID PRIMARY KEY NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(100) NOT NULL,
    mobile VARCHAR(15) NOT NULL,
    nationality VARCHAR(20) NOT NULL,
    address VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS airports(
    airportId UUID PRIMARY KEY NOT NULL,
    airportName VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    country VARCHAR(150) NOT NULL,
    status VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS flights(
    flightId UUID PRIMARY KEY NOT NULL,
    flightCode VARCHAR(50) NOT NULL,
    type VARCHAR(50) NOT NULL,
    origin VARCHAR(100) NOT NULL,
    destination VARCHAR(100) NOT NULL,
    manufacture VARCHAR(150) NOT NULL,
    maxCapacity INT NOT NULL,
    etd Date NOT NULL,
    eta Date NOT NULL,
    atd Date NOT NULL,
    ata Date NOT NULL,
    status VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS reservations(
    reservationId UUID PRIMARY KEY NOT NULL,
    seat VARCHAR(4) NOT NULL,
    reservationDate DATE NOT NULL,
    class VARCHAR(50) NOT NULL,
    type VARCHAR(50) NOT NULL,
    extra VARCHAR(255),
    reservationState VARCHAR(50) NOT NULL,
    customerId UUID NOT NULL,
    airportId UUID NOT NULL,
    flightId UUID NOT NULL,
    FOREIGN KEY (customerId) REFERENCES customers(customerId),
    FOREIGN KEY (airportId) REFERENCES airports(airportId),
    FOREIGN KEY (flightId) REFERENCES flights(flightId)
);


-- airport seeds

-- INSERT QUERY NO: 1
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'995227ac-b21d-45d3-ac82-41b381386cb2', 'RAI', 'Praia', 'Cape Verde', 'Active'
);

-- INSERT QUERY NO: 2
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a887c1ef-5eb0-4893-933c-5fc2ed2ff5bb', 'CPT', 'Cape Town', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 3
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'186a8570-01a7-4406-8e61-3ec4d09811d1', 'JNB', 'Johannesburg - Johannesburg Int', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 4
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'89b24b8b-c157-4dc7-9d82-3713c3b5f5a2', 'ALG', 'Algiers', 'Algeria', 'Active'
);

-- INSERT QUERY NO: 5
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'db541316-f241-410b-8fab-6ccf6bfcbca6', 'AAE', 'Annaba', 'Algeria', 'Active'
);

-- INSERT QUERY NO: 6
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'304430a7-c529-4ee2-aca7-b29f7ae8ff4a', 'CZL', 'Constantine', 'Algeria', 'Active'
);

-- INSERT QUERY NO: 7
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8e5082fa-bd92-4152-a0a5-32faab4c7d03', 'ORN', 'Oran (Ouahran)', 'Algeria', 'Active'
);

-- INSERT QUERY NO: 8
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'aff4aada-fb3a-4e5d-b7b4-291c38d431bb', 'BUG', 'Bengueka', 'Angola', 'Active'
);

-- INSERT QUERY NO: 9
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7cd0b85a-157a-47c1-b99d-4d71441a8a27', 'CAB', 'Cabinda', 'Angola', 'Active'
);

-- INSERT QUERY NO: 10
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7c9e117e-03d2-4ef4-adb4-21f9ab288e45', 'LAD', 'Luanda - 4 de Fevereiro', 'Angola', 'Active'
);

-- INSERT QUERY NO: 11
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'46c202e6-2105-4cac-998f-0e75d50824ba', 'COO', 'Cotonou', 'Benin', 'Active'
);

-- INSERT QUERY NO: 12
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'53593661-32ab-459c-b32d-49acab512ae1', 'FRW', 'Francistown', 'Botswana', 'Active'
);

-- INSERT QUERY NO: 13
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0ad5d049-d43c-4e9d-ba1d-124d5aa681dd', 'GBE', 'Gaborone', 'Botswana', 'Active'
);

-- INSERT QUERY NO: 14
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e13a5872-4b67-48fd-bbb4-4cc2ad298328', 'MUB', 'Maun', 'Botswana', 'Active'
);

-- INSERT QUERY NO: 15
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6c36de43-0dd4-4180-845d-b618e023214c', 'PKW', 'Selibi Phikwe', 'Botswana', 'Active'
);

-- INSERT QUERY NO: 16
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fc903bf7-1ce8-41c5-ad7b-7c7a2658734e', 'BOY', 'Bobo/Dioulasso', 'Burkina Faso', 'Active'
);

-- INSERT QUERY NO: 17
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f50f5e4c-3065-46de-8c51-b7c736507151', 'OUA', 'Ouagadougou', 'Burkina Faso', 'Active'
);

-- INSERT QUERY NO: 18
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a3faf39e-6bf8-42b6-85e1-f9dd206b68a7', 'SID', 'Sal', 'Cape Verde', 'Active'
);

-- INSERT QUERY NO: 19
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'84ea3d02-a056-420f-97b0-d8158c2f9f5b', 'BBY', 'Bambari', 'Central African Republic', 'Active'
);

-- INSERT QUERY NO: 20
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8add061f-75f7-484e-ae2d-d0964db1584b', 'BGU', 'Bangassou', 'Central African Republic', 'Active'
);

-- INSERT QUERY NO: 21
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'caa60dea-1407-41e9-8add-3c875a77080c', 'BGF', 'Bangui', 'Central African Republic', 'Active'
);

-- INSERT QUERY NO: 22
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ab46c60c-0846-4a7f-853c-06f8af0a3270', 'BBT', 'Berberati', 'Central African Republic', 'Active'
);

-- INSERT QUERY NO: 23
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7706dfb0-f7e1-4f90-8fa8-e56d27833a89', 'IRO', 'Biraro', 'Central African Republic', 'Active'
);

-- INSERT QUERY NO: 24
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5af8d50f-ef3e-4531-9326-614ea3e220dc', 'BIV', 'Bria', 'Central African Republic', 'Active'
);

-- INSERT QUERY NO: 25
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2d2abc0b-6eb7-4afb-a98b-0890968f8014', 'CRF', 'Carnot', 'Central African Republic', 'Active'
);

-- INSERT QUERY NO: 26
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'63666baf-e4fa-4f0f-b55c-946561af2991', 'ODA', 'Ouadda', 'Central African Republic', 'Active'
);

-- INSERT QUERY NO: 27
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'422c2f2e-4c05-4be6-ab8e-0e51d52a5600', 'AEH', 'Abeche', 'Chad', 'Active'
);

-- INSERT QUERY NO: 28
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'74e9cd7a-fcf7-4f29-b573-e032dbef7d82', 'MQQ', 'Moundou', 'Chad', 'Active'
);

-- INSERT QUERY NO: 29
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd5ad297c-c7d6-40b2-a57d-a09f415eef4e', 'NDJ', 'Djamena', 'Chad', 'Active'
);

-- INSERT QUERY NO: 30
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'30575e45-829a-4076-a613-1d932f34185b', 'AJN', 'Anjouan', 'Comoros (Comores)', 'Active'
);

-- INSERT QUERY NO: 31
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'29d0c81a-1d26-42b9-a800-5d34774ba4e2', 'HAH', 'Moroni - Prince Said Ibrahim', 'Comoros (Comores)', 'Active'
);

-- INSERT QUERY NO: 32
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1ae24731-8f86-496e-b8b5-265c7e4d5e25', 'YVA', 'Moroni - Iconi', 'Comoros (Comores)', 'Active'
);

-- INSERT QUERY NO: 33
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'14267536-eb08-416e-ab93-bc8e2eda092f', 'BZV', 'Brazzaville', 'Congo', 'Active'
);

-- INSERT QUERY NO: 34
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'79a31869-3365-43ec-9a01-900e00679955', 'PNR', 'Pointe Noire', 'Congo', 'Active'
);

-- INSERT QUERY NO: 35
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6bcccf29-390f-4f27-b08d-b794b5022889', 'FIH', 'Kinshasa - Djili', 'Congo (Zaire)', 'Active'
);

-- INSERT QUERY NO: 36
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8c84c63c-4db9-474a-a960-4a3aef91265a', 'LIQ', 'Lisala', '"Congo', ' Democratic Republic of The"'
);

-- INSERT QUERY NO: 37
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fe483067-abc9-48d9-98c1-0f5610e1da65', 'ASK', 'Yamoussoukro', 'Côte Ivoire (Ivory Coast)', 'Active'
);

-- INSERT QUERY NO: 38
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ef4e41ca-f51f-4c40-bf38-4ebd74a4c9bf', 'JIB', 'Djibouti', 'Djibouti', 'Active'
);

-- INSERT QUERY NO: 39
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bb1c9341-117f-46b2-b344-f037b609a4c3', 'AUE', 'Abu Rudeis', 'Egypt', 'Active'
);

-- INSERT QUERY NO: 40
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8e5a64cc-fa58-405b-bb10-d8340793131f', 'ABS', 'Abu Simbel', 'Egypt', 'Active'
);

-- INSERT QUERY NO: 41
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0e0ac869-5eb5-4b6a-9b7e-cb8fcd0e4160', 'AAC', 'Al Arish', 'Egypt', 'Active'
);

-- INSERT QUERY NO: 42
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'24882cf4-bf14-4da6-9f4b-e5bcf0c5e8c9', 'AAC', 'Al Arish', 'Egypt', 'Active'
);

-- INSERT QUERY NO: 43
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2674a7f4-db87-4417-ba14-1310c0c481d1', 'ALY', '"Alexandria', ' El Nhouza Airport"', 'Egypt'
);

-- INSERT QUERY NO: 44
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c8e1e067-85e5-4927-927d-defaba861733', 'ATZ', 'Assiut', 'Egypt', 'Active'
);

-- INSERT QUERY NO: 45
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7b57e2ac-3ef3-4e1d-8b0b-706492ea6c88', 'ASW', '"Aswan', ' Daraw Airport"', 'Egypt'
);

-- INSERT QUERY NO: 46
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9cf52f4e-8d41-4e81-ae25-ebcf8ab8c556', 'HBH', 'Borg El Arab Airport', 'Egypt', 'Active'
);

-- INSERT QUERY NO: 47
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ba896d03-230f-471b-819c-f98aa06e4405', 'CAI', 'Cairo Int', 'Egypt', 'Active'
);

-- INSERT QUERY NO: 48
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ef89960e-7d39-4e06-b2cf-d9f3519413c8', 'EMY', 'El Minya', 'Egypt', 'Active'
);

-- INSERT QUERY NO: 49
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e73e650d-1f72-4270-9641-b0104aa5c4d1', 'HRG', 'Hurghada Int', 'Egypt', 'Active'
);

-- INSERT QUERY NO: 50
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'613b4a54-1fb6-4430-90dc-b13e790fa04f', 'UVL', 'Kharga - New Valley', 'Egypt', 'Active'
);

-- INSERT QUERY NO: 51
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f1769837-759a-4459-9c35-9b680b9df529', 'LXR', 'Luxor', 'Egypt', 'Active'
);

-- INSERT QUERY NO: 52
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'91cc8d77-f2cf-4aec-a193-b8d35c271356', 'MUH', 'Marsa Matrah (Marsa Matruh)', 'Egypt', 'Active'
);

-- INSERT QUERY NO: 53
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'48167d1d-bbcc-4157-9ebc-d2d37cab656e', 'UVL', 'New Valley - Kharga', 'Egypt', 'Active'
);

-- INSERT QUERY NO: 54
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'979d3c2b-0c7d-40e7-b2ae-f9fc1eea05c0', 'PSD', 'Port Said', 'Egypt', 'Active'
);

-- INSERT QUERY NO: 55
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'67565eb3-a3cf-49e1-99d7-4be021d1adb6', 'SKV', 'Santa Katarina - Mount Sinai', 'Egypt', 'Active'
);

-- INSERT QUERY NO: 56
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'47ebeba3-0c38-449f-9767-c4fd731feeec', 'SSH', 'Sharm El Sheikh', 'Egypt', 'Active'
);

-- INSERT QUERY NO: 57
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'edb00d6c-3ff6-4bc1-b3c9-8db525bc3f75', 'SEW', 'Siwa', 'Egypt', 'Active'
);

-- INSERT QUERY NO: 58
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'cbc0a7de-194c-4b47-ad67-0ad3c3a0989d', 'SSG', 'Malabo', 'Equatorial Guinea', 'Active'
);

-- INSERT QUERY NO: 59
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b00d0dde-3c0a-4013-a561-95d613df6936', 'ADD', 'Addis Ababa', 'Ethiopia', 'Active'
);

-- INSERT QUERY NO: 60
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1d9df6d9-47d4-4ff4-a411-2ea9e25e5dbd', 'LBQ', 'Lambarene', 'Gabon', 'Active'
);

-- INSERT QUERY NO: 61
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6903ce1b-b65c-4fbe-86d1-0306f5afa530', 'LBV', 'Libreville', 'Gabon', 'Active'
);

-- INSERT QUERY NO: 62
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e0f9d14f-9625-427b-857f-f4e83ff66341', 'MFF', 'Moanda', 'Gabon', 'Active'
);

-- INSERT QUERY NO: 63
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e9d1b9eb-ffbb-47b0-b57c-10487fed6952', 'MJL', 'Mouila', 'Gabon', 'Active'
);

-- INSERT QUERY NO: 64
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5f711ebf-d183-4615-8c88-44e7f00e5e8a', 'MVB', 'Mvengue', 'Gabon', 'Active'
);

-- INSERT QUERY NO: 65
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd067eb96-1102-43d9-86e1-1907945f03bd', 'POG', 'Port Gentil', 'Gabon', 'Active'
);

-- INSERT QUERY NO: 66
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9c33567a-e10d-4462-ad3c-b5093656e27b', 'UVE', 'Oyem', 'Gabon/Loyautte', 'Active'
);

-- INSERT QUERY NO: 67
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'de4f8f85-6136-4fb0-8352-73dc675f0e90', 'BJL', 'Banjul', 'Gambia', 'Active'
);

-- INSERT QUERY NO: 68
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7b825ea8-40e3-490b-957f-f277cb79fb5a', 'ACC', 'Accra', 'Ghana', 'Active'
);

-- INSERT QUERY NO: 69
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ae2a2a96-4cfc-4c90-8edc-7e5003a64e60', 'ABJ', 'Abidjan', 'Ivory Coast', 'Active'
);

-- INSERT QUERY NO: 70
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'abcc03ec-aba2-4f51-ab16-96a890f94d79', 'BYK', 'Bouake', 'Ivory Coast', 'Active'
);

-- INSERT QUERY NO: 71
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'08fc8d7d-3534-4c8a-adaf-98652adcdd7f', 'DJO', 'Daloa', 'Ivory Coast', 'Active'
);

-- INSERT QUERY NO: 72
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a48ad02e-e785-47ac-bea6-4284e66bffd8', 'HGO', 'Korhogo', 'Ivory Coast', 'Active'
);

-- INSERT QUERY NO: 73
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd772c18c-1e78-4bca-9fb6-e38e90398579', 'MJC', 'Man', 'Ivory Coast', 'Active'
);

-- INSERT QUERY NO: 74
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7c6e9587-2047-4d6d-a365-82234d889ef9', 'SPY', 'San Pedro', 'Ivory Coast', 'Active'
);

-- INSERT QUERY NO: 75
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b4d00a7f-2172-4ccb-af08-fc26d6811231', 'ZSS', 'Sassandra', 'Ivory Coast', 'Active'
);

-- INSERT QUERY NO: 76
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7e083c08-80ba-459b-99b3-9a555e4e563d', 'MYD', 'Malindi', 'Kenya', 'Active'
);

-- INSERT QUERY NO: 77
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f082e6fc-e80b-423d-baf4-4410b036a070', 'MBA', 'Mombasa - Moi International', 'Kenya', 'Active'
);

-- INSERT QUERY NO: 78
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1cac08ec-316a-48da-8a56-353224d3625e', 'NBO', 'Nairobi', 'Kenya', 'Active'
);

-- INSERT QUERY NO: 79
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'45698a0e-d941-4ebe-b9de-e6e2f9ab10e0', 'MSU', 'Maseru - Moshoeshoe Int', 'Lesotho', 'Active'
);

-- INSERT QUERY NO: 80
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9b7f9858-63ed-450b-bc4f-9bd4ce409f35', 'MLW', 'Monrovia', 'Liberia', 'Active'
);

-- INSERT QUERY NO: 81
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd004ad56-5026-4983-b09b-1ab557acd4c1', 'ROB', 'Monrovia - Roberts Int', 'Liberia', 'Active'
);

-- INSERT QUERY NO: 82
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6bcfadac-2725-41d9-9f48-46aa0ecf35e9', 'BEN', 'Bengasi', 'Libya', 'Active'
);

-- INSERT QUERY NO: 83
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bab7b34e-409d-415f-9ef4-9abeffc5169a', 'SEB', 'Sehba', 'Libya', 'Active'
);

-- INSERT QUERY NO: 84
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ac3dba87-881c-4b19-b6fa-16b753927cfa', 'TIP', 'Tripoli - Tripoli Int', 'Libya', 'Active'
);

-- INSERT QUERY NO: 85
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fd2fdfa2-6dec-4096-835b-e78d94c725fd', 'TNR', 'Antananarivo (Tanannarive)', 'Madagascar', 'Active'
);

-- INSERT QUERY NO: 86
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fb55fcc0-6e3d-4064-9690-e604553842db', 'MJN', 'Majunga', 'Madagascar', 'Active'
);

-- INSERT QUERY NO: 87
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'10e97c75-29ea-4776-955c-6f18899f9294', 'BLZ', 'Blantyre', 'Malawi', 'Active'
);

-- INSERT QUERY NO: 88
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'97ab2fea-7db0-4680-8992-2fbb55e8b1c1', 'LLW', 'Lilongwe - Lilongwe International', 'Malawi', 'Active'
);

-- INSERT QUERY NO: 89
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd2103adb-9963-4258-813b-7282848247dc', 'BKO', 'Bamako', 'Mali', 'Active'
);

-- INSERT QUERY NO: 90
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'61cf0a96-27a2-4d06-a826-9f21c938b618', 'NDB', 'Nouadhibou', 'Mauritania', 'Active'
);

-- INSERT QUERY NO: 91
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2a5483e3-19c7-4c37-bd85-b513a48bd4d5', 'NKC', 'Nouakchott', 'Mauritania', 'Active'
);

-- INSERT QUERY NO: 92
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'93446727-f42a-45d8-84f0-da57fcda5638', 'OUZ', 'Zouerate', 'Mauritania', 'Active'
);

-- INSERT QUERY NO: 93
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4beffedf-dba2-4bfb-89e6-a77ab8b4b60a', 'DZA', 'Dzaoudzi', 'Mayotte', 'Active'
);

-- INSERT QUERY NO: 94
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1af2bec5-e980-48db-b951-7601132a8f37', 'AGA', 'Agadir', 'Morocco', 'Active'
);

-- INSERT QUERY NO: 95
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'590cfe3e-4f4c-4ae4-a015-09b45beaee1c', 'AHU', 'Al Hoceima', 'Morocco', 'Active'
);

-- INSERT QUERY NO: 96
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd3ad7f5a-1929-4938-b36b-972bbd5d265f', 'CAS', 'Casablanca', 'Morocco', 'Active'
);

-- INSERT QUERY NO: 97
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'954c1d25-24fa-47c6-a01f-9dcbadaf2160', 'CMN', '"Casablanca', ' Mohamed V"', 'Morocco'
);

-- INSERT QUERY NO: 98
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c075f072-c866-4480-8582-b16dc78bc0ad', 'FEZ', 'Fes', 'Morocco', 'Active'
);

-- INSERT QUERY NO: 99
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9e1305b7-a9ff-4cf9-b5e0-18b92c2ae772', 'RAK', 'Marrakech - Menara', 'Morocco', 'Active'
);

-- INSERT QUERY NO: 100
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0e2bdcf0-5f26-4381-8f81-953b6849a751', 'OZZ', 'Ouarzazate', 'Morocco', 'Active'
);

-- INSERT QUERY NO: 101
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'67e4fde7-b672-4ace-9320-0d816328a0f7', 'OUD', 'Oujda', 'Morocco', 'Active'
);

-- INSERT QUERY NO: 102
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4aefedb1-e79a-4d17-a239-67f6f418ffff', 'RBA', 'Rabat - Sale', 'Morocco', 'Active'
);

-- INSERT QUERY NO: 103
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'90e90617-ca7d-4e29-bfff-351bb2457ef5', 'TNG', 'Tanger - Boukhalef', 'Morocco', 'Active'
);

-- INSERT QUERY NO: 104
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'24152795-d91c-40e5-b5cb-a5b6f83a3e12', 'BEW', 'Beira', 'Mozambique', 'Active'
);

-- INSERT QUERY NO: 105
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a7716db9-1bf5-4d23-abd2-535b51a10995', 'MPM', 'Maputo - Maputo International', 'Mozambique', 'Active'
);

-- INSERT QUERY NO: 106
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'58d428a9-4a29-4238-905c-4e8e1d4c86dc', 'MPA', 'Katima Mulilo/Mpacha', 'Namibia', 'Active'
);

-- INSERT QUERY NO: 107
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'16467329-5915-4553-978f-8c8626776c71', 'KMP', 'Keetmanshoop', 'Namibia', 'Active'
);

-- INSERT QUERY NO: 108
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'74997d3c-1304-4365-98b4-e588b0037390', 'LUD', 'Luederitz', 'Namibia', 'Active'
);

-- INSERT QUERY NO: 109
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a618c0f3-a231-40fe-a9d1-be33b11b43a7', 'OKU', 'Mokuti', 'Namibia', 'Active'
);

-- INSERT QUERY NO: 110
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4d50d294-cdd5-4343-8a75-f96f0421392c', 'OND', 'Ondangwa', 'Namibia', 'Active'
);

-- INSERT QUERY NO: 111
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'37432a80-e77a-4877-9b28-c2e9c97975a4', 'OMD', 'Oranjemund', 'Namibia', 'Active'
);

-- INSERT QUERY NO: 112
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'12403809-15b6-45b8-b456-94c6c39546a8', 'NDU', 'Rundu', 'Namibia', 'Active'
);

-- INSERT QUERY NO: 113
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9520b39c-7bb9-4e8e-b446-7b11fc69b8dc', 'SWP', 'Swakopmund', 'Namibia', 'Active'
);

-- INSERT QUERY NO: 114
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd1f2b3d2-f120-45d5-a0c4-6e882844b895', 'TSB', 'Tsumeb', 'Namibia', 'Active'
);

-- INSERT QUERY NO: 115
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0367b3c2-cca4-47ca-937c-da6ac1a0869c', 'ERS', 'Windhoek - Eros', 'Namibia', 'Active'
);

-- INSERT QUERY NO: 116
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5c011594-7ea2-4d47-b5ee-03eb2da34732', 'WDH', 'Windhoek - Hosea Kutako Int', 'Namibia', 'Active'
);

-- INSERT QUERY NO: 117
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'acf10fd9-0711-4312-9ffd-ffdfe2a0fead', 'AJY', 'Agades', 'Niger', 'Active'
);

-- INSERT QUERY NO: 118
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'cbda8b16-86dc-451f-99ee-3ceebf8ac2b6', 'RLT', 'Arlit', 'Niger', 'Active'
);

-- INSERT QUERY NO: 119
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'50b051b4-b186-4f14-a84c-b2e781496383', 'MFQ', 'Maradi', 'Niger', 'Active'
);

-- INSERT QUERY NO: 120
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8502b6cf-6868-4eca-bcfb-267310f962b2', 'NIM', 'Niamey', 'Niger', 'Active'
);

-- INSERT QUERY NO: 121
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bb329653-9989-40e8-abf4-12acd1ab579a', 'ZND', 'Zinder', 'Niger', 'Active'
);

-- INSERT QUERY NO: 122
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1a85f1d1-eb78-45a0-9f8b-71aeb0333747', 'ABV', 'Abuja International', 'Nigeria', 'Active'
);

-- INSERT QUERY NO: 123
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'599a3ba1-c129-4016-ac7b-2b269d0f1cf3', 'KAN', 'Kano', 'Nigeria', 'Active'
);

-- INSERT QUERY NO: 124
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'836eacef-02f0-45e9-946c-41631bb79291', 'LOS', 'Lagos - Murtala Muhammed', 'Nigeria', 'Active'
);

-- INSERT QUERY NO: 125
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a674879a-044b-48be-a867-4558ad28b1e0', 'PHC', 'Port Harcourt', 'Nigeria', 'Active'
);

-- INSERT QUERY NO: 126
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'95e82174-0167-4917-8d2e-1ea22fb06244', 'RUN', 'Saint Denis de la Reunion', 'Reunion', 'Active'
);

-- INSERT QUERY NO: 127
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dbf14434-1760-49bc-8ebc-77ee6eee6a16', 'KGL', 'Kigali - Gregoire Kayibanda', 'Rwanda', 'Active'
);

-- INSERT QUERY NO: 128
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'893e5251-2b89-43b6-8391-5a2d7c19301b', 'TMS', 'Sao Tome', 'Sao Tome & Principe', 'Active'
);

-- INSERT QUERY NO: 129
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'38fd6d14-7d6b-4538-8610-c5623dd60931', 'DKR', 'Dakar', 'Senegal', 'Active'
);

-- INSERT QUERY NO: 130
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'985c03b5-65bb-48a7-bbab-e984f5dd8afe', 'SEZ', 'Mahe - Seychelles Int', 'Seychelles', 'Active'
);

-- INSERT QUERY NO: 131
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8e16747a-3d6b-4c29-9ab4-380e112242f0', 'FNA', 'Freetown', 'Sierra Leone', 'Active'
);

-- INSERT QUERY NO: 132
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b23dd6dd-8b29-4e58-9d0d-9a0dd54c6d8d', 'MGQ', 'Mogadischu', 'Somalia', 'Active'
);

-- INSERT QUERY NO: 133
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5457432b-4da1-4825-ac0a-d324dde0a668', 'AGZ', 'Aggeneys', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 134
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'17f8f64e-15f3-415e-be30-c873b3889042', 'ALJ', 'Alexander Bay', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 135
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'299484ca-4857-474b-80f7-423c274a57e7', 'ADY', 'Alldays', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 136
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5999d1be-3664-4a2d-ae8f-7ec27b30b1cc', 'BFN', 'Bloemfontein', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 137
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3d0c33df-a7d7-4e45-948e-11c4ebf8ba0c', 'DUR', 'Durban', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 138
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4c731126-10f9-47bb-90f0-29940bcaf870', 'ELS', 'East London', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 139
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ef575f3f-5df4-4ed9-b204-0afaa1ecbc44', 'ELL', 'Ellisras', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 140
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dfcc4c60-5729-4ed2-a513-0a0fe4c14373', 'GRJ', 'George', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 141
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'898d054a-bbea-4b81-b4d4-1752ed84c34b', 'KIM', 'Kimberley', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 142
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'404605c9-c5fa-4cfc-ac66-895387e55d0b', 'KLZ', 'Kleinsee', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 143
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'86869429-45ac-4cc1-8992-5ac273e01925', 'HLA', 'Lanseria', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 144
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'83197723-b987-46e0-b734-06fcc2564558', 'LUJ', 'Lusisiki', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 145
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'623f4180-cfb1-4706-b995-60bddd005ef5', 'MGH', 'Margate', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 146
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'157a1930-0926-4144-8ce2-cc55c3cdd72e', 'MEZ', 'Messina', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 147
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ad4f6046-9b17-48b5-9c17-7df52eccf569', 'MBM', 'Mkambati', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 148
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd9cfc7c1-416a-4ed7-999f-4fcc45013066', 'MZF', 'Mzamba', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 149
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'45cc2d4d-a7c2-4d6b-9345-86b5766e876d', 'NLP', 'Nelspruit', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 150
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'596de98a-12f8-42ee-9a35-f5ef8e9db090', 'NCS', 'Newcastle', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 151
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7b612942-dfb9-4f9b-91b2-619457860155', 'OUH', 'Oudtshoorn', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 152
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4587db78-b391-4f9c-94e9-6ae1c8e1f1e9', 'PHW', 'Phalaborwa', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 153
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c8e99bf8-e562-4dc7-b87e-fcb52a208ffa', 'PZB', 'Pietermaritzburg', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 154
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'83b93eb8-e569-4144-b2c0-081fb399c8c5', 'PTG', 'Pietersburg', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 155
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1284f30a-3299-4fe8-a37b-62ee7c5ee342', 'NTY', 'Pilanesberg/Sun City', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 156
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3d9bb41c-5275-4fd9-a490-eeef773ab0a2', 'PBZ', 'Plettenberg Bay', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 157
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bb015ee6-4a4b-49e4-9516-a43e84a9381c', 'PLZ', 'Port Elizabeth', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 158
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'520b7387-7f32-4a38-8b9e-86a27a64d167', 'PRY', 'Pretoria - Wonderboom Apt.', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 159
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ff8a2fe7-0800-4014-8fb9-a05bae8e9782', 'RCB', 'Richards Bay', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 160
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a0f41f7e-1e87-4343-a22e-f19509ff8f04', 'SIS', 'Sishen', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 161
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'70172b01-cc9c-436e-bb12-bf43c69513ed', 'SZK', 'Skukuza', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 162
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5457d6c6-6dd3-4a95-8780-66934cdbf6a8', 'SBU', 'Springbok', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 163
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'240b8e83-912b-4f72-b880-34d750e2ad36', 'TCU', 'Thaba', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 164
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3bc23d8b-6323-4855-ba41-a626d369c284', 'ULD', 'Ulundi', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 165
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b54f8f99-8f91-471d-9fea-0c60be94fdfc', 'UTT', 'Umtata', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 166
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a9db9feb-ab36-4cf7-ae76-f121bf788741', 'UTN', 'Upington', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 167
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ce36d8f3-b40e-4310-ae5c-7cf30e540afd', 'VYD', 'Vryheid', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 168
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'743addce-f5f7-46a9-b06d-443e3ed3d2d8', 'WVB', 'Walvis Bay', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 169
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd6bb3495-eb6f-48c1-810e-890fda9f4c02', 'WEL', 'Welkom', 'South Africa', 'Active'
);

-- INSERT QUERY NO: 170
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1214bf07-4bf5-4e2b-a4e9-d2344491bd6f', 'KSL', 'Kassala', 'Sudan', 'Active'
);

-- INSERT QUERY NO: 171
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'18db7f70-3777-4e35-890d-ad5350d63aa8', 'KRT', 'Khartoum', 'Sudan', 'Active'
);

-- INSERT QUERY NO: 172
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'136317bb-8124-4f5a-9568-e89763713993', 'PBM', 'Paramaribo - Zanderij Int', 'Suriname', 'Active'
);

-- INSERT QUERY NO: 173
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ced721fd-aa72-4c1a-aae4-428e3c80c5f1', 'MTS', 'Manzini - Matsapha Int', 'Swaziland', 'Active'
);

-- INSERT QUERY NO: 174
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c96329e7-e1aa-4837-9ade-cb4a905eb329', 'ARK', 'Arusha', 'Tanzania', 'Active'
);

-- INSERT QUERY NO: 175
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5640bb93-494d-4083-9bde-120633a5c2e0', 'DAR', 'Dar es Salam (Daressalam)', 'Tanzania', 'Active'
);

-- INSERT QUERY NO: 176
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'114c5869-926e-4c3e-a2d3-999b48de7d19', 'JRO', 'Kilimadjaro', 'Tanzania', 'Active'
);

-- INSERT QUERY NO: 177
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a7bf0814-6882-4a44-82fe-1a1c88244b21', 'DJE', 'Djerba', 'Tunisia', 'Active'
);

-- INSERT QUERY NO: 178
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0e716f68-efa1-4e69-9eab-450b93a999ea', 'MIR', 'Monastir', 'Tunisia', 'Active'
);

-- INSERT QUERY NO: 179
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'40f4addb-2b01-4191-a4bb-897e0a7349bf', 'SFA', 'Sfax', 'Tunisia', 'Active'
);

-- INSERT QUERY NO: 180
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2d811bd3-276d-4a29-a349-94d11c43c0b2', 'TUN', 'Tunis - Carthage', 'Tunisia', 'Active'
);

-- INSERT QUERY NO: 181
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5ecd5a3e-a181-4ccc-9226-1a88996fa06a', 'EBB', 'Entebbe', 'Uganda', 'Active'
);

-- INSERT QUERY NO: 182
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'70768f06-5589-45a0-bf5e-7b0cc28802a4', 'ULU', 'Gulu', 'Uganda', 'Active'
);

-- INSERT QUERY NO: 183
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'625bb908-437f-420b-927d-c2137ece4389', 'FKI', 'Kisangani', 'Zaire', 'Active'
);

-- INSERT QUERY NO: 184
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'adf6d3b2-dce5-4568-afe9-5b0e00c62805', 'FBM', 'Lumbumbashi', 'Zaire', 'Active'
);

-- INSERT QUERY NO: 185
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2578d40c-0067-4d74-a243-7b956e6b46a9', 'CIP', 'Chipata', 'Zambia', 'Active'
);

-- INSERT QUERY NO: 186
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a025d9bf-85bb-4ceb-adee-63dfa607d418', 'KIW', 'Kitwe', 'Zambia', 'Active'
);

-- INSERT QUERY NO: 187
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'499e4b5e-4616-4c44-bfae-27dd461e337a', 'LUN', 'Lusaka', 'Zambia', 'Active'
);

-- INSERT QUERY NO: 188
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5b012958-1464-4d72-8cb8-c370cd06e576', 'MFU', 'Mfuwe', 'Zambia', 'Active'
);

-- INSERT QUERY NO: 189
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'61d87e38-f302-438f-9e22-6867ac2bd4c9', 'NLA', 'Dola', 'Zambia', 'Active'
);

-- INSERT QUERY NO: 190
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'421af29d-6a77-4cf5-84b9-d276d5b9cd20', 'BFO', 'Buffalo Range', 'Zimbabwe', 'Active'
);

-- INSERT QUERY NO: 191
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4e8d5215-bd3f-4c74-924e-6a9e11f2487f', 'BUQ', 'Bulawayo', 'Zimbabwe', 'Active'
);

-- INSERT QUERY NO: 192
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0052fdd2-119d-4237-9246-c8dea3e85750', 'GWE', 'Gweru', 'Zimbabwe', 'Active'
);

-- INSERT QUERY NO: 193
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd8d6f221-d10b-4f6b-b144-d359bc397182', 'HRE', 'Harare', 'Zimbabwe', 'Active'
);

-- INSERT QUERY NO: 194
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b6d7d701-14f2-4da2-9455-9ad2b1d12845', 'HWN', 'Hwange National Park', 'Zimbabwe', 'Active'
);

-- INSERT QUERY NO: 195
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3346e261-a641-4b94-bf6d-ab3690ed5590', 'MVZ', 'Masvingo', 'Zimbabwe', 'Active'
);

-- INSERT QUERY NO: 196
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd5b0f6e8-9b35-49a1-a158-43fe7907ed31', 'SAY', 'Salisbury', 'Zimbabwe', 'Active'
);

-- INSERT QUERY NO: 197
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'561fcc3a-e391-4dfe-8334-087852603a36', 'VFA', 'Victoria Falls', 'Zimbabwe', 'Active'
);

-- INSERT QUERY NO: 198
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4636f5d8-6f11-45f9-ac94-ac2c0826af73', 'SPK', 'Sapporo', '"Hokkaido', ' Japan"'
);

-- INSERT QUERY NO: 199
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b937203d-951e-4578-91b4-7d660406e270', 'OKD', 'Sapporo - Okadama', '"Hokkaido', ' Japan"'
);

-- INSERT QUERY NO: 200
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'90331e11-e17b-4332-b37d-1956ce7ae6f6', 'HKG', 'Hong Kong - Int Airport (HKIA)', 'Hong Kong', 'Active'
);

-- INSERT QUERY NO: 201
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'45127778-cc1f-4e7a-a12e-b0aac594f4e9', 'UKB', 'Kobe', 'Japan', 'Active'
);

-- INSERT QUERY NO: 202
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5f3b779e-194d-40af-b534-bd4f7e1280ea', 'UKY', 'Kyoto', 'Japan', 'Active'
);

-- INSERT QUERY NO: 203
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0d8104c5-d81c-4bdd-a379-984840838186', 'NGO', 'Nagoya - Komaki AFB', 'Japan', 'Active'
);

-- INSERT QUERY NO: 204
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'81f41ed6-3603-45c8-b7c0-6606aa0c78bb', 'TYO', 'Tokyo', 'Japan', 'Active'
);

-- INSERT QUERY NO: 205
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'62b211fe-ed16-42d9-bf87-78f57988fbe5', 'HND', 'Tokyo - Haneda', 'Japan', 'Active'
);

-- INSERT QUERY NO: 206
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e2aa347d-b668-48fc-8f83-f85cb790f68c', 'NRT', 'Tokyo - Narita', 'Japan', 'Active'
);

-- INSERT QUERY NO: 207
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f8a6e66e-e327-4542-b7de-5ae659c646d9', 'MLE', 'Male - International', 'Maledives', 'Active'
);

-- INSERT QUERY NO: 208
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9f1027e3-d75c-4d51-8ca6-30fbe594209d', 'KTM', 'Kathmandu - Tribhuvan', 'Nepal', 'Active'
);

-- INSERT QUERY NO: 209
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e7301f45-47ec-4761-a664-03d226dc4bf3', 'ICN', 'Seoul - Incheon Int Airport', 'South Korea', 'Active'
);

-- INSERT QUERY NO: 210
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b2c3063a-54a0-478f-b9ab-858f5aed25c8', 'SEL', 'Seoul - Kimpo', 'South Korea', 'Active'
);

-- INSERT QUERY NO: 211
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e4c8367f-81ff-44a9-abf1-501525e39d7a', 'CMB', 'Colombo', 'Sri Lanka', 'Active'
);

-- INSERT QUERY NO: 212
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'912d349e-bd27-412a-be85-cd0478d248a3', 'BZL', 'Barisal', 'Bangladesh', 'Active'
);

-- INSERT QUERY NO: 213
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0c8e4154-9e64-4e27-9102-c5861c3a1781', 'CGP', 'Chittagong', 'Bangladesh', 'Active'
);

-- INSERT QUERY NO: 214
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'34820976-4176-47fa-8254-02be42d72f44', 'DAC', 'Dhaka', 'Bangladesh', 'Active'
);

-- INSERT QUERY NO: 215
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2fbd48ad-25f3-41c4-9b9a-50480ea67116', 'ZYL', 'Sylhet', 'Bangladesh', 'Active'
);

-- INSERT QUERY NO: 216
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e111da98-5fbf-46b0-9faf-bb58c2ef4277', 'PBH', 'Paro', 'Bhutan', 'Active'
);

-- INSERT QUERY NO: 217
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'39063248-837e-40b0-a031-8507c5de1fde', 'PEK', 'Beijing', 'China', 'Active'
);

-- INSERT QUERY NO: 218
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c3ba35ed-b8fa-4742-b595-dd39e0c95378', 'NAY', 'Beijing - Nanyuan Airport', 'China', 'Active'
);

-- INSERT QUERY NO: 219
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd8144889-3dff-4849-91be-d63a6dc7cfd3', 'SHA', 'Shanghai - Hongqiao', 'China', 'Active'
);

-- INSERT QUERY NO: 220
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3f748b44-9df5-4074-9fdf-29fc4c6eded5', 'PVG', 'Shanghai - Pu Dong', 'China', 'Active'
);

-- INSERT QUERY NO: 221
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a763c36b-abe3-4012-baaf-35eed4dc4cb5', 'TSN', 'Tianjin', 'China', 'Active'
);

-- INSERT QUERY NO: 222
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0318f320-14dc-4041-9d2f-745b2f03407a', 'XMN', 'Xiamen', '"Fujian', ' China"'
);

-- INSERT QUERY NO: 223
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c9223256-a72b-4010-9360-38a432c40be6', 'DGM', 'Dongguan', '"Guangdong', ' China"'
);

-- INSERT QUERY NO: 224
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e25a6997-1654-409b-94ea-56069a72d33c', 'CAN', 'Guangzhou (Canton) - Baiyun (White Cloud)', '"Guangdong', ' China"'
);

-- INSERT QUERY NO: 225
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6494cdfa-57e7-41e4-9e55-db0e7b1ca877', 'SZX', 'Shenzhen', '"Guangdong', ' China"'
);

-- INSERT QUERY NO: 226
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'29c0d0c1-abe9-400f-a6ca-446bdd0d3d0a', 'NNG', 'Nanning', '"Guangxi', ' China"'
);

-- INSERT QUERY NO: 227
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5fb9eba1-8b20-4c29-9dbe-e511e8b75a26', 'HRB', 'Harbin (Haerbin)', '"Heilongjiang', ' China"'
);

-- INSERT QUERY NO: 228
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'db4d711d-4d54-4c09-8f55-84d9c97a7a10', 'ZJK', 'Hong Kong - Chek Lap Kok', 'Hong Kong', 'Active'
);

-- INSERT QUERY NO: 229
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'28ba0085-51dc-4270-b8d1-522865f07929', 'WUH', 'Wuhan', '"Hubei', ' China"'
);

-- INSERT QUERY NO: 230
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7ee0c07e-ba68-48c9-ab94-cc273fe9474f', 'AMD', 'Ahmedabad', 'India', 'Active'
);

-- INSERT QUERY NO: 231
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a57edeca-8fed-4c5b-9877-b38746473fe2', 'ATQ', 'Amritsar', 'India', 'Active'
);

-- INSERT QUERY NO: 232
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'26519993-3b7c-412e-8c0e-6740aab42501', 'QNB', 'Anand', 'India', 'Active'
);

-- INSERT QUERY NO: 233
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a917ef26-ad36-4abd-9438-6fff76c018c3', 'IXB', 'Bagdogra', 'India', 'Active'
);

-- INSERT QUERY NO: 234
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1f8f049c-68d3-40eb-9ee4-47c7bd790e6f', 'BLR', 'Bangalore', 'India', 'Active'
);

-- INSERT QUERY NO: 235
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5be5e492-7fa1-4645-a5a5-3d05d02e005f', 'BDQ', 'Baronda', 'India', 'Active'
);

-- INSERT QUERY NO: 236
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f95cef8c-2451-46d5-b206-29a5ac55eb40', 'IXG', 'Belgaum', 'India', 'Active'
);

-- INSERT QUERY NO: 237
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9af31850-64c1-4f39-b080-6caa9bb88cf4', 'BHO', 'Bhopal', 'India', 'Active'
);

-- INSERT QUERY NO: 238
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0f0c1f05-d667-4706-b1f2-ccf2a44960fc', 'BBI', 'Bhubaneswar', 'India', 'Active'
);

-- INSERT QUERY NO: 239
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'895f4975-2175-45c3-a48c-994d1d36231e', 'BOM', 'Bombay', 'India', 'Active'
);

-- INSERT QUERY NO: 240
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fc856c26-8b5d-48cf-8f4d-1ee964ed8abc', 'CCU', 'Calcutta (Kolkata) - Netaji Subhas Chandra', 'India', 'Active'
);

-- INSERT QUERY NO: 241
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'79dbae2e-d3f7-412d-95cb-78ee0a3abc82', 'CCJ', 'Calicut', 'India', 'Active'
);

-- INSERT QUERY NO: 242
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1165fc22-1bdc-4a17-8c13-fbb4aa775ce0', 'IXC', 'Chandigarh', 'India', 'Active'
);

-- INSERT QUERY NO: 243
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b5b17614-9b1e-4e6c-889f-1341ce5d76fa', 'MAA', 'Chennai (Madras)', 'India', 'Active'
);

-- INSERT QUERY NO: 244
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b43a3406-f657-49ad-9950-f90f029efaf2', 'COK', 'Cochin', 'India', 'Active'
);

-- INSERT QUERY NO: 245
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b9d60cb9-89f1-41d0-adea-2c79df90b25a', 'CJB', 'Coimbatore', 'India', 'Active'
);

-- INSERT QUERY NO: 246
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8a48bd5c-89cc-45c1-849a-ef6196648300', 'DEL', '"Delhi', ' Indira Gandhi"', 'India'
);

-- INSERT QUERY NO: 247
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'116185d6-f648-4ecd-a119-b8471fe35151', 'GOI', 'Goa', 'India', 'Active'
);

-- INSERT QUERY NO: 248
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'91eb0ab5-87d7-450c-aab0-04844c14f0db', 'GAU', 'Guwahati', 'India', 'Active'
);

-- INSERT QUERY NO: 249
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'21fbc94c-09df-4170-9e33-a90f3b15bcc6', 'HYD', 'Hyderabad - Begumpet', 'India', 'Active'
);

-- INSERT QUERY NO: 250
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3ad5a452-0fb2-4d79-8cf1-61842096f366', 'JAI', 'Jaipur - Sanganeer', 'India', 'Active'
);

-- INSERT QUERY NO: 251
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c39d35de-221d-4bda-ba65-f86ef0c66ced', 'JLR', 'Jalandhar', 'India', 'Active'
);

-- INSERT QUERY NO: 252
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fe6f7e83-f0c1-488f-b648-34ab04b76a29', 'IXW', 'Jamshedpur - Sonari', 'India', 'Active'
);

-- INSERT QUERY NO: 253
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8b153a6e-faf4-4fe6-a427-18536708ba8a', 'QJU', 'Kanpur', 'India', 'Active'
);

-- INSERT QUERY NO: 254
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8fa2f3b1-2724-44c3-8c63-26f5397bbfdd', 'CCU', 'Kolkata (Calcutta) - Netaji Subhas Chandra', 'India', 'Active'
);

-- INSERT QUERY NO: 255
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'175b9778-59a4-4c3c-b50e-0ba745d38ae7', 'LKO', 'Lucknow', 'India', 'Active'
);

-- INSERT QUERY NO: 256
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ed417b4e-8d3a-4846-8375-7a33ed97689a', 'MAA', 'Madras (Chennai)', 'India', 'Active'
);

-- INSERT QUERY NO: 257
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd3b9ff8a-776d-426b-9db3-40b465e7ca4d', 'NAG', 'Nagpur', 'India', 'Active'
);

-- INSERT QUERY NO: 258
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'743c6567-0f1a-422b-872d-4efc2186fb24', 'PAT', 'Patna', 'India', 'Active'
);

-- INSERT QUERY NO: 259
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'166fa3d7-a508-4619-8d1d-faf74eaaa007', 'PNQ', 'Pune', 'India', 'Active'
);

-- INSERT QUERY NO: 260
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f7c4249f-eaeb-461b-8efe-3a9c1be5e1e4', 'RAJ', 'Rajkot', 'India', 'Active'
);

-- INSERT QUERY NO: 261
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0f063db8-29f2-47b9-b666-3bce5b3aba7f', 'IXR', 'Ranchi', 'India', 'Active'
);

-- INSERT QUERY NO: 262
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'29dfc5db-0d5b-49ca-8256-31c1d5b15011', 'SXR', 'Srinagar', 'India', 'Active'
);

-- INSERT QUERY NO: 263
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b3186e63-b7dd-46a5-999c-7c76b9bf5884', 'STV', 'Surat', 'India', 'Active'
);

-- INSERT QUERY NO: 264
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'92b80a50-44d9-41cb-837b-af5528d743e0', 'TRV', 'Thiruvananthapuram', 'India', 'Active'
);

-- INSERT QUERY NO: 265
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a57554e8-45bc-4ca8-a050-31f4e00de4f6', 'TRZ', 'Tiruchirapally', 'India', 'Active'
);

-- INSERT QUERY NO: 266
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ec957440-b13b-43be-8668-4343a45572e3', 'VNS', 'Varanasi', 'India', 'Active'
);

-- INSERT QUERY NO: 267
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'224c78a7-88e8-402e-bacf-a115dcf3aeb1', 'AXT', 'Akita', 'Japan', 'Active'
);

-- INSERT QUERY NO: 268
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7659c1c3-3a3d-4259-9cd9-6784f43d4f89', 'ASJ', 'Amami', 'Japan', 'Active'
);

-- INSERT QUERY NO: 269
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'92e4cef0-eb7e-42a8-b39d-b497b179e43f', 'AOJ', 'Aomori', 'Japan', 'Active'
);

-- INSERT QUERY NO: 270
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'23d1f5ad-d78c-4898-ab19-9e6bd33cc4f6', 'KMQ', 'Komatsu', 'Japan', 'Active'
);

-- INSERT QUERY NO: 271
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fb6c19dc-3e30-48d6-9677-c43f59ea3f81', 'QCB', 'Chiba City', 'Japan', 'Active'
);

-- INSERT QUERY NO: 272
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c21ef70d-8f41-49a9-9251-d8024a14015d', 'CTS', 'Chitose', 'Japan', 'Active'
);

-- INSERT QUERY NO: 273
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ac268a9f-c60e-4846-99bf-92e3da1f2316', 'FUK', 'Fukuoka', 'Japan', 'Active'
);

-- INSERT QUERY NO: 274
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'713cc62c-653d-4c34-a0a7-b318322e109b', 'FKS', '"Fukushima-shi', ' Fukushima Airport"', 'Japan'
);

-- INSERT QUERY NO: 275
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7353184e-4de9-4577-a836-3a46a51c930e', 'HAC', 'Hachijo Jima', 'Japan', 'Active'
);

-- INSERT QUERY NO: 276
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'20425b88-f9fe-4a77-bb19-610dae2005ad', 'HKD', 'Hakodate', 'Japan', 'Active'
);

-- INSERT QUERY NO: 277
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3ddb9f68-945e-440d-8792-70464681ec97', 'HIJ', 'Hiroshima International', 'Japan', 'Active'
);

-- INSERT QUERY NO: 278
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1b829415-a12b-4d38-bbf9-29c0380a43c5', 'LSG', 'Ishigaki', 'Japan', 'Active'
);

-- INSERT QUERY NO: 279
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5a155476-034b-4fc6-934c-bf71c1372b7b', 'KOJ', 'Kagoshima', 'Japan', 'Active'
);

-- INSERT QUERY NO: 280
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'024375f0-0e22-487f-b74c-a7917ff30409', 'KCZ', 'Kochi', 'Japan', 'Active'
);

-- INSERT QUERY NO: 281
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bc54b668-abf5-4d62-8dfc-3fc206c7b669', 'KMJ', 'Kumamoto', 'Japan', 'Active'
);

-- INSERT QUERY NO: 282
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6ea4782a-0d88-4147-b63e-ee253fb5bb88', 'KUH', 'Kushiro', 'Japan', 'Active'
);

-- INSERT QUERY NO: 283
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'defe1135-1c17-42c6-81e9-7d76f2796574', 'MMJ', '"Matsumoto', ' Nagano"', 'Japan'
);

-- INSERT QUERY NO: 284
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'12004e13-c899-494b-a29e-a7cc4a1d2b1a', 'MYJ', 'Matsuyama', 'Japan', 'Active'
);

-- INSERT QUERY NO: 285
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'37374bba-f1e5-41e2-bf3d-4c1a15911eba', 'MMY', 'Miyako Jima (Ryuku Islands) - Hirara', 'Japan', 'Active'
);

-- INSERT QUERY NO: 286
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e2d1cf3f-a647-4cdd-99a0-1ed73522e56c', 'HNA', '"Morioka', ' Hanamaki"', 'Japan'
);

-- INSERT QUERY NO: 287
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'81c5325b-3775-4caf-af30-aa3fe71eab80', 'KMI', 'Miyazaki', 'Japan', 'Active'
);

-- INSERT QUERY NO: 288
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6d13cb1e-19aa-4820-abe1-186cce8a8e0f', 'NGS', 'Nagasaki', 'Japan', 'Active'
);

-- INSERT QUERY NO: 289
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'299f9529-17f1-4d1e-b09c-0df38602262a', 'KIJ', 'Niigata', 'Japan', 'Active'
);

-- INSERT QUERY NO: 290
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'956e2c6b-0463-49d4-8a79-ec02d01a9a55', 'OIT', 'Oita', 'Japan', 'Active'
);

-- INSERT QUERY NO: 291
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8c4bcddf-3f2e-4732-9e7f-5cef4c466d56', 'OKJ', 'Okayama', 'Japan', 'Active'
);

-- INSERT QUERY NO: 292
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'44ec1eda-3ade-439a-aaad-3030b67911db', 'OKA', '"Okinawa', ' Ryukyo Island - Naha"', 'Japan'
);

-- INSERT QUERY NO: 293
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c809a43a-244f-4bba-8258-904de23cc12f', 'OSA', '"Osaka', ' Metropolitan Area"', 'Japan'
);

-- INSERT QUERY NO: 294
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'13fa5a42-3b91-48a7-a115-4e96bb36291f', 'ITM', 'Osaka - Itami', 'Japan', 'Active'
);

-- INSERT QUERY NO: 295
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5f54af69-a9ab-4013-a064-25659ca89cad', 'KIX', 'Osaka - Kansai Int Airport', 'Japan', 'Active'
);

-- INSERT QUERY NO: 296
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'af6a8302-24b8-4e13-8810-0984426580c3', 'SDS', 'Sado Shima', 'Japan', 'Active'
);

-- INSERT QUERY NO: 297
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2102e7e7-3885-46a4-80fd-b2d093feb92b', 'CTS', 'Sapporo - Shin-Chitose Airport', 'Japan', 'Active'
);

-- INSERT QUERY NO: 298
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e3f4065e-f577-499a-a1d5-1734f550de3f', 'SDJ', 'Sendai', 'Japan', 'Active'
);

-- INSERT QUERY NO: 299
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'60979309-0aa1-49b7-8eea-8d1f5303ef2a', 'TAK', 'Takamatsu', 'Japan', 'Active'
);

-- INSERT QUERY NO: 300
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c8b204dd-a2a3-4f1c-88b3-5a12ca064b97', 'TKS', 'Tokushima', 'Japan', 'Active'
);

-- INSERT QUERY NO: 301
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'746f0877-d431-4608-981a-be21d36925e4', 'TOY', 'Toyama', 'Japan', 'Active'
);

-- INSERT QUERY NO: 302
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f3f48ddf-00dd-432e-a009-ba048d5e15f4', 'GAJ', '"Yamagata', ' Junmachi"', 'Japan'
);

-- INSERT QUERY NO: 303
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fee366ff-8229-4c46-826e-86301f5b4018', 'YOK', 'Yokohama', 'Japan', 'Active'
);

-- INSERT QUERY NO: 304
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'956f5057-9ce4-4db3-8fa2-0f14e35ba3b1', 'CGQ', 'Changchun', '"Jilin', ' China"'
);

-- INSERT QUERY NO: 305
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ae45581b-b27f-4237-a796-15d43eb886b9', 'ADX', 'Aktyubinsk', 'Kazakhstan', 'Active'
);

-- INSERT QUERY NO: 306
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fd98e831-4a39-4aa5-a509-4061a6679a65', 'ALA', 'Alma Ata', 'Kazakhstan', 'Active'
);

-- INSERT QUERY NO: 307
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'38787a7a-9782-45b4-bd4b-266777e9e6e2', 'TSE', 'Astana', 'Kazakstan', 'Active'
);

-- INSERT QUERY NO: 308
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9886ec5a-562d-4695-8122-3b472d8ce63e', 'ICN', 'Incheon', ' Incheon Int Airport"', 'Korea South'
);

-- INSERT QUERY NO: 309
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'db53e697-d05b-482f-ad5f-28a8d56991cc', 'DLC', 'Dalian', '"Liaoning', ' China"'
);

-- INSERT QUERY NO: 310
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5f6db9a8-4304-48db-b39c-7a8b25734034', 'SHE', 'Shenyang', '"Liaoning', ' China"'
);

-- INSERT QUERY NO: 311
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd3a38c91-43a2-42aa-93ba-c098d80b295b', 'MFM', 'Macau', '"Macau', ' China SAR"'
);

-- INSERT QUERY NO: 312
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'48098c7a-2e5f-4a09-bbe2-4aa8c51c6b65', 'MRU', 'Mauritius - S.Seewoosagur Ram Int', 'Mauritius', 'Active'
);

-- INSERT QUERY NO: 313
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1dfe710e-2ffc-4624-82f8-071ec600c62a', 'RRG', 'Rodrigues Island', 'Mauritius', 'Active'
);

-- INSERT QUERY NO: 314
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'21900c29-a913-4b0e-bf54-0d566c011dcc', 'ULN', 'Ulaanbaatar - Buyant Uhaa', 'Mongolia', 'Active'
);

-- INSERT QUERY NO: 315
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'49084827-527d-43b6-bc43-2ef3c9a7d5de', 'XIY', 'Xian - Xianyang', 'Shaanxi', ' China'
);

-- INSERT QUERY NO: 316
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a8a41410-2070-41e3-8578-b36dc9e09905', 'TNA', 'Jinan', '"Shandong', ' China"'
);

-- INSERT QUERY NO: 317
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'21f30bc7-a024-471b-9b6d-94709afdd0c4', 'TAO', 'Qingdao', '"Shandong', ' China"'
);

-- INSERT QUERY NO: 318
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'127a39e7-3ca7-495d-ba44-078b06633ac9', 'TYN', 'Taiyuan', '"Shanxi', ' China"'
);

-- INSERT QUERY NO: 319
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8c7e7506-938f-4c20-9351-ad19499f6ac5', 'CTU', 'Chengdu', '"Sichuan', ' China"'
);

-- INSERT QUERY NO: 320
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1b91876b-21d0-4211-a6c0-6985b938d737', 'CKG', 'Chongqing', '"Sichuan', ' China"'
);

-- INSERT QUERY NO: 321
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'62e6f958-b0c3-4569-8458-8e0fccf9eb22', 'QPG', 'Singapore - Paya Lebar', 'Singapore', 'Active'
);

-- INSERT QUERY NO: 322
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'24213018-1d42-43f2-b87c-c944a1d8dc27', 'SIN', 'Singapore - Changi', 'Singapore', 'Active'
);

-- INSERT QUERY NO: 323
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'116ff1ab-6309-4eeb-b60f-c6bd0b8a2b73', 'PUS', 'Pu San (Pusan) - Kimhae', 'South Korea', 'Active'
);

-- INSERT QUERY NO: 324
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'128ae2f2-377f-48b9-b8ca-c96d9af047ba', 'DYU', 'Dushanbe (Duschanbe)', 'Tadschikistan', 'Active'
);

-- INSERT QUERY NO: 325
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5c0df35e-018d-4317-a46f-7b856cda2ffe', 'KHH', 'Kaohsiung Int', 'Taiwan', 'Active'
);

-- INSERT QUERY NO: 326
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd3d71376-1dea-4bc3-9d87-46436f5c7bee', 'MZG', 'Makung', 'Taiwan', 'Active'
);

-- INSERT QUERY NO: 327
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'66400cf5-5ad1-467a-9898-aadf956a81fb', 'TPE', 'Taipei - Chiang Kai Shek', 'Taiwan', 'Active'
);

-- INSERT QUERY NO: 328
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'87634840-eaba-47c4-9213-19e275ad88c1', 'TAY', 'Taipei - Sung Shan', 'Taiwan', 'Active'
);

-- INSERT QUERY NO: 329
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f5af320b-9ce8-4726-8e6a-6781c045c4eb', 'SKD', 'Samarkand', 'Uzbekistan', 'Active'
);

-- INSERT QUERY NO: 330
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9a99aae7-5b2a-4b68-b771-83c1f1eb580b', 'TAS', 'Tashkent - Vostochny', 'Uzbekistan', 'Active'
);

-- INSERT QUERY NO: 331
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a781233d-ee76-409e-9e0f-e6104a3bed45', 'TMZ', 'Termez (Termes)', 'Uzbekistan', 'Active'
);

-- INSERT QUERY NO: 332
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'60c48361-e648-4b70-9c8d-69e1fdfa7c55', 'URC', 'Urumqi', '"Xinjiang', ' China"'
);

-- INSERT QUERY NO: 333
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9113d2ec-dd52-4324-80a4-bffd42f16047', 'HGH', 'Hangchow (Hangzhou)', '"Zhejiang', ' China"'
);

-- INSERT QUERY NO: 334
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5dada45b-191b-44e7-b887-4120b93baf7c', 'PTP', 'Pointe a Pitre', 'Guadeloupe', 'Active'
);

-- INSERT QUERY NO: 335
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'cbe1a9dd-ee4c-4018-a0ad-731f64dd3d13', 'BON', 'Bonaire', 'Netherlands Antilles', 'Active'
);

-- INSERT QUERY NO: 336
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3c8c8064-ce50-4275-a121-23c219aecbcb', 'CUR', 'Curacao', 'Netherlands Antilles', 'Active'
);

-- INSERT QUERY NO: 337
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fc2d9cd1-7fbf-4eb4-a572-34d41f52a036', 'SXM', 'St. Marteen', 'Netherlands Antilles', 'Active'
);

-- INSERT QUERY NO: 338
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'df49dbf0-bf2e-48d2-9ba8-0a4e59eed8c6', 'NEV', 'Nevis', 'Nevis', 'Active'
);

-- INSERT QUERY NO: 339
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f9fea7d1-0ce4-47f8-b219-65a203a84d26', 'SKB', 'St. Kitts', 'St. Kitts And Nevis', 'Active'
);

-- INSERT QUERY NO: 340
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'344eb2b9-5b95-4c6c-8f46-6f7e76e837f9', 'UVF', 'St. Lucia Hewanorra', 'St. Lucia', 'Active'
);

-- INSERT QUERY NO: 341
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5dc19fb8-9643-4fd3-8e06-7deaac5bd304', 'SLU', 'St. Lucia Vigle', 'St. Lucia', 'Active'
);

-- INSERT QUERY NO: 342
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'82e59fb2-f9c6-4a17-9049-15d12063f3d3', 'SFG', 'St. Martin', 'St. Martin', 'Active'
);

-- INSERT QUERY NO: 343
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ae18c15e-8d9b-4cec-83a9-5efc477ff82c', 'SVD', 'St. Vincent', 'St. Vincent', 'Active'
);

-- INSERT QUERY NO: 344
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'838e3b40-28e9-4dc7-b2f7-de6c00d3e8e2', 'HAV', 'Havana - José Martí Int', 'Cuba', 'Active'
);

-- INSERT QUERY NO: 345
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'32466cd5-d970-4c9a-910e-f456052c4163', 'HOG', 'Holguin', 'Cuba', 'Active'
);

-- INSERT QUERY NO: 346
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fe192082-eedd-4904-b612-cc308b253dc9', 'SCU', 'Santiago - Antonio Maceo Airport', 'Cuba', 'Active'
);

-- INSERT QUERY NO: 347
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'344fa804-72c8-421c-beb2-31664151e6ab', 'VRA', 'Varadero', 'Cuba', 'Active'
);

-- INSERT QUERY NO: 348
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd8583aac-75e8-4fc4-b772-de3df55bea3f', 'LRM', 'Casa de Campo/La Romana', 'Dominican Republic', 'Active'
);

-- INSERT QUERY NO: 349
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fbb9f737-9b10-45db-8fb1-9bd2269dcc5d', 'POP', 'Puerto Plata', 'Dominican Republic', 'Active'
);

-- INSERT QUERY NO: 350
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'77665ede-2ab6-4dfa-8456-03cbb6e10200', 'PUJ', 'Punta Cana', 'Dominican Republic', 'Active'
);

-- INSERT QUERY NO: 351
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'270c4fca-e2db-4917-b5d6-1de0624f8afa', 'SDQ', 'Santo Domingo', 'Dominican Republic', 'Active'
);

-- INSERT QUERY NO: 352
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'23dd5618-f9e3-4411-a02e-b05db8bc50f7', 'PAP', 'Port au Prince', 'Haiti', 'Active'
);

-- INSERT QUERY NO: 353
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'096247c0-d71f-498c-8d57-d7d5fd62a84a', 'KIN', 'Kingston - Norman Manley', 'Jamaica', 'Active'
);

-- INSERT QUERY NO: 354
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'97b2e123-dc8f-439c-b682-222664ac0521', 'MBJ', 'Montenego Bay', 'Jamaica', 'Active'
);

-- INSERT QUERY NO: 355
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'67aa8ab7-f2bc-449c-955f-b50c0fdbab3e', 'FDF', 'Fort de France', 'Martinique', 'Active'
);

-- INSERT QUERY NO: 356
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'998b37c5-f68e-457a-afa7-a12211304abf', 'BQN', 'Aguadilla', 'Puerto Rico', 'Active'
);

-- INSERT QUERY NO: 357
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0116c68e-cd1b-43fa-be5e-e48980108fe9', 'MAZ', 'Mayaguez', 'Puerto Rico', 'Active'
);

-- INSERT QUERY NO: 358
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'273e0459-94d5-4b25-bf70-418c3ee47c44', 'PSE', 'Ponce', 'Puerto Rico', 'Active'
);

-- INSERT QUERY NO: 359
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f1736a43-32bd-475e-8f0b-12b10f03890c', 'SJU', 'San Juan Perto', 'Rico', 'Active'
);

-- INSERT QUERY NO: 360
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f0280d94-487e-412e-8404-2bdd662c7667', 'TAB', 'Tobago', 'Tobago', 'Active'
);

-- INSERT QUERY NO: 361
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'daece8b1-91a1-4a02-8e5a-8758f70184f6', 'POS', 'Port of Spain', 'Trinidad', 'Active'
);

-- INSERT QUERY NO: 362
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'17cbdead-7f76-403e-b1ca-668f67da50dd', 'STX', 'St. Croix', 'Virgin Islands', 'Active'
);

-- INSERT QUERY NO: 363
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7ade3221-17de-4e61-a11b-64e952c58941', 'STT', 'St. Thomas', 'Virgin Islands', 'Active'
);

-- INSERT QUERY NO: 364
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f80d5571-1635-4298-aa89-076f544fd07e', 'EIS', 'Tortola', 'Virgin Islands', 'Active'
);

-- INSERT QUERY NO: 365
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'261dea51-c1b7-44c2-8b3a-87541bc76e0f', 'VIJ', 'Virgin Gorda', 'Virgin Islands', 'Active'
);

-- INSERT QUERY NO: 366
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b5b45978-1e01-4927-b94b-8c0df40054ef', 'EIS', 'Beef Island', '"Virgin Islands', ' British"'
);

-- INSERT QUERY NO: 367
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'55c8b41e-7a3e-4a89-9532-216d497e856b', 'FPO', 'Freeport', 'Bahamas', 'Active'
);

-- INSERT QUERY NO: 368
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6355dd39-c341-441f-866c-4f1fd9e94698', 'NAS', 'Nassau', 'Bahamas', 'Active'
);

-- INSERT QUERY NO: 369
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ae30bb85-eb25-4ace-acac-fa59d80a8661', 'GCM', 'Grand Cayman', 'Cayman Islands', 'Active'
);

-- INSERT QUERY NO: 370
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e798a816-f17c-4b2d-9862-2bf816afe847', 'AXA', 'Anguilla', 'Anguilla', 'Active'
);

-- INSERT QUERY NO: 371
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6b1c661d-3e7d-4311-9bda-87cbe3355c18', 'ANU', 'Antigua', 'Antigua', 'Active'
);

-- INSERT QUERY NO: 372
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5abd728a-d05a-45e2-b9f7-600b5f84218e', 'AUA', 'Aruba', 'Aruba', 'Active'
);

-- INSERT QUERY NO: 373
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8d64958e-b4f3-423a-a9a1-2365418eeb3e', 'CCZ', 'Chub Cay', 'Bahamas', 'Active'
);

-- INSERT QUERY NO: 374
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'cdabd6e2-aff2-410f-8d92-fc54291ff88a', 'GHB', 'Govenors Harbour', 'Bahamas', 'Active'
);

-- INSERT QUERY NO: 375
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6db27725-fc8f-4f68-bb50-6a2d30750947', 'GBI', 'Grand Bahama', 'Bahamas', 'Active'
);

-- INSERT QUERY NO: 376
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dad4151c-db4e-485a-b2f5-73a46b5ee74a', 'MHH', 'Marsh Harbour', 'Bahamas', 'Active'
);

-- INSERT QUERY NO: 377
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'68c3b775-c7cb-4af2-9cac-953528f984f6', 'ELH', 'North Eleuthera', 'Bahamas', 'Active'
);

-- INSERT QUERY NO: 378
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'cec61509-7567-416a-9033-c95beb1f44d2', 'RSD', 'Rock Sound', 'Bahamas', 'Active'
);

-- INSERT QUERY NO: 379
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1671677e-a09f-4f91-bbc5-1b15376ca5f6', 'ZSA', 'San Salvador', 'Bahamas', 'Active'
);

-- INSERT QUERY NO: 380
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'deb640e6-a7f7-4e25-88b7-c1b96cbadb89', 'TCB', 'Treasure Cay', 'Bahamas', 'Active'
);

-- INSERT QUERY NO: 381
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9bfca020-6703-44c2-8914-fc9474d3c451', 'BGI', 'Bridgetown', ' Grantley Adams Int', 'Barbados'
);

-- INSERT QUERY NO: 382
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0a1a276f-9b95-434f-b4c7-fe48b1a48af3', 'BDA', 'Bermuda', 'Bermuda', 'Active'
);

-- INSERT QUERY NO: 383
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'273457d8-c72d-4532-a352-02abb46449b0', 'PTY', 'Panama City - Tocumen International', 'Panama', 'Active'
);

-- INSERT QUERY NO: 384
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dd11e1c3-6819-4e72-91ef-a9e0eed71adb', 'SJO', 'San Jose', 'Costa Rica', 'Active'
);

-- INSERT QUERY NO: 385
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'821bee21-3b87-43de-ad8a-3dcc44557875', 'SAL', 'San Salvador', 'El Salvador', 'Active'
);

-- INSERT QUERY NO: 386
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'51a9e2a5-fee1-4547-8e4d-7dcb26821d84', 'RTB', 'Roatan', 'Honduras', 'Active'
);

-- INSERT QUERY NO: 387
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'46537358-7494-409a-8de4-7dbe89b89541', 'SAP', 'San Pedro Sula', 'Honduras', 'Active'
);

-- INSERT QUERY NO: 388
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4d2f5764-8c7f-468a-b3fb-5b395f24a1d4', 'SDH', 'Santa Rosa Copan', 'Honduras', 'Active'
);

-- INSERT QUERY NO: 389
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ece520ac-2aa9-44a5-8206-9426e9f95ec1', 'TGU', 'Tegucigalpa', 'Honduras', 'Active'
);

-- INSERT QUERY NO: 390
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a344896c-91d4-4c75-a232-36bc7ff55a24', 'BZE', 'Belize City', 'Belize', 'Active'
);

-- INSERT QUERY NO: 391
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f01deab6-3cd9-4c3e-9029-a55d8e350d7a', 'GUA', 'Guatemala City', 'Guatemala', 'Active'
);

-- INSERT QUERY NO: 392
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'cd2da70f-5b79-44d7-b578-708dd474db8e', 'MGA', 'Managua - Augusto C Sandino', 'Nicaragua', 'Active'
);

-- INSERT QUERY NO: 393
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9deb9da9-3a46-4728-a800-627d23b411bd', 'SJJ', 'Sarajevo', 'Bosnia and Herzegovina', 'Active'
);

-- INSERT QUERY NO: 394
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'850765e0-a704-411c-9270-e7e38ec01842', 'SOF', 'Sofia - Vrazhdebna', 'Bulgaria', 'Active'
);

-- INSERT QUERY NO: 395
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f2da4d3e-a627-484d-9d86-65d147c08bcb', 'NAN', 'Nadi', 'Fiji', 'Active'
);

-- INSERT QUERY NO: 396
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'70507dfe-c401-4451-859e-73f4f5d8712e', 'SUV', 'Suva/Nausori', 'Fiji', 'Active'
);

-- INSERT QUERY NO: 397
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a66292c5-f325-4fb1-aae3-f452e55e674a', 'SUV', 'Nausori', 'Fiji/Suva', 'Active'
);

-- INSERT QUERY NO: 398
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ec28c9a8-ca75-4c9c-aba1-b46bb2c16379', 'BUD', '"Budapest', ' Ferihegy"', 'Hungary'
);

-- INSERT QUERY NO: 399
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a15a5b5f-7b85-45cd-ab7e-bf4fb272c416', 'SKP', 'Skopje', 'Macedonia', 'Active'
);

-- INSERT QUERY NO: 400
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b2b8488b-f1b9-4a9e-b785-c46a7ca4ea98', 'BUH', 'Bucharest', 'Romania', 'Active'
);

-- INSERT QUERY NO: 401
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7cce9832-03bb-438a-99e2-ebe1341a39de', 'OTP', '"Bucharest', ' Otopeni"', 'Romania'
);

-- INSERT QUERY NO: 402
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3d6304f4-ea60-42ce-9289-9304cca1f794', 'EVN', '"Eriwan (Yerevan', ' Jerevan)"', 'Armenia'
);

-- INSERT QUERY NO: 403
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'093c2e8d-14a1-4787-9cc0-e8f34eb2a63c', 'BAK', 'Baku', 'Azerbaijan', 'Active'
);

-- INSERT QUERY NO: 404
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1c76f3dc-149e-4293-abfa-7d4f55d40b45', 'MSQ', '"Minsk', ' International"', 'Belarus'
);

-- INSERT QUERY NO: 405
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c35479e4-eeaa-47dd-96dd-d0bffcd4a6ba', 'OMO', 'Mostar', 'Bosnia and Herzegovina', 'Active'
);

-- INSERT QUERY NO: 406
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'19f0d548-92e4-426f-8198-68efe9863a29', 'BOJ', 'Bourgas/Burgas', 'Bulgaria', 'Active'
);

-- INSERT QUERY NO: 407
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'be55aac7-3a2d-4b2a-9fc6-b15984c0cb02', 'GOZ', 'Gorna', 'Bulgaria', 'Active'
);

-- INSERT QUERY NO: 408
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd5a50dd7-229e-48e0-bf40-ca37193f5465', 'ROU', 'Ruse', 'Bulgaria', 'Active'
);

-- INSERT QUERY NO: 409
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'834bafff-3efc-4e3a-9680-9d5d28704fa5', 'SLS', 'Silistra', 'Bulgaria', 'Active'
);

-- INSERT QUERY NO: 410
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'82261a9c-61f9-409b-9332-4f7b27837bac', 'TGV', 'Targovishte', 'Bulgaria', 'Active'
);

-- INSERT QUERY NO: 411
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'93e4e4f3-4c19-40bd-a27c-db091ee75d15', 'VAR', 'Varna', 'Bulgaria', 'Active'
);

-- INSERT QUERY NO: 412
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c4a94302-e16a-40b5-8821-eb89a6659db6', 'VID', 'Vidin', 'Bulgaria', 'Active'
);

-- INSERT QUERY NO: 413
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'25b25148-b9cb-4774-9eb4-b57023b6a24a', 'DBV', 'Dubrovnik', 'Croatia (Hrvatska)', 'Active'
);

-- INSERT QUERY NO: 414
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7ac7d9dd-ed87-483b-b64e-bbf1f3ceef04', 'LSZ', '(Mali) Losinj - Losinj Arpt', 'Croatia (Hrvatska)', 'Active'
);

-- INSERT QUERY NO: 415
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4b6c1353-e6e5-4490-b876-fa952549a14c', 'OSI', 'Osijek', 'Croatia (Hrvatska)', 'Active'
);

-- INSERT QUERY NO: 416
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd6f387a3-602c-4f52-8dae-b2d683e09f9a', 'PUY', 'Pula', 'Croatia (Hrvatska)', 'Active'
);

-- INSERT QUERY NO: 417
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8996c9ba-8e96-4cf0-9d8d-cdcd0b68613e', 'RJK', 'Rijeka', 'Croatia (Hrvatska)', 'Active'
);

-- INSERT QUERY NO: 418
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2e0596f4-2056-4373-8b7d-c6dff5c0aa5a', 'SPU', 'Split', 'Croatia (Hrvatska)', 'Active'
);

-- INSERT QUERY NO: 419
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'da5a8a43-88db-48be-b1a7-f923e626abc1', 'ZAD', 'Zadar', 'Croatia (Hrvatska)', 'Active'
);

-- INSERT QUERY NO: 420
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bc29efc9-8b6c-4881-b4b0-3bce6f7ebfcd', 'ZAG', 'Zagreb - Pleso', 'Croatia (Hrvatska)', 'Active'
);

-- INSERT QUERY NO: 421
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b512d093-28a1-48bc-bd88-8f019fb9a068', 'QUF', 'Tallinn - Pirita Harbour', 'Estonia', 'Active'
);

-- INSERT QUERY NO: 422
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3f345568-563e-4d85-872f-314e1515dea4', 'TLL', 'Tallinn - Ulemiste', 'Estonia', 'Active'
);

-- INSERT QUERY NO: 423
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f9ecd2e7-ccc2-4e18-af78-6ac1c571c1be', 'TBS', 'Tbilisi - Novo Alexeyevka', 'Georgia', 'Active'
);

-- INSERT QUERY NO: 424
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dd514ee6-7205-45c8-b20a-33c76e331bf9', 'RIX', 'Riga', 'Latvia', 'Active'
);

-- INSERT QUERY NO: 425
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'425da14b-15ec-48d2-8a94-f0667256f5fb', 'VNO', 'Wilna (Vilnius)', 'Lithuania', 'Active'
);

-- INSERT QUERY NO: 426
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3845925d-58f9-45b8-9fb8-7a1194a87407', 'OHD', 'Ohrid', 'Macedonia', 'Active'
);

-- INSERT QUERY NO: 427
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'734decf7-a38c-4cb6-8734-2f722da5b270', 'CND', 'Constanza', 'Romania', 'Active'
);

-- INSERT QUERY NO: 428
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd0020306-376b-4e17-bcdf-9699301ed8bf', 'AER', 'Adler/Sochi', 'Russia', 'Active'
);

-- INSERT QUERY NO: 429
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f497134a-9b22-43bf-b666-b2c7b3091b5a', 'KHV', 'Chabarovsk (Khabarovsk)', 'Russia', 'Active'
);

-- INSERT QUERY NO: 430
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'44e210c7-18b0-4f39-bb8d-577dee0d5fa3', 'HTA', 'Chita (Tschita)', 'Russia', 'Active'
);

-- INSERT QUERY NO: 431
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b8c9ed09-3164-4f95-b7ec-4a3c94729c07', 'IKT', 'Irkutsk', 'Russia', 'Active'
);

-- INSERT QUERY NO: 432
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'65a30d5e-c51a-4bff-a917-8abdfbfa6836', 'KZN', 'Kazan (Ka San)', 'Russia', 'Active'
);

-- INSERT QUERY NO: 433
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6f648427-b6f8-4fd5-98fe-d25bafb62e1d', 'MRV', 'Mineralnye Vody', 'Russia', 'Active'
);

-- INSERT QUERY NO: 434
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'98d8d7b5-5fb2-42e3-8bcf-9c377b391e40', 'MOW', 'Moscow - Metropolitan Area', 'Russia', 'Active'
);

-- INSERT QUERY NO: 435
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'81f78496-ce0f-428c-b397-f7d2153a783b', 'DME', 'Moscow - Domodedovo', 'Russia', 'Active'
);

-- INSERT QUERY NO: 436
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'44e94f43-e159-413e-a06e-ba9e4295fed3', 'SVO', 'Moscow - Sheremetyevo', 'Russia', 'Active'
);

-- INSERT QUERY NO: 437
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd5f33cf0-4a14-451b-8b8c-5b3d001c7d6a', 'VKO', 'Moscow - Vnukovo', 'Russia', 'Active'
);

-- INSERT QUERY NO: 438
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'068a39a8-525d-4f3c-b9bd-80922517bc27', 'MMK', 'Murmansk', 'Russia', 'Active'
);

-- INSERT QUERY NO: 439
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'170f69bd-4409-4329-bf2a-53730b05e3fe', 'OVB', 'Novosibirsk - Tolmachevo', 'Russia', 'Active'
);

-- INSERT QUERY NO: 440
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'875a5455-ab53-4374-b90a-5af8c06ef9b0', 'LED', 'St. Petersburg (Leningrad) - Pulkovo', 'Russia', 'Active'
);

-- INSERT QUERY NO: 441
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2bc51ebf-ffab-43a3-bd27-b191223f0484', 'UUD', 'Ulan-Ude', 'Russia', 'Active'
);

-- INSERT QUERY NO: 442
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2b39eb0e-cb6e-47b7-8d60-897f2e138a73', 'VLU', 'Velikiye Luki (Welikije Luki)', 'Russia', 'Active'
);

-- INSERT QUERY NO: 443
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'71f1232c-f450-4811-9a59-daa5a00c875c', 'ARH', 'Arkhangelsk', 'Russian Federation', 'Active'
);

-- INSERT QUERY NO: 444
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'286c795c-467b-41f7-b792-bf1affc8cd7e', 'YKS', 'Yakutsk', 'Russian Federation', 'Active'
);

-- INSERT QUERY NO: 445
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'392e1db6-f27f-4784-b1cc-e312fa283142', 'BTS', 'Bratislava', 'Slovakia', 'Active'
);

-- INSERT QUERY NO: 446
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bedeba6e-8916-4d4d-b148-65a9103cb038', 'LJU', 'Ljubljana - Brnik', 'Slovenia', 'Active'
);

-- INSERT QUERY NO: 447
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7d5ca514-134d-4dc5-b352-78c923145cee', 'MBX', 'Maribor', 'Slovenia', 'Active'
);

-- INSERT QUERY NO: 448
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5c274bfd-b5e5-4092-b9a3-55b3ebf629f1', 'KBP', 'Kiev - Borispol', 'Ukraine', 'Active'
);

-- INSERT QUERY NO: 449
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd2ebe587-6be4-4940-a79d-615a6a0f5fb5', 'IEV', 'Kiev - Zhulhany', 'Ukraine', 'Active'
);

-- INSERT QUERY NO: 450
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd0db89ef-9101-4aac-8472-738e07087d17', 'LWO', '"Lvov (Lwow', ' Lemberg)"', 'Ukraine'
);

-- INSERT QUERY NO: 451
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'52ea49d3-605e-4ccd-9480-0b911951d704', 'NLV', 'Nikolaev', 'Ukraine', 'Active'
);

-- INSERT QUERY NO: 452
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b2f12275-c267-4c65-b2d8-93f24c5efc65', 'ODS', 'Odessa', 'Ukraine', 'Active'
);

-- INSERT QUERY NO: 453
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e8055b1c-86cc-4950-9312-c975d9bc2ba5', 'SIP', 'Simferopol', 'Ukraine', 'Active'
);

-- INSERT QUERY NO: 454
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c0b9f569-6169-46b8-b5f8-4179563a8e65', 'BEG', 'Belgrad (Beograd)', 'Yugoslavia', 'Active'
);

-- INSERT QUERY NO: 455
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'11080a99-4cf8-4d5e-aed0-626833ae6a3a', 'INI', 'Nis', 'Yugoslavia', 'Active'
);

-- INSERT QUERY NO: 456
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'47f1be19-9dd2-491f-8e2d-b357c5ff2170', 'QND', 'Novi Sad', 'Yugoslavia', 'Active'
);

-- INSERT QUERY NO: 457
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'538fcaa5-8da7-40bd-b127-35714bfffa2c', 'TGD', 'Podgorica', 'Yugoslavia', 'Active'
);

-- INSERT QUERY NO: 458
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e7dcc864-4fa1-4a2e-bd00-e9e0eb655293', 'PRN', 'Pristina', 'Yugoslavia', 'Active'
);

-- INSERT QUERY NO: 459
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'10b7bcfe-299e-470e-b380-618bb928743d', 'TIV', 'Tivat', 'Yugoslavia', 'Active'
);

-- INSERT QUERY NO: 460
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b80b0022-969f-4668-84ff-9a9e349b07ba', 'TIA', 'Tirana - Rinas', 'Albania', 'Active'
);

-- INSERT QUERY NO: 461
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ad95d222-6831-4a75-824c-db4945570641', 'INN', 'Innsbruck - Kranebitten', 'Austria', 'Active'
);

-- INSERT QUERY NO: 462
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd60fc214-5cf1-4c41-b605-9a99fec0b482', 'SZG', 'Salzburg - W.A. Mozart', 'Austria', 'Active'
);

-- INSERT QUERY NO: 463
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'64fd0ca1-f3a1-4b2b-aedf-3104e02c83b2', 'VIE', 'Wien (Vienna) - Vienna Int', 'Austria', 'Active'
);

-- INSERT QUERY NO: 464
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'931aecd1-5160-480c-8d57-bc3f0d8a3ca3', 'CPH', 'Copenhagen', 'Denmark', 'Active'
);

-- INSERT QUERY NO: 465
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e2f65e84-7214-42f6-b5d7-2e8913482932', 'HEL', 'Helsinki - Vantaa', 'Finland', 'Active'
);

-- INSERT QUERY NO: 466
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fbfd4434-e0c8-4097-b8d4-ea9f565d9f42', 'BER', 'Berlin', 'Germany', 'Active'
);

-- INSERT QUERY NO: 467
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3df035ce-f719-4c7c-9014-131ec3e4e8b7', 'SXF', '"Berlin', ' Schoenefeld"', 'Germany'
);

-- INSERT QUERY NO: 468
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd5465cab-24c7-46bf-9ad4-d9be43e8b7fb', 'TXL', '"Berlin', ' Tegel"', 'Germany'
);

-- INSERT QUERY NO: 469
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b97db51e-eda9-4b59-abb4-6210867eb304', 'DRS', 'Dresden', 'Germany', 'Active'
);

-- INSERT QUERY NO: 470
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dcd49ac0-67fd-4a5c-8a75-0a5f555891af', 'HAM', 'Hamburg - Fuhlsbuettel', 'Germany', 'Active'
);

-- INSERT QUERY NO: 471
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'57a7bffc-38e7-423e-88c2-ab5e53d57983', 'ATH', 'Athens', 'Greece', 'Active'
);

-- INSERT QUERY NO: 472
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'01ac7cdb-f96c-4f29-a6ae-5666fb79e34e', 'HEW', '"Athens', ' Hellinikon Airport"', 'Greece'
);

-- INSERT QUERY NO: 473
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4aea75b5-4588-4272-908d-d2fbf0a9db07', 'CFU', 'Corfu', 'Greece', 'Active'
);

-- INSERT QUERY NO: 474
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1ea2a7ab-d703-4cb3-a9cd-16e7235153b5', 'KGS', 'Kos', 'Greece', 'Active'
);

-- INSERT QUERY NO: 475
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0ac1263e-34c1-4931-9dae-2c4983bc72e0', 'JMK', 'Mykonos', 'Greece', 'Active'
);

-- INSERT QUERY NO: 476
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7dba4c66-d772-4341-9738-3091c21ec4a1', 'MJT', 'Mytilene (Lesbos)', 'Greece', 'Active'
);

-- INSERT QUERY NO: 477
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9109bc48-a6d7-4efd-960d-374578d6e009', 'RHO', 'Rhodos', 'Greece', 'Active'
);

-- INSERT QUERY NO: 478
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2c5fda06-5ca5-4022-b6a9-d6fb2416ede4', 'SKG', 'Thessaloniki - Makedonia Apt.', 'Greece', 'Active'
);

-- INSERT QUERY NO: 479
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b6e063ab-c3e4-4e44-aba1-674e961d0c4e', 'IBZ', 'Ibiza', 'Ibiza/Spain', 'Active'
);

-- INSERT QUERY NO: 480
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd1e860f8-7bdb-41d7-b031-423ad1f604cb', 'ORK', 'Cork', 'Ireland', 'Active'
);

-- INSERT QUERY NO: 481
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'31d1edc1-2dcb-4fc2-9686-b7e65e1f981e', 'DUB', 'Dublin', 'Ireland', 'Active'
);

-- INSERT QUERY NO: 482
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'50c87f10-baf1-4437-9634-cda2e2701edc', 'GWY', 'Galway', 'Ireland', 'Active'
);

-- INSERT QUERY NO: 483
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0d6b0d2b-30b1-473b-ada3-a41677825c56', 'KIR', 'Kerry County', 'Ireland', 'Active'
);

-- INSERT QUERY NO: 484
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'175bd278-4543-4c0b-b678-6772fdeaa60c', 'NOC', 'Knock', 'Ireland', 'Active'
);

-- INSERT QUERY NO: 485
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'29c0f0d9-88c1-40b7-9e24-3bbd1235550e', 'SNN', 'Shannon (Limerick)', 'Ireland', 'Active'
);

-- INSERT QUERY NO: 486
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3c4f5217-7651-4cf7-aef4-40cad4683f66', 'CAG', 'Cagliari', 'Italy', 'Active'
);

-- INSERT QUERY NO: 487
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bc2e48c6-b08d-4d17-b64c-520cf89fe20f', 'MLA', 'Luga', 'Malta', 'Active'
);

-- INSERT QUERY NO: 488
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bfccf0bb-94b2-4b9a-afaa-65fd8261d474', 'BGO', 'Bergen', 'Norway', 'Active'
);

-- INSERT QUERY NO: 489
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2eae0c72-c53a-4b7c-94d2-ee3225bfb9e7', 'OSL', 'Oslo', 'Norway', 'Active'
);

-- INSERT QUERY NO: 490
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5b44ed6a-d49c-4047-83e2-b2287c5e162f', 'TRF', 'Oslo - Sandefjord', 'Norway', 'Active'
);

-- INSERT QUERY NO: 491
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'766c0b40-79c0-4fb7-8582-54fabb77abbe', 'KRK', 'Krakau', 'Poland', 'Active'
);

-- INSERT QUERY NO: 492
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'eef8fda6-c549-42e6-a13f-612c349c8c40', 'WAW', 'Warsaw', 'Poland', 'Active'
);

-- INSERT QUERY NO: 493
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'eac87745-e0e7-4d95-b829-9e6417dab0cc', 'LIS', 'Lisbon - Lisboa', 'Portugal', 'Active'
);

-- INSERT QUERY NO: 494
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'22c11bc1-eec8-4487-8d6e-6bdfed3405a4', 'PDL', 'Ponta Delgada', 'Portugal', 'Active'
);

-- INSERT QUERY NO: 495
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'96687721-4e47-441f-bf3d-07397a5474da', 'PMI', 'Palma de Mallorca', 'Spain', 'Active'
);

-- INSERT QUERY NO: 496
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'591bf071-825f-4eee-9e38-abfcca871e66', 'SVQ', 'Sevilla', 'Spain', 'Active'
);

-- INSERT QUERY NO: 497
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a9713619-6147-492d-adb7-54ee676bc3ff', 'VLC', 'Valencia', 'Spain', 'Active'
);

-- INSERT QUERY NO: 498
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1b81323d-f250-487b-8e13-8f89ac4e1f8c', 'GOT', 'Goteborg', 'Sweden', 'Active'
);

-- INSERT QUERY NO: 499
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'07ce83ad-4ca7-49f1-a284-615eac1d7c6f', 'STO', 'Stockholm Metropolitan Area', 'Sweden', 'Active'
);

-- INSERT QUERY NO: 500
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9aec1d2f-9af3-4910-b435-53606e7ccf33', 'ARN', 'Stockholm - Arlanda', 'Sweden', 'Active'
);

-- INSERT QUERY NO: 501
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'73667f72-f780-4b20-9651-a3a1cbf91abf', 'BMA', 'Stockholm - Bromma', 'Sweden', 'Active'
);

-- INSERT QUERY NO: 502
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1f91d7fb-af05-408c-96ae-6450d937b35f', 'BHD', 'Belfast - Harbour', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 503
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4e96f54e-44a6-4bf0-9c2b-915281f82070', 'BFS', 'Belfast International', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 504
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd6d6ed63-056b-4d75-b886-0097a0fb55d2', 'PIK', '"Glasgow', ' Prestwick"', 'United Kingdom'
);

-- INSERT QUERY NO: 505
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3c97a945-f442-42c4-be64-4568d9e7daf0', 'GLA', 'Glasgow', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 506
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f8bfc08e-4e18-4e79-ad80-479158f0baaf', 'INV', 'Inverness', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 507
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0ed12d88-d459-4ed2-b99c-7efa279da795', 'ALV', 'Andorra La Vella H/P', 'Andorra', 'Active'
);

-- INSERT QUERY NO: 508
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a37ecc4c-e415-4784-91d6-4ea97efc1676', 'GRZ', 'Graz', 'Austria', 'Active'
);

-- INSERT QUERY NO: 509
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1259c8eb-f8e8-4439-8638-490e2e57f33c', 'KLU', 'Klagenfurt', 'Austria', 'Active'
);

-- INSERT QUERY NO: 510
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f61520e1-0a90-40d3-bffb-ae2c15b9683b', 'LNZ', 'Linz - Hoersching', 'Austria', 'Active'
);

-- INSERT QUERY NO: 511
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1cfb2665-7fe3-4da2-a26e-688bf6567541', 'ANR', 'Antwerp', 'Belgium', 'Active'
);

-- INSERT QUERY NO: 512
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'616ab1d2-fffe-4c05-8a36-67b4f246b75f', 'BRU', 'Brussels', 'Belgium', 'Active'
);

-- INSERT QUERY NO: 513
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0d877cbd-198b-4d93-98b4-5c723a7dddac', 'LGG', 'Liege', 'Belgium', 'Active'
);

-- INSERT QUERY NO: 514
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'55d200f9-7b5c-4ffe-b5c1-8a8b57dc59d5', 'AKT', 'Akrotiri - RAF', 'Cyprus', 'Active'
);

-- INSERT QUERY NO: 515
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ad04641e-7686-41a5-8b07-2ce0147d81fc', 'LCA', 'Larnaca', 'Cyprus', 'Active'
);

-- INSERT QUERY NO: 516
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'29c31a75-994d-4498-a416-174dc3ea859a', 'QLI', 'Limassol', 'Cyprus', 'Active'
);

-- INSERT QUERY NO: 517
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fdc2d761-a42d-4611-8055-fa55c2e1ce71', 'NIC', 'Nicosia', 'Cyprus', 'Active'
);

-- INSERT QUERY NO: 518
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7758fd32-b0ef-4aba-9538-b7c7e5a1b0a8', 'PFO', 'Paphos', 'Cyprus', 'Active'
);

-- INSERT QUERY NO: 519
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'660e075f-e90c-4ce8-8bad-60cfdb8ff5df', 'PRG', 'Prague - Ruzyne', 'Czech Republic', 'Active'
);

-- INSERT QUERY NO: 520
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'53fc867e-dc8c-4c9e-a70a-90ddec91a902', 'AAR', 'Aarhus', 'Denmark', 'Active'
);

-- INSERT QUERY NO: 521
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c6981621-bb45-4349-999a-c0c5c542a195', 'AAL', 'Alborg', 'Denmark', 'Active'
);

-- INSERT QUERY NO: 522
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2b3cb396-3710-408d-aadf-699b1cadf0b5', 'BLL', 'Billund', 'Denmark', 'Active'
);

-- INSERT QUERY NO: 523
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3b634eef-b546-4ec9-bd18-756f52036375', 'EBJ', 'Esbjerg', 'Denmark', 'Active'
);

-- INSERT QUERY NO: 524
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ba906b8f-0b26-49a5-8900-75c36ebc345a', 'FAE', 'Faroer', 'Denmark', 'Active'
);

-- INSERT QUERY NO: 525
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c8cff92e-2046-4b36-a141-40a98e156f12', 'KRP', 'Karup', 'Denmark', 'Active'
);

-- INSERT QUERY NO: 526
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8ec163de-4b58-4db4-9618-9edf4e081c3c', 'ODE', 'Odense', 'Denmark', 'Active'
);

-- INSERT QUERY NO: 527
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'78aadf47-ddb8-48ec-9dd5-c7f981966755', 'RNN', 'Roenne', 'Denmark', 'Active'
);

-- INSERT QUERY NO: 528
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8a07c4ca-20b7-4549-b42a-5593410280bd', 'SKS', 'Skrydstrup', 'Denmark', 'Active'
);

-- INSERT QUERY NO: 529
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1fd538c6-acb4-4309-bc87-ba890ab81805', 'SGD', 'Soenderborg', 'Denmark', 'Active'
);

-- INSERT QUERY NO: 530
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5d837ab4-81fc-48f9-afff-29c4edb671f8', 'TED', 'Thisted', 'Denmark', 'Active'
);

-- INSERT QUERY NO: 531
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3e90ae8e-e233-4b32-90b9-b2bd0e8aeea7', 'ENF', 'Enontekioe', 'Finland', 'Active'
);

-- INSERT QUERY NO: 532
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b045bb66-5f58-49cb-806a-bf53240b50f6', 'IVL', 'Ivalo', 'Finland', 'Active'
);

-- INSERT QUERY NO: 533
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5d79c81d-cf64-4380-b6e2-d7d824ba9226', 'JOE', 'Joensuu', 'Finland', 'Active'
);

-- INSERT QUERY NO: 534
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2ddd565a-c1eb-4b7e-80e7-899fb519908b', 'JYV', 'Jyvaeskylae', 'Finland', 'Active'
);

-- INSERT QUERY NO: 535
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'05942d98-f2f7-4ea0-b17d-11412c41ef28', 'KAJ', 'Kajaani', 'Finland', 'Active'
);

-- INSERT QUERY NO: 536
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b29ee9b3-5f3e-4bf7-b09f-fe95c5e38f72', 'KHJ', 'Kauhajoki', 'Finland', 'Active'
);

-- INSERT QUERY NO: 537
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0e3eb616-d271-49c1-a6ec-18eb737c1eda', 'KEM', 'Kemi/Tornio', 'Finland', 'Active'
);

-- INSERT QUERY NO: 538
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'96fdced9-9202-47d1-90fa-081268fd2d3d', 'KTT', 'Kittilä', 'Finland', 'Active'
);

-- INSERT QUERY NO: 539
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'554a74c2-e412-4c6b-8b10-0c59ec505eda', 'KOK', 'Kokkola/Pietarsaari', 'Finland', 'Active'
);

-- INSERT QUERY NO: 540
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9e0f3aa3-dedd-4cef-929f-386b916c532f', 'KUO', 'Kuopio', 'Finland', 'Active'
);

-- INSERT QUERY NO: 541
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a594a08b-dcbc-4500-b871-ac1f6c9272c2', 'KAO', 'Kuusamo', 'Finland', 'Active'
);

-- INSERT QUERY NO: 542
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0aff5b85-e92b-488f-a4d4-fcb9e58e2cfb', 'LPP', 'Lappeenranta', 'Finland', 'Active'
);

-- INSERT QUERY NO: 543
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'35fd83ec-dbc7-4ba6-b299-574ed0f96c28', 'MHQ', 'Mariehamn (Maarianhamina)', 'Finland', 'Active'
);

-- INSERT QUERY NO: 544
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'836ffe79-45f3-4056-a6ed-ecc20ea1a4ba', 'MIK', 'Mikkeli', 'Finland', 'Active'
);

-- INSERT QUERY NO: 545
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a500b6ea-f020-4708-b32a-f9e32a3743f4', 'OUL', 'Oulu', 'Finland', 'Active'
);

-- INSERT QUERY NO: 546
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'42aec21e-4b08-4b32-8364-ab06f8f70448', 'POR', 'Pori', 'Finland', 'Active'
);

-- INSERT QUERY NO: 547
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'efbd361a-1238-4fef-bebf-d665b7e3ee35', 'RVN', 'Rovaniemi', 'Finland', 'Active'
);

-- INSERT QUERY NO: 548
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'54f61e21-d319-4446-85a0-63a9e72d8553', 'SVL', 'Savonlinna', 'Finland', 'Active'
);

-- INSERT QUERY NO: 549
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'712d079f-b2fd-4e8a-b76a-5c182d1251e4', 'SJY', 'Seinaejoki', 'Finland', 'Active'
);

-- INSERT QUERY NO: 550
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'96ee98e1-26ce-4d17-a730-b8304a34fcee', 'SOT', 'Sodankylae', 'Finland', 'Active'
);

-- INSERT QUERY NO: 551
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4cf2e376-5ddc-45dc-879f-d3917221755c', 'TMP', 'Tampere', 'Finland', 'Active'
);

-- INSERT QUERY NO: 552
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'beee649d-9127-4c7c-90d6-5e4e351667de', 'TKU', 'Turku', 'Finland', 'Active'
);

-- INSERT QUERY NO: 553
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a4bebae6-62f6-48b7-802f-017ac36a90a0', 'VAA', 'Vaasa', 'Finland', 'Active'
);

-- INSERT QUERY NO: 554
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c8c8dab6-ca97-42a3-9f0a-c71e27ec8768', 'VRK', 'Varkaus', 'Finland', 'Active'
);

-- INSERT QUERY NO: 555
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'aa392c13-1782-492f-8971-5025bb0e8fdc', 'AJA', 'Ajaccio', 'France', 'Active'
);

-- INSERT QUERY NO: 556
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'62f2677e-1275-4098-b32d-dde90400ce85', 'LBI', 'Albi', 'France', 'Active'
);

-- INSERT QUERY NO: 557
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4113437e-c395-4ce7-8c6c-e0d10177b56f', 'NCY', 'Annecy', 'France', 'Active'
);

-- INSERT QUERY NO: 558
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e8cb998a-5233-46af-bd3f-c351a9c77d70', 'AUR', 'Aurillac', 'France', 'Active'
);

-- INSERT QUERY NO: 559
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c98fdd94-4ea6-4cc3-a555-86229d17c932', 'BIA', 'Bastia', 'France', 'Active'
);

-- INSERT QUERY NO: 560
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1cfc9cf1-cede-4262-be98-d5cd70550d9e', 'BIQ', 'Biarritz', 'France', 'Active'
);

-- INSERT QUERY NO: 561
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'77944d6b-8308-4b75-a392-66d08cb90016', 'BOD', 'Bordeaux', 'France', 'Active'
);

-- INSERT QUERY NO: 562
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c0410bca-a819-45c0-af98-dba2a1793f34', 'BES', 'Brest', 'France', 'Active'
);

-- INSERT QUERY NO: 563
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c6b05e21-74da-46ca-a3df-7714194d4710', 'CLY', 'Calvi', 'France', 'Active'
);

-- INSERT QUERY NO: 564
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9594463a-3d9f-4277-96de-3087477726e9', 'CMF', 'Chambery', 'France', 'Active'
);

-- INSERT QUERY NO: 565
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c68b6b7e-3407-4393-89cc-9da1e06e9a8d', 'CFE', 'Clermont Ferrand', 'France', 'Active'
);

-- INSERT QUERY NO: 566
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8b92d133-b991-47d1-b29e-ee09fabd4ad8', 'DNR', 'Dinard', 'France', 'Active'
);

-- INSERT QUERY NO: 567
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'272dbf57-be24-4a8c-9dc6-b38adc8cddd2', 'FSC', 'Figari', 'France', 'Active'
);

-- INSERT QUERY NO: 568
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd76a4995-3b46-4724-b43e-b8988c62e8c5', 'FRJ', 'Frejus', 'France', 'Active'
);

-- INSERT QUERY NO: 569
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fe7945b4-5c45-484e-968b-e9b9bfbdc5e6', 'GNB', 'Grenoble', 'France', 'Active'
);

-- INSERT QUERY NO: 570
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b3810f83-6ca3-4bac-986a-aadadc1ba2ee', 'LRH', 'La Rochelle', 'France', 'Active'
);

-- INSERT QUERY NO: 571
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dadf9350-641d-43b2-a65c-315a986857dc', 'LAI', 'Lannion', 'France', 'Active'
);

-- INSERT QUERY NO: 572
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a4e3d422-3a90-4a69-8d9b-fe02b451015d', 'LIL', 'Lille', 'France', 'Active'
);

-- INSERT QUERY NO: 573
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2ea20cf6-6fe4-4b35-9ff0-6946dbcba31b', 'LIG', 'Limoges', 'France', 'Active'
);

-- INSERT QUERY NO: 574
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b4fd3ddd-da26-4215-8a7f-eb8fc303bc1d', 'LRT', 'Lorient', 'France', 'Active'
);

-- INSERT QUERY NO: 575
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'61a44435-9089-451a-87a7-819458884a1e', 'LDE', 'Lourdes/Tarbes', 'France', 'Active'
);

-- INSERT QUERY NO: 576
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'824daca5-9ab2-4047-be3a-4a723002e653', 'LYS', 'Lyon', 'France', 'Active'
);

-- INSERT QUERY NO: 577
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c600b403-e92c-4934-a132-0c621a699abb', 'MRS', 'Marseille', 'France', 'Active'
);

-- INSERT QUERY NO: 578
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dc45494e-707d-4184-8e41-e4d952ec1d26', 'MZM', 'Metz', 'France', 'Active'
);

-- INSERT QUERY NO: 579
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7bd94fc7-f4be-40c6-a9e5-afaa3501d6ed', 'MPL', 'Montpellier - Frejorgues', 'France', 'Active'
);

-- INSERT QUERY NO: 580
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'be02136e-f77c-469b-8e0d-180f7615464f', 'MLH', 'Mulhouse', 'France', 'Active'
);

-- INSERT QUERY NO: 581
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2cdbd303-9932-46b1-8278-5f25711233be', 'ENC', 'Nancy', 'France', 'Active'
);

-- INSERT QUERY NO: 582
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f04a31af-e29a-4045-a1cc-14e034ee6ebe', 'NTE', 'Nantes', 'France', 'Active'
);

-- INSERT QUERY NO: 583
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a1cbb24f-4a5f-4b9d-ad37-6f1385f85a3c', 'NCE', 'Nice - Cote DAzur', 'France', 'Active'
);

-- INSERT QUERY NO: 584
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a56a717d-d683-4c48-8570-2c807d970f64', 'FNI', 'Nimes', 'France', 'Active'
);

-- INSERT QUERY NO: 585
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9579ee8d-0b90-431e-8003-90dd5392f9e9', 'PAR', 'Paris', 'France', 'Active'
);

-- INSERT QUERY NO: 586
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1ed1c41f-dc46-4d12-91d4-cd8d31028707', 'CDG', 'Paris - Charles de Gaulle', 'France', 'Active'
);

-- INSERT QUERY NO: 587
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'88d731ce-d6a9-4d24-baab-3d9beca8062d', 'LBG', 'Paris - Le Bourget', 'France', 'Active'
);

-- INSERT QUERY NO: 588
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7dcb4779-85b2-48f3-9848-762be5b4591e', 'ORY', 'Paris - Orly', 'France', 'Active'
);

-- INSERT QUERY NO: 589
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'35847a08-93a1-403d-b457-cab1a6a0441c', 'PUF', 'Pau', 'France', 'Active'
);

-- INSERT QUERY NO: 590
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd40dc49d-592e-4df3-a962-6deb49d300bf', 'PGF', 'Perpignan', 'France', 'Active'
);

-- INSERT QUERY NO: 591
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'92048495-6a67-4966-b1c3-aa61174369e2', 'UIP', 'Quimper', 'France', 'Active'
);

-- INSERT QUERY NO: 592
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'175166ee-5b57-40b4-a67f-d2c1312ad2bd', 'RNS', 'Rennes', 'France', 'Active'
);

-- INSERT QUERY NO: 593
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'720007f2-50ee-40fb-b8d5-d8d144223bc3', 'RNE', 'Roanne', 'France', 'Active'
);

-- INSERT QUERY NO: 594
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5cad5a66-5754-4204-919a-29a6c2eb7776', 'RDZ', 'Rodez', 'France', 'Active'
);

-- INSERT QUERY NO: 595
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c2f2dc45-30e4-48ee-ab22-9fe082c6bd03', 'SBK', 'Saint Brieuc', 'France', 'Active'
);

-- INSERT QUERY NO: 596
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c0267e1d-17c3-4d10-91e4-a8a49155ca2e', 'EBU', 'St. Etienne', 'France', 'Active'
);

-- INSERT QUERY NO: 597
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd316654e-752e-483a-a907-0af45d9580f7', 'SXB', 'Strassburg', 'France', 'Active'
);

-- INSERT QUERY NO: 598
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5006941c-d511-4472-bbad-4e812c462eb6', 'TLS', 'Toulouse - Blagnac', 'France', 'Active'
);

-- INSERT QUERY NO: 599
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'aaf56ede-b324-458e-a05c-2c10f0544ef2', 'AGB', 'Augsburg', 'Germany', 'Active'
);

-- INSERT QUERY NO: 600
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd625876e-f469-4b5d-a2b5-ad2ef0264234', 'BYU', 'Bayreuth', 'Germany', 'Active'
);

-- INSERT QUERY NO: 601
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'10fc3f68-786f-4fe3-8633-4e834360caba', 'BRE', 'Bremen', 'Germany', 'Active'
);

-- INSERT QUERY NO: 602
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'86fb7455-5bc2-466c-9876-cf2d9df6dd49', 'CGN', 'Cologne (Koeln)/Bonn', 'Germany', 'Active'
);

-- INSERT QUERY NO: 603
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a5875335-d2e3-43a8-90e4-4835db4616e2', 'DTM', 'Dortmund', 'Germany', 'Active'
);

-- INSERT QUERY NO: 604
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd038ef29-f20f-40a0-bcba-6efe35f5194a', 'DUS', 'Duesseldorf', 'Germany', 'Active'
);

-- INSERT QUERY NO: 605
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0ecfe339-950f-4686-8079-8e41c5bfaacb', 'ERF', 'Erfurt', 'Germany', 'Active'
);

-- INSERT QUERY NO: 606
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e9c12fda-bde0-4b69-98c4-f3d45f21c399', 'FRA', 'Frankfurt/Main Int Airport', 'Germany', 'Active'
);

-- INSERT QUERY NO: 607
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'94bed581-676d-4385-8d86-b58ddc063742', 'HNN', 'Frankfurt/Hahn', 'Germany', 'Active'
);

-- INSERT QUERY NO: 608
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a3af8940-766d-48f4-beae-43d00cbed91a', 'FDH', 'Friedrichshafen', 'Germany', 'Active'
);

-- INSERT QUERY NO: 609
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'15360044-deab-4989-aed8-0a2ed26b0876', 'HAJ', 'Hannover', 'Germany', 'Active'
);

-- INSERT QUERY NO: 610
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3906ffd9-bdc9-4c9e-a943-c3de73a08b8f', 'HOQ', 'Hof', 'Germany', 'Active'
);

-- INSERT QUERY NO: 611
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1da697cc-d984-4fe9-b461-abf0badb609f', 'FKB', 'Karlsruhe-Baden - Soellingen', 'Germany', 'Active'
);

-- INSERT QUERY NO: 612
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'34e7fa34-4842-43f4-a825-6a4a74c0c9a6', 'KEL', 'Kiel - Holtenau', 'Germany', 'Active'
);

-- INSERT QUERY NO: 613
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'591d0670-41c0-46bf-a45c-06c80b83337b', 'CGN', '"Köln', ' Köln/Bonn"', 'Germany'
);

-- INSERT QUERY NO: 614
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9a84ce36-8554-4bad-9942-8b0c3a05784c', 'LEJ', 'Leipzig', 'Germany', 'Active'
);

-- INSERT QUERY NO: 615
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'438ea136-f7c1-47c7-a590-6d150b6aab2b', 'MUC', 'Muenchen (Munich) - Franz Josef Strauss', 'Germany', 'Active'
);

-- INSERT QUERY NO: 616
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ace718f5-06bc-4224-82cc-a21c76a0c056', 'FMO', 'Muenster/Osnabrueck', 'Germany', 'Active'
);

-- INSERT QUERY NO: 617
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b4e33d7a-c6d8-401f-a77d-be45d666c7aa', 'MSR', 'Muenster/Osnabrueck', 'Germany', 'Active'
);

-- INSERT QUERY NO: 618
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'20a6239d-4572-4cba-8468-6118c0fe6ede', 'NUE', 'Nürnberg (Nuremberg)', 'Germany', 'Active'
);

-- INSERT QUERY NO: 619
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3c726c8b-8147-42b8-a0c7-5ec9269491c8', 'PAD', 'Paderborn/Lippstadt', 'Germany', 'Active'
);

-- INSERT QUERY NO: 620
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ae9c4713-fc1d-45fa-8c9a-66e227919f08', 'SCN', 'Saarbruecken', 'Germany', 'Active'
);

-- INSERT QUERY NO: 621
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a6f35f38-c478-45d1-a807-3299ee490365', 'STR', 'Stuttgart - Echterdingen', 'Germany', 'Active'
);

-- INSERT QUERY NO: 622
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'66422b5f-0fed-46d1-8e4a-c0faa059073b', 'GWT', 'Westerland', 'Germany', 'Active'
);

-- INSERT QUERY NO: 623
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'639df6c1-aeee-4c5e-bcc7-ffcd7ac3ecac', 'WIE', '"Wiesbaden', ' Air Base"', 'Germany'
);

-- INSERT QUERY NO: 624
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'15a37238-386e-4731-8497-106c8d8721ef', 'GIB', 'Gibraltar', 'Gibraltar', 'Active'
);

-- INSERT QUERY NO: 625
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd91225ca-5f9c-45cd-9504-a3dffe9c4d28', 'GPA', 'Araxos', 'Greece', 'Active'
);

-- INSERT QUERY NO: 626
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'530c1a3f-336e-4b35-a1f3-94c854bd7224', 'CHQ', 'Chania', 'Greece', 'Active'
);

-- INSERT QUERY NO: 627
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'09466d64-394c-45c5-b8c9-25b8c604ad96', 'JKH', 'Chios', 'Greece', 'Active'
);

-- INSERT QUERY NO: 628
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b9bc3fce-03b8-4eef-9b52-9d53aa21a1c0', 'HER', 'Heraklion', 'Greece', 'Active'
);

-- INSERT QUERY NO: 629
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'621548a7-947c-4034-88b2-2644a6888b1d', 'KLX', 'Kalamata', 'Greece', 'Active'
);

-- INSERT QUERY NO: 630
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2d827f4e-81ac-4d0c-8859-7a64dca21e74', 'AOK', 'Karpathos', 'Greece', 'Active'
);

-- INSERT QUERY NO: 631
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f7972da2-8d79-40bd-8008-7b61665a62b4', 'KVA', 'Kavalla', 'Greece', 'Active'
);

-- INSERT QUERY NO: 632
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5edb0cc5-9495-4590-8170-4d7956f40e57', 'PVK', 'Preveza/Lefkas', 'Greece', 'Active'
);

-- INSERT QUERY NO: 633
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'46ee3511-da56-4aa3-9eeb-ee1a06432335', 'SKG', 'Saloniki', 'Greece', 'Active'
);

-- INSERT QUERY NO: 634
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e25b21f1-2e34-4b89-832b-5c0b7ddd50ee', 'SMI', 'Samos', 'Greece', 'Active'
);

-- INSERT QUERY NO: 635
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'caab64be-ff1d-4024-9bb9-f6fb41379911', 'JSI', 'Skiathos', 'Greece', 'Active'
);

-- INSERT QUERY NO: 636
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b6a09f13-c181-4fe5-a74b-5d768d8ad784', 'JTR', 'Thira', 'Greece', 'Active'
);

-- INSERT QUERY NO: 637
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ddf37e1e-8dce-4d24-8cda-9547d74d4a79', 'ZTH', 'Zakynthos', 'Greece', 'Active'
);

-- INSERT QUERY NO: 638
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'edcc34d9-a0de-4179-bdbd-8636227ee87a', 'CXI', 'Christmas Line', 'Iceland', 'Active'
);

-- INSERT QUERY NO: 639
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0a2cbe67-4f12-47aa-9b32-6c5ab0d48d9f', 'EGS', 'Egilsstadir', 'Iceland', 'Active'
);

-- INSERT QUERY NO: 640
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'536c7a0d-b85c-483e-8045-2447a6295be6', 'REK', 'Reykjavik - Metropolitan Area', 'Iceland', 'Active'
);

-- INSERT QUERY NO: 641
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'195ba9f8-39f6-4276-aca4-b73d3805067e', 'KEF', 'Reykjavik - Keflavik International', 'Iceland', 'Active'
);

-- INSERT QUERY NO: 642
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f53977fb-9441-460a-9d79-ba4ba83ca9a7', 'SXL', 'Sligo', 'Ireland', 'Active'
);

-- INSERT QUERY NO: 643
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8dd527f8-a93b-423a-bb73-7858712c294f', 'AHO', 'Alghero Sassari', 'Italy', 'Active'
);

-- INSERT QUERY NO: 644
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'76096a2b-0007-4c1e-b82d-0c938ee6b964', 'AOI', 'Ancona', 'Italy', 'Active'
);

-- INSERT QUERY NO: 645
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'57d4500f-ac6e-4bf7-abbb-75446b6175aa', 'BRI', 'Bari', 'Italy', 'Active'
);

-- INSERT QUERY NO: 646
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'44320c4f-590d-4240-a9f9-538399a40924', 'BGY', 'Bergamo', 'Italy', 'Active'
);

-- INSERT QUERY NO: 647
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c0e62efe-f142-42f5-8672-4cda2936447b', 'BLQ', 'Bologna', 'Italy', 'Active'
);

-- INSERT QUERY NO: 648
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6d1ceee5-4445-4fb5-8b7c-91ec0f24e5e7', 'VBS', '"Brescia', ' Montichiari"', 'Italy'
);

-- INSERT QUERY NO: 649
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1668e77e-a85a-4da5-8e58-5a22e3b8f674', 'BDS', 'Brindisi', 'Italy', 'Active'
);

-- INSERT QUERY NO: 650
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b6dc94f1-edd2-489f-ac12-0cf83f905b95', 'CTA', 'Catania', 'Italy', 'Active'
);

-- INSERT QUERY NO: 651
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9de7ed56-4b22-45c6-b025-fe0224c570b9', 'FLR', 'Florence', 'Italy', 'Active'
);

-- INSERT QUERY NO: 652
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'233086ba-0d92-48b5-9141-768853551672', 'GOA', 'Genoa', 'Italy', 'Active'
);

-- INSERT QUERY NO: 653
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8a13beb2-adf2-4836-92fb-8633be52aae8', 'SUF', 'Lamezia Terme', 'Italy', 'Active'
);

-- INSERT QUERY NO: 654
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'956a9dd3-f220-4908-95ba-0c3eaf78905a', 'LMP', 'Lampedusa', 'Italy', 'Active'
);

-- INSERT QUERY NO: 655
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'513df06b-7e35-483c-ab8d-95e6ce935e96', 'MIL', 'Milan', 'Italy', 'Active'
);

-- INSERT QUERY NO: 656
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'92f77808-f5e3-49c2-a9af-d056b7885563', 'LIN', 'Milan - Linate', 'Italy', 'Active'
);

-- INSERT QUERY NO: 657
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9ae841a5-d33c-4f18-a2ea-03af6d54959e', 'MXP', 'Milan - Malpensa', 'Italy', 'Active'
);

-- INSERT QUERY NO: 658
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'594ef36a-b6fa-465b-89af-fccfdea7ce6c', 'BGY', 'Milan - Orio Al Serio', 'Italy', 'Active'
);

-- INSERT QUERY NO: 659
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9c357abd-5f19-437c-b6c9-75ff22829aeb', 'NAP', 'Naples', 'Italy', 'Active'
);

-- INSERT QUERY NO: 660
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'06b08f34-afe6-4d35-8866-14a107006f28', 'OLB', 'Olbia', 'Italy', 'Active'
);

-- INSERT QUERY NO: 661
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0fc8b55d-440b-445e-8518-9722db595b5c', 'PMO', 'Palermo - Punta Raisi', 'Italy', 'Active'
);

-- INSERT QUERY NO: 662
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'750b7e46-c997-4add-9f24-13e1cf9ea33b', 'PNL', 'Pantelleria', 'Italy', 'Active'
);

-- INSERT QUERY NO: 663
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2d7997db-704b-4e44-b49c-158a0e46fdb4', 'PEG', 'Perugia', 'Italy', 'Active'
);

-- INSERT QUERY NO: 664
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'458298fd-6c10-48c4-88ea-82f51f2fc75f', 'PSR', 'Pescara', 'Italy', 'Active'
);

-- INSERT QUERY NO: 665
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2aad2adf-a097-4909-99b0-ebe36419cfb6', 'PSA', 'Pisa - Gal Galilei', 'Italy', 'Active'
);

-- INSERT QUERY NO: 666
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'467adb42-8136-42cf-8580-14f194d6525f', 'REG', 'Reggio Calabria', 'Italy', 'Active'
);

-- INSERT QUERY NO: 667
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'92f79837-1cca-4bf2-be7b-e8efbf8472e2', 'RMI', 'Rimini', 'Italy', 'Active'
);

-- INSERT QUERY NO: 668
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a7624f87-0b43-45d7-91cf-8b1b3c8a3d22', 'ROM', 'Rome', 'Italy', 'Active'
);

-- INSERT QUERY NO: 669
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'66006fc8-1e2c-4da7-87eb-625c90f76aff', 'CIA', 'Rome - Ciampino', 'Italy', 'Active'
);

-- INSERT QUERY NO: 670
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'86973ed9-d3cc-4110-9b11-a0de1fff7bcc', 'FCO', 'Rome - Fuimicino', 'Italy', 'Active'
);

-- INSERT QUERY NO: 671
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ed6d0d76-31fe-47d6-9d02-bbba0bd12c8a', 'TPS', 'Trapani', 'Italy', 'Active'
);

-- INSERT QUERY NO: 672
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0dcae932-ab08-44ec-a515-025bb08cb53b', 'TSF', 'Treviso', 'Italy', 'Active'
);

-- INSERT QUERY NO: 673
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'01d54dbf-1f44-4551-bf60-3ece1e889fdc', 'TRS', 'Trieste', 'Italy', 'Active'
);

-- INSERT QUERY NO: 674
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'cbf80274-ce76-412f-a222-87f0abf3f608', 'TRN', 'Turin', 'Italy', 'Active'
);

-- INSERT QUERY NO: 675
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4a4b37bd-4f6c-47ed-8548-d5d1fea71efc', 'VCE', 'Venice - Marco Polo', 'Italy', 'Active'
);

-- INSERT QUERY NO: 676
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'da30ade6-b873-4fbb-ab33-a20c84d017da', 'VBS', 'Verona (Brescia) Montichiari', 'Italy', 'Active'
);

-- INSERT QUERY NO: 677
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ca1dc59e-2227-468b-9eee-32b5174848dd', 'VRN', 'Verona', 'Italy', 'Active'
);

-- INSERT QUERY NO: 678
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2e23af8b-ae0e-4dcf-a496-b914223fea3b', 'LUX', 'Luxembourg', 'Luxembourg', 'Active'
);

-- INSERT QUERY NO: 679
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'937ca5a2-2c44-4a3d-a573-4b2e986131b6', 'AMS', '"Amsterdam', ' Schiphol"', 'Netherlands'
);

-- INSERT QUERY NO: 680
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a12128cb-7214-43a5-b90e-67f5bfe0bc9f', 'HAG', 'Den Haag (The Hague)', 'Netherlands', 'Active'
);

-- INSERT QUERY NO: 681
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ebcfc04e-b389-4b47-a848-8b434192cfd7', 'EIN', 'Eindhoven', 'Netherlands', 'Active'
);

-- INSERT QUERY NO: 682
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'99ef6c73-2590-4182-abd9-a0e6def7b8bf', 'LEY', 'Lelystad', 'Netherlands', 'Active'
);

-- INSERT QUERY NO: 683
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2b4cbb47-0919-46e9-a006-233ffa6b0103', 'MST', 'Maastricht/Aachen', 'Netherlands', 'Active'
);

-- INSERT QUERY NO: 684
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ff8fa685-f9e3-4ec0-b624-388e4acd8929', 'RTM', 'Rotterdam', 'Netherlands', 'Active'
);

-- INSERT QUERY NO: 685
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'839126c8-c49b-4809-aaca-55b2543547a6', 'AES', 'Alesund', 'Norway', 'Active'
);

-- INSERT QUERY NO: 686
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8e5375bf-3029-4f2f-8b72-5b5927914c08', 'ALF', 'Alta', 'Norway', 'Active'
);

-- INSERT QUERY NO: 687
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a877edba-d99e-4131-90da-724bf66cde97', 'BDU', 'Bardufoss', 'Norway', 'Active'
);

-- INSERT QUERY NO: 688
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'acf18709-9ab6-4296-84eb-4b40ef9c2e86', 'BOO', 'Bodo', 'Norway', 'Active'
);

-- INSERT QUERY NO: 689
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4e7e4a58-2a21-4da4-a75f-46eac98acd30', 'BNN', 'Broennoeysund', 'Norway', 'Active'
);

-- INSERT QUERY NO: 690
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'36ccf71f-49be-48df-bbdd-a4bcdece7a1f', 'EVE', 'Evenes', 'Norway', 'Active'
);

-- INSERT QUERY NO: 691
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c4247363-7fde-45d2-8ba3-28cf00fca5e9', 'FRO', 'Floro', 'Norway', 'Active'
);

-- INSERT QUERY NO: 692
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'806f8344-555d-4df3-8178-de16b6cee28d', 'HFT', 'Hammerfest', 'Norway', 'Active'
);

-- INSERT QUERY NO: 693
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a1b449b5-802e-41eb-b982-45bc4688f7f0', 'HAU', 'Haugesund', 'Norway', 'Active'
);

-- INSERT QUERY NO: 694
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'59b2aebf-258c-49a8-8a74-397a3bee6fe8', 'KKN', 'Kirkenes', 'Norway', 'Active'
);

-- INSERT QUERY NO: 695
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'94865c22-fe9b-4091-b10e-e633fb211253', 'KRS', 'Kristiansand', 'Norway', 'Active'
);

-- INSERT QUERY NO: 696
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'db5cd7ee-e9db-49a8-80ad-a0a8e52c7c15', 'KSU', 'Kristiansund', 'Norway', 'Active'
);

-- INSERT QUERY NO: 697
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'45b499ad-6160-444e-8776-6e7710de2e05', 'LKL', 'Lakselv', 'Norway', 'Active'
);

-- INSERT QUERY NO: 698
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f3134581-a126-4a2b-8818-e9404aa781e0', 'SOG', 'Sogndal', 'Norway', 'Active'
);

-- INSERT QUERY NO: 699
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c96d6f90-e5ee-42da-84fa-50101f77c166', 'SVG', 'Stavanger', 'Norway', 'Active'
);

-- INSERT QUERY NO: 700
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6efe9e55-4ed2-4b0f-af99-b29dca91a297', 'TOS', 'Tromsoe', 'Norway', 'Active'
);

-- INSERT QUERY NO: 701
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ede2483c-d52b-4dfd-bfeb-44f7d2b74c54', 'TRD', 'Trondheim', 'Norway', 'Active'
);

-- INSERT QUERY NO: 702
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'13ab7ced-f526-4b25-bf57-4cf364f90aee', 'GDN', 'Gdansk', 'Poland', 'Active'
);

-- INSERT QUERY NO: 703
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3fd914cc-3564-4e29-89c9-c61cd31b0d66', 'POZ', '"Poznan', ' Lawica"', 'Poland'
);

-- INSERT QUERY NO: 704
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ab75ff9c-51fe-4382-8241-fad17b770e3a', 'SZZ', 'Stettin', 'Poland', 'Active'
);

-- INSERT QUERY NO: 705
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd9e3e1b6-b1eb-4369-89e7-27fe04edb5a3', 'FAO', 'Faro', 'Portugal', 'Active'
);

-- INSERT QUERY NO: 706
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1a25a185-499f-45a2-8fc3-a27bb6606327', 'FNC', 'Funchal', 'Portugal', 'Active'
);

-- INSERT QUERY NO: 707
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd0e9e82c-cc67-48f5-b759-fd3c3c2bdecd', 'HOR', 'Horta', 'Portugal', 'Active'
);

-- INSERT QUERY NO: 708
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ddb2d5d5-70e5-4ed8-82fa-5e504b4007ac', 'OPO', 'Porto', 'Portugal', 'Active'
);

-- INSERT QUERY NO: 709
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'11632986-75a4-44b1-a0b6-8984c4f42d0f', 'PXO', 'Porto Santo', 'Portugal', 'Active'
);

-- INSERT QUERY NO: 710
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'86fc5f91-351b-4821-8f49-8439e91fca8e', 'SMA', 'Santa Maria', 'Portugal', 'Active'
);

-- INSERT QUERY NO: 711
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dc859c61-05ce-4c4a-87cc-05d8694eca85', 'TER', 'Terceira', 'Portugal', 'Active'
);

-- INSERT QUERY NO: 712
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd2e36c65-74f9-4cb8-a378-07737bd1453b', 'ALC', 'Alicante', 'Spain', 'Active'
);

-- INSERT QUERY NO: 713
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dfe943fb-5f70-496d-be81-122de3565fc2', 'LEI', 'Almeria', 'Spain', 'Active'
);

-- INSERT QUERY NO: 714
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bdcf6589-988e-4dd1-ab00-fd27173cdb97', 'ACE', 'Arrecife/Lanzarote', 'Spain', 'Active'
);

-- INSERT QUERY NO: 715
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c90cf67d-bb07-4e8c-a6b5-f5571462b1a4', 'BJZ', 'Badajoz', 'Spain', 'Active'
);

-- INSERT QUERY NO: 716
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5a1bac67-8fb7-44d1-9fe9-8b640fc512f3', 'BCN', 'Barcelona', 'Spain', 'Active'
);

-- INSERT QUERY NO: 717
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'530c58f4-eb62-4ec7-872c-8de222fb8e34', 'BIO', 'Bilbao', 'Spain', 'Active'
);

-- INSERT QUERY NO: 718
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'95a26b98-50e7-46ac-bed2-c67e23f725ba', 'ODB', 'Cordoba', 'Spain', 'Active'
);

-- INSERT QUERY NO: 719
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0f32826e-5590-4bdd-a7c8-0650aa0c0f98', 'FUE', 'Fuerteventura', 'Spain', 'Active'
);

-- INSERT QUERY NO: 720
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'180ea8b3-c636-40e6-9996-060bd3adab15', 'GRO', 'Gerona', 'Spain', 'Active'
);

-- INSERT QUERY NO: 721
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'87c5e4db-3ec0-447b-9a85-293ae5ff0d05', 'GRX', 'Granada', 'Spain', 'Active'
);

-- INSERT QUERY NO: 722
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2444d9ee-47e6-4a8c-9ed0-7149766172a6', 'XRY', 'Jerez de la Frontera/Cadiz', 'Spain', 'Active'
);

-- INSERT QUERY NO: 723
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7ad05b66-6e68-4158-a67d-bb0f428ee3ef', 'LCG', 'La Coruna', 'Spain', 'Active'
);

-- INSERT QUERY NO: 724
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4a04436e-a825-4867-9a3f-44f056376c4e', 'LPA', 'Las Palmas', 'Spain', 'Active'
);

-- INSERT QUERY NO: 725
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'acb9e535-bb26-447c-a462-dbf896401896', 'MAD', 'Madrid - Barajas', 'Spain', 'Active'
);

-- INSERT QUERY NO: 726
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3021c18b-5165-46dd-9d17-430618ab00f8', 'MAH', 'Mahon', 'Spain', 'Active'
);

-- INSERT QUERY NO: 727
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b27847f3-d1e5-4ffc-aad3-bcfe78e97bf9', 'AGP', 'Malaga', 'Spain', 'Active'
);

-- INSERT QUERY NO: 728
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f9d03ee1-6771-4ab4-9b9f-7bd37326eeff', 'MJV', 'Murcia', 'Spain', 'Active'
);

-- INSERT QUERY NO: 729
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'38bcfca1-0c5f-4ceb-b30b-cc707a5c0998', 'OVD', 'Oviedo', 'Spain', 'Active'
);

-- INSERT QUERY NO: 730
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'34efecc4-5c7d-4f87-8a9d-316c90a16a15', 'REU', 'Reus', 'Spain', 'Active'
);

-- INSERT QUERY NO: 731
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6757fb0d-a4ef-4893-931f-8e94c658ad14', 'EAS', 'San Sebastian', 'Spain', 'Active'
);

-- INSERT QUERY NO: 732
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5e6c2e4c-85ef-4f43-9731-5465c6ee5490', 'SPC', 'Santa Cruz de la Palma', 'Spain', 'Active'
);

-- INSERT QUERY NO: 733
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'64ac889d-2792-4f8b-9276-a944a8f31a51', 'SDR', 'Santander', 'Spain', 'Active'
);

-- INSERT QUERY NO: 734
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f5f9e9d9-8177-4014-861f-162a65402c1a', 'SCQ', 'Santiago de Compostela', 'Spain', 'Active'
);

-- INSERT QUERY NO: 735
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4d130071-525d-41e3-be74-f9d489abeb80', 'TCI', 'Tenerife', 'Spain', 'Active'
);

-- INSERT QUERY NO: 736
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b66e14d5-4c4f-417a-b3f9-47b8cf4b0e9c', 'TFS', 'Tenerife - Sur Reina Sofia', 'Spain', 'Active'
);

-- INSERT QUERY NO: 737
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8a627a31-b68e-4d7a-b2b3-c92b05560c94', 'TFN', 'Tenerife - Norte Los Rodeos', 'Spain', 'Active'
);

-- INSERT QUERY NO: 738
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'24ba7726-bc01-4866-9434-870cab53a723', 'VLL', 'Valladolid', 'Spain', 'Active'
);

-- INSERT QUERY NO: 739
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9a641f1b-02f0-484d-b452-b16b25b4b769', 'VDE', 'Valverde', 'Spain', 'Active'
);

-- INSERT QUERY NO: 740
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2c4c0c02-4dc4-4bd8-bb6f-ca963e1ddc38', 'VGO', 'Vigo', 'Spain', 'Active'
);

-- INSERT QUERY NO: 741
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7c036ca3-6e04-47e7-8e7d-6cd37995ad62', 'VIT', 'Vitoria', 'Spain', 'Active'
);

-- INSERT QUERY NO: 742
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'405692e1-299c-4525-a9b0-ad905423dbc8', 'ZAZ', 'Zaragoza', 'Spain', 'Active'
);

-- INSERT QUERY NO: 743
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1475a16b-9604-489f-bca9-046699bd601b', 'LYR', 'Longyearbyen - Svalbard', 'Svalbard/Norway', 'Active'
);

-- INSERT QUERY NO: 744
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'02731852-9188-4f7d-afe0-37c86e7eca4d', 'JHE', 'Helsingborg', 'Sweden', 'Active'
);

-- INSERT QUERY NO: 745
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5d1e64fc-6429-4527-bc8e-b5f525be45de', 'JKG', 'Joenkoeping', 'Sweden', 'Active'
);

-- INSERT QUERY NO: 746
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'43b1c0cb-bce3-4235-b958-2438fa9c11e9', 'KLR', 'Kalmar', 'Sweden', 'Active'
);

-- INSERT QUERY NO: 747
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'cf5683b7-9951-4f35-b33e-44ac2dbe22a8', 'KSD', 'Karlstad', 'Sweden', 'Active'
);

-- INSERT QUERY NO: 748
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5f06b294-fc94-4f4c-95f1-508f6381e909', 'KRN', 'Kiruna', 'Sweden', 'Active'
);

-- INSERT QUERY NO: 749
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'31083857-a15f-4789-8694-ec836c0b541e', 'KID', 'Kristianstad', 'Sweden', 'Active'
);

-- INSERT QUERY NO: 750
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'91642557-079d-4427-8e9f-1cbe09ebcdc1', 'LDK', 'Lidkoeping', 'Sweden', 'Active'
);

-- INSERT QUERY NO: 751
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e020208a-81a7-4f87-a8e9-97cab12997e8', 'LLA', 'Lulea', 'Sweden', 'Active'
);

-- INSERT QUERY NO: 752
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4be51f67-6dc8-42b2-a746-18af0bf83a26', 'MMA', 'Malmo (Malmoe)', 'Sweden', 'Active'
);

-- INSERT QUERY NO: 753
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'01ef7ad3-f50b-4e40-8c3d-52fb9df912f5', 'MMX', 'Malmo (Malmoe) - Sturup', 'Sweden', 'Active'
);

-- INSERT QUERY NO: 754
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'47c49e03-aa1e-4038-b29d-bf7684028876', 'NRK', 'Norrkoeping', 'Sweden', 'Active'
);

-- INSERT QUERY NO: 755
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'78f1a398-7abd-4dd1-a1cc-c0168da5b92f', 'ORB', 'Oerebro', 'Sweden', 'Active'
);

-- INSERT QUERY NO: 756
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0069fdd9-c500-4744-9052-50e4e351e70f', 'RNB', 'Ronneby', 'Sweden', 'Active'
);

-- INSERT QUERY NO: 757
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e567ddc6-b4ae-4d27-974e-5eab1bf213fa', 'SDL', 'Sundsvall', 'Sweden', 'Active'
);

-- INSERT QUERY NO: 758
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f5fab6c4-9996-4374-ba04-6c8e3a784f3c', 'VXO', 'Vaexjoe', 'Sweden', 'Active'
);

-- INSERT QUERY NO: 759
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f31fc557-ca4c-429d-9e2d-f2ee1211d553', 'VST', 'Vasteras', 'Sweden', 'Active'
);

-- INSERT QUERY NO: 760
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'53f804d0-e880-46cf-89f9-c02fd18450d5', 'VBY', 'Visby', 'Sweden', 'Active'
);

-- INSERT QUERY NO: 761
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'97480cde-d77e-4102-a1b2-4fb9393a5487', 'ACH', 'Altenrhein', 'Switzerland', 'Active'
);

-- INSERT QUERY NO: 762
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'991fd16a-8ba6-4775-a003-7f3f083af8c6', 'BSL', 'Basel', 'Switzerland', 'Active'
);

-- INSERT QUERY NO: 763
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dc126275-f98d-451a-a226-b5f5846178fe', 'BRN', 'Bern', 'Switzerland', 'Active'
);

-- INSERT QUERY NO: 764
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'53d65a94-0d36-4237-a9fb-5c0ce27b5e2d', 'ZDJ', 'Bern', 'Switzerland', 'Active'
);

-- INSERT QUERY NO: 765
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a8416ac3-b9ee-41b4-bc36-e034f72e78fa', 'GVA', 'Geneva', 'Switzerland', 'Active'
);

-- INSERT QUERY NO: 766
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7c71eb9b-6462-4d83-ba6f-26195cc152ec', 'LUG', 'Lugano', 'Switzerland', 'Active'
);

-- INSERT QUERY NO: 767
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'512ed338-1fe6-45af-9c00-7d4d6bb7f02a', 'ZRH', 'Zurich (Zürich) - Kloten', 'Switzerland', 'Active'
);

-- INSERT QUERY NO: 768
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'be5617db-366e-46d8-9577-3afe326b71bd', 'EAP', 'Basel/Mulhouse', 'Switzerland/France', 'Active'
);

-- INSERT QUERY NO: 769
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'33357660-c2a3-4299-9b31-77888ff54c3d', 'TFN', 'Los Rodeos', 'Teneriffa/Spain', 'Active'
);

-- INSERT QUERY NO: 770
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'10fd0ace-bda6-447a-832d-77e8e95e4454', 'TFS', 'Reina Sofia', 'Teneriffa/Spain', 'Active'
);

-- INSERT QUERY NO: 771
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c6469ec2-c377-4a1a-8f72-9419bb9a8e1e', 'SZD', '"Sheffield', ' City Airport"', 'UK'
);

-- INSERT QUERY NO: 772
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bda9736f-e25e-4363-9cfc-f63eb8a5c492', 'ABZ', 'Aberdeen', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 773
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'64ff70ed-9e67-4ea7-b928-d8f6434ee1be', 'BHX', 'Birmingham', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 774
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4303a511-0c18-4805-8d2c-0cb38fd0962b', 'BRS', 'Bristol', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 775
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'011992a8-d3a1-4e81-87f8-410a561f5579', 'CBG', 'Cambrigde', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 776
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'414563b5-c3d8-43c8-963d-715d7a970e06', 'CWL', 'Cardiff', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 777
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a7be0cbb-d69a-47c9-b50d-ed1c7b605a5c', 'EMA', 'Derby (East Midlands)', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 778
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3e42e6a7-987a-43d3-b74f-17f7d8bedebc', 'LDY', 'Derry (Londonderry)', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 779
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'775170b6-5fe1-4540-a9ce-776a3feda9d2', 'EDI', 'Edinburgh', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 780
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fc21bf91-6560-48eb-94e6-ddf4d5352d18', 'GCI', 'Guernsey', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 781
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0bc5271b-04e7-4f90-a3d7-96836892bba3', 'HUY', 'Humberside', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 782
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2d05b119-2ce7-4710-a315-1040326f129f', 'IOM', 'Isle of Man', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 783
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'06c6dcb9-8ef7-4884-8b4d-010a39e89b66', 'JER', 'Jersey', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 784
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1c757064-ed69-44f2-a587-fb172e6b17b8', 'LBA', 'Leeds/Bradford', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 785
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8794acfa-efef-4e19-a577-83a291fc947d', 'LPL', 'Liverpool', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 786
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1eb41cd0-6096-4ecb-8b0f-9a867efaf58b', 'LON', 'London', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 787
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4d82479f-9b8c-4cf9-a799-06118372cbb5', 'LCY', 'London - City Airport', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 788
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'316b454f-d4f4-4a16-a0a7-2d11bcab7248', 'LGW', 'London - Gatwick', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 789
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6ae8fae3-9bb5-45bd-ad1c-d74af6bb43ed', 'LHR', 'London - Heathrow', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 790
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'48b98280-afd0-45a1-b0e2-907e8e2675ab', 'LTN', 'London - Luton', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 791
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b4429b74-15d8-4d09-a035-83d25e3123ad', 'STN', 'London - Stansted', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 792
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'956b574b-10c4-4a37-9250-d102e29bf1c0', 'MAN', 'Manchester', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 793
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bb0b2f92-4526-406c-9067-30068d233b9e', 'NCL', 'Newcastle', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 794
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'234d3eb2-6399-4dd1-a404-69ee392278bc', 'KOI', 'Orkney', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 795
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a8afb90b-e510-40f7-84b8-fe92dc761354', 'SOU', 'Southampton - Eastleigh', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 796
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f64f6d3b-c48f-417c-80e5-56f98f76ba5b', 'SEN', 'Southend', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 797
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3352c560-ec60-41ff-925f-72253b507762', 'STN', 'Stansted (London)', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 798
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7c7a97bb-0eed-4626-9059-56be1b3475d2', 'SYY', 'Stornway', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 799
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1252ece5-f15c-40d2-88cc-a9b6859951eb', 'LSI', 'Sumburgh (Shetland)', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 800
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'be8f7b26-ac56-4b08-bef4-43af7b8fd4f8', 'MME', '"Teesside', ' Durham Tees Valley"', 'United Kingdom'
);

-- INSERT QUERY NO: 801
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'32dbc2d0-90cd-49f2-9d03-c8680e67df69', 'WIC', 'Wick', 'United Kingdom', 'Active'
);

-- INSERT QUERY NO: 802
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c626a2fe-7238-46bc-a760-938356fdb179', 'JRS', 'Jerusalem', 'Israel', 'Active'
);

-- INSERT QUERY NO: 803
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9fa2e989-eec3-4096-a73c-00efba8226d0', 'TLV', 'Tel Aviv - Ben Gurion Int', 'Israel', 'Active'
);

-- INSERT QUERY NO: 804
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c8fc43d3-21b1-450b-8af5-898980d2df79', 'BEY', 'Beirut', 'Lebanon', 'Active'
);

-- INSERT QUERY NO: 805
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'413c5118-b442-4a04-aea1-2226e5033b15', 'IST', 'Istanbul - Ataturk', 'Turkey', 'Active'
);

-- INSERT QUERY NO: 806
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dca53404-a06f-47b6-95b0-6eee03ebac35', 'IZM', 'Izmir', 'Turkey', 'Active'
);

-- INSERT QUERY NO: 807
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'45be9182-4879-4325-aac2-dea88a0be6bd', 'KBL', 'Kabul - Khwaja Rawash', 'Afghanistan', 'Active'
);

-- INSERT QUERY NO: 808
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5f6e625c-ac61-4097-8f5c-b2eb4c5b4484', 'BAH', 'Bahrain', 'Bahrain', 'Active'
);

-- INSERT QUERY NO: 809
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'99ce54c2-6751-4b17-aa03-2b5acdd42d0a', 'ABD', 'Abadan', 'Iran', 'Active'
);

-- INSERT QUERY NO: 810
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'045fdd68-8007-4f42-8330-8f372c752cdf', 'THR', 'Tehran (Teheran) - Mehrabad', 'Iran', 'Active'
);

-- INSERT QUERY NO: 811
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f6572868-0ee9-4e65-a092-3bfc3943bd7c', 'BGW', '"Bagdad', ' Al Muthana"', 'Iraq'
);

-- INSERT QUERY NO: 812
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fa37795a-df3d-475a-9199-e3545ae56016', 'SDA', '"Bagdad', ' Saddam International"', 'Iraq'
);

-- INSERT QUERY NO: 813
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'799e1685-c124-4af2-9e49-2c89624ba5ce', 'BSR', '"Basra', ' Basrah"', 'Iraq'
);

-- INSERT QUERY NO: 814
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'aa0d615d-57af-4b25-a9e9-781a97682eab', 'KIK', 'Kirkuk', 'Iraq', 'Active'
);

-- INSERT QUERY NO: 815
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ef33dbb6-0fdc-44be-853a-b3148eb33a27', 'OSM', 'Mosul', 'Iraq', 'Active'
);

-- INSERT QUERY NO: 816
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8cc3559b-709a-429d-804b-caa78a40499a', 'ETH', 'Elat', 'Israel', 'Active'
);

-- INSERT QUERY NO: 817
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e1904262-4880-4032-8d4e-bfce3a158843', 'VDA', '"Elat', ' Ovula"', 'Israel'
);

-- INSERT QUERY NO: 818
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7e1f441c-22e7-4156-9b18-cce4201718b9', 'HFA', 'Haifa', 'Israel', 'Active'
);

-- INSERT QUERY NO: 819
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5c365c77-c4f7-4206-96be-296574532f66', 'AMM', '"Amman', ' Queen Alia Intl"', 'Jordan'
);

-- INSERT QUERY NO: 820
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'deb6ef0b-804f-43c6-a8c8-1fc4a3212040', 'ADJ', '"Amman', ' Civil - Marka Airport"', 'Jordan'
);

-- INSERT QUERY NO: 821
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'53ae1183-db2d-4038-a6b2-de7e2e1ef19a', 'AQJ', 'Aqaba', 'Jordan', 'Active'
);

-- INSERT QUERY NO: 822
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5dec667f-826a-4cd7-8b78-bd1ce6727f61', 'KWI', 'Kuwait - Kuwait Int', 'Kuwait', 'Active'
);

-- INSERT QUERY NO: 823
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e012e21f-20a2-4b54-8a44-68f748983a05', 'GJN', 'Jounieh', 'Lebanon', 'Active'
);

-- INSERT QUERY NO: 824
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'395d9f88-d72b-4e7b-a13d-ec4becdd396d', 'MCT', 'Muscat - Seeb', 'Oman', 'Active'
);

-- INSERT QUERY NO: 825
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e1dcef40-481f-40ec-9263-6f916263c184', 'SLL', 'Salalah', 'Oman', 'Active'
);

-- INSERT QUERY NO: 826
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6e24054b-b22d-4c82-ae84-8a86bce1de09', 'BHV', 'Bahawalpur', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 827
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f5f13646-9a5d-436c-9f6c-ea2446db7faf', 'BNP', 'Bannu', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 828
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'98ad4594-93b4-4a03-86fc-fa3920905032', 'CJL', 'Chitral', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 829
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c2054538-7418-47b4-8db9-54ba850fae2b', 'DSK', 'Dera Ismail Khan', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 830
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b450868b-c93c-46d7-8a12-96110dceaeca', 'LYP', 'Faisalabad', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 831
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9729a8c4-6c9a-4997-9f20-b74115ca920d', 'GIL', 'Gilgit', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 832
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9d16bfc0-4f27-4704-86d3-a1025d85a969', 'GWD', 'Gwadar', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 833
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c880b1c1-8a6c-47ee-90af-ba89430dce82', 'HDD', 'Hyderabad', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 834
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd3740dd5-45c4-4f30-8419-8aefbc61a153', 'ISB', 'Islamabad - Islamabad Int', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 835
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2e39619e-5738-41e0-b9bf-98af4c9bdb95', 'JAG', 'Jacobabad', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 836
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1548d3e4-6ef0-4bfc-8792-361331a1d9e2', 'JIW', 'Jiwani', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 837
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f8bbb8fe-8643-430e-a536-ff16fbaa981e', 'KHI', 'Karachi - Quaid-E-Azam Int', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 838
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'495245d5-3548-468d-b689-b0b8c8d6f37b', 'KDD', 'Khuzdar', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 839
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9dbc9d67-e26a-4d68-941f-ac86044e3b12', 'OHT', 'Kohat', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 840
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5ec85850-f43c-4003-b951-d11b1c434bac', 'LHE', 'Lahore', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 841
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd72a6d26-402c-4248-85bd-0415a7eb6fd7', 'MWD', 'Mianwali', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 842
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'da137e4f-c947-45ff-8843-2e6173eaba13', 'QML', 'Mirpur', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 843
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1545c93e-73bd-424e-82d0-09a47be36819', 'MJD', 'Moenjodaro', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 844
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a0fc8c67-c375-49da-82ec-6629eb267111', 'MUX', 'Multan', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 845
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3af4793b-7e3e-4b9c-9c8c-6711d5a5f029', 'MFG', 'Muzaffarabad', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 846
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9b00f930-b7ff-4446-83a2-8b44499f28e8', 'WNS', 'Nawab Shah', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 847
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7434f3a9-2358-4147-9677-fd992ac85ea3', 'PJG', 'Panjgur', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 848
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'be91501e-a921-4512-82e7-480e7131c652', 'PSI', 'Pasni', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 849
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c2c06900-7134-496e-8a6d-d886eecdca56', 'PEW', 'Peshawar', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 850
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'018c4173-f505-45f0-b254-42d34c6ae482', 'UET', 'Quetta', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 851
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bd3a2b46-3aca-487b-a057-da6d3c1a5c5d', 'RYK', 'Rahim Yar Khan', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 852
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bab25bf9-2566-4c25-ab5f-e5c961d9d102', 'RAZ', 'Rawala Kot', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 853
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'26fb7ec8-5f6d-4469-9ef6-3cc46a94b3fc', 'RWP', 'Rawalpindi', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 854
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'34a6fdda-1c23-4eb3-8f9c-3ca15d981da8', 'SDT', 'Saidu Sharif', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 855
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1aacfd25-53e3-42b6-9559-9928d10fa382', 'MPD', 'Sindhri', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 856
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e19cd5d1-4d84-49f2-9faa-4d896a500471', 'KDU', 'Skardu', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 857
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7bc69709-a827-4b5d-8360-5c155d9a2bf6', 'SUL', 'Sui', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 858
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd8afa30f-44cd-4845-8113-fcdeda644bc1', 'SKZ', 'Sukkur', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 859
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b3cb9771-98fb-41db-8bbf-5b6ef40bfa72', 'TUK', 'Turbat', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 860
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'42714671-cfb7-49e8-b134-84b48b8f961d', 'PZH', 'Zhob', 'Pakistan', 'Active'
);

-- INSERT QUERY NO: 861
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'730008b4-df03-4cab-be46-7bf2c0a16795', 'DOH', 'Doha', 'Qatar', 'Active'
);

-- INSERT QUERY NO: 862
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ca1af7d9-5a2e-4ed5-96d0-c69ce7a9af69', 'ADA', 'Adana', 'Turkey', 'Active'
);

-- INSERT QUERY NO: 863
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bb1f1b2d-7343-41cf-b84d-56d941e3c4a1', 'ANK', 'Ankara', 'Turkey', 'Active'
);

-- INSERT QUERY NO: 864
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'83209bdb-0b6a-46ce-9c0d-66f692cf1bde', 'AYT', 'Antalya', 'Turkey', 'Active'
);

-- INSERT QUERY NO: 865
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'def6e4b9-7f70-4a9c-9546-88bf32561579', 'DLM', 'Dalaman', 'Turkey', 'Active'
);

-- INSERT QUERY NO: 866
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5e44cb59-97e6-404f-aaa9-d188425434fd', 'ASB', '"Ashgabat', ' Ashkhabat"', 'Turkmenistan'
);

-- INSERT QUERY NO: 867
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'cabfb573-34e6-4636-97ef-92b3f84b268d', 'AUH', 'Abu Dhabi', 'UAE', 'Active'
);

-- INSERT QUERY NO: 868
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bb08a9f3-6ba6-43ce-b90e-d32e367faa70', 'FJR', 'Alfujairah (Fujairah)', 'UAE', 'Active'
);

-- INSERT QUERY NO: 869
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0012c722-183e-4ab7-abbf-013871865009', 'DXB', 'Dubai', 'UAE', 'Active'
);

-- INSERT QUERY NO: 870
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'916989ed-865b-4741-a85a-a2be33e3325c', 'RKT', 'Ras al Khaymah (Ras al Khaimah)', 'UAE', 'Active'
);

-- INSERT QUERY NO: 871
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'34259400-77bf-4838-99f1-f247e9b7880f', 'SHJ', 'Sharjah', 'UAE', 'Active'
);

-- INSERT QUERY NO: 872
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'cb813ba8-65f5-450a-9a3b-3f6b7e029463', 'AAN', 'Al Ain', 'United Arab Emirates', 'Active'
);

-- INSERT QUERY NO: 873
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'db63a34f-5808-4851-acf9-4fbe162880f3', 'FJR', 'Fujairah', ' Int Airport', 'United Arab Emirates'
);

-- INSERT QUERY NO: 874
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'95900db4-cf74-44d8-88fb-9c59a91d047f', 'DHA', 'Dhahran', 'Saudi Arabia', 'Active'
);

-- INSERT QUERY NO: 875
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e46a7157-e48b-4648-841f-f1b1b61af35d', 'JED', 'Jeddah - King Abdulaziz Int', 'Saudi Arabia', 'Active'
);

-- INSERT QUERY NO: 876
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2e9a58f2-d858-485e-94aa-29c7006ed5b9', 'AHB', 'Khamis Mushayat', 'Saudi Arabia', 'Active'
);

-- INSERT QUERY NO: 877
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3f5fdcd1-6a25-410d-840b-42ce8fd5a5dd', 'MED', '"Madinah', ' Mohammad Bin Abdulaziz"', 'Saudi Arabia'
);

-- INSERT QUERY NO: 878
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b4dfc596-4681-4b4d-836e-b45cdae2196f', 'MED', 'Medina', 'Saudi Arabia', 'Active'
);

-- INSERT QUERY NO: 879
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'345ad2de-e1d0-41c5-b8ce-2a4a64437c5f', 'RUH', 'Riyadh - King Khaled Int', 'Saudi Arabia', 'Active'
);

-- INSERT QUERY NO: 880
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fa84ca5e-94f0-4e6e-8a5c-b513d24f78a5', 'TUU', 'Tabuk', 'Saudi Arabia', 'Active'
);

-- INSERT QUERY NO: 881
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0560ec7f-c580-4abb-a827-42095e25432c', 'TIF', 'Taif', 'Saudi Arabia', 'Active'
);

-- INSERT QUERY NO: 882
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3e546d1a-39a4-4c16-ae28-e7f1b42259bd', 'YNB', 'Yanbu', 'Saudi Arabia', 'Active'
);

-- INSERT QUERY NO: 883
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'250e2605-6099-476a-b7bf-c4df25a8f273', 'DMM', 'Dammam', ' King Fahad Int', 'Saudi Arabien'
);

-- INSERT QUERY NO: 884
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1abca80a-3d37-42fb-8369-fde489fc64e2', 'ALP', 'Aleppo', 'Syria', 'Active'
);

-- INSERT QUERY NO: 885
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bf2e1cbc-4dfc-4436-af14-459bb2cd1b7d', 'DAM', '"Damascus', ' International"', 'Syria'
);

-- INSERT QUERY NO: 886
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5aa07030-242f-4554-98c4-a03632882bc7', 'ADE', 'Aden', 'Yemen', 'Active'
);

-- INSERT QUERY NO: 887
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b09e44a0-2940-4115-89d1-0e2e880424dc', 'SAH', 'Sanaa (Sanaa) - Sanaa International', 'Yemen', 'Active'
);

-- INSERT QUERY NO: 888
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9b68cd02-8557-45a6-a731-66abe8ec6c46', 'YAT', '"Attawapiskat', ' NT"', 'Canada'
);

-- INSERT QUERY NO: 889
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2f7ecbf0-2062-48e2-a4c9-dcb003a2313f', 'YVB', '"Bonaventure', ' PQ"', 'Canada'
);

-- INSERT QUERY NO: 890
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0418e6ca-f54c-41d2-aa17-01fe44f85f22', 'YYC', 'Calgary/Banff', 'Canada', 'Active'
);

-- INSERT QUERY NO: 891
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b6c65c7f-85aa-41f7-ba7d-9cc4bd46cfec', 'YCB', 'Cambridge Bay', 'Canada', 'Active'
);

-- INSERT QUERY NO: 892
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'daadf6a0-8049-4f84-a198-e386d2598f91', 'YYQ', 'Churchill', 'Canada', 'Active'
);

-- INSERT QUERY NO: 893
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'390ae24c-7f02-47ce-9865-f843ec179271', 'CFG', 'Cienfuegos', 'Canada', 'Active'
);

-- INSERT QUERY NO: 894
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0f15990b-dbfc-4ebf-aaf1-0c5f402bd48d', 'YDF', 'Deer Lake/Corner Brook', 'Canada', 'Active'
);

-- INSERT QUERY NO: 895
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5c8c82e9-589d-4dac-a3bf-31a2eb42cf5e', 'YEA', 'Edmonton', 'Canada', 'Active'
);

-- INSERT QUERY NO: 896
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'56230b03-5dca-4ba7-8a59-7aece7c6b012', 'YEG', '"Edmonton', ' International"', 'Canada'
);

-- INSERT QUERY NO: 897
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a2fb6cb3-ef81-491d-8b2f-9608f1961541', 'YXD', '"Edmonton', ' Municipal"', 'Canada'
);

-- INSERT QUERY NO: 898
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4dfbb246-2c2a-447b-93e2-47822d9cdab5', 'YFO', 'Flin Flon', 'Canada', 'Active'
);

-- INSERT QUERY NO: 899
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'89da53af-4ec2-4815-8263-e57bf11c8398', 'YFA', 'Fort Albert', 'Canada', 'Active'
);

-- INSERT QUERY NO: 900
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'18d4aee2-521c-4bfb-8b86-fbc7658065db', 'YMM', 'Fort McMurray', 'Canada', 'Active'
);

-- INSERT QUERY NO: 901
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2ed93418-b714-431d-96e0-df0d6f04e270', 'YSM', 'Fort Smith', 'Canada', 'Active'
);

-- INSERT QUERY NO: 902
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c11bb216-9dd9-4aa1-b4ce-d3872a31751b', 'YXJ', 'Fort St. John', 'Canada', 'Active'
);

-- INSERT QUERY NO: 903
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'86fbaed7-96c4-4727-9623-56a0688511a1', 'YFC', 'Fredericton', 'Canada', 'Active'
);

-- INSERT QUERY NO: 904
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1e616b04-d820-4849-8d8d-64cde28e4192', 'YQX', 'Gander', 'Canada', 'Active'
);

-- INSERT QUERY NO: 905
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'243efe80-a317-4e9a-8705-00f1d1701183', 'YGX', 'Gillam', 'Canada', 'Active'
);

-- INSERT QUERY NO: 906
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'03bb6278-7b7e-434d-b1ad-fe41480c127e', 'YYR', 'Goose Bay', 'Canada', 'Active'
);

-- INSERT QUERY NO: 907
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0b03820c-c9f1-4e63-97f2-9b90c2bc0530', 'YHZ', 'Halifax Int', 'Canada', 'Active'
);

-- INSERT QUERY NO: 908
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'25242aad-e711-4f27-948c-5a6645d1d11a', 'YUX', 'Hall Beach', 'Canada', 'Active'
);

-- INSERT QUERY NO: 909
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'22bc99ca-094b-4242-b34f-cdffb2d3196a', 'YHM', 'Hamilton', 'Canada', 'Active'
);

-- INSERT QUERY NO: 910
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5812808f-d074-42d6-8dfb-4c66f66b446c', 'YHR', '"Harrington Harbour', ' PQ"', 'Canada'
);

-- INSERT QUERY NO: 911
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'db4678fd-7292-4c49-8c43-9971089e94cb', 'YEV', 'Inuvik', 'Canada', 'Active'
);

-- INSERT QUERY NO: 912
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8cdcb617-6154-420d-9ffd-ef7dfc31ba0a', 'YFB', 'Iqaluit (Frobisher Bay)', 'Canada', 'Active'
);

-- INSERT QUERY NO: 913
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'55de66b8-069a-4a64-892c-585fe808c08f', 'ZKE', '"Kaschechawan', ' PQ"', 'Canada'
);

-- INSERT QUERY NO: 914
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8dd093c1-c591-40aa-bf7f-5d47a0631e62', 'YLW', '"Kelowna', ' BC"', 'Canada'
);

-- INSERT QUERY NO: 915
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ff3fa900-6740-4e91-814e-01438b2ebeab', 'YVP', 'Kuujjuaq (FortChimo)', 'Canada', 'Active'
);

-- INSERT QUERY NO: 916
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1140fe98-be7c-4625-8137-306577bec279', 'YGW', 'Kuujjuarapik', 'Canada', 'Active'
);

-- INSERT QUERY NO: 917
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a2ca259a-505a-41d1-8875-48eb0b277850', 'XLB', '"Lac Brochet', ' MB"', 'Canada'
);

-- INSERT QUERY NO: 918
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'49b69177-bb13-4f24-a2a5-3eb12cc4c946', 'YGL', 'La Grande', 'Canada', 'Active'
);

-- INSERT QUERY NO: 919
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'81cddacd-455a-404a-aa3c-6ef24a7a5cb7', 'YLR', 'Leaf Rapids', 'Canada', 'Active'
);

-- INSERT QUERY NO: 920
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2bf3554d-8acb-48d8-9f52-3f0e4826a1ba', 'YXU', 'London', 'Canada', 'Active'
);

-- INSERT QUERY NO: 921
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f585fbfa-8425-423f-b981-33a56c64c0c2', 'YQM', 'Moncton', 'Canada', 'Active'
);

-- INSERT QUERY NO: 922
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8e4197dd-3065-48b8-ae78-123f77abff72', 'YMQ', 'Montreal', 'Canada', 'Active'
);

-- INSERT QUERY NO: 923
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3c30df2b-7c48-49cf-94b9-0bd661315baa', 'YUL', 'Montreal - Dorval (Montréal-Trudeau)', 'Canada', 'Active'
);

-- INSERT QUERY NO: 924
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'51d2928c-578f-447b-b858-271975776b98', 'YMX', 'Montreal - Mirabel', 'Canada', 'Active'
);

-- INSERT QUERY NO: 925
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5d64cb6b-ed61-4ed6-b4f5-060c7135663f', 'YSR', 'Nanisivik', 'Canada', 'Active'
);

-- INSERT QUERY NO: 926
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f832e03f-9d95-4370-bb32-260b8027b54c', 'YVQ', 'Norman Wells', 'Canada', 'Active'
);

-- INSERT QUERY NO: 927
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2f49d55a-c001-4ba5-a022-1699a5910778', 'YOW', 'Ottawa - Hull', 'Canada', 'Active'
);

-- INSERT QUERY NO: 928
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fdfbdcb0-84c8-4c66-a19f-4e79139bb9a7', 'YPN', '"Port Menier', ' PQ"', 'Canada'
);

-- INSERT QUERY NO: 929
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5e4a579e-983d-46ea-87c3-bf056c0a0f28', 'YXS', 'Prince George', 'Canada', 'Active'
);

-- INSERT QUERY NO: 930
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3ef96c84-8a80-460d-a484-7b55c939a9e7', 'YPR', 'Prince Rupert/Digby Island', 'Canada', 'Active'
);

-- INSERT QUERY NO: 931
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e4ad679e-e794-4385-a145-b4b5a53373d1', 'XPK', 'Pukatawagan', 'Canada', 'Active'
);

-- INSERT QUERY NO: 932
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'abc7f18d-2f28-4be9-81c1-82c628ccf60e', 'YQB', 'Quebec - Quebec Int', 'Canada', 'Active'
);

-- INSERT QUERY NO: 933
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4871c05e-da5c-491d-8919-e1ff2fe91515', 'YOP', '"Rainbow Lake', ' AB"', 'Canada'
);

-- INSERT QUERY NO: 934
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1690d9ca-819f-4d93-8f61-8b9b88785b54', 'YQR', 'Regina', 'Canada', 'Active'
);

-- INSERT QUERY NO: 935
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ad0c3bd8-4a14-496b-b41e-ddc753381e34', 'YRB', 'Resolute Bay', 'Canada', 'Active'
);

-- INSERT QUERY NO: 936
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'90f3ff47-455c-4275-b0f1-1ace3c09683e', 'YSJ', 'Saint John', 'Canada', 'Active'
);

-- INSERT QUERY NO: 937
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ce4247aa-2d8f-4ee4-8182-c31baad57ce1', 'YZP', 'Sandspit', 'Canada', 'Active'
);

-- INSERT QUERY NO: 938
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'acf9cd1f-5d9f-4cb7-8096-99839a1b3931', 'YXE', 'Saskatoon', 'Canada', 'Active'
);

-- INSERT QUERY NO: 939
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3efe224d-f508-409e-be02-f79e5fc47fb1', 'ZTM', '"Shamattawa', ' MB"', 'Canada'
);

-- INSERT QUERY NO: 940
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5b574436-7990-4922-9952-02fb73b3a53c', 'YYD', 'Smithers', 'Canada', 'Active'
);

-- INSERT QUERY NO: 941
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2bef09c3-cbfa-4709-86a9-586cfb0d9a9a', 'XSI', '"South Indian Lake', ' MB"', 'Canada'
);

-- INSERT QUERY NO: 942
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e886c39c-6b16-4ef3-af2e-97ea77fa5022', 'YIF', '"St. Augustin', ' PQ"', 'Canada'
);

-- INSERT QUERY NO: 943
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c51a0f43-687f-4708-b480-549a12232560', 'YYT', 'St. Johns', 'Canada', 'Active'
);

-- INSERT QUERY NO: 944
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'78f83179-093c-4cf5-809d-d7112d829a41', 'FSP', '"St. Pierre', ' NF"', 'Canada'
);

-- INSERT QUERY NO: 945
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2622589e-e82f-47bb-b733-783711adcbf7', 'YXT', 'Terrace', 'Canada', 'Active'
);

-- INSERT QUERY NO: 946
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9e3d24db-cddd-4d8d-8d8d-c20f315bea4d', 'YQD', 'The Pas', 'Canada', 'Active'
);

-- INSERT QUERY NO: 947
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5771d169-044b-4a30-aace-a9f490dc6181', 'YTH', 'Thompson', 'Canada', 'Active'
);

-- INSERT QUERY NO: 948
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'555656b8-3fbe-4d7c-aa11-9f18190bbd72', 'YQT', 'Thunder Bay', 'Canada', 'Active'
);

-- INSERT QUERY NO: 949
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1cc59f43-9383-4e04-afb9-7c56e2d01c27', 'YTZ', 'Toronto Island', 'Canada', 'Active'
);

-- INSERT QUERY NO: 950
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fa33a69f-4ea6-4276-883f-954148951182', 'YYZ', 'Toronto - Lester B. Pearson', 'Canada', 'Active'
);

-- INSERT QUERY NO: 951
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e02422ff-2261-4be6-85b5-bdcaa3839a40', 'YTO', 'Toronto', 'Canada', 'Active'
);

-- INSERT QUERY NO: 952
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'156d5241-d0f4-432d-9d24-9a7fb4bf1936', 'YVO', 'Val dOr', 'Canada', 'Active'
);

-- INSERT QUERY NO: 953
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0847033f-5314-49e7-98df-9c3a7aa20eab', 'YVR', 'Vancouver - Vancouver Int', 'Canada', 'Active'
);

-- INSERT QUERY NO: 954
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2102a22e-b1d5-471f-b1ff-9cc4f31a135f', 'YYJ', 'Victoria', 'Canada', 'Active'
);

-- INSERT QUERY NO: 955
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'cef5cf25-5bdd-4180-8d41-6d71a86009af', 'YWK', 'Wabush', 'Canada', 'Active'
);

-- INSERT QUERY NO: 956
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1c18c1ab-f2c2-48a6-bf85-17628781d5e6', 'YXN', '"Whale Cove', ' NT"', 'Canada'
);

-- INSERT QUERY NO: 957
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a2baef98-075a-493a-87ed-88aa2bf012c8', 'YXY', 'Whitehorse', 'Canada', 'Active'
);

-- INSERT QUERY NO: 958
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'440fff69-549e-47b5-af34-f5755e433541', 'YQG', 'Windsor Ontario', 'Canada', 'Active'
);

-- INSERT QUERY NO: 959
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'121b4a81-9cf4-4d93-b663-d302e772e1c6', 'YWG', 'Winnipeg Int', 'Canada', 'Active'
);

-- INSERT QUERY NO: 960
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd9c3298f-5867-482a-808f-2f2adcb2e88f', 'YZF', 'Yellowknife', 'Canada', 'Active'
);

-- INSERT QUERY NO: 961
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5a022c68-78ba-4de5-80cf-84f3c84c4551', 'UAK', 'Narsarsuaq', 'Greenland', 'Active'
);

-- INSERT QUERY NO: 962
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'52bd276b-7786-4bda-953e-e5406eab7b5b', 'SFJ', 'Soendre Stroemfjord', 'Greenland', 'Active'
);

-- INSERT QUERY NO: 963
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'234e0fa0-2038-4b49-9fda-1baf156a6793', 'ACA', 'Acapulco', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 964
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f1e80f4e-5d83-4a02-8c5c-08abfe945978', 'AGU', 'Aguascaliente', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 965
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1309d284-c4bf-4c81-8c7a-b2472539847e', 'CUN', 'Cancun', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 966
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd7daa066-5903-4ff7-89f6-36298ab233db', 'CZA', 'Chichen Itza', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 967
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'90777c37-8427-473d-81ca-ee67aeaf7bdb', 'CUU', '"Chihuahua', ' Gen Fierro Villalobos"', 'Mexico'
);

-- INSERT QUERY NO: 968
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e0e3483a-ee40-4988-acbf-d834699938e5', 'CME', 'Ciudad Del Carmen', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 969
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4e6a0579-5254-4775-8228-6bfa5182f742', 'CJS', 'Ciudad Juarez', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 970
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'42eb2e99-a0ed-4521-88fd-213995ff4fa5', 'CEN', 'Ciudad Obregon', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 971
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'32e2139c-d4b8-4d85-aea3-4974666e8d95', 'CVM', 'Ciudad Victoria', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 972
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'310d471c-abb8-4dc0-8886-7a12d9a78646', 'CLQ', 'Colima', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 973
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'874d490a-23f6-4474-b7d6-d9e3c7ffb5b0', 'CZM', 'Cozmel', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 974
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'53b9239a-c59e-4184-9a77-06969b0c3679', 'CUL', 'Culiacan', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 975
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'da20dc0f-c4e9-4083-a37f-9352bb30df86', 'GDL', 'Guadalajara', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 976
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2de72ff3-f3d1-4ca1-b99f-93577291741e', 'HMO', 'Hermosillo - Gen. Pesqueira Garcia', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 977
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'017a3f0c-2596-4378-84b6-74a8cc376566', 'HUX', 'Huatulco', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 978
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'27aba707-abbb-481c-b770-e23a09ee161d', 'ZIH', 'Ixtapa/Zihuatenejo', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 979
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'688d6026-b281-4010-94f3-af0a807bad7a', 'LAP', 'La Paz - Leon', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 980
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'01441b60-aef8-41a5-81c9-6919a4e3a815', 'LZC', 'Lazaro Cardenas', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 981
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'02571c13-dda4-4537-bc65-48a59dccce7a', 'BJX', 'Leon', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 982
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'93b44b38-7dd2-4788-b5f9-9a2776566af6', 'LTO', 'Loreto', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 983
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c077095b-0767-439b-ad12-e4ff7aa2cd68', 'SJD', 'Los Cabos', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 984
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'cfc83419-10a9-4311-afc6-6529183e4895', 'LMM', 'Los Mochis', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 985
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7c58284a-3172-476b-b2a1-6832e790c75f', 'ZLO', 'Manzanillo', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 986
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd67ce664-1c9e-4f31-8d9c-79aa9856141d', 'MZT', 'Mazatlan', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 987
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'098d93d2-e1e2-4e22-8c61-5aaffdb24d75', 'MID', 'Merida', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 988
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'187eff62-37f6-460d-8e7a-0bc8384b962e', 'MXL', 'Mexicali', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 989
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4648b6ed-8360-4c3e-a524-9977456ffa74', 'MEX', 'Mexico City', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 990
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'812c377e-c315-4737-8c03-eb683156147d', 'MEX', 'Mexico City - Juarez International', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 991
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6b3fab47-f899-45da-9e30-76dbca0e5b33', 'MTT', 'Minatitlan', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 992
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fc4cf2fd-a00e-4a43-8e65-85b2e9aaf948', 'MTY', 'Monterrey', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 993
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd9ba4ecd-bfc7-409f-8242-3f34e8042daf', 'NTR', 'Monterrey - Aeropuerto Del Norte', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 994
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'41acea88-3532-415c-84d4-5230c30b97bb', 'MLM', 'Morelia', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 995
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'47791b10-cebd-4c37-add5-36d45325eb0d', 'NLD', 'Nuevo Laredo', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 996
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c9b8baba-b0fe-4d01-bdec-704156ea3bcb', 'OAX', 'Oaxaca', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 997
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9046605f-ffda-4ced-a7bd-1eb31517980a', 'PBC', 'Puebla', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 998
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'535a84b5-e311-4865-a117-a9b9c1b7d80f', 'PXM', 'Puerto Escondido', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 999
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e9528aa3-372d-41fe-bf8b-85bdbee29961', 'PVR', 'Puerto Vallarta', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 1000
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'639fbb7b-42ad-4d55-9b5e-1541a4985ea7', 'SJD', 'San Jose Cabo', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 1001
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f309fca4-9948-424d-9aa8-f982cdcb69c2', 'SLP', 'San Luis Potosi', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 1002
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd19949c8-d69c-4149-84db-f5218bd4462a', 'SRL', 'Santa Rosalia', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 1003
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bdcea8f3-472d-4377-850c-0eea158543e3', 'TAM', 'Tampico - Gen. F. Javier Mina', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 1004
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a86c5375-1a5c-47ab-a481-512448382d28', 'TIJ', 'Tijuana - Rodriguez', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 1005
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'34ebb8cf-df84-4359-b6e3-f165740c6317', 'TGZ', 'Tuxtla Gutierrez', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 1006
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ab4cf35e-69f1-4a97-891f-3571a86b4e42', 'VER', 'Veracruz', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 1007
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f7b22839-6846-489b-9a87-2c877ecd940c', 'VSA', 'Villahermosa', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 1008
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fd7787f4-8b37-4860-b77f-62d1482e1183', 'ZCL', 'Zacatecas', 'Mexico', 'Active'
);

-- INSERT QUERY NO: 1009
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ddfa36ef-3995-47d8-afd2-dbfda7d21abf', 'ABR', '"Aberdeen', ' SD"', 'USA'
);

-- INSERT QUERY NO: 1010
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fdc697cd-73e2-4c0e-9d43-e5336ef2a512', 'ABI', '"Abilene', ' TX"', 'USA'
);

-- INSERT QUERY NO: 1011
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c60bb1d8-2870-4b84-8c68-f0b128a87b37', 'CAK', '"Akron', ' OH"', 'USA'
);

-- INSERT QUERY NO: 1012
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'cd64e243-0100-4384-850f-7ec0e829d3e2', 'ABY', '"Albany', ' GA"', 'USA'
);

-- INSERT QUERY NO: 1013
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9e56d737-9fbf-4df5-ab1a-d9719727c94e', 'ALB', '"Albany', ' NY"', 'USA'
);

-- INSERT QUERY NO: 1014
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2dd05ebe-0ff8-4ce2-b43d-c80c29faf291', 'ABQ', '"Albuquerque', ' NM"', 'USA'
);

-- INSERT QUERY NO: 1015
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6f4932a5-b819-495c-9955-48cd893412ae', 'ESF', '"Alexandria', ' La"', 'USA'
);

-- INSERT QUERY NO: 1016
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'82f92bc6-1019-4c5a-8da3-0b25a95e5851', 'ABE', '"Allentown', ' PA"', 'USA'
);

-- INSERT QUERY NO: 1017
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bdbde65a-7333-4447-8abf-ec503a9a7e91', 'AOO', '"Altoona', ' PA"', 'USA'
);

-- INSERT QUERY NO: 1018
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'cc2a4032-0f6d-4722-a829-c3d28501074b', 'AMA', '"Amarillo', ' TX"', 'USA'
);

-- INSERT QUERY NO: 1019
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7e952731-6dd5-4215-ac28-a3a793435e66', 'ANC', '"Anchorage', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1020
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ebd2a14c-a8ec-4c25-ae3f-1785daa63c99', 'ARB', '"Ann Arbor', ' MI"', 'USA'
);

-- INSERT QUERY NO: 1021
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'34865ad2-afe1-4ff3-82f6-9d4c62b69994', 'ANB', '"Anniston', ' AL"', 'USA'
);

-- INSERT QUERY NO: 1022
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd4111f26-0e51-4cec-99c9-4b76bf0c9b66', 'ATW', '"Appelton/Neenah/Menasha', ' WI"', 'USA'
);

-- INSERT QUERY NO: 1023
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e8f63b52-0093-45f8-acd9-5e8ea6f6ce89', 'AVL', '"Asheville', ' NC"', 'USA'
);

-- INSERT QUERY NO: 1024
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a40b3c57-7b2e-4227-98f2-ded42d8151a4', 'ASE', '"Aspen Snowmass', ' CO"', 'USA'
);

-- INSERT QUERY NO: 1025
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'96aeef6d-4f72-4e0a-a98a-a335dc9a772e', 'AHN', '"Athens', ' GA"', 'USA'
);

-- INSERT QUERY NO: 1026
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'59722f06-7b18-4c04-9e4e-a118ed97d0f2', 'ATO', '"Athens', ' OH"', 'USA'
);

-- INSERT QUERY NO: 1027
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0caa8f14-4f4e-40a4-9ef1-7ac3bb3c2172', 'ATL', 'Atlanta', ' Hartsfield Atlanta Int Airport', 'USA'
);

-- INSERT QUERY NO: 1028
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e038e4a6-f6d0-4ce5-8c89-aac3434abd87', 'ACY', '"Atlantic City', ' NJ"', 'USA'
);

-- INSERT QUERY NO: 1029
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1b2830fa-a72d-4418-b16f-34842acb2411', 'AGS', '"Augusta', ' GA"', 'USA'
);

-- INSERT QUERY NO: 1030
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c9d88036-08d4-4a59-adde-9fcc683585a7', 'AUG', '"Augusta', ' ME"', 'USA'
);

-- INSERT QUERY NO: 1031
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e807f809-7736-4a44-ad8c-199ac4821bb2', 'AUS', '"Austin', ' TX"', 'USA'
);

-- INSERT QUERY NO: 1032
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'53e15ff1-a900-452e-9dc6-d3863e877d69', 'BFL', '"Bakersfield', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1033
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'37b0e5ed-e014-4b89-942d-8c34f0f6bc16', 'BWI', 'Baltimore Washington Int Airport MD', 'USA', 'Active'
);

-- INSERT QUERY NO: 1034
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'18a02de7-c253-4db0-a7ee-096455c9399f', 'BGR', '"Bangor', ' ME"', 'USA'
);

-- INSERT QUERY NO: 1035
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'67d50ffb-4f50-4238-a33f-0e804c5dd355', 'BTR', '"Baton Rouge', ' La"', 'USA'
);

-- INSERT QUERY NO: 1036
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'04cc3bf0-2fe8-4b61-8cee-85d0692e0258', 'BPT', '"Beaumont/Pt. Arthur', ' TX"', 'USA'
);

-- INSERT QUERY NO: 1037
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bf7b43e0-2350-408e-86a5-b1a49e8994c6', 'BKW', '"Beckley', ' WV"', 'USA'
);

-- INSERT QUERY NO: 1038
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'41efbf55-d577-4fd1-9589-bb1a4c3b3645', 'BLI', '"Bellingham', ' WA"', 'USA'
);

-- INSERT QUERY NO: 1039
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c4a52395-3a17-4b34-a0b4-290ef40f0f35', 'BJI', '"Bemidji', ' MN"', 'USA'
);

-- INSERT QUERY NO: 1040
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3cb4de46-e4fc-444b-b66f-2e640018e304', 'BEH', '"Benton Harbour', ' MI"', 'USA'
);

-- INSERT QUERY NO: 1041
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'79af111c-b385-430f-a82e-7cf6ee96f31f', 'BET', '"Bethel', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1042
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7fcd7a79-cf31-4309-bae9-11049140e1e8', 'BIL', '"Billings', ' MT"', 'USA'
);

-- INSERT QUERY NO: 1043
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dcba231e-af25-4372-b4ff-d98f877cc93a', 'BHM', '"Birmingham', ' AL"', 'USA'
);

-- INSERT QUERY NO: 1044
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0eeb26ae-56da-4151-8163-791cde4d3eb7', 'BIS', '"Bismarck/Mandan', ' ND"', 'USA'
);

-- INSERT QUERY NO: 1045
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7e0250fb-d691-4640-bd3a-4116f1b32215', 'BMI', '"Bloomington', ' IL"', 'USA'
);

-- INSERT QUERY NO: 1046
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2e12df83-06c5-4e7b-aa15-904cc4b88d15', 'BMG', '"Bloomington', ' IN"', 'USA'
);

-- INSERT QUERY NO: 1047
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ea99ee5a-8914-4ef6-b4a3-ff9e00b6146c', 'BLF', '"Bluefield', ' WV"', 'USA'
);

-- INSERT QUERY NO: 1048
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'597a7a96-4c57-4e7e-a382-5494878f42e6', 'BOI', '"Boise', ' ID"', 'USA'
);

-- INSERT QUERY NO: 1049
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'15f6794b-1008-4e55-85af-9867ed3453fd', 'BXS', '"Borrego Springs', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1050
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b09398d5-9ec0-474f-a41c-db306cc51b61', 'BOS', '"Boston - Logan', ' MA"', 'USA'
);

-- INSERT QUERY NO: 1051
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'55ce88ba-13e3-4fb1-a5a3-b07299c6d3cc', 'BZN', '"Bozeman', ' MT"', 'USA'
);

-- INSERT QUERY NO: 1052
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'feedea01-a9f6-417d-bb3a-a218c7ee09a8', 'BFD', '"Bradford/Warren', ' PA/Olean', ' NY"'
);

-- INSERT QUERY NO: 1053
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'115ce1db-398e-446a-9d2f-4e93194d97fd', 'BRD', '"Brainerd', ' MN"', 'USA'
);

-- INSERT QUERY NO: 1054
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'aba19dba-ddbe-4c30-8470-de5097aa5418', 'BDR', '"Bridgeport', ' CT"', 'USA'
);

-- INSERT QUERY NO: 1055
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'aad183cd-075a-4bd2-ac79-93598f92384f', 'BKX', '"Brookings', ' SD"', 'USA'
);

-- INSERT QUERY NO: 1056
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fbb82326-c4a1-49cb-88ec-0c6b8f7736e9', 'BQK', '"Brunswick', ' GA"', 'USA'
);

-- INSERT QUERY NO: 1057
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0cdcdda5-e278-423c-9fe4-fca711b366c1', 'BUF', '"Buffalo/Niagara Falls', ' NY"', 'USA'
);

-- INSERT QUERY NO: 1058
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7a3dbbcb-7221-44a7-8033-278d6675b8fd', 'BHC', '"Bullhead City', ' NV"', 'USA'
);

-- INSERT QUERY NO: 1059
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8a0c6764-c5ca-401c-8482-9d89863a6279', 'BUR', '"Burbank', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1060
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2ce10ead-74b8-4e12-a674-0e6c6bf0c129', 'BRL', '"Burlington', ' IA"', 'USA'
);

-- INSERT QUERY NO: 1061
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'648e6569-468a-43ce-807f-7754cfa016fb', 'BTV', '"Burlington', ' VT"', 'USA'
);

-- INSERT QUERY NO: 1062
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fb9510c1-5387-4822-9a99-9fd6d8b424aa', 'BTM', '"Butte', ' MT"', 'USA'
);

-- INSERT QUERY NO: 1063
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'736f771c-5786-4647-89da-04c5a1aad394', 'CLD', '"Carlsbad', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1064
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fcb97dcc-0014-4800-bbad-753616787d1d', 'CPR', '"Casper', ' WY"', 'USA'
);

-- INSERT QUERY NO: 1065
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'53865c92-d951-4f68-90f8-bfc457126583', 'CDC', '"Cedar City', ' UT"', 'USA'
);

-- INSERT QUERY NO: 1066
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'cdba5f7a-12fa-4641-8763-e4314faca548', 'CID', '"Cedar Rapids', ' IA"', 'USA'
);

-- INSERT QUERY NO: 1067
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'21df37bd-4de6-4676-bd6e-41c1a08ef607', 'CMI', '"Champaign', ' IL"', 'USA'
);

-- INSERT QUERY NO: 1068
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f2e3dbdb-2a78-413d-b29c-cc429f4b479b', 'CHS', '"Charleston', ' SC"', 'USA'
);

-- INSERT QUERY NO: 1069
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'af256afa-8128-41bf-abcc-4886431c0967', 'CRW', '"Charleston', ' WV"', 'USA'
);

-- INSERT QUERY NO: 1070
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a3c56968-f6da-4672-bc56-aaa234465b9f', 'CLT', '"Charlotte', ' NC"', 'USA'
);

-- INSERT QUERY NO: 1071
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7e7719d9-f5e9-47dc-bb34-0e7375e06a8a', 'CHO', '"Charlottesville', ' VA"', 'USA'
);

-- INSERT QUERY NO: 1072
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9ded2f07-e288-414b-b49e-59a787389972', 'CHA', '"Chattanooga', ' TN"', 'USA'
);

-- INSERT QUERY NO: 1073
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f7d9493d-8679-4c7a-b282-421e73a2ba19', 'CYS', '"Cheyenne', ' WY"', 'USA'
);

-- INSERT QUERY NO: 1074
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2254a15b-6782-40fb-8856-1384755a9d01', 'MDW', '"Chicago', ' Midway', ' IL"'
);

-- INSERT QUERY NO: 1075
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b35c1563-9a4e-4364-b63f-18ec521557b7', 'ORD', 'Chicago OHare Int Airport', ' IL', 'USA'
);

-- INSERT QUERY NO: 1076
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'185eb658-7b19-43c7-a8cb-12565c5c565c', 'CHI', '"Chicago', ' IL"', 'USA'
);

-- INSERT QUERY NO: 1077
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6e4b9db9-c0f9-4f69-a41c-c9596fc33d7a', 'CIC', '"Chico', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1078
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e339bceb-b730-49f6-bc50-fa3e3fc9567d', 'CVG', '"Cincinnati', ' OH"', 'USA'
);

-- INSERT QUERY NO: 1079
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2877c017-f93a-4f7e-ad6e-a771b87f63c4', 'CKB', '"Clarksburg', ' WV"', 'USA'
);

-- INSERT QUERY NO: 1080
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1c1301b4-9403-48a0-9f6c-8b6c80ac940f', 'BKL', '"Cleveland', ' Burke Lakefront', ' OH"'
);

-- INSERT QUERY NO: 1081
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'603bc547-bf4e-4640-83a1-1f7c1c24ffea', 'CLE', '"Cleveland', ' Hopkins', ' OH"'
);

-- INSERT QUERY NO: 1082
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'18afbff4-285e-4636-a3ed-8d92f25b7ef7', 'COD', '"Cody/Powell/Yellowstone', ' WY"', 'USA'
);

-- INSERT QUERY NO: 1083
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ef9011d1-7683-49c8-95cc-a0bafaa01b86', 'KCC', '"Coffmann Cove', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1084
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8da38cbc-d23d-4f6e-a76c-6f8b3d5174cd', 'CLL', '"College Station/Bryan', ' TX"', 'USA'
);

-- INSERT QUERY NO: 1085
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e68e39b8-fdb8-4ab7-81f0-a547e4606375', 'COS', '"Colorado Springs', ' CO"', 'USA'
);

-- INSERT QUERY NO: 1086
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'df08b1a9-b4e3-4cb3-b378-d833d3ed0c2f', 'CAE', '"Columbia', ' SC"', 'USA'
);

-- INSERT QUERY NO: 1087
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7cd2200d-3f10-4a5b-9b0a-a32d26047475', 'CSG', '"Columbus', ' GA"', 'USA'
);

-- INSERT QUERY NO: 1088
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b64e8cef-e988-44d2-ba09-045503a81f91', 'CMH', '"Columbus', ' OH"', 'USA'
);

-- INSERT QUERY NO: 1089
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'17db61f3-1c4c-4162-8da0-7042c8b821da', 'CCR', '"Concord', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1090
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6c016d21-25dc-44d0-b7a0-e069464c6120', 'CDV', '"Cordova', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1091
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7855a247-570e-43c1-9903-104204a1d6ae', 'CRP', '"Corpus Christi', ' TX"', 'USA'
);

-- INSERT QUERY NO: 1092
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'655d08c7-c21f-48a4-ae58-45d4ab108c07', 'CGA', '"Craig', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1093
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9348f921-333a-4ff2-9098-bd56756a6ac3', 'CEC', '"Crescent City', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1094
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'82e9af9e-5715-4778-b09f-a7f9edf7cb2b', 'DAL', '"Dallas', ' Love Field', ' TX"'
);

-- INSERT QUERY NO: 1095
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7a53d6aa-fd17-449b-8e5e-eaec801fb3ce', 'DFW', '"Dallas/Ft. Worth', ' TX"', 'USA'
);

-- INSERT QUERY NO: 1096
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e45e8b09-2355-45cd-a5ba-bb6f1f2802ff', 'DAN', '"Danville', ' VA"', 'USA'
);

-- INSERT QUERY NO: 1097
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fda891fc-38ef-4181-b0ab-d0c28aabbce0', 'DAY', '"Dayton', ' OH"', 'USA'
);

-- INSERT QUERY NO: 1098
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'749a4904-3d14-470d-bccf-635c5d28ca16', 'DAB', '"Daytona Beach', ' FL"', 'USA'
);

-- INSERT QUERY NO: 1099
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bde69497-fa9e-4326-8514-b849ecfc6d92', 'DEC', '"Decatur', ' IL"', 'USA'
);

-- INSERT QUERY NO: 1100
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c0c2fb59-53d0-4a02-bb27-5fb2f721c79e', 'DEN', '"Denver International Airport', ' CO"', 'USA'
);

-- INSERT QUERY NO: 1101
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f6e64501-d167-4082-869b-c5535cfea9c4', 'DSM', '"Des Moines', ' IA"', 'USA'
);

-- INSERT QUERY NO: 1102
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5f654c89-ef2c-4d0c-b962-c6d53b040099', 'DET', '"Detroit City', ' MI"', 'USA'
);

-- INSERT QUERY NO: 1103
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'58d55541-5021-4542-8ad5-07fbcb566d62', 'DTW', '"Detroit Metropolitan Wayne County Airport', ' MI"', 'USA'
);

-- INSERT QUERY NO: 1104
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8a2c5a5f-c978-46c6-b5f6-42166bc3eda8', 'DTT', '"Detroit Metropolitan Area', ' MI"', 'USA'
);

-- INSERT QUERY NO: 1105
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'de46ec57-bdc4-4cce-ac4a-9cd375ca220b', 'DVL', '"Devils Lake', ' ND"', 'USA'
);

-- INSERT QUERY NO: 1106
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'80d0c0c8-5534-4062-b50b-b96d749fba84', 'DLG', '"Dillingham', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1107
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e7390ed4-0970-44ae-96d1-cdd8d4e5e3ec', 'DHN', '"Dothan', ' AL"', 'USA'
);

-- INSERT QUERY NO: 1108
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7a3a87df-fabc-444d-a392-42547dbb84a0', 'DUJ', '"Dubois', ' PA"', 'USA'
);

-- INSERT QUERY NO: 1109
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2e27c3eb-3ed4-4630-b784-33452f47fea3', 'DBQ', '"Dubuque', ' IA"', 'USA'
);

-- INSERT QUERY NO: 1110
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2441256b-826a-4d09-aab4-bbe9db371c97', 'DLH', '"Duluth', ' MN/Superior', ' WI"'
);

-- INSERT QUERY NO: 1111
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fb70903c-b1ae-4892-ae72-a9c7d3338d44', 'DRO', '"Durango', ' CO"', 'USA'
);

-- INSERT QUERY NO: 1112
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'402c37d1-8b09-4f04-bab8-2e45e9c407bc', 'DUT', '"Dutch Harbor', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1113
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e42b6713-ef3b-4688-b9ce-f9ccfdca5758', 'EAU', '"Eau Clarie', ' WI"', 'USA'
);

-- INSERT QUERY NO: 1114
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'796ad416-2e27-4118-993c-deaab82519bd', 'ELP', '"El Paso', ' TX"', 'USA'
);

-- INSERT QUERY NO: 1115
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bd8b6331-05c3-4a1f-b1ad-a065c0c8590a', 'EKI', '"Elkhart', ' IN"', 'USA'
);

-- INSERT QUERY NO: 1116
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6ca5af13-fe96-482e-a525-a24bba1fc07e', 'EKO', '"Elko', ' NV"', 'USA'
);

-- INSERT QUERY NO: 1117
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e22bcc79-bc5a-4efc-9a64-843fe65c1883', 'ELM', '"Elmira', ' NY"', 'USA'
);

-- INSERT QUERY NO: 1118
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6fac0a72-aac1-441a-908f-fcb9c5b79b22', 'ELY', '"Ely', ' NV"', 'USA'
);

-- INSERT QUERY NO: 1119
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'afdd3e7f-3b27-4b8a-bcb7-e1f0165406d7', 'ERI', '"Erie', ' PA"', 'USA'
);

-- INSERT QUERY NO: 1120
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4e662471-6534-4570-892f-3b7025a55fe8', 'ESC', '"Escabana', ' MI"', 'USA'
);

-- INSERT QUERY NO: 1121
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'740e0d17-a8be-4f97-a194-db2621b7bfb6', 'EUG', '"Eugene', ' OR"', 'USA'
);

-- INSERT QUERY NO: 1122
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1ca1f516-2aa3-470a-9b56-a5cf59a2b78a', 'ACV', '"Eureka', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1123
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'32b63825-196c-4564-b51a-c1b18a10cf0f', 'EVV', '"Evansville', ' IN"', 'USA'
);

-- INSERT QUERY NO: 1124
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'06fbdc2a-8990-4548-9668-c0b757112444', 'FAI', '"Fairbanks', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1125
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'72af5802-e7c1-4afe-b92a-8a9ffba927bd', 'FAR', '"Fargo', ' ND', ' MN"'
);

-- INSERT QUERY NO: 1126
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ac8e9e63-30d9-4d85-8f03-b83fdb1907c4', 'FMN', '"Farmington', ' NM"', 'USA'
);

-- INSERT QUERY NO: 1127
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bf395fc4-bf37-49c2-bfea-8248242a316e', 'FYV', '"Fayetteville', ' AR"', 'USA'
);

-- INSERT QUERY NO: 1128
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'55ff7343-9e7e-410d-89e7-87e3bbe98b90', 'FAY', '"Fayetteville/Ft. Bragg', ' NC"', 'USA'
);

-- INSERT QUERY NO: 1129
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c7f535b5-c16f-44dc-81c7-1077c5fef9e2', 'FLG', '"Flagstaff', ' AZ"', 'USA'
);

-- INSERT QUERY NO: 1130
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3226ed12-6078-4563-a74d-dbb73dc86b74', 'FNT', '"Flint', ' MI"', 'USA'
);

-- INSERT QUERY NO: 1131
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4d2305a2-1ce2-4341-a903-cb84447489e4', 'FLO', '"Florence', ' SC"', 'USA'
);

-- INSERT QUERY NO: 1132
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'10497609-c61a-4b4f-9f4a-de40f3816c4a', 'FOD', '"Fort Dodge', ' IA"', 'USA'
);

-- INSERT QUERY NO: 1133
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'23a92995-5522-463d-92b6-2e8deaf1f407', 'FHU', '"Fort Huachuca/Sierra Vista', ' AZ"', 'USA'
);

-- INSERT QUERY NO: 1134
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'740bb444-d9c2-487a-961d-c6a1f15cd777', 'FLL', '"Fort Lauderdale/Hollywood', ' FL"', 'USA'
);

-- INSERT QUERY NO: 1135
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e6b5e84a-4eb0-4001-a387-b2cae7f72f24', 'FMY', '"Fort Myers', ' Metropolitan Area', ' FL"'
);

-- INSERT QUERY NO: 1136
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1d3fe179-74d5-4fab-8a7e-6cf1203e82ff', 'RSW', '"Fort Myers', ' Southwest Florida Reg', ' FL"'
);

-- INSERT QUERY NO: 1137
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7c02bfbd-29b8-4033-b35b-c912ee25a0f3', 'FSM', '"Fort Smith', ' AR"', 'USA'
);

-- INSERT QUERY NO: 1138
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dec34861-4f04-4eb1-be3b-16a6b4ab91a7', 'VPS', '"Fort Walton Beach', ' FL"', 'USA'
);

-- INSERT QUERY NO: 1139
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e41a6606-12bb-4d9c-87c4-2d0672a9c8a2', 'FWA', '"Fort Wayne', ' IN"', 'USA'
);

-- INSERT QUERY NO: 1140
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ca2dae48-3176-48e4-8532-489eb2a45c59', 'FKL', '"Franklin/Oil City', ' PA"', 'USA'
);

-- INSERT QUERY NO: 1141
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bfeb9dd1-7d03-4c4c-9d8c-1078d0ed9c66', 'FAT', '"Fresno', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1142
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'52ecb69a-2cdc-4b5d-a355-f312781ff18a', 'GAD', '"Gadsden', ' AL"', 'USA'
);

-- INSERT QUERY NO: 1143
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0020f1ca-38a7-4b5f-a3c7-b37b92f630d1', 'GNV', '"Gainesville', ' FL"', 'USA'
);

-- INSERT QUERY NO: 1144
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c82835f9-02ca-41ee-bf4e-192b280ba9c3', 'GCC', '"Gilette', ' WY"', 'USA'
);

-- INSERT QUERY NO: 1145
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dd3b0991-5852-44ee-a667-bec4c4ab9e1e', 'GGW', '"Glasgow', ' MT"', 'USA'
);

-- INSERT QUERY NO: 1146
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd761a7a9-ff71-42f3-ab13-df1262fe383c', 'GDV', '"Glendive', ' MT"', 'USA'
);

-- INSERT QUERY NO: 1147
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7501b164-da17-47ed-9c9a-ca50ab6c6662', 'GCN', '"Grand Canyon', ' AZ"', 'USA'
);

-- INSERT QUERY NO: 1148
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c562de33-bd86-44b2-89b4-67dbfd9c5764', 'GFK', '"Grand Forks', ' ND"', 'USA'
);

-- INSERT QUERY NO: 1149
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'665596bc-2d70-41d5-bc55-dbc696dc5378', 'GJT', '"Grand Junction', ' CO"', 'USA'
);

-- INSERT QUERY NO: 1150
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'07cf1fa5-671b-469c-9067-8df6d22a45d0', 'GRR', '"Grand Rapids', ' MI"', 'USA'
);

-- INSERT QUERY NO: 1151
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'48d32637-b28b-48a6-8d58-fce798956d0f', 'GPZ', '"Grand Rapids', ' MN"', 'USA'
);

-- INSERT QUERY NO: 1152
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b0e87ad3-102b-41b5-a637-b02f90adfdfb', 'GTF', '"Great Falls', ' MT"', 'USA'
);

-- INSERT QUERY NO: 1153
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5d0df4db-8c7e-4ae4-a588-992fd82ec638', 'GRB', '"Green Bay', ' WI"', 'USA'
);

-- INSERT QUERY NO: 1154
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7022d789-5f5a-48cd-8b6f-79b15bb89219', 'LWB', '"Greenbrier/Lewisburg', ' WV"', 'USA'
);

-- INSERT QUERY NO: 1155
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1175aed2-6401-4bfb-a70b-e4d7d70a7d3b', 'GSO', '"Greensboro/Winston Salem', ' NC"', 'USA'
);

-- INSERT QUERY NO: 1156
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9e8ccb43-7d11-4ff5-b290-ea0a7948bdf0', 'GLH', '"Greenville', ' MS"', 'USA'
);

-- INSERT QUERY NO: 1157
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ede1f3a4-0498-4a12-9ce4-00c791502bf6', 'PGV', '"Greenville', ' NC"', 'USA'
);

-- INSERT QUERY NO: 1158
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8c27adca-42a3-40ad-8863-81a856d0919b', 'GSP', '"Greenville/Spartanburg', ' SC"', 'USA'
);

-- INSERT QUERY NO: 1159
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'557f3c47-e0ac-4fa8-89a9-3273412d20ed', 'GON', '"Groton/New London', ' CT"', 'USA'
);

-- INSERT QUERY NO: 1160
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bacf0a3b-c802-4870-a53d-0d629f47d6df', 'GPT', '"Gulfport/Biloxi', ' MS"', 'USA'
);

-- INSERT QUERY NO: 1161
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dcfd9350-cb99-44fd-91f7-0961fd37d114', 'GUC', '"Gunnison/Crested Butte', ' CO"', 'USA'
);

-- INSERT QUERY NO: 1162
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f1fdf779-ffce-44b0-8347-1b4bdc724b17', 'HNS', '"Haines', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1163
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'91e3b366-2b61-45aa-b747-7d6dc3d94dd8', 'CMX', '"Hancock', ' MI"', 'USA'
);

-- INSERT QUERY NO: 1164
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'db9c4093-22e3-4574-9714-535bf300caae', 'HRL', '"Harlington/South Padre Island', ' TX"', 'USA'
);

-- INSERT QUERY NO: 1165
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f6288de8-27e8-4a2a-805b-d3888e06aaf4', 'HAR', '"Harrisburg', ' PA - Harrisburg Skyport"', 'USA'
);

-- INSERT QUERY NO: 1166
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd83c76cc-a4ce-496b-8de4-b52b73f1b8e2', 'MDT', 'Harrisburg', ' PA - Harrisburg Int', 'USA'
);

-- INSERT QUERY NO: 1167
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'32ba7166-8ab5-44a9-a86a-ad95ffd5e36e', 'BDL', '"Hartford', ' CT/Springfield', ' MA"'
);

-- INSERT QUERY NO: 1168
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'50ad6073-f5c1-451b-bfac-f6d12902633f', 'HVR', '"Havre', ' MT"', 'USA'
);

-- INSERT QUERY NO: 1169
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4ada8101-fa9b-4cb6-9bbb-9b333665d8a5', 'HLN', '"Helena', ' MT"', 'USA'
);

-- INSERT QUERY NO: 1170
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b1526665-95d0-4996-afde-d7a258f2fa94', 'HIB', '"Hibbing', ' MN"', 'USA'
);

-- INSERT QUERY NO: 1171
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd4224d41-259e-4566-9601-f35a5344c56f', 'HKY', '"Hickory', ' NC"', 'USA'
);

-- INSERT QUERY NO: 1172
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fbf1eab8-c570-4ef6-9f00-79bc71d498f6', 'ITO', '"Hilo', ' HI"', 'USA'
);

-- INSERT QUERY NO: 1173
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ffb41ee9-b3bd-4403-bd6e-5726dc5144fe', 'HHH', '"Hilton Head Island', ' SC"', 'USA'
);

-- INSERT QUERY NO: 1174
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'13280faf-3e03-4306-b3b4-878cbda76a78', 'HOM', '"Homer', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1175
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4b1f5530-06bd-4084-a830-c8eec57e2b74', 'HNL', '"Honolulu', ' HI"', 'USA'
);

-- INSERT QUERY NO: 1176
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd677704b-aebe-4768-946a-c697f2a1927b', 'HNH', '"Hoonah', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1177
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'25f8b643-55ab-4df8-8706-ec0b11508c3e', 'HOU', '"Houston', ' Hobby', ' TX"'
);

-- INSERT QUERY NO: 1178
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7a490e9d-e583-49b5-9339-f746fc9ff64f', 'IAH', '"Houston', ' Intercontinental', ' TX"'
);

-- INSERT QUERY NO: 1179
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'de98fca9-d1f6-4297-a25e-33050379316d', 'HTS', '"Huntington', ' OH"', 'USA'
);

-- INSERT QUERY NO: 1180
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'627d7976-ca39-4e88-baae-e7ac76dae754', 'HSV', '"Huntsville', ' AL"', 'USA'
);

-- INSERT QUERY NO: 1181
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'639a1eb7-12c0-4bff-aef4-e987f74b4c27', 'HON', '"Huron', ' SD"', 'USA'
);

-- INSERT QUERY NO: 1182
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'78ad14b6-c1f8-4304-a9d4-3314b22a2683', 'HYA', '"Hyannis', ' MA"', 'USA'
);

-- INSERT QUERY NO: 1183
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'276109b9-5c13-410a-8703-6591a4876028', 'HYG', '"Hydaburg', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1184
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8c554fb7-e674-40d2-8441-3df58e68a568', 'IDA', '"Idaho Falls', ' ID"', 'USA'
);

-- INSERT QUERY NO: 1185
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'08e1daae-94d2-41d4-9905-8712931401d2', 'ILI', '"Iliamna', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1186
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2d804348-65de-4c88-8391-52d0c45a8ab3', 'IPL', '"Imperial', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1187
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0f2362bb-e4a3-4e0d-bb1a-eaaabf4b7466', 'IND', '"Indianapolis', ' IN"', 'USA'
);

-- INSERT QUERY NO: 1188
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2b1b3ea8-565e-417a-b48b-1652719cdbe9', 'INL', '"International Falls', ' MN"', 'USA'
);

-- INSERT QUERY NO: 1189
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'184a37cb-cea9-4da1-ac78-f88abc437af2', 'IYK', '"Inykern', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1190
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5ee44dd5-2bf0-46b0-994e-4f06fb49c099', 'ITH', '"Ithaca/Cortland', ' NY"', 'USA'
);

-- INSERT QUERY NO: 1191
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'81f5631c-d588-4829-a462-e9c0a5c23386', 'JAC', '"Jackson Hole', ' WY"', 'USA'
);

-- INSERT QUERY NO: 1192
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f2b43b85-1890-4324-a84e-4002666a00d7', 'JXN', '"Jackson', ' MI"', 'USA'
);

-- INSERT QUERY NO: 1193
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2afc73ee-b329-4102-9c16-03b97597621c', 'JAN', '"Jackson', ' MS"', 'USA'
);

-- INSERT QUERY NO: 1194
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b6693054-03f5-4640-a3d4-2c188daef35a', 'MKL', '"Jackson', ' TN"', 'USA'
);

-- INSERT QUERY NO: 1195
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fb2fddc7-5a01-48c8-8d5a-72e7ba7c7f77', 'JAX', '"Jacksonville', ' FL"', 'USA'
);

-- INSERT QUERY NO: 1196
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'543c11c3-08ab-48cf-bbc2-b30045968bc6', 'OAJ', '"Jacksonville', ' NC"', 'USA'
);

-- INSERT QUERY NO: 1197
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd4d41319-9740-44f6-aecb-34fe9cdd953c', 'JMS', '"Jamestown', ' ND"', 'USA'
);

-- INSERT QUERY NO: 1198
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6f5eb428-0739-4d54-98c8-9bfb0300d5e2', 'JHW', '"Jamestown', ' NY"', 'USA'
);

-- INSERT QUERY NO: 1199
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9211e716-eb97-42c5-8d3a-1adff44be08e', 'JST', '"Johnstown', ' PA"', 'USA'
);

-- INSERT QUERY NO: 1200
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6603a716-6c1b-409c-95d4-29747fe79801', 'JLN', '"Joplin', ' MO"', 'USA'
);

-- INSERT QUERY NO: 1201
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b8e7eea4-16e7-484d-8a76-879d935f607c', 'JNU', 'Juneau', ' AK - Juneau Int', 'USA'
);

-- INSERT QUERY NO: 1202
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b6d57d90-30d7-4307-9855-4e9d5cdc2a18', 'OGG', '"Kahului', ' HI"', 'USA'
);

-- INSERT QUERY NO: 1203
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'080b71d2-c889-4bdc-b90d-0cb72e4e794a', 'AZO', '"Kalamazoo/Battle Creek', ' MI"', 'USA'
);

-- INSERT QUERY NO: 1204
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'01c4d6c2-e413-4649-b0f2-02b0c5f2b1f4', 'FCA', '"Kalispell', ' MT"', 'USA'
);

-- INSERT QUERY NO: 1205
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f49148df-4b4e-41f1-9bcf-ae198e29a0a6', 'MUE', '"Kamuela', ' HI"', 'USA'
);

-- INSERT QUERY NO: 1206
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3263a108-7982-4bf1-a093-6580f37d49fc', 'MCI', 'Kansas City', ' MO - Int', 'USA'
);

-- INSERT QUERY NO: 1207
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c66206ee-9aa9-4ded-a9ee-1d5aae800f07', 'JHM', '"Kapalua West', ' HI"', 'USA'
);

-- INSERT QUERY NO: 1208
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'138d1527-b66a-4163-b79b-a14dd4452606', 'MKK', '"Kaunakakai', ' HI"', 'USA'
);

-- INSERT QUERY NO: 1209
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b137eee2-42ec-44a9-bdd3-7fe91af250ed', 'ENA', '"Kenai', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1210
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8645d785-9e13-469d-a792-6e4a48aa4aad', 'KTN', '"Ketchikan', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1211
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5dcd7695-6221-4734-adf1-afdabf47bb5f', 'EYW', '"Key West', ' FL"', 'USA'
);

-- INSERT QUERY NO: 1212
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'eee7f04b-75ec-42cd-bb75-8562ae1e4bfc', 'ILE', '"Killeem', ' TX"', 'USA'
);

-- INSERT QUERY NO: 1213
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1e693642-0928-4536-af5a-d0152dd85fe5', 'AKN', '"King Salomon', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1214
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3764513e-d327-4b83-86ad-890522665941', 'ISO', '"Kingston', ' NC"', 'USA'
);

-- INSERT QUERY NO: 1215
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4f904cd2-1894-4826-8877-256047403d5a', 'LMT', '"Klamath Fall', ' OR"', 'USA'
);

-- INSERT QUERY NO: 1216
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1b881e74-9227-4bfa-ae7e-0bb4f4d49eb1', 'KLW', '"Klawock', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1217
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ce69ca0a-45f1-4a0d-a876-d9bb49a63df3', 'TYS', '"Knoxville', ' TN"', 'USA'
);

-- INSERT QUERY NO: 1218
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f1475539-42d3-4db8-8bf5-b016a889a8d3', 'ADQ', '"Kodiak', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1219
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'51d69fb9-3ecf-456e-bd67-5619ba472e4f', 'KOA', '"Kona', ' HI"', 'USA'
);

-- INSERT QUERY NO: 1220
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'666dc761-fd82-4f68-ba8d-a71c37445c6b', 'OTZ', '"Kotzbue', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1221
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b0dff4ea-c343-4d2d-8839-5edf01b227b6', 'WLB', '"Labouchere Bay', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1222
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a799dea1-3516-4cc1-9283-89c264b6388f', 'LSE', '"La Crosse', ' WI"', 'USA'
);

-- INSERT QUERY NO: 1223
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'28359c26-db77-4c9d-b140-4b81f73c1879', 'LAF', '"Lafayette', ' IN"', 'USA'
);

-- INSERT QUERY NO: 1224
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8c26bd4e-311a-478f-acc8-67a703b6d888', 'LFT', '"Lafayette', ' La"', 'USA'
);

-- INSERT QUERY NO: 1225
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'494ec167-6b3e-4c8b-8858-736d44a33be6', 'LCH', '"Lake Charles', ' La"', 'USA'
);

-- INSERT QUERY NO: 1226
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'68cfc058-6c30-4eb7-9229-9312045136ef', 'HII', '"Lake Havasu City', ' AZ"', 'USA'
);

-- INSERT QUERY NO: 1227
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f54c55f6-dd0f-4f31-a440-f4fd3b66ee8b', 'TVL', '"Lake Tahoe', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1228
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b6d3c0d4-9d5e-4e2a-9005-78c1c1d06b3b', 'LNY', '"Lanai City', ' HI"', 'USA'
);

-- INSERT QUERY NO: 1229
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0616a2e1-a538-4f76-8986-2b9bdbcd2e42', 'LNS', '"Lancaster', ' PA"', 'USA'
);

-- INSERT QUERY NO: 1230
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4762fa37-e990-4ec6-9bac-5bb00d8a6b97', 'LAN', '"Lansing', ' MI"', 'USA'
);

-- INSERT QUERY NO: 1231
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1471f8d2-65f4-4033-9774-cff0afeda2c9', 'LAR', '"Laramie', ' WY"', 'USA'
);

-- INSERT QUERY NO: 1232
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'91e28e17-1774-4e25-874a-ffb1e4b6d458', 'LRD', '"Laredo', ' TX"', 'USA'
);

-- INSERT QUERY NO: 1233
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c339040f-7356-4cc0-a241-2c5d1a98c111', 'LAS', '"Las Vegas', ' NV"', 'USA'
);

-- INSERT QUERY NO: 1234
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'284c568a-1038-43c1-af83-ed54c4f61d1a', 'LBE', '"Latrobe', ' PA"', 'USA'
);

-- INSERT QUERY NO: 1235
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'951740f5-d4a2-475d-96a7-86369b9f83b0', 'PIB', '"Laurel/Hattisburg', ' MS"', 'USA'
);

-- INSERT QUERY NO: 1236
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'761c0f38-7615-47ac-85ef-b3fb851a479e', 'LAW', '"Lawton', ' OK"', 'USA'
);

-- INSERT QUERY NO: 1237
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1c26bcc4-7571-4d5a-b07a-6966bdb44794', 'LEB', '"Lebanon', ' NH"', 'USA'
);

-- INSERT QUERY NO: 1238
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'af9df5c9-8c1a-4850-b86b-aed2d067b3d7', 'LWS', '"Lewiston', ' ID"', 'USA'
);

-- INSERT QUERY NO: 1239
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6e44a409-6b59-4006-8e81-51f54d358637', 'LWT', '"Lewistown', ' MT"', 'USA'
);

-- INSERT QUERY NO: 1240
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fd294b58-3ccc-4594-8d44-840a5c948a0f', 'LEX', '"Lexington', ' KY"', 'USA'
);

-- INSERT QUERY NO: 1241
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'94be3c42-5130-4ebd-88d0-5d779f8de424', 'LIH', '"Lihue', ' HI"', 'USA'
);

-- INSERT QUERY NO: 1242
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd0fb5bae-8fbc-44f2-a3be-19bb01483898', 'LNK', '"Lincoln', ' NE"', 'USA'
);

-- INSERT QUERY NO: 1243
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'15a548d1-3144-4641-b31a-a2fbb4c4dd8b', 'LIT', '"Little Rock', ' AR"', 'USA'
);

-- INSERT QUERY NO: 1244
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b15e2e79-b1d7-47c4-a3df-fa22b279a281', 'LGB', '"Long Beach', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1245
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1e051702-3bc2-4962-a42a-7dfe8a11977c', 'LIJ', '"Long Island', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1246
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'751d48a1-2d46-4614-804e-ac5822ad0c43', 'ISP', '"Long Island', ' Islip', ' NY - Mac Arthur"'
);

-- INSERT QUERY NO: 1247
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'322af8c9-a272-430b-81ce-f65e2ae28dbc', 'GGG', '"Longview/Kilgore', ' TX"', 'USA'
);

-- INSERT QUERY NO: 1248
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'894d0575-1b04-4d7d-b99a-58e0cbba23e3', 'LAX', 'Los Angeles', ' CA - Int', 'USA'
);

-- INSERT QUERY NO: 1249
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8870d2fc-f58e-4218-882e-47daaaeba65f', 'SDF', '"Louisville', ' KY"', 'USA'
);

-- INSERT QUERY NO: 1250
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'62cd3e06-42fb-4e81-8deb-0fd5db49c72f', 'LBB', '"Lubbock', ' TX"', 'USA'
);

-- INSERT QUERY NO: 1251
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e403c977-6f41-4f8e-9b4e-7518671eef1a', 'LYH', '"Lynchburg', ' VA"', 'USA'
);

-- INSERT QUERY NO: 1252
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2e0005f0-2832-4fe5-865f-9b56933f2590', 'MCN', '"Macon', ' GA"', 'USA'
);

-- INSERT QUERY NO: 1253
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2fdac5ac-6a9d-4240-b268-cbe1e4ea1f38', 'MSN', '"Madison', ' WI"', 'USA'
);

-- INSERT QUERY NO: 1254
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4ad0d396-dfba-4588-aeb0-8312508f8398', 'MHT', '"Manchester', ' NH"', 'USA'
);

-- INSERT QUERY NO: 1255
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dac555c1-dc5f-414f-9e60-d7010376d7db', 'MTH', '"Marathon', ' FL"', 'USA'
);

-- INSERT QUERY NO: 1256
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'da0169ce-8048-4aec-8523-d4db43f4b682', 'MQT', '"Marquette', ' MI"', 'USA'
);

-- INSERT QUERY NO: 1257
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e4072f6a-7a5e-4f11-a9fa-e617c31a751b', 'MVY', 'Marthas Vineyard', ' MA', 'USA'
);

-- INSERT QUERY NO: 1258
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd60bf663-08bc-47a4-9493-1b8aa370e102', 'MCW', '"Mason City', ' IA"', 'USA'
);

-- INSERT QUERY NO: 1259
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e687f406-cbfd-46cf-b3ec-c39897d39f02', 'MTO', 'Mattoon', ' IL', 'USA'
);

-- INSERT QUERY NO: 1260
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8ca13362-9926-4bc4-ac08-26e253edcc31', 'MFE', '"McAllen', ' TX"', 'USA'
);

-- INSERT QUERY NO: 1261
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'601bd220-c737-44aa-98ed-0fb285b0b044', 'MFR', '"Medford', ' OR"', 'USA'
);

-- INSERT QUERY NO: 1262
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a5615e14-3345-40e4-89d7-91ab0f0ac6cf', 'MLB', '"Melbourne', ' FL"', 'USA'
);

-- INSERT QUERY NO: 1263
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6a749798-4768-4141-b853-49dd8f1e40c8', 'MEM', '"Memphis', ' TN"', 'USA'
);

-- INSERT QUERY NO: 1264
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd2b3ccf3-af98-49fa-bd31-646cfdab3d3b', 'MCE', '"Merced', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1265
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7437e448-11ae-4878-97ed-59c1ab920e9c', 'MEI', '"Meridian', ' MS"', 'USA'
);

-- INSERT QUERY NO: 1266
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7caa6db3-2c52-4572-855a-3ec15174c85f', 'MTM', '"Metlakatla', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1267
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f3a9fe86-b0f7-4210-b85c-d23c31beaf3b', 'MIA', '"Miami', ' FL"', 'USA'
);

-- INSERT QUERY NO: 1268
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'392001d7-7ca9-4564-b97f-06422ee38e36', 'MAF', '"Midland/Odessa', ' TX"', 'USA'
);

-- INSERT QUERY NO: 1269
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5d094c2f-ad7f-468e-b8d5-9d02ffed25b1', 'MLS', '"Miles City', ' MT"', 'USA'
);

-- INSERT QUERY NO: 1270
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dd52d106-77ba-4200-b905-2e1f88aaee10', 'MKE', '"Milwaukee', ' WI"', 'USA'
);

-- INSERT QUERY NO: 1271
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7074c46d-3c82-4547-8fd9-957a42f5c393', 'MSP', 'Minneapolis - St. Paul Int Airport', ' MN"', 'USA'
);

-- INSERT QUERY NO: 1272
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd386a50a-f5a5-4c83-8565-da61b7ec38f0', 'MOT', '"Minot', ' ND"', 'USA'
);

-- INSERT QUERY NO: 1273
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'50da066a-fdc6-4480-bc6b-a3d7adc1d7f8', 'MSO', '"Missula', ' MT"', 'USA'
);

-- INSERT QUERY NO: 1274
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'519c5028-8603-4280-ba55-2f5401e8c9fc', 'MHE', '"Mitchell', ' SD"', 'USA'
);

-- INSERT QUERY NO: 1275
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5da1b10d-249e-49a8-9b42-df33e902ddcc', 'MOB', '"Mobile', ' AL - Pascagoula', ' MS"'
);

-- INSERT QUERY NO: 1276
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8cf4dec2-7d17-4378-a21d-e017995aa95c', 'MOD', '"Modesto', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1277
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'28574d96-f429-4228-a5c4-da54f9dc1d64', 'MLI', '"Moline/Quad Cities', ' IL"', 'USA'
);

-- INSERT QUERY NO: 1278
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f6a680f7-464d-4fbd-923f-6143c1f9b12f', 'MLU', '"Monroe', ' La"', 'USA'
);

-- INSERT QUERY NO: 1279
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'33de83bf-d728-4291-b92a-e3df96ccb9b3', 'MRY', '"Monterey', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1280
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b3e81591-fa87-4d18-9406-1972aeada5b6', 'MGM', '"Montgomery', ' AL"', 'USA'
);

-- INSERT QUERY NO: 1281
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b4147728-f29a-49e5-8fad-8acc4c9f06ca', 'MTJ', '"Montrose/Tellruide', ' CO"', 'USA'
);

-- INSERT QUERY NO: 1282
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'05ff0a47-afeb-4db8-8c28-d0b4297a7268', 'MGW', '"Morgantown', ' WV"', 'USA'
);

-- INSERT QUERY NO: 1283
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3343f985-eb02-4ecc-abb6-34a49a201919', 'MWH', '"Moses Lake', ' WA"', 'USA'
);

-- INSERT QUERY NO: 1284
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'acb33e0e-7d6a-40b4-8668-e669bd8a4a57', 'MCL', '"Mt. McKinley', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1285
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c821eff7-b005-4265-999a-fcb39f10897f', 'MSL', '"Muscle Shoals', ' AL"', 'USA'
);

-- INSERT QUERY NO: 1286
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6f5039c0-3cfe-4222-9fb9-52cf40340858', 'MKG', '"Muskegon', ' MI"', 'USA'
);

-- INSERT QUERY NO: 1287
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c7c31c86-d078-436c-b4ff-346fbe593bf8', 'MYR', '"Myrtle Beach', ' SC"', 'USA'
);

-- INSERT QUERY NO: 1288
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3a6b7bcc-6fd4-4818-a9d0-2f281946c4ba', 'ACK', '"Nantucket', ' MA"', 'USA'
);

-- INSERT QUERY NO: 1289
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'aadc8587-d5e8-4d50-8874-8177e914fcc6', 'APF', '"Naples', ' FL"', 'USA'
);

-- INSERT QUERY NO: 1290
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'71b4231c-0af1-4e1b-8a0c-329ad2472875', 'BNA', '"Nashville', ' TN"', 'USA'
);

-- INSERT QUERY NO: 1291
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'67b806e0-68c1-4b77-be95-90bcb43ca135', 'EWN', '"New Bern', ' NC"', 'USA'
);

-- INSERT QUERY NO: 1292
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b905fe2b-4819-4941-95c0-d91d9ca6b410', 'HVN', '"New Haven', ' CT"', 'USA'
);

-- INSERT QUERY NO: 1293
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'37c03c9a-0313-4eaa-b61d-c980787c1db2', 'MSY', '"New Orleans', ' La"', 'USA'
);

-- INSERT QUERY NO: 1294
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3c89aa2d-4e86-40da-9b5a-6f453161612b', 'JFK', '"New York - John F. Kennedy', ' NY"', 'USA'
);

-- INSERT QUERY NO: 1295
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1f4d81de-c968-4838-af43-b2bde6cd985e', 'LGA', '"New York - La Guardia', ' NY"', 'USA'
);

-- INSERT QUERY NO: 1296
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd0f33bce-fdd8-4b00-8bd2-4b81e87803af', 'EWR', '"New York - Newark', ' NJ"', 'USA'
);

-- INSERT QUERY NO: 1297
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ac235bd5-589c-4142-9f71-453763623ef0', 'NYC', '"New York', ' NY"', 'USA'
);

-- INSERT QUERY NO: 1298
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'53a6fb64-cc90-4257-8be4-64f21828315d', 'SWF', '"Newburgh', ' NY"', 'USA'
);

-- INSERT QUERY NO: 1299
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a168e5cf-5b73-4868-b326-9a76a9d92458', 'PHF', '"Newport News/Williamsburg', ' VA"', 'USA'
);

-- INSERT QUERY NO: 1300
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'00483e7f-923f-43c9-b423-2b640218b500', 'IAG', 'Niagara Falls Int', 'USA', 'Active'
);

-- INSERT QUERY NO: 1301
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e411b78f-68ec-40e1-afe3-88a90632f9bc', 'OME', '"Nome', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1302
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5cfee78d-4e65-4b71-a0bd-af339d666586', 'ORF', '"Norfolk/Virginia Beach', ' VA"', 'USA'
);

-- INSERT QUERY NO: 1303
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'67bf567a-58e8-4c5a-b4db-8af18eaa3f6d', 'OTH', '"North Bend', ' OR"', 'USA'
);

-- INSERT QUERY NO: 1304
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9ffbc1fa-c916-4995-959a-5a9cb4e3246a', 'OAK', '"Oakland', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1305
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bc0ef24b-26fb-418f-ad67-c75455b5ef12', 'OKC', '"Oklahoma City', ' OK - Will Rogers World"', 'USA'
);

-- INSERT QUERY NO: 1306
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f2e39e0e-0907-462a-961c-ade7059ec4ec', 'OMA', '"Omaha', ' NE"', 'USA'
);

-- INSERT QUERY NO: 1307
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0dbaade0-6d60-4c4f-8386-a3b02b4870d0', 'ONT', '"Ontario', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1308
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c1b02187-5490-405b-a9ba-89d668bfcc03', 'SNA', '"Orange County (Santa Ana)', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1309
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'30484281-f2d4-4537-ad70-9181150916e3', 'ORL', '"Orlando Metropolitan Area', ' FL"', 'USA'
);

-- INSERT QUERY NO: 1310
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'751f9adb-7404-4604-b2fb-463805f5a78a', 'OSH', '"Oshkosh', ' WI"', 'USA'
);

-- INSERT QUERY NO: 1311
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'67b6c111-140c-4eb2-a206-f19ec94be4b3', 'OWB', '"Owensboro', ' KY"', 'USA'
);

-- INSERT QUERY NO: 1312
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3b395982-6b36-4c83-a18a-2b51e7cc3980', 'OXR', '"Oxnard', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1313
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9f1be828-db76-49b9-827a-20cbd8252f94', 'PAH', '"Paducah', ' KY"', 'USA'
);

-- INSERT QUERY NO: 1314
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'eb9a30a5-e779-4792-b58b-d92e9db504e5', 'PGA', '"Page/Lake Powell', ' AZ"', 'USA'
);

-- INSERT QUERY NO: 1315
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'29bdd95e-fed8-4689-af50-b6ed01dd97c5', 'PKB', '"Pakersburg', ' WV/Marietta', ' OH"'
);

-- INSERT QUERY NO: 1316
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd6d9f6c2-5170-4a84-aa57-44d0959b1f81', 'PSP', '"Palm Springs', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1317
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6c7cc559-f194-4db9-ac98-33ace6d18422', 'PMD', '"Palmdale/Lancaster', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1318
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'648962f2-a9ad-4ef1-ac18-7a1a0887a1f9', 'PFN', '"Panama City', ' FL"', 'USA'
);

-- INSERT QUERY NO: 1319
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd36b8c2c-df6c-4c60-8be4-ecde6ea8bf39', 'PSC', '"Pasco', ' WA"', 'USA'
);

-- INSERT QUERY NO: 1320
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9d2b49ad-0419-4ce1-bd87-3a48ca4ebd7a', 'PLN', '"Pellston', ' MI"', 'USA'
);

-- INSERT QUERY NO: 1321
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'704a553b-0b0e-4423-81bd-8c38968b5f13', 'PDT', '"Pendelton', ' OR"', 'USA'
);

-- INSERT QUERY NO: 1322
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'582c190e-ef13-494e-b062-3e5714752951', 'PNS', '"Pensacola', ' FL"', 'USA'
);

-- INSERT QUERY NO: 1323
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2f787fd7-9f19-4a24-8ea9-9613afdb0c5d', 'PIA', '"Peoria/Bloomington', ' IL"', 'USA'
);

-- INSERT QUERY NO: 1324
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'49f6db66-6127-4c17-bc8a-ce6c3f80430e', 'PSG', '"Petersburg', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1325
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a29cc764-2f0c-44ba-933f-fd2f066f4f9b', 'PHL', 'Philadelphia', ' PA - Int', 'USA'
);

-- INSERT QUERY NO: 1326
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ecac28e4-4651-4a01-83cd-30fb1179929e', 'PHX', 'Phoenix', ' AZ - Sky Harbor Int', 'USA'
);

-- INSERT QUERY NO: 1327
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'91b612a0-3830-4452-86a1-c5f4e2eb4949', 'PIR', '"Pierre', ' SD"', 'USA'
);

-- INSERT QUERY NO: 1328
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9a5d5c81-6adc-4307-ace1-95a575c9b882', 'PIT', 'Pittsburgh Int Airport', ' PA', 'USA'
);

-- INSERT QUERY NO: 1329
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2023f110-4610-4dad-a88e-48b3cbfb6f49', 'PLB', '"Plattsburgh', ' NY"', 'USA'
);

-- INSERT QUERY NO: 1330
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0fe5b9bc-f6e5-47e1-ad37-6c60a559ce2c', 'PIH', '"Pocatello', ' ID"', 'USA'
);

-- INSERT QUERY NO: 1331
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'64a3b192-b55f-4e58-b5cb-86bf39043706', 'CLM', '"Port Angeles', ' WA"', 'USA'
);

-- INSERT QUERY NO: 1332
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'735fde98-2c3d-4c6c-a31f-2ccaeb657b74', 'PWM', '"Portland', ' ME"', 'USA'
);

-- INSERT QUERY NO: 1333
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'858b3d35-7247-4a02-8033-9ceec1f1865d', 'PDX', 'Portland Int', ' OR', 'USA'
);

-- INSERT QUERY NO: 1334
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bcf04f3c-9559-451f-b2eb-8b7b90f9c71e', 'POU', '"Poughkeepsie', ' NY"', 'USA'
);

-- INSERT QUERY NO: 1335
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'af59884c-a375-41ca-9671-b4d1df784f1c', 'PQI', '"Presque Island', ' ME"', 'USA'
);

-- INSERT QUERY NO: 1336
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6d0fda79-cf14-4353-a81b-d95b99e47a4f', 'PVD', '"Providence', ' RI"', 'USA'
);

-- INSERT QUERY NO: 1337
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3fbe4412-5bb4-4a8e-a8b7-6fb031ea7b44', 'SCC', '"Prudhoe Bay', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1338
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3817696c-da74-4053-8299-dc98020e23e0', 'PUB', '"Pueblo', ' CO"', 'USA'
);

-- INSERT QUERY NO: 1339
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9b13b408-5770-4027-972b-f5fb398481dc', 'PUW', '"Pullman', ' WA"', 'USA'
);

-- INSERT QUERY NO: 1340
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4ed9e764-5724-4f78-b0cf-308d2ccd7b8f', 'UIN', '"Quincy', ' IL"', 'USA'
);

-- INSERT QUERY NO: 1341
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7bbafb08-02c5-4591-b6cd-75f4da8ee705', 'RDU', '"Raleigh/Durham', ' NC"', 'USA'
);

-- INSERT QUERY NO: 1342
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b7e68795-0196-40ba-ab4c-a20245f3e4c6', 'RAP', '"Rapid City', ' SD"', 'USA'
);

-- INSERT QUERY NO: 1343
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'890071ea-3d4d-45a2-b040-c5230d542be5', 'RDG', '"Reading', ' PA"', 'USA'
);

-- INSERT QUERY NO: 1344
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6d5d9aa4-7f58-4625-8678-342bb524c0d2', 'RDD', '"Redding', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1345
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f0ac09e7-3451-42e0-8d3c-d7affbd1032a', 'RDM', '"Redmond', ' OR"', 'USA'
);

-- INSERT QUERY NO: 1346
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9789f939-1cfd-45d9-a717-0aacc1147c6a', 'RNO', '"Reno', ' NV"', 'USA'
);

-- INSERT QUERY NO: 1347
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'082897a1-b7d9-4957-a9bf-15fdf7a0c43a', 'RHI', '"Rhinelander', ' WI"', 'USA'
);

-- INSERT QUERY NO: 1348
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6df5f2c9-f41b-40f8-ad70-09d0e78a95c0', 'RIC', '"Richmond', ' VA"', 'USA'
);

-- INSERT QUERY NO: 1349
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bbc65f6d-9a11-4f89-b9e2-0aff85a2f8e8', 'ROA', '"Roanoke', ' VA"', 'USA'
);

-- INSERT QUERY NO: 1350
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd71cc1ba-e837-4d4a-b2a4-6a320d80e8d3', 'RST', '"Rochester', ' MN"', 'USA'
);

-- INSERT QUERY NO: 1351
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'124f8286-4f11-44b0-aa3e-69ccda401c59', 'ROC', '"Rochester', ' NY"', 'USA'
);

-- INSERT QUERY NO: 1352
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'99a3cf9f-9ce7-4c8b-a336-cfd45ba89db2', 'RKS', '"Rock Springs', ' WY"', 'USA'
);

-- INSERT QUERY NO: 1353
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b8911928-d12f-466f-8f5b-1a13bb34c5f5', 'RFD', '"Rockford', ' IL"', 'USA'
);

-- INSERT QUERY NO: 1354
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'75f9f33f-565b-4c23-935e-d9e349c53244', 'RKD', '"Rockland', ' ME"', 'USA'
);

-- INSERT QUERY NO: 1355
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b2189231-6fc8-40db-9ec2-7a6cf3f29863', 'RWI', '"Rocky Mount - Wilson', ' NC"', 'USA'
);

-- INSERT QUERY NO: 1356
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ac153380-7304-45ff-a4e0-c2c505bee44d', 'SMF', '"Sacramento', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1357
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bd5541ae-758c-422c-818a-60b0939ab1bb', 'MBS', '"Saginaw/Bay City/Midland', ' MI"', 'USA'
);

-- INSERT QUERY NO: 1358
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'97dab35a-2faa-47c2-94b2-d0aeecc2bb64', 'SLE', '"Salem', ' OR"', 'USA'
);

-- INSERT QUERY NO: 1359
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9a2c1216-9ac7-4b39-8643-f2f28950aa2e', 'SNS', '"Salinas', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1360
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fb671cc6-915c-45b2-9ed6-e6bcd91dc602', 'SBY', '"Salisbury', ' MD"', 'USA'
);

-- INSERT QUERY NO: 1361
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3975d3c2-5000-48ec-9d75-1c9b59c448e0', 'SLC', '"Salt Lake City', ' UT"', 'USA'
);

-- INSERT QUERY NO: 1362
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7d15f50c-c63f-4d8f-88d6-4518ba31819f', 'SJT', '"San Angelo', ' TX"', 'USA'
);

-- INSERT QUERY NO: 1363
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bef20e57-07c5-4168-8937-a399931626d6', 'SAT', '"San Antonio', ' TX"', 'USA'
);

-- INSERT QUERY NO: 1364
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'176435d2-48cb-4f6b-a47d-9311e45e2fa3', 'SAN', 'San Diego - Lindberg Field Int', ' CA', 'USA'
);

-- INSERT QUERY NO: 1365
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'57608f92-57b0-4437-b5a9-676dd74a0926', 'SFO', 'San Francisco - Int Airport', ' SA', 'USA'
);

-- INSERT QUERY NO: 1366
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd39f4b6f-3be4-433b-bff2-6eb20f5133b9', 'SJC', '"San Jose', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1367
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2aa55fa2-8a0e-484b-93d9-fc979ac68dab', 'SBP', '"San Luis Obisco', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1368
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dccf2833-0992-4802-bd25-be5d8769afe4', 'SBA', '"Santa Barbara', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1369
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4192caec-31be-4c68-b297-9872a231d07a', 'SMX', '"Santa Maria', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1370
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e031268b-7163-4435-bb8e-0186f7090287', 'STS', '"Santa Rosa', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1371
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd88c977a-044f-4bf1-9e3f-311fa5ba74c2', 'SRQ', '"Sarasota/Bradenton', ' FL"', 'USA'
);

-- INSERT QUERY NO: 1372
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2c8c7da3-2b7c-4f03-a468-5759df53c1bf', 'SAV', '"Savannah', ' GA"', 'USA'
);

-- INSERT QUERY NO: 1373
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5f984906-c06d-49a4-be71-5c582bfdc26f', 'SCF', '"Scottsdale', ' AZ"', 'USA'
);

-- INSERT QUERY NO: 1374
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'60e6b93b-125d-4afa-806d-a74fb4d4a85f', 'SEA', '"Seattle/Tacoma', ' WA"', 'USA'
);

-- INSERT QUERY NO: 1375
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'08f04f01-bfdf-466c-b6f8-00b586fa37fa', 'SHD', '"Shenandoah Valley/Stauton', ' VA"', 'USA'
);

-- INSERT QUERY NO: 1376
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'788593cb-63a8-4296-8fa9-84fa012d6905', 'SHR', '"Sheridan', ' WY"', 'USA'
);

-- INSERT QUERY NO: 1377
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'123b0008-aef2-49c2-b875-84ab32959b2a', 'SHV', '"Shreveport', ' La"', 'USA'
);

-- INSERT QUERY NO: 1378
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fc3f2c1c-6fbb-4226-9e28-e3dde312e4ee', 'SDY', '"Sidney', ' MT"', 'USA'
);

-- INSERT QUERY NO: 1379
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'16c9c6e3-da6d-4263-ba25-d0590de11b96', 'SUX', '"Sioux City', ' IA"', 'USA'
);

-- INSERT QUERY NO: 1380
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b1fcabe6-21cb-4c9a-a1fd-29a5f07fe5a3', 'FSD', '"Sioux Falls', ' SD"', 'USA'
);

-- INSERT QUERY NO: 1381
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'50ac35aa-53a6-420e-b724-3f2109b3b78f', 'SIT', '"Sitka', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1382
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3d2bc2db-85f1-4906-8e86-31beea349a80', 'SGY', '"Skagway', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1383
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e5cbd432-059c-46d9-a8c7-552c9a147d37', 'SBN', '"South Bend', ' IN"', 'USA'
);

-- INSERT QUERY NO: 1384
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a68893c8-c5e7-42ef-9b80-5325345973f5', 'GEG', '"Spokane', ' WA"', 'USA'
);

-- INSERT QUERY NO: 1385
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'288b072b-576d-44cb-8f85-c4b1facfdb23', 'SPI', '"Springfield', ' IL"', 'USA'
);

-- INSERT QUERY NO: 1386
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f352f938-7427-4695-889f-401aa665e873', 'SGF', '"Springfield', ' MO"', 'USA'
);

-- INSERT QUERY NO: 1387
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c4d5111a-c55a-4ea0-92f4-fcb0445e7a49', 'SGU', '"St. George', ' UT"', 'USA'
);

-- INSERT QUERY NO: 1388
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1be382ff-6a89-494f-8605-210dffad9fd3', 'STL', '"St. Louis - Lambert', ' MO"', 'USA'
);

-- INSERT QUERY NO: 1389
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'11ddfa07-d831-4dc4-af54-e1c35e1fa1dc', 'SCE', '"State College/Belefonte', ' PA"', 'USA'
);

-- INSERT QUERY NO: 1390
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'330d59b5-b75d-47c1-b61a-0f99bc180d53', 'HDN', '"Steamboat Springs', ' CO"', 'USA'
);

-- INSERT QUERY NO: 1391
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ae49fd16-da61-4249-9215-648d73c667b8', 'SCK', '"Stockton', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1392
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'639b5897-2f6c-48fc-86f4-11781b01d21e', 'SUN', '"Sun Valley', ' ID"', 'USA'
);

-- INSERT QUERY NO: 1393
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7e49b694-2096-40f1-b5cf-1fa5619c7e60', 'SYR', '"Syracuse', ' NY"', 'USA'
);

-- INSERT QUERY NO: 1394
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bea1aeb1-9122-4136-b1af-819f3e72c6b8', 'TKA', '"Talkeetna', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1395
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'810a7431-e101-4875-b3c3-0eb1c8f3229d', 'TLH', '"Tallahassee', ' FL"', 'USA'
);

-- INSERT QUERY NO: 1396
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9aafddda-e0c9-4e8b-8f63-69fe2bafc722', 'TPA', 'Tampa Int', ' FL', 'USA'
);

-- INSERT QUERY NO: 1397
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'96ea083d-9179-4fe1-875c-e0c2e7b160bc', 'TEX', '"Telluride', ' CO"', 'USA'
);

-- INSERT QUERY NO: 1398
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'62319c8a-a241-442c-b25b-8519804d66d0', 'HUF', '"Terre Haute', ' IN"', 'USA'
);

-- INSERT QUERY NO: 1399
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ba63fac8-4009-4146-ad9f-a2f95d22846b', 'TXK', '"Texarkana', ' AR"', 'USA'
);

-- INSERT QUERY NO: 1400
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f41ee0ef-0312-486c-bb5b-2a809d357d44', 'TVF', '"Thief River Falls', ' MN"', 'USA'
);

-- INSERT QUERY NO: 1401
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'eb59e578-3683-4e4b-86cc-65f2f3ddf0ed', 'KTB', '"Thorne Bay', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1402
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'78068ee3-d055-4060-9dd5-8bd51a5faeff', 'TOL', '"Toledo', ' OH"', 'USA'
);

-- INSERT QUERY NO: 1403
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2ef56eae-31ba-45d9-879e-cccaa651301d', 'TVC', '"Traverse City', ' MI"', 'USA'
);

-- INSERT QUERY NO: 1404
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3d77244e-c0e8-4dc9-a568-5fc4ce81af6e', 'TTN', '"Trenton/Princeton', ' NJ"', 'USA'
);

-- INSERT QUERY NO: 1405
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e92fc1f2-9fa3-476d-b3fe-9ebd650b7b19', 'TRI', '"Tri-Cities Regional', ' TN/VA"', 'USA'
);

-- INSERT QUERY NO: 1406
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'878fad80-536b-4317-835f-830754e907b7', 'TUS', '"Tucson', ' AZ"', 'USA'
);

-- INSERT QUERY NO: 1407
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5396a56b-ded7-4535-a472-d3413ad433e7', 'TUP', '"Tulepo', ' MS"', 'USA'
);

-- INSERT QUERY NO: 1408
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'55ab0327-5bfa-4220-917b-ee6ba0dd9b8d', 'TUL', '"Tulsa', ' OK"', 'USA'
);

-- INSERT QUERY NO: 1409
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5e784002-eab8-4d3c-972a-b961545142cf', 'TCL', '"Tuscaloosa', ' AL"', 'USA'
);

-- INSERT QUERY NO: 1410
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b947ce66-6f3e-4031-9b74-14bbddf2e39a', 'TWF', '"Twin Falls', ' ID"', 'USA'
);

-- INSERT QUERY NO: 1411
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c1fb5794-0803-4592-b4ff-301e211d8203', 'TYR', '"Tyler', ' TX"', 'USA'
);

-- INSERT QUERY NO: 1412
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ba444cc1-bedf-4bee-92ba-47e0d6caaa1f', 'UCA', '"Utica', ' NY"', 'USA'
);

-- INSERT QUERY NO: 1413
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'124fe428-3550-4395-b22b-afba64a40a92', 'EGE', '"Vail', ' CO"', 'USA'
);

-- INSERT QUERY NO: 1414
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'990f1fa2-d6ed-46ee-93ea-21686befdc3e', 'VDZ', '"Valdez', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1415
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'238d14cf-16f7-47c8-8a4c-931c65f144e6', 'VLD', '"Valdosta', ' GA"', 'USA'
);

-- INSERT QUERY NO: 1416
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ee6630c9-0998-4f57-bf98-7ef1f9f387a0', 'VEL', '"Vernal', ' UT"', 'USA'
);

-- INSERT QUERY NO: 1417
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'14b28243-3b4f-43a2-a9c5-69680cb2e30d', 'VRB', '"Vero Beach/Ft. Pierce', ' FL"', 'USA'
);

-- INSERT QUERY NO: 1418
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0ade99a1-b5cd-4a25-82a4-6d44179e89e8', 'VIS', '"Visalia', ' CA"', 'USA'
);

-- INSERT QUERY NO: 1419
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'cff3021b-c8ab-484b-836c-80a9907131c7', 'ACT', '"Waco', ' TX"', 'USA'
);

-- INSERT QUERY NO: 1420
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'12f37917-1cc6-447c-b906-6a3fab4a2a44', 'ALW', '"Walla Walla', ' WA"', 'USA'
);

-- INSERT QUERY NO: 1421
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1b46fe8e-b785-4176-8a82-56b4332bfca9', 'BWI', 'Washington DC - Baltimore Washington Int', 'USA', 'Active'
);

-- INSERT QUERY NO: 1422
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'37d1e9e0-9ed5-4b5d-894b-a41cd538b179', 'IAD', 'Washington DC - Dulles Int', 'USA', 'Active'
);

-- INSERT QUERY NO: 1423
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e3e1f430-0fd3-4347-80dc-f0c8851a69a2', 'DCA', 'Washington DC - Ronald Reagan National', 'USA', 'Active'
);

-- INSERT QUERY NO: 1424
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'afbc8020-8e83-41dd-a893-9201dd0dc724', 'WAS', '"Washington', ' DC"', 'USA'
);

-- INSERT QUERY NO: 1425
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3c05b764-2fef-442d-b6d7-7c36c2ef0cc3', 'ALO', '"Waterloo', ' IA"', 'USA'
);

-- INSERT QUERY NO: 1426
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8c88a727-a3b1-4584-ab2c-7db9a0b67ba8', 'ATY', '"Watertown', ' SD"', 'USA'
);

-- INSERT QUERY NO: 1427
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'cec6538b-6e23-43cb-9e10-c02dae52631a', 'CWA', '"Wausau/Stevens Point', ' WI"', 'USA'
);

-- INSERT QUERY NO: 1428
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'479e6530-8103-4a30-9e20-f58b4d72f407', 'EAT', '"Wenatchee', ' WA"', 'USA'
);

-- INSERT QUERY NO: 1429
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0c0b414d-b68b-4e49-bd38-2041ae8699bd', 'PBI', '"West Palm Beach', ' FL"', 'USA'
);

-- INSERT QUERY NO: 1430
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4d50ead6-f517-460b-8e37-ae32b9c41028', 'WYS', '"West Yellowstone', ' MT"', 'USA'
);

-- INSERT QUERY NO: 1431
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dc5872e7-7676-49c3-bf98-1be32bf2fb50', 'HPN', '"White Plains', ' NY"', 'USA'
);

-- INSERT QUERY NO: 1432
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c01232e3-3873-43b9-9bee-8ef390b20984', 'SPS', '"Wichita Falls', ' TX"', 'USA'
);

-- INSERT QUERY NO: 1433
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7050d704-cc89-4779-aad2-7a99d4caa93c', 'ICT', '"Wichita', ' KS"', 'USA'
);

-- INSERT QUERY NO: 1434
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0be2c9e7-276f-41cb-a5df-93527f76e7b9', 'AVP', '"Wilkes Barre/Scranton', ' PA"', 'USA'
);

-- INSERT QUERY NO: 1435
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'18267ca9-ebd2-46b4-842d-3f5db59e4f96', 'IPT', '"Williamsport', ' PA"', 'USA'
);

-- INSERT QUERY NO: 1436
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'13d7c18e-620e-4340-9f46-826d47befe80', 'ISL', '"Williston', ' ND"', 'USA'
);

-- INSERT QUERY NO: 1437
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5bcc970c-d343-4cb8-8d00-9e9bbd7a0431', 'ILM', '"Wilmington', ' NC"', 'USA'
);

-- INSERT QUERY NO: 1438
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9150ffa0-47ab-4cfb-ac34-749c67b7d997', 'OLF', '"Wolf Point', ' MT"', 'USA'
);

-- INSERT QUERY NO: 1439
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5cfc9199-4fd0-454a-9252-9f5d4e3ac7bb', 'ORH', '"Worcester', ' MA"', 'USA'
);

-- INSERT QUERY NO: 1440
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ab26161b-aca9-4a75-8ff7-148cd18512f4', 'WRL', '"Worland', ' WY"', 'USA'
);

-- INSERT QUERY NO: 1441
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8d2ab2a1-7d06-4b26-8423-90627abf1fa1', 'WRG', '"Wrangell', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1442
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3ad299e8-b1df-48fd-9738-6b6a62aaf2f6', 'YKM', '"Yakima', ' WA"', 'USA'
);

-- INSERT QUERY NO: 1443
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'98096c26-670d-4508-a5fa-f6983d9c32a5', 'YAK', '"Yakutat', ' AK"', 'USA'
);

-- INSERT QUERY NO: 1444
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4ece321c-915b-4743-88d7-7c0873b664eb', 'YUM', '"Yuma', ' AZ"', 'USA'
);

-- INSERT QUERY NO: 1445
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'26ac7bd1-e50d-4f2c-a6f5-314363381e16', 'ORL', 'Orlando Int Airport', ' FL', 'USA'
);

-- INSERT QUERY NO: 1446
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5f23daa3-15b3-49bc-81be-d618f3158142', 'AEP', '"Buenos Aires', ' Jorge Newbery"', 'Argentina'
);

-- INSERT QUERY NO: 1447
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'635c03b2-4ea0-4b12-bdff-9937ed771c26', 'BAQ', 'Barranquilla', 'Colombia', 'Active'
);

-- INSERT QUERY NO: 1448
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5251aa63-4030-424d-9eca-dfc650ba9591', 'BUE', 'Buenos Aires', 'Argentina', 'Active'
);

-- INSERT QUERY NO: 1449
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ff2547e6-f75f-44ce-8aca-06150aa49208', 'CTG', 'Catagena', 'Colombia', 'Active'
);

-- INSERT QUERY NO: 1450
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6e078b0d-0a9d-430d-aae2-311537042478', 'EZE', 'Buenos Aires', ' Ezeiza Int Airport"', 'Argentina'
);

-- INSERT QUERY NO: 1451
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'93f16bb9-fb4c-4321-ae3b-d511fe635df6', 'IGR', '"Iguazu', ' Cataratas"', 'Argentina'
);

-- INSERT QUERY NO: 1452
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f7aa4acd-f9e9-4488-adc0-65cdb329932a', 'IPC', 'Easter Island', 'Chile', 'Active'
);

-- INSERT QUERY NO: 1453
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4f431728-16be-4a7d-a4b1-339c97b5a1df', 'LIM', 'Lima - J Chavez Int', 'Peru', 'Active'
);

-- INSERT QUERY NO: 1454
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'cf340654-993a-4e8e-a396-d77eafeb328e', 'MVD', 'Montevideo - Carrasco', 'Uruguay', 'Active'
);

-- INSERT QUERY NO: 1455
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3bcda2fa-35bd-4cff-867d-1dbfbc2e4116', 'SCL', 'Santiago de Chile - Arturo Merino Benitez', 'Chile', 'Active'
);

-- INSERT QUERY NO: 1456
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7d07c296-991a-492e-ad3e-01368825d9de', 'UIO', 'Quito - Mariscal Sucr', 'Ecuador', 'Active'
);

-- INSERT QUERY NO: 1457
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'02132b90-c092-460a-8d79-514f70dc0db6', 'LPB', 'La Paz - El Alto', 'Bolivia', 'Active'
);

-- INSERT QUERY NO: 1458
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dd09a130-6d0a-4aa2-9b7e-e1b59da0ed78', 'SRZ', 'Santa Cruz de la Sierra', 'Bolivia', 'Active'
);

-- INSERT QUERY NO: 1459
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3c687512-865f-4013-8b1f-24ada7867190', 'PUQ', 'Punta Arenas', 'Chile', 'Active'
);

-- INSERT QUERY NO: 1460
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'69deb895-3873-4735-a1a3-8aceaf2eed7c', 'VAP', 'Valparaiso', 'Chile', 'Active'
);

-- INSERT QUERY NO: 1461
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'529b478f-95a8-4140-90ae-7c7fd4aa501c', 'BOG', 'Bogota', 'Colombia', 'Active'
);

-- INSERT QUERY NO: 1462
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'85ef9c5b-1f1b-4c1a-ab88-f204d9ce957b', 'BGA', 'Bucaramanga', 'Colombia', 'Active'
);

-- INSERT QUERY NO: 1463
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0a173d6d-fd59-4911-8d02-46b232c09d3b', 'IQT', 'Iquitos', 'Peru', 'Active'
);

-- INSERT QUERY NO: 1464
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2bb5008e-d941-4b32-a2f9-f99a6166f719', 'COR', 'Cordoba', 'Argentina', 'Active'
);

-- INSERT QUERY NO: 1465
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6777ce7e-4c6a-4ab5-aac9-6d08d304449f', 'MDQ', 'Mar del Plata', 'Argentina', 'Active'
);

-- INSERT QUERY NO: 1466
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6fb2f943-2e2b-4b60-bec2-3e2e856be059', 'MDZ', 'Mendoza', 'Argentina', 'Active'
);

-- INSERT QUERY NO: 1467
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2208f643-d835-4d24-aa1b-e7598aac9e09', 'ROS', 'Rosario', 'Argentina', 'Active'
);

-- INSERT QUERY NO: 1468
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'658ec94e-8ac8-481f-be47-29bf1379d297', 'SLA', '"Salta', ' Gen Belgrano"', 'Argentina'
);

-- INSERT QUERY NO: 1469
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7029b034-82e0-4b0f-a7ab-e748a96b6fb8', 'BRC', 'San Carlos de Bariloche', 'Argentina', 'Active'
);

-- INSERT QUERY NO: 1470
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6ad8b710-e4bf-4040-8713-3c001eab7256', 'RSA', 'Santa Rosa', 'Argentina', 'Active'
);

-- INSERT QUERY NO: 1471
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'17da4486-e1be-4e25-9eda-50faa2479a2e', 'CBB', 'Cochabamba', 'Bolivia', 'Active'
);

-- INSERT QUERY NO: 1472
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7468a52c-78b3-439d-b9c8-c8f56fe14bbb', 'SRB', 'Santa Rosa', 'Bolivia', 'Active'
);

-- INSERT QUERY NO: 1473
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9a2db00a-6cc2-46fc-a592-5f8d6c66508d', 'GIG', 'Rio de Janeiro - Galeao', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1474
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'43a95438-c23b-4a67-ab56-9c6466d3dcc0', 'SDU', 'Rio de Janeiro - Santos Dumont', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1475
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ab488443-f4c8-4b6e-b147-6274ba06fabe', 'RIO', 'Rio de Janeiro', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1476
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd60f2e6e-bb30-4077-8096-a7d8cb248be2', 'SAO', 'Sao Paulo', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1477
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'edc9cbe9-0633-4c6a-a452-0651994530c8', 'CGH', 'Sao Paulo - Congonhas', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1478
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'301b6249-944b-4ad8-aba1-bad4f174c8d7', 'GRU', 'Sao Paulo - Guarulhos', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1479
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fa7a7c40-7dd6-436e-96ca-9e94c8c9b900', 'VCP', 'Sao Paulo - Viracopos', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1480
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'eec4372c-2eec-4bba-b2e2-645135911f86', 'AJU', 'Aracaju', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1481
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1063e649-310a-4abc-accc-41cec89e18eb', 'BEL', 'Belem', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1482
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5e3ab224-af3b-4cdd-9223-6c6b6d2439a8', 'CNF', 'Belo Horizonte', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1483
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1c0adb63-cd04-4a39-a13d-031bf0a97d0c', 'BVB', 'Boa Vista', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1484
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'74f5bd89-d00d-48d4-a8e3-a75674b47471', 'BSB', 'Brasilia', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1485
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'89f13d00-0aa1-49fa-9886-e5c06cc5d77d', 'CGR', 'Campo Grande', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1486
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e7298295-360e-4322-b766-c50c1aa1c3d9', 'CGB', 'Cuiaba', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1487
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ed81cdfe-6ac9-46d5-8322-6da5bdc4ad06', 'CWB', 'Curitiba', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1488
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7e5266f0-7e4d-4d55-a5e3-d1079b0d3317', 'FLN', 'Florianopolis', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1489
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd07c0b88-0938-4d58-8075-5b23440a527a', 'FOR', 'Fortaleza', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1490
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'42dcf428-6053-43f4-a2ab-e48d2d2a4244', 'GYN', 'Goiania', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1491
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e83bd147-6a1e-43aa-bae2-c4710f69990d', 'GRU', 'Guarulhos Int - Sao Paulo', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1492
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'51f1d6d5-413a-4c6f-b8d3-b97deeb46480', 'JCB', 'Joacaba', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1493
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b472a69c-899f-418b-9722-3ef568bb5580', 'JPA', 'Joao Pessoa - Castro Pinto', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1494
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'be542854-b0ea-40d7-a123-880b225348cf', 'MCP', 'Macapa', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1495
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8a588e92-4d51-45d6-a3f6-4b65317bef9b', 'MCZ', 'Maceio', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1496
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9597179d-52b1-4d1d-8d63-eab723ea41b9', 'MAO', 'Manaus', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1497
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fa46151e-023c-492b-b1e8-fba947b9ca51', 'QGF', 'Montenegro', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1498
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'60fb7b8a-ab33-43c3-8e4b-a8f331ea9760', 'NAT', 'Natal', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1499
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'322875c0-f364-4008-a08a-35e85961d488', 'POA', 'Porto Alegre', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1500
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b12f1667-66aa-4e95-b8a3-0277b8f313c5', 'PVH', 'Porto Velho', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1501
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'28a92288-9baf-488f-a476-b6710fc8f6d5', 'REC', 'Recife', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1502
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8b52313c-54b0-47c6-8265-bbf65ea0847f', 'RBR', 'Rio Branco', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1503
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7b9469bb-1be7-4c86-9a50-98fa8c8404af', 'SSA', 'Salvador', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1504
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bc8cc505-7870-450c-8551-f5e4688ac7d0', 'SRA', 'Santa Rosa', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1505
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'25f86891-9961-4f41-846d-a4f625cea32b', 'SLZ', 'Sao Luis', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1506
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'91c38588-2cb9-42f5-bfd7-029c3ac171ad', 'THE', 'Teresina', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1507
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'307d726b-5409-4bef-97f7-2001f0bcab9d', 'UDI', '"Uberlandia', ' MG"', 'Brazil'
);

-- INSERT QUERY NO: 1508
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fe55f3b7-4254-43b8-8105-bcebdc226e7f', 'VIX', 'Vitoria', 'Brazil', 'Active'
);

-- INSERT QUERY NO: 1509
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8b0cad09-4804-45fb-a103-65ef4d54a832', 'CLO', 'Cali', 'Colombia', 'Active'
);

-- INSERT QUERY NO: 1510
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'90641bb6-51a8-4b51-b75f-225610302f09', 'MDE', 'Medellin', 'Colombia', 'Active'
);

-- INSERT QUERY NO: 1511
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a8e8c4f9-93ff-4955-a7d2-a0f3ddf4e1f0', 'AXS', 'Armenia', 'Colombia', 'Active'
);

-- INSERT QUERY NO: 1512
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1781d332-ae8f-4193-90f9-331226da3705', 'PEI', 'Pereira', 'Colombia', 'Active'
);

-- INSERT QUERY NO: 1513
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'20f95928-e51d-426b-abfc-f6f7932ca34a', 'ADZ', 'San Andres', 'Colombia', 'Active'
);

-- INSERT QUERY NO: 1514
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4b066939-1a7f-4b2a-a61d-1213c93785e6', 'SSL', 'Santa Rosalia', 'Colombia', 'Active'
);

-- INSERT QUERY NO: 1515
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e0095f39-333e-4a87-88da-b08d51a4a9ba', 'GYE', 'Guayaquil', 'Ecuador', 'Active'
);

-- INSERT QUERY NO: 1516
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'319aba69-3078-428e-9c68-f93251c46ce2', 'SNC', 'Salinas', 'Ecuador', 'Active'
);

-- INSERT QUERY NO: 1517
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3a07c88d-a315-4f34-8960-1d695193bd22', 'CAY', 'Cayenne', 'French Guayana', 'Active'
);

-- INSERT QUERY NO: 1518
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'014b36b3-649b-4c14-a74b-1353388d5da5', 'CKY', 'Conakry', 'Guinea', 'Active'
);

-- INSERT QUERY NO: 1519
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ae278618-34be-4835-86a1-12dbbd61cfe3', 'LEK', 'Labe', 'Guinea', 'Active'
);

-- INSERT QUERY NO: 1520
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7718dee3-d303-4b76-8f9a-1dd1d8058fbf', 'BXO', 'Bissau', 'Guinea Bissau', 'Active'
);

-- INSERT QUERY NO: 1521
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'93325c4e-8290-44d9-a8b7-f76b7d1ce3f7', 'GEO', 'Georgetown', 'Guyana', 'Active'
);

-- INSERT QUERY NO: 1522
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f605ccd9-61dc-4bd2-8900-6ce5837910b6', 'ASU', 'Asuncion', 'Paraguay', 'Active'
);

-- INSERT QUERY NO: 1523
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'964d1296-5e2d-402b-be42-28e2e8651be5', 'BLA', 'Barcelona', 'Venezuela', 'Active'
);

-- INSERT QUERY NO: 1524
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'cb3813dd-31b0-4f62-87d2-4612f0d3ef8e', 'CCS', 'Caracas', 'Venezuela', 'Active'
);

-- INSERT QUERY NO: 1525
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'517bb1b3-38d2-4a40-94f6-7b49d29f1349', 'MAR', 'Maracaibo - La Chinita', 'Venezuela', 'Active'
);

-- INSERT QUERY NO: 1526
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a365cea8-48d8-4950-b48f-9586b87ee504', 'PMV', 'Margerita', 'Venezuela', 'Active'
);

-- INSERT QUERY NO: 1527
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4eaacee7-a998-459d-b8d9-99fd65921f1d', 'PZO', 'Puerto Ordaz', 'Venezuela', 'Active'
);

-- INSERT QUERY NO: 1528
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6d0fc95f-bad1-4387-b34b-c1b0b2764166', 'VLN', 'Valencia', 'Venezuela', 'Active'
);

-- INSERT QUERY NO: 1529
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dc1dc7b0-e84d-4dbe-8b1f-463350df1e1c', 'ASP', 'Alice Springs', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1530
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'aa553a64-15b7-47fd-9c68-467ee4d011df', 'AYQ', 'Ayers Rock', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1531
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b6ca4973-ee4f-4f5d-bab7-417d8db3c793', 'PER', 'Perth Int', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1532
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'117b9bfe-6238-4b8c-a027-de13b8006c22', 'BOB', 'Bora Bora', 'French Polynesia', 'Active'
);

-- INSERT QUERY NO: 1533
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'01339cde-8562-4d59-9677-64f36616993c', 'PPT', 'Papeete - Faaa', 'French Polynesia (Tahiti)', 'Active'
);

-- INSERT QUERY NO: 1534
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'006b1043-3d83-4c0e-a8f6-4adffd67bc72', 'PPG', 'Pago Pago', 'American Samoa', 'Active'
);

-- INSERT QUERY NO: 1535
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f1091211-382d-49f8-b8aa-838aafddd4d3', 'ADL', 'Adelaide', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1536
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'158be664-0b36-4ba0-a4ab-02bc72640201', 'ALH', 'Albany', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1537
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c06739d4-a1e7-4af6-982e-4f84deae3fa1', 'ABX', 'Albury', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1538
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8bd5cd01-2184-45dd-8f1f-0f5074b6c121', 'AYR', 'Ayr', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1539
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1060cb85-8fc6-4351-a10c-106ef127a3d2', 'BNK', 'Ballina', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1540
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ace21387-5b96-4ddf-a0cc-608ab5f2fbd5', 'ABM', 'Bamaga', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1541
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f992d07d-c9e3-4191-a3e5-acca6af61717', 'BLT', 'Blackwater', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1542
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'81a28789-0189-41a4-ba4f-6d643d6e18e1', 'ZBO', 'Bowen', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1543
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'750e8e1b-3483-49d0-bc19-fd0c4150d273', 'BMP', 'Brampton Island', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1544
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fdae5763-1b6f-4a5d-a8f6-02565a69120c', 'BNE', 'Brisbane', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1545
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'cdf11d4b-2fd6-47a6-88fd-4f31f213562e', 'BHQ', 'Broken Hill', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1546
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6733820c-588d-42d9-bdbf-72c12e7b20d1', 'BME', 'Broome', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1547
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ef6e8a4d-2b6c-4931-ac3f-8938148a7d51', 'BDB', 'Bundaberg', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1548
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'27868492-dc3a-4e10-9322-bb2e0568d5cb', 'BWT', 'Burnie (Wynyard)', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1549
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd7b3231a-f398-4a13-b8af-9515e8182968', 'CNS', 'Cairns', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1550
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'75fbeafa-82a2-40fb-99da-04f75226165b', 'CBR', 'Canberra', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1551
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'405c99e9-39d7-4da7-9ce7-0b6dce7ece9e', 'CVQ', 'Carnarvon', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1552
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'725500c3-214f-42b1-b98f-f2f94e0a1b22', 'CSI', 'Casino', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1553
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'38880f71-905e-42a5-ac80-31390f3bf658', 'CED', 'Ceduna', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1554
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2dfab6c7-83ea-42db-a8c9-88868861913e', 'CES', 'Cessnock', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1555
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1c689f4a-2769-47b9-a502-3cf69c0305ec', 'CXT', 'Charters Towers', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1556
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'98c273d9-5bdf-4757-ab65-ce957dd46af0', 'CMQ', 'Clermont', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1557
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'39314329-38a1-4214-a909-3ad901e8777f', 'CFS', 'Coffs Harbour', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1558
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f45c69f5-dc7c-4cf5-850a-3de514121392', 'KCE', 'Collinsville', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1559
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'115f7d9c-460f-4f55-bb61-91abc0916e79', 'CPD', 'Coober Pedy', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1560
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e641565f-6b6d-48f8-98a4-71ff2a1be231', 'CTN', 'Cooktown', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1561
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd74f1d66-7f69-4c17-9f6c-8b2870aa0c75', 'OOM', 'Cooma', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1562
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'722a334c-8451-4cb4-82c1-95409a1f727a', 'DBY', 'Dalby', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1563
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2529f8bc-a1bc-44c4-bd43-4745779ab245', 'DRW', 'Darwin', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1564
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'460b8db2-dcc2-4d41-844c-feecce3a87d8', 'DDI', 'Daydream Island', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1565
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ef53c3f4-e488-40dc-881b-bfe397a66cf7', 'DRB', 'Derby', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1566
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a64a5a73-f161-4470-aed2-46723b292276', 'DPO', 'Devonport', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1567
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd92f3bf5-1a8b-49a5-9381-a33af152a5d1', 'DBO', 'Dubbo', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1568
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7e703bf3-4ad8-4b50-8d8f-6a1034a0e773', 'DKI', 'Dunk Iceland', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1569
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd3bc4916-3163-4200-b5d8-2889ae543320', 'DYA', 'Dysart', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1570
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'81d7284c-1123-4133-af5a-f28b10617b3d', 'EDR', 'Emerald', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1571
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2894308f-dc0f-44c2-94f0-9e817624a381', 'EMD', 'Emerald', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1572
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b2c9f71e-89fd-4f39-b5eb-46c8fc410e3e', 'EPR', 'Esperance', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1573
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2a6fc6dd-a77f-4c33-bed4-5dd8529fff0f', 'GEX', 'Geelong', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1574
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f0e922b4-91d5-4cec-a51d-00687a6bc32e', 'GET', 'Geraldton', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1575
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'11ade4b7-a13f-42da-aa82-c7313426c670', 'GLT', 'Gladstone', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1576
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'668826eb-2f13-4482-8a21-822bce2d24b5', 'OOL', 'Gold Coast', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1577
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bc64a669-a804-421b-963e-2b6affca6bc3', 'GOO', 'Goondiwindi', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1578
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'575bb480-d97d-4f4b-b95d-2def41cc4ae0', 'GOV', 'Gove (Nhulunbuy)', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1579
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'774113cc-b8aa-4a45-bfe6-56dac57c8b1f', 'GKL', 'Great Keppel Island', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1580
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd337343c-3daa-4ace-8a1a-c74e4b017fb5', 'GFF', 'Griffith', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1581
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5b1cf2c4-f03a-41ff-a153-f4e6f88a236a', 'GTE', 'Groote Eyeland', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1582
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b84d48a7-b5ed-46b8-a73b-9f130ce1f70b', 'GTI', 'Groote Eylandt', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1583
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2cb7998c-1ac1-44ac-9472-5c1f96804e30', 'GYP', 'Gympie', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1584
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dac63123-ab1a-4f67-949f-a3562efa8c52', 'HLT', 'Hamilton', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1585
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5fb5f5ea-5973-4f2c-a3cb-6a7b298a9bda', 'HTI', 'Hamilton Island', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1586
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2c1f20da-ebb5-4a0c-8631-8126212367c4', 'HIS', 'Hayman Island', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1587
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5a6e01de-0c06-4ad3-8dfd-efe65ce155a6', 'HVB', 'Hervey Bay', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1588
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'baec4f3f-4629-4267-baa5-f424932cb879', 'HNK', 'Hinchinbrook Island', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1589
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'74d91c43-8e36-466a-9c0c-b1359f0abb48', 'HBA', 'Hobart', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1590
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'01b8d1fe-b11d-4ade-b411-d79c11f8bd0f', 'HMH', 'Home Hill', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1591
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f93aee0a-7117-4ba3-a0a2-c7b5e6ce5874', 'IGH', 'Ingham', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1592
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd14109a0-4124-4e3c-9c0c-049ad2314cb2', 'IFL', 'Innisfail', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1593
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a2c1d550-4b9a-4259-a142-27a1ba7ff592', 'KGI', 'Kalgoorlie', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1594
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'43b51a02-df15-4b2d-a8e1-ad22146d3d56', 'KTA', 'Karratha', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1595
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2d79ab88-86d3-4134-8425-e79f6dfab970', 'KRB', 'Karumba', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1596
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'51810926-aa16-4e14-8b22-d8b1d1a13105', 'KTR', 'Katherine', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1597
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6235bf32-2767-4a76-b030-8f6ddc778aa2', 'KGC', 'Kingscote', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1598
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'44f4cb22-fe27-4d9d-b6c7-e459c3bfb62f', 'KWM', 'Kowanyama', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1599
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'62a0493f-e5b9-457b-b6a8-7586460c54c8', 'KNX', 'Kununurra', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1600
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'010e8046-620b-4ff8-b0bb-67e6ae98c7e3', 'LST', 'Launceston', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1601
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c613ab6c-bdd1-4399-bf45-539a8cf97780', 'LVO', 'Laverton', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1602
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c48da152-d5a9-438f-80fc-de24e2bc3bb8', 'LEA', 'Learmouth (Exmouth)', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1603
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f2bd7e73-ab47-4f07-b2de-9d7c2ce4f69e', 'LER', 'Leinster', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1604
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8102149e-fb8e-458b-9cbb-95f26b3deb21', 'LNO', 'Leonora', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1605
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5665d94c-a81e-4a77-bc10-4e24ab24c278', 'LDC', 'Lindeman Island', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1606
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0a0b53d6-81a5-4ba4-8e17-f4fbf7adb925', 'LSY', 'Lismore', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1607
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8cd02598-c2c6-40a9-ae3c-ace4fb0f9e73', 'LZR', 'Lizard Island', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1608
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fdd69230-ecca-401a-91ff-7f8fc5b71e35', 'IRG', 'Lockhart River', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1609
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fddb36f3-c705-4f4b-9cdb-aefdb4d41258', 'LRE', 'Longreach', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1610
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e3122b9b-4af1-4f9a-972e-a2cbf46b08db', 'MKY', 'Mackay', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1611
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9666f871-f64e-46f5-8908-8b4e81e4e497', 'MTL', 'Maitland', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1612
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4755a518-0a6b-47a4-bacc-36ad68a63f1d', 'MBH', 'Maryborough', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1613
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'38b89a42-35ba-40f0-89e5-7c9e30a075bc', 'MKR', 'Meekatharra', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1614
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8c140aef-12a2-40c9-961b-763954ea32e2', 'MEL', 'Melbourne - Tullamarine', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1615
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'64fcd1ed-017c-4bb3-828f-82c29f83678d', 'MIM', 'Merimbula', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1616
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c0f41295-2b1e-45db-9f3b-d9051f3debbc', 'MMM', 'Middlemount', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1617
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd3aabe67-db53-4588-a19f-3a31b4a2eff9', 'MQL', 'Mildura', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1618
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'adbc7256-fce6-42a8-a55d-b00dfc313649', 'MOV', 'Moranbah', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1619
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'61616a7e-22ed-4cef-be32-e8f53f15f2f4', 'MRZ', 'Moree', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1620
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'224be1a3-84d4-4e4f-b0ed-44c31e355ee9', 'MGB', 'Mount Gambier', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1621
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2aba4a25-99e9-4c2e-8dc1-0e70de533f73', 'MMG', 'Mount Magnet', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1622
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c08d7ce7-a210-4851-9702-09647f20c1d7', 'ISA', 'Mt. Isa', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1623
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a975f70b-220f-4767-9222-bb2e12debbe3', 'NAA', 'Narrabri', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1624
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2ece000a-dac0-422f-8683-6ddf62492d1d', 'NRA', 'Narrandera', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1625
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd4cf37b0-4cba-46a0-a394-15b9dff09fff', 'BEO', 'Newcastle - Belmont', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1626
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9dad2af1-9a07-4aae-b94d-060bf883fc23', 'NTL', 'Newcastle - Williamtown', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1627
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1ed811a1-b76e-46e7-8094-1a5c7e6e265e', 'ZNE', 'Newman', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1628
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e5c2919f-33ef-4ee0-8b7f-2576cb51140a', 'NSA', 'Noosa', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1629
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'74f1d687-2c76-4bae-91d9-c54ce02c594c', 'NLK', 'Norfolk Island', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1630
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e1612da5-9318-492e-a828-60a7f86d4dfa', 'OLP', 'Olympic Dam', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1631
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'693352e5-1126-4c5a-9dfe-ca97d2d44a0b', 'OAG', 'Orange', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1632
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'592f975e-d38c-4252-aa79-bc5381e8aa45', 'ORS', 'Orpheus Island', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1633
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'329def18-ef26-4c2d-a808-293d1f497a47', 'PBO', 'Paraburdoo', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1634
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f4c4e9b8-fdf7-48ce-921b-c667fd941e7f', 'PUG', 'Port Augusta', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1635
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b1d51bb6-3105-4208-9467-953c3a0caff8', 'PHE', 'Port Hedland', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1636
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6f7d0675-27ca-4876-978e-1fa88770b7b0', 'PTJ', 'Portland', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1637
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'bd66131f-75c2-4cd9-b9ce-dffc1b4fdbfb', 'PLO', 'Port Lincoln', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1638
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'381594e1-171d-4d58-a019-6e9824249062', 'PQQ', 'Port Macquarie', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1639
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'25c0c1e7-ca6a-4c66-9644-508a8eee8bda', 'PPP', 'Prosperpine', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1640
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'cfa48b14-9e96-4985-a183-8c8de0d20706', 'UEE', 'Queenstown', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1641
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd5ab5650-f1f6-41bc-9238-579135cd5115', 'ROK', 'Rockhampton', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1642
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e184f5ba-f358-4b29-94ec-332baa33803a', 'NSO', 'Scone', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1643
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd2e2f166-0c55-49ab-b2fc-ac34427a8f28', 'JHQ', 'Shute Harbour', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1644
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c06ce680-2b4a-472a-942d-c81478a171c1', 'SIX', 'Singleton', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1645
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e4737cb8-bed9-4d46-9d10-a3260ab9d725', 'SOI', 'South Molle Island', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1646
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c181a1d0-71d6-4e42-895a-808304f64303', 'KBY', 'Streaky Bay', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1647
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3b0115e1-9b79-46aa-b581-d7283beb42d2', 'MCY', 'Sunshine Coast', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1648
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4f1a4aa6-9937-40a8-8066-5c32bcab9d59', 'SYD', 'Sydney - Kingsford Smith', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1649
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd57f9ba1-169d-414a-beb9-1ddfc2466e24', 'TMW', 'Tamworth', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1650
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'02785c48-3a41-4a3f-90d6-219c2aa84992', 'TRO', 'Taree', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1651
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3c2996bd-fcfc-4104-91a0-14ecfd04fafc', 'TEM', 'Temora', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1652
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'73a01d2c-ab12-47d6-a1f9-af58aca2c9fc', 'TCA', 'Tennant Creek', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1653
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dbccf0ee-68a2-47fb-a3da-bf6c8f4a352c', 'TIS', 'Thursday Island', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1654
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6cf1e026-2a05-4c8d-aba9-c3692920d60a', 'TPR', 'Tom Price', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1655
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'32c3b8f8-e0e7-4bb4-a3d0-6c00373506c2', 'TWB', 'Toowoomba', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1656
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6471c1ee-db63-456b-9035-53d17bee52f6', 'TSV', 'Townsville', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1657
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1431f247-39fa-4b89-bfbf-e98cf21db5aa', 'WGA', 'Wagga', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1658
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ebdce35c-1556-4692-ac01-2f770dca4e29', 'WMB', 'Warrnambool', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1659
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'92175bf8-8d6c-45f8-8301-b1768b4775f0', 'WEI', 'Weipa', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1660
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6c52de92-caec-4818-8aca-695a6a6e667f', 'HAP', 'Whitsunday Resort', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1661
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4d7bb022-8246-4990-8b79-d2bf14a8f89b', 'WYA', 'Whyalla', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1662
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8924eef3-98b7-4561-8e52-44ab7c5bf815', 'WHM', 'Wickham', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1663
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'2b3402e3-b791-4bd2-9ece-121cacf277b3', 'WUN', 'Wiluna', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1664
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b332c7bd-a75b-44ce-9f10-86caa904c6cb', 'WOL', 'Wollongong', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1665
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e0d1014d-88e4-408e-b13e-a2eda7385b61', 'UMR', 'Woomera', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1666
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'89be8e65-7796-4a21-a664-bf676998b61a', 'WYN', 'Wyndham', 'Australia', 'Active'
);

-- INSERT QUERY NO: 1667
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'fb82d740-81c5-4287-9e2d-f803fb15d672', 'HUH', 'Huahine', 'French Polynesia', 'Active'
);

-- INSERT QUERY NO: 1668
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f05982ee-8fd6-4b3f-85b9-32812130546c', 'XMH', 'Manihi', 'French Polynesia', 'Active'
);

-- INSERT QUERY NO: 1669
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'22870119-666e-4124-b457-144a45144296', 'MAU', 'Maupiti', 'French Polynesia', 'Active'
);

-- INSERT QUERY NO: 1670
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0d88ae48-b604-4bbf-b52d-d68a9fd452bb', 'MOZ', 'Moorea', 'French Polynesia', 'Active'
);

-- INSERT QUERY NO: 1671
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'70b8fa2e-5442-41ac-b99e-2ca7a5865ad4', 'RFP', 'Raiatea', 'French Polynesia', 'Active'
);

-- INSERT QUERY NO: 1672
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0c156692-bbf0-486c-a443-b8d68d8d39e0', 'RGI', 'Rangiroa', 'French Polynesia', 'Active'
);

-- INSERT QUERY NO: 1673
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'13cbf61c-b6d3-4a36-a663-c7fbe2976d26', 'GND', 'Grenada', 'Grenada', 'Active'
);

-- INSERT QUERY NO: 1674
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4adae144-b965-498b-8acf-d16fe6e879b8', 'SUM', 'Agana', 'Guam', 'Active'
);

-- INSERT QUERY NO: 1675
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3d893f0e-ab35-45ea-8f80-62723ca2e5b4', 'GUM', 'Guam', 'Guam', 'Active'
);

-- INSERT QUERY NO: 1676
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9654bb5b-520b-4cfa-b243-e122dd94e13b', 'RAR', 'Rarotonga Cook', 'Island', 'Active'
);

-- INSERT QUERY NO: 1677
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'37a4be69-68aa-47e7-9b7d-a0393aac2ae3', 'KNS', 'King Island', 'King Island', 'Active'
);

-- INSERT QUERY NO: 1678
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'82cd8037-4e47-403d-9489-7d022dbb5cb9', 'LIF', 'Lifou', '"Loyaute', ' Pazifik"'
);

-- INSERT QUERY NO: 1679
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8ae79dd0-f910-4798-a7f5-e713dd246f34', 'PNI', 'Pohnpei', 'Micronesia', 'Active'
);

-- INSERT QUERY NO: 1680
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'6eff9dea-7b4a-4797-8b6e-0574d10afe6a', 'ILP', 'Ile des Pins', 'New Caledonia', 'Active'
);

-- INSERT QUERY NO: 1681
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8d425f1f-a1d7-4458-b3aa-81f4f801f649', 'IOU', 'Ile Ouen', 'New Caledonia', 'Active'
);

-- INSERT QUERY NO: 1682
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'993d654a-63b5-4f04-bf6b-26d8d7143c2c', 'MEE', 'Mare', 'New Caledonia', 'Active'
);

-- INSERT QUERY NO: 1683
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c5e7fd7b-0a34-4e42-870b-57c93dedca4e', 'NOU', 'Noumea', 'New Caledonia', 'Active'
);

-- INSERT QUERY NO: 1684
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'35fe3538-c1b1-4c19-aa22-01cea81a7135', 'TOU', 'Touho', 'New Caledonia', 'Active'
);

-- INSERT QUERY NO: 1685
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'93055fdf-d928-4baf-b4eb-28f2674645e7', 'SPN', 'Saipan', 'Northern Mariana Islands', 'Active'
);

-- INSERT QUERY NO: 1686
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1dbca7d7-d418-41c2-9cac-8f64e31327bf', 'APW', 'Apia', 'Samoa', 'Active'
);

-- INSERT QUERY NO: 1687
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f7bc59e1-6d80-4c17-ac59-e5be58ef170b', 'GSI', 'Guadalcanal', 'Solomon Islands', 'Active'
);

-- INSERT QUERY NO: 1688
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'daaaf661-4890-46bd-9cc9-8efc19a9cde2', 'HIR', 'Honiara Henderson Int', 'Solomon Islands', 'Active'
);

-- INSERT QUERY NO: 1689
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a050e572-d5f1-4eae-b857-a4b74fb6952c', 'VLI', 'Port Vila', 'Vanuatu', 'Active'
);

-- INSERT QUERY NO: 1690
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'44e4547b-d0e5-4a06-8710-f690abae0542', 'SON', 'Santo', 'Vanuatu', 'Active'
);

-- INSERT QUERY NO: 1691
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'162ede07-709b-4269-ac8c-545702376cfb', 'FUT', 'Futuna', 'Wallis and Futuna Islands', 'Active'
);

-- INSERT QUERY NO: 1692
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dc4af501-dc20-4ef7-b3d8-33ea9d5fbf72', 'WLS', 'Wallis', 'Wallis and Futuna Islands', 'Active'
);

-- INSERT QUERY NO: 1693
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7a5b36e2-408a-4c00-aa33-a1456786b2e1', 'AKL', 'Auckland', 'New Zealand', 'Active'
);

-- INSERT QUERY NO: 1694
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5188b6ff-6e55-45f6-95ed-2da407b54254', 'BHE', 'Blenheim', 'New Zealand', 'Active'
);

-- INSERT QUERY NO: 1695
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5c58a0dd-beaa-49bf-84f9-a30d0e7d557c', 'CHC', 'Christchurch', 'New Zealand', 'Active'
);

-- INSERT QUERY NO: 1696
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd8bc81b1-62e0-4037-ab82-d01bbbdd5f10', 'DUD', 'Dunedin', 'New Zealand', 'Active'
);

-- INSERT QUERY NO: 1697
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e6a8e1fb-1297-4009-bf0c-8f113b6e58f3', 'IVC', 'Incercargill', 'New Zealand', 'Active'
);

-- INSERT QUERY NO: 1698
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'625e4435-e85e-470a-87d0-f3275b5b9680', 'IVC', 'Invercargill', 'New Zealand', 'Active'
);

-- INSERT QUERY NO: 1699
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0ff62f47-9f67-4ba5-b28d-aac017eb0a47', 'MFN', 'Milford Sound', 'New Zealand', 'Active'
);

-- INSERT QUERY NO: 1700
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8a16ecfa-719b-4938-867b-f751ebf0b3ef', 'GTN', 'Mount Cook', 'New Zealand', 'Active'
);

-- INSERT QUERY NO: 1701
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1b017c6d-b26a-4edf-9f56-d9959be9b788', 'NSN', 'Nelson', 'New Zealand', 'Active'
);

-- INSERT QUERY NO: 1702
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7597818e-3a80-44aa-bd79-2411a646d794', 'PMR', 'Palmerston North', 'New Zealand', 'Active'
);

-- INSERT QUERY NO: 1703
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'170be7ce-aea7-4b3d-8776-6379c3cf4d76', 'ZQN', 'Queenstown', 'New Zealand', 'Active'
);

-- INSERT QUERY NO: 1704
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'1604b5c5-2cbe-47bd-b0e0-b2352345a869', 'ROT', 'Rotorua', 'New Zealand', 'Active'
);

-- INSERT QUERY NO: 1705
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a47e80e2-31d7-494a-b253-e64566795c04', 'TEU', 'Te Anau', 'New Zealand', 'Active'
);

-- INSERT QUERY NO: 1706
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4ce6257c-25a3-4b80-a2df-0cd95824e6de', 'WLG', 'Wellington', 'New Zealand', 'Active'
);

-- INSERT QUERY NO: 1707
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd783164a-e20a-4960-a24e-b5cbe4c6f282', 'WHK', 'Whakatane', 'New Zealand', 'Active'
);

-- INSERT QUERY NO: 1708
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5e04269a-4b30-44e1-bd1c-b859e990ee85', 'WRE', 'Whangarei', 'New Zealand', 'Active'
);

-- INSERT QUERY NO: 1709
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'4ba91cb9-d7d7-4711-ad32-2786637c7571', 'LFW', 'Lome', 'Togo', 'Active'
);

-- INSERT QUERY NO: 1710
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8169dc13-8a5a-48b4-8668-72669c06ed6f', 'TBU', 'Nuku alofa - Fua Amotu International', 'Tonga', 'Active'
);

-- INSERT QUERY NO: 1711
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'223274dd-ce5f-46ed-b0c3-17f86535c5ab', 'PNH', 'Phnom Penh - Pochentong', 'Cambodia', 'Active'
);

-- INSERT QUERY NO: 1712
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'348b936b-05c1-418c-bfee-a6f6e5e3e884', 'VTE', 'Vientiane - Wattay', 'Laos', 'Active'
);

-- INSERT QUERY NO: 1713
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e526a346-8bc1-43d6-a93b-ddf5183d8252', 'RGN', 'Rangoon (Yangon) - Mingaladon', 'Myanmar (Burma)', 'Active'
);

-- INSERT QUERY NO: 1714
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'de49bbd7-3e33-40d3-a5bf-5bf6e51327de', 'RGN', 'Yangon (Rangoon) - Mingaladon', 'Myanmar (Burma)', 'Active'
);

-- INSERT QUERY NO: 1715
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd52cf5ba-ddad-44bd-b4aa-1e41d33e6da2', 'BWN', 'Bandar Seri Begawan', 'Brunei', 'Active'
);

-- INSERT QUERY NO: 1716
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5f4364ed-90fe-4f2f-b02c-2f14bf7a12ba', 'KUB', 'Kuala Belait', 'Brunei', 'Active'
);

-- INSERT QUERY NO: 1717
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7c796537-a4ad-4efd-81d2-5a036b5a9474', 'BJM', 'Bujumbura', 'Burundi', 'Active'
);

-- INSERT QUERY NO: 1718
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd376ff8e-9c63-43da-8e88-d26d3f75216b', 'DLA', 'Douala', 'Cameroon', 'Active'
);

-- INSERT QUERY NO: 1719
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'52c14b2e-bd59-4905-9173-f6cffaed452f', 'GOU', 'Garoua', 'Cameroon', 'Active'
);

-- INSERT QUERY NO: 1720
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c443ab43-ec90-4f70-9727-522572c90b8e', 'MVR', 'Maroua', 'Cameroon', 'Active'
);

-- INSERT QUERY NO: 1721
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f3c4a113-5eeb-4629-aaac-ff733ba124bc', 'NGE', 'Gaoundere', 'Cameroon', 'Active'
);

-- INSERT QUERY NO: 1722
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b0357e6c-446c-457e-b6c2-e4645e00b2b2', 'YAO', 'Yaounde', 'Cameroon', 'Active'
);

-- INSERT QUERY NO: 1723
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'14a5ca29-e65d-48f3-9b97-816e16746693', 'DPS', 'Denpasar/Bali', 'Indonesia', 'Active'
);

-- INSERT QUERY NO: 1724
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'c9f86ec1-6af6-4ead-b9f7-33c145b817fc', 'HLP', 'Jakarta - Halim Perdanakusma', 'Indonesia', 'Active'
);

-- INSERT QUERY NO: 1725
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8baea14b-37b7-455d-87cf-ac001508c018', 'JKT', 'Jakarta - Kemayoran', 'Indonesia', 'Active'
);

-- INSERT QUERY NO: 1726
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'47ca896f-9605-4424-a751-167fd4c24082', 'CGK', 'Jakarta - Soekarno-Hatta', 'Indonesia', 'Active'
);

-- INSERT QUERY NO: 1727
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b53552bc-ac49-41aa-98aa-488790b0f7da', 'MES', 'Medan', 'Indonesia', 'Active'
);

-- INSERT QUERY NO: 1728
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5cdafd98-0d9a-4150-8d7a-0fd03f6b963f', 'MDC', 'Manado', 'Indonesia', 'Active'
);

-- INSERT QUERY NO: 1729
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'74b8ca69-c0d6-4476-903a-770577c4e37e', 'SUB', 'Surabaya - Juanda', 'Indonesia', 'Active'
);

-- INSERT QUERY NO: 1730
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3c74c582-b14e-4246-b60a-ab685e46e6d9', 'TOD', 'Tioman', 'Indonesia', 'Active'
);

-- INSERT QUERY NO: 1731
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5251b490-1e4e-4362-805e-4426c43df00f', 'UPG', 'Ujung Pandang', 'Indonesia', 'Active'
);

-- INSERT QUERY NO: 1732
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3df99f38-c41d-44b3-bcf6-a3a93a14d222', 'BTU', 'Bintulu', 'Malaysia', 'Active'
);

-- INSERT QUERY NO: 1733
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd4702c05-dc0d-455c-acb5-7917b4789c06', 'JHB', 'Johore Bahru', 'Malaysia', 'Active'
);

-- INSERT QUERY NO: 1734
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f69630c4-5b45-4139-a754-7df46603b01c', 'BKI', 'Kota Kinabalu', 'Malaysia', 'Active'
);

-- INSERT QUERY NO: 1735
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3fd45eb1-a7e3-4148-9e3f-6d7257b0ee3a', 'KUL', 'Kuala Lumpur - Int Airport', 'Malaysia', 'Active'
);

-- INSERT QUERY NO: 1736
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0ae5e7a4-19a2-404d-aad7-6fc4feeac6ee', 'SZB', 'Kuala Lumpur - Sultan Abdul Aziz Shah', 'Malaysia', 'Active'
);

-- INSERT QUERY NO: 1737
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e13524ba-0754-45cb-81e4-a8cf8ca925c7', 'KUA', 'Kuantan', 'Malaysia', 'Active'
);

-- INSERT QUERY NO: 1738
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'0fdb23fe-0b30-4b98-9c37-14b259258228', 'KCH', 'Kuching', 'Malaysia', 'Active'
);

-- INSERT QUERY NO: 1739
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'7dc10a5e-3ad4-496f-a8ac-d2604865b55b', 'LBU', 'Labuan', 'Malaysia', 'Active'
);

-- INSERT QUERY NO: 1740
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9122ddd9-9792-43a6-8ac5-368d603b48d0', 'LGK', 'Langkawi', 'Malaysia', 'Active'
);

-- INSERT QUERY NO: 1741
INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'd5f3168d-525d-45ee-89bb-9fb98a199811', 'MYY', 'Miri', 'Malaysia', 'Active'
);


INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'b0a30cef-ef48-4647-ac3a-9361c71f2470', 'PEN', 'Penang International', 'Malaysia', 'Active'
);


INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'f1dd3cb1-2ab1-4c7b-8f40-eca68fd75e5a', 'SBW', 'Sibu', 'Malaysia', 'Active'
);


INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3a0b0d40-37e6-445b-bcd7-a182b244150a', 'TWU', 'Tawau', 'Malaysia', 'Active'
);


INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'76b5af05-cd09-42ea-a895-65b6c1ae4918', 'LAE', 'Lae', 'Papua New Guinea', 'Active'
);


INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'11937ec3-7537-4479-8950-c0b6c5de8666', 'MFO', 'Manguna', 'Papua New Guinea', 'Active'
);


INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'9795c431-ec60-4172-96ae-be44a5e39144', 'POM', 'Port Moresby - Jackson Field', 'Papua New Guinea', 'Active'
);


INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'a689eb72-762b-470c-ba1a-d8bee524cff8', 'CBU', 'Cebu', 'Philippines', 'Active'
);


INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'920c7fdd-dbaa-41b3-9498-ed054b8b74ff', 'NOP', 'Mactan Island - Nab', 'Philippines', 'Active'
);


INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'dc756e25-c364-4ac3-b30f-94020c62fe6d', 'MNL', 'Manila - Ninoy Aquino Int', 'Philippines', 'Active'
);


INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'cffee908-a1b7-445f-8323-7772d0c97b0f', 'BKK', 'Bangkok', 'Thailand', 'Active'
);


INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'5e3ef632-135a-437a-ab4e-274841298357', 'CNX', 'Chiang Mai', 'Thailand', 'Active'
);


INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'e31820fd-3004-401e-a0ad-f26271b13be2', 'HDY', 'Hatyai (Hat Yai)', 'Thailand', 'Active'
);


INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'89adccec-3058-4da4-887d-ef5782611844', 'PYX', 'Pattaya', 'Thailand', 'Active'
);


INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'3ce37c47-bcbc-4a42-aedd-4bbfad303f60', 'HKT', 'Phuket', 'Thailand', 'Active'
);


INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'8f86238a-2043-40d7-90a7-7579c9255e14', 'UTP', 'Utapao (Pattaya)', 'Thailand', 'Active'
);


INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'86da7016-2f07-4379-9e67-b1cff7e62575', 'HAN', 'Hanoi - Noibai', 'Viet Nam', 'Active'
);


INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ba4de16f-ff3b-480f-91ae-726acfc6ba1d', 'SGN', 'Ho Chi Minh City (Saigon)', 'Viet Nam', 'Active'
);

INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'28f3fb98-6803-4b96-8a35-1b954556dfef', 'HUI', 'Hue - Phu Bai', 'Viet Nam', 'Active'
);

INSERT INTO airports(airportId, airportname, city, country, status)
VALUES
(
'ede7f218-b0c0-451e-b910-25aaa5e14b5b', 'SGN', 'Saigon (Ho Chi Minh City)', 'Viet Nam', 'Active'
);

-- flight seeds
INSERT INTO flights(
	flightid,flightCode, type, origin, destination, manufacture, maxcapacity, etd, eta, atd, ata, status)
	VALUES ('1e07628f-5321-4718-8030-89883d8f69fe','EK-480', 'passnger', 'Dubai', 'London', 'boeing 737', 230, '2021-09-23 02:04PM', '2021-09-23 08:04PM', '2021-09-23 02:04PM', '2021-09-23 08:04PM', 'onTime');

-- customer seeds
INSERT INTO customers(
	customerid, firstname, lastname, age, email, mobile, nationality, address)
	VALUES ('0d442fdd-3796-468a-9571-0953c60bd155', 'John', 'Dohe', 25, 'john.dohe@gmail.com', '+9715012345678', 'Canada', 'Toronto');