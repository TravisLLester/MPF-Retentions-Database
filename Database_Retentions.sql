-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2025-02-16 06:35:48.492

-- tables
-- Table: ContractStatus
CREATE TABLE ContractStatus (
    Status_ID int  NOT NULL AUTO_INCREMENT,
    Status_Name varchar(100)  NOT NULL,
    UNIQUE INDEX AK_1 (Status_Name),
    CONSTRAINT ContractStatus_pk PRIMARY KEY (Status_ID)
);

-- Table: ContractTypes
CREATE TABLE ContractTypes (
    ContractType_ID int  NOT NULL AUTO_INCREMENT,
    Contract_Type varchar(20)  NOT NULL,
    UNIQUE INDEX AK_0 (Contract_Type),
    CONSTRAINT ContractTypes_pk PRIMARY KEY (ContractType_ID)
);

-- Table: Contracts
CREATE TABLE Contracts (
    Contract_ID int  NOT NULL AUTO_INCREMENT,
    created_at datetime  NOT NULL DEFAULT current_timestamp,
    last_updated datetime  NOT NULL DEFAULT current_timestamp,
    contract_type int  NOT NULL,
    CONSTRAINT Contracts_pk PRIMARY KEY (Contract_ID)
);

-- Table: Customer_information
CREATE TABLE Customer_information (
    Customer_ID int  NOT NULL AUTO_INCREMENT,
    last_name varchar(50)  NOT NULL,
    first_name varchar(50)  NOT NULL,
    email varchar(50)  NOT NULL,
    phone_number varchar(14)  NOT NULL,
    Squadron_ID int  NOT NULL,
    Member_ID int  NOT NULL,
    Contract_ID int  NOT NULL,
    CONSTRAINT Customer_information_pk PRIMARY KEY (Customer_ID)
);

-- Table: First_Sergeants
CREATE TABLE First_Sergeants (
    First_Sergeant_ID int  NOT NULL AUTO_INCREMENT,
    Rank varchar(5)  NOT NULL,
    last_name varchar(50)  NOT NULL,
    first_name varchar(50)  NOT NULL,
    email varchar(50)  NOT NULL,
    phone_number varchar(14)  NOT NULL,
    CONSTRAINT First_Sergeants_pk PRIMARY KEY (First_Sergeant_ID)
);

-- Table: Groups
CREATE TABLE Groups (
    Group_ID int  NOT NULL AUTO_INCREMENT,
    Group_Name varchar(100)  NOT NULL,
    Group_Abbreviation varchar(10)  NOT NULL,
    Commander_ID int  NOT NULL,
    First_Sergeant_ID int  NOT NULL,
    Wing_ID int  NOT NULL,
    CONSTRAINT Groups_pk PRIMARY KEY (Group_ID)
);

-- Table: Major_Commands
CREATE TABLE Major_Commands (
    MAJCOM_ID int  NOT NULL AUTO_INCREMENT,
    MAJCOM_Name varchar(50)  NOT NULL,
    CONSTRAINT Major_Commands_pk PRIMARY KEY (MAJCOM_ID)
);

-- Table: Squadrons
CREATE TABLE Squadrons (
    Squadron_ID int  NOT NULL AUTO_INCREMENT,
    Squadron_Name varchar(50)  NOT NULL,
    Sq_Abbreviation varchar(10)  NOT NULL,
    CSS_Email varchar(50)  NOT NULL,
    Group_ID int  NOT NULL,
    Commander_ID int  NOT NULL,
    First_Sergeant_ID int  NOT NULL,
    CONSTRAINT Squadrons_pk PRIMARY KEY (Squadron_ID)
);

-- Table: Wings
CREATE TABLE Wings (
    Wing_ID int  NOT NULL AUTO_INCREMENT,
    Wing_Name varchar(50)  NOT NULL,
    Commander_ID int  NOT NULL,
    CSS_Email varchar(50)  NOT NULL,
    Phone_Number varchar(14)  NOT NULL,
    MAJCOM_ID int  NOT NULL,
    CONSTRAINT Wings_pk PRIMARY KEY (Wing_ID)
);

-- Table: commanders
CREATE TABLE commanders (
    Commander_ID int  NOT NULL AUTO_INCREMENT,
    Rank varchar(10)  NOT NULL,
    last_name varchar(50)  NOT NULL,
    first_name varchar(50)  NOT NULL,
    email varchar(100)  NOT NULL,
    phone_number varchar(14)  NOT NULL,
    CONSTRAINT commanders_pk PRIMARY KEY (Commander_ID)
);

-- Table: contract_status_history
CREATE TABLE contract_status_history (
    status_ID int  NOT NULL AUTO_INCREMENT,
    contract_ID int  NOT NULL,
    status int  NOT NULL,
    updated_at timestamp  NOT NULL DEFAULT current_timestamp,
    CONSTRAINT contract_status_history_pk PRIMARY KEY (status_ID)
);

-- Table: team_members
CREATE TABLE team_members (
    Member_ID int  NOT NULL AUTO_INCREMENT,
    Rank varchar(10)  NOT NULL,
    Last_Name varchar(50)  NOT NULL,
    First_Name varchar(50)  NOT NULL,
    Phone_Number varchar(14)  NOT NULL,
    Email varchar(50)  NOT NULL,
    CONSTRAINT team_members_pk PRIMARY KEY (Member_ID)
);

-- foreign keys
-- Reference: Squadrons_First_Sergeants (table: Squadrons)
ALTER TABLE Squadrons ADD CONSTRAINT Squadrons_First_Sergeants FOREIGN KEY Squadrons_First_Sergeants (First_Sergeant_ID)
    REFERENCES First_Sergeants (First_Sergeant_ID);

-- Reference: fk_ContractHistory (table: contract_status_history)
ALTER TABLE contract_status_history ADD CONSTRAINT fk_ContractHistory FOREIGN KEY fk_ContractHistory (contract_ID)
    REFERENCES Contracts (Contract_ID);

-- Reference: fk_ContractStatus (table: contract_status_history)
ALTER TABLE contract_status_history ADD CONSTRAINT fk_ContractStatus FOREIGN KEY fk_ContractStatus (status)
    REFERENCES ContractStatus (Status_ID);

-- Reference: fk_ContractTypes (table: Contracts)
ALTER TABLE Contracts ADD CONSTRAINT fk_ContractTypes FOREIGN KEY fk_ContractTypes (contract_type)
    REFERENCES ContractTypes (ContractType_ID);

-- Reference: fk_CustomerContracts (table: Customer_information)
ALTER TABLE Customer_information ADD CONSTRAINT fk_CustomerContracts FOREIGN KEY fk_CustomerContracts (Contract_ID)
    REFERENCES Contracts (Contract_ID);

-- Reference: fk_CustomerMembers (table: Customer_information)
ALTER TABLE Customer_information ADD CONSTRAINT fk_CustomerMembers FOREIGN KEY fk_CustomerMembers (Member_ID)
    REFERENCES team_members (Member_ID);

-- Reference: fk_CustomerSquadrons (table: Customer_information)
ALTER TABLE Customer_information ADD CONSTRAINT fk_CustomerSquadrons FOREIGN KEY fk_CustomerSquadrons (Squadron_ID)
    REFERENCES Squadrons (Squadron_ID);

-- Reference: fk_GroupsCommanders (table: Groups)
ALTER TABLE Groups ADD CONSTRAINT fk_GroupsCommanders FOREIGN KEY fk_GroupsCommanders (Commander_ID)
    REFERENCES commanders (Commander_ID);

-- Reference: fk_GroupsFirstSergeants (table: Groups)
ALTER TABLE Groups ADD CONSTRAINT fk_GroupsFirstSergeants FOREIGN KEY fk_GroupsFirstSergeants (First_Sergeant_ID)
    REFERENCES First_Sergeants (First_Sergeant_ID);

-- Reference: fk_GroupsWings (table: Groups)
ALTER TABLE Groups ADD CONSTRAINT fk_GroupsWings FOREIGN KEY fk_GroupsWings (Wing_ID)
    REFERENCES Wings (Wing_ID);

-- Reference: fk_SquadronsCommanders (table: Squadrons)
ALTER TABLE Squadrons ADD CONSTRAINT fk_SquadronsCommanders FOREIGN KEY fk_SquadronsCommanders (Commander_ID)
    REFERENCES commanders (Commander_ID);

-- Reference: fk_SquadronsGroups (table: Squadrons)
ALTER TABLE Squadrons ADD CONSTRAINT fk_SquadronsGroups FOREIGN KEY fk_SquadronsGroups (Group_ID)
    REFERENCES Groups (Group_ID);

-- Reference: fk_WingsCommanders (table: Wings)
ALTER TABLE Wings ADD CONSTRAINT fk_WingsCommanders FOREIGN KEY fk_WingsCommanders (Commander_ID)
    REFERENCES commanders (Commander_ID);

-- Reference: fk_WingsMajorCommands (table: Wings)
ALTER TABLE Wings ADD CONSTRAINT fk_WingsMajorCommands FOREIGN KEY fk_WingsMajorCommands (MAJCOM_ID)
    REFERENCES Major_Commands (MAJCOM_ID);

-- End of file.

