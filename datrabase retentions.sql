-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2025-02-15 18:51:54.605

-- tables
-- Table: ContractTypes
CREATE TABLE ContractTypes (
    Contract_Type ENUM('Reenlistment','Extension')  NOT NULL AUTO_INCREMENT,
    Status ENUM('Pending', 'Drafted', 'NCO Review Complete','AF901 to Member', 'AF901 Received', 'DD4 to Member', 'DD4 Received',
                'FORMS Sent to PRDA/MILPDS Updated/DJMS Updated', 'Pending DJMS Review', 'Completed','AF1411 to Member', 
                'AF1411 Received')  NOT NULL,
    updated_date DATETIME  NOT NULL,
    CONSTRAINT ContractTypes_pk PRIMARY KEY (Contract_Type)
);

-- Table: Contracts
CREATE TABLE Contracts (
    Contract_ID int  NOT NULL AUTO_INCREMENT,
    created_at DATETIME  NOT NULL,
    last_updated DATETIME  NOT NULL,
    contract_type ENUM('Reenlistment','Extension')  NOT NULL,
    CONSTRAINT Contracts_pk PRIMARY KEY (Contract_ID)
);

-- Table: Customer_information
CREATE TABLE Customer_information (
    Customer_ID int  NOT NULL AUTO_INCREMENT,
    last_name varchar(50)  NOT NULL,
    first_name varchar(50)  NOT NULL,
    email varchar(50)  NOT NULL,
    phone_number varchar(10)  NOT NULL,
    Squadron_ID int  NOT NULL,
    Member_ID int  NOT NULL,
    Contract_ID int  NOT NULL,
    CONSTRAINT Customer_information_pk PRIMARY KEY (Customer_ID)
);

-- Table: First_Sergeants
CREATE TABLE First_Sergeants (
    First_Sergeant_ID int  NOT NULL,
    Rank varchar(5)  NOT NULL,
    last_name varchar(50)  NOT NULL,
    first_name varchar(50)  NOT NULL,
    email varchar(50)  NOT NULL,
    phone_number varchar(10)  NOT NULL,
    CONSTRAINT First_Sergeants_pk PRIMARY KEY (First_Sergeant_ID)
);

-- Table: Group_Location
CREATE TABLE Group_Location (
    Grp_Location_ID int  NOT NULL AUTO_INCREMENT,
    City varchar(50)  NOT NULL,
    State varchar(50)  NOT NULL,
    phone_number varchar(10)  NOT NULL,
    CONSTRAINT Group_Location_pk PRIMARY KEY (Grp_Location_ID)
);

-- Table: Groups
CREATE TABLE Groups (
    Group_ID int  NOT NULL,
    Group_Name varchar(100)  NOT NULL,
    Group_Abbreviation varchar(10)  NOT NULL,
    CSS_Email varchar(100)  NOT NULL,
    Phone_Number varchar(10)  NOT NULL,
    Commander int  NOT NULL,
    First_Sergeant int  NOT NULL,
    Wing_ID int  NOT NULL,
    Group_Location int  NOT NULL,
    CONSTRAINT Groups_pk PRIMARY KEY (Group_ID)
);

-- Table: Major_Commands
CREATE TABLE Major_Commands (
    MAJCOM_ID int  NOT NULL AUTO_INCREMENT,
    MAJCOM_Name varchar(10)  NOT NULL,
    Wing_ID int  NOT NULL,
    CONSTRAINT Major_Commands_pk PRIMARY KEY (MAJCOM_ID)
);

-- Table: Sq_Location
CREATE TABLE Sq_Location (
    Sq_Location_ID int  NOT NULL AUTO_INCREMENT,
    Address varchar(500)  NOT NULL,
    City varchar(50)  NOT NULL,
    State varchar(50)  NOT NULL,
    CONSTRAINT Sq_Location_pk PRIMARY KEY (Sq_Location_ID)
);

-- Table: Squadrons
CREATE TABLE Squadrons (
    Squadron_ID int  NOT NULL AUTO_INCREMENT,
    Squadron_Name varchar(50)  NOT NULL,
    Sq_Abbreviation varchar(10)  NOT NULL,
    CSS_Email varchar(50)  NOT NULL,
    Sq_Location_ID int  NOT NULL,
    Group_ID int  NOT NULL,
    Commander_ID int  NOT NULL,
    First_Sergeant_ID int  NOT NULL,
    CONSTRAINT Squadrons_pk PRIMARY KEY (Squadron_ID)
);

-- Table: Wing_Location
CREATE TABLE Wing_Location (
    Wg_Location_ID int  NOT NULL AUTO_INCREMENT,
    City varchar(50)  NOT NULL,
    State varchar(50)  NOT NULL,
    phone_number varchar(10)  NOT NULL,
    CONSTRAINT Wing_Location_pk PRIMARY KEY (Wg_Location_ID)
);

-- Table: Wings
CREATE TABLE Wings (
    Wing_ID int  NOT NULL AUTO_INCREMENT,
    Wing_Name varchar(50)  NOT NULL,
    Commander_ID int  NOT NULL,
    CSS_Email varchar(50)  NOT NULL,
    Phone_Number varchar(10)  NOT NULL,
    Wg_Location_ID int  NOT NULL,
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
    phone_number varchar(10)  NOT NULL,
    CONSTRAINT commanders_pk PRIMARY KEY (Commander_ID)
);

-- Table: contract_status_history
CREATE TABLE contract_status_history (
    status_ID int  NOT NULL AUTO_INCREMENT,
    contract_ID int  NOT NULL,
    status enum('pending', 'drafted', 'nco review complete', 'af901 to member', 'af901 received', 'dd4 to member', 'dd4 received', 
                'forms sent to prda/milpds updated/djms updated', 'pending djms review', 'completed', 'af1411 to member', 
                'af1411 received'  NOT NULL,
    updated_at timestamp  NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT valid_contract_status
         CHECK ((contract_type = 'Reenlistment' AND status IN ('Pending', 'Drafted', 
                                'NCO Review Complete', 'AF901 to Member', 'AF901 Received','DD4 to Member', 'DD4 Received',
                                'FORMS Sent to PRDA/MILPDS Updated/DJMS Updated','Pending DJMS Review', 'Completed'))          
                                OR 
                (contract_type = 'Extension' AND status IN ('Pending', 'Drafted', 'NCO Review Complete', 'AF1411 to Member', 
                                'AF1411 Received','Sent to PRDA/MILPDS Updated/DJMS Updated', 'Pending DJMS Review', 'Completed')))),
    CONSTRAINT contract_status_history_pk PRIMARY KEY (status_ID)
);

-- Table: team_members
CREATE TABLE team_members (
    Member_ID int  NOT NULL AUTO_INCREMENT,
    Rank varchar(10)  NOT NULL,
    Last_Name varchar(50)  NOT NULL,
    First_Name varchar(50)  NOT NULL,
    Phone_Number varchar(10)  NOT NULL,
    Email varchar(50)  NOT NULL,
    CONSTRAINT team_members_pk PRIMARY KEY (Member_ID)
);

-- foreign keys
-- Reference: ContractTypes_Contracts (table: Contracts)
ALTER TABLE Contracts ADD CONSTRAINT ContractTypes_Contracts FOREIGN KEY ContractTypes_Contracts (contract_type)
    REFERENCES ContractTypes (Contract_Type);

-- Reference: Contracts_Customer_information (table: Customer_information)
ALTER TABLE Customer_information ADD CONSTRAINT Contracts_Customer_information FOREIGN KEY Contracts_Customer_information (Contract_ID)
    REFERENCES Contracts (Contract_ID);

-- Reference: First_Sergeants_Squadrons (table: Squadrons)
ALTER TABLE Squadrons ADD CONSTRAINT First_Sergeants_Squadrons FOREIGN KEY First_Sergeants_Squadrons (First_Sergeant_ID)
    REFERENCES First_Sergeants (First_Sergeant_ID);

-- Reference: Group_Location_Groups (table: Groups)
ALTER TABLE Groups ADD CONSTRAINT Group_Location_Groups FOREIGN KEY Group_Location_Groups (Group_Location)
    REFERENCES Group_Location (Grp_Location_ID);

-- Reference: Groups_First_Sergeants (table: Groups)
ALTER TABLE Groups ADD CONSTRAINT Groups_First_Sergeants FOREIGN KEY Groups_First_Sergeants (First_Sergeant)
    REFERENCES First_Sergeants (First_Sergeant_ID);

-- Reference: Groups_Squadrons (table: Squadrons)
ALTER TABLE Squadrons ADD CONSTRAINT Groups_Squadrons FOREIGN KEY Groups_Squadrons (Group_ID)
    REFERENCES Groups (Group_ID);

-- Reference: Groups_commanders (table: Groups)
ALTER TABLE Groups ADD CONSTRAINT Groups_commanders FOREIGN KEY Groups_commanders (Commander)
    REFERENCES commanders (Commander_ID);

-- Reference: Major_Commands_Wings (table: Wings)
ALTER TABLE Wings ADD CONSTRAINT Major_Commands_Wings FOREIGN KEY Major_Commands_Wings (MAJCOM_ID)
    REFERENCES Major_Commands (MAJCOM_ID);

-- Reference: Sq_Location_Squadrons (table: Squadrons)
ALTER TABLE Squadrons ADD CONSTRAINT Sq_Location_Squadrons FOREIGN KEY Sq_Location_Squadrons (Sq_Location_ID)
    REFERENCES Sq_Location (Sq_Location_ID);

-- Reference: Squadrons_Customer_information (table: Customer_information)
ALTER TABLE Customer_information ADD CONSTRAINT Squadrons_Customer_information FOREIGN KEY Squadrons_Customer_information (Squadron_ID)
    REFERENCES Squadrons (Squadron_ID);

-- Reference: Wing_Location_Wings (table: Wings)
ALTER TABLE Wings ADD CONSTRAINT Wing_Location_Wings FOREIGN KEY Wing_Location_Wings (Wg_Location_ID)
    REFERENCES Wing_Location (Wg_Location_ID);

-- Reference: Wings_Groups (table: Groups)
ALTER TABLE Groups ADD CONSTRAINT Wings_Groups FOREIGN KEY Wings_Groups (Wing_ID)
    REFERENCES Wings (Wing_ID);

-- Reference: Wings_commanders (table: Wings)
ALTER TABLE Wings ADD CONSTRAINT Wings_commanders FOREIGN KEY Wings_commanders (Commander_ID)
    REFERENCES commanders (Commander_ID);

-- Reference: commanders_Squadrons (table: Squadrons)
ALTER TABLE Squadrons ADD CONSTRAINT commanders_Squadrons FOREIGN KEY commanders_Squadrons (Commander_ID)
    REFERENCES commanders (Commander_ID);

-- Reference: contract_status_history_Contracts (table: contract_status_history)
ALTER TABLE contract_status_history ADD CONSTRAINT contract_status_history_Contracts FOREIGN KEY contract_status_history_Contracts (contract_ID)
    REFERENCES Contracts (Contract_ID);

-- Reference: member_ID (table: Customer_information)
ALTER TABLE Customer_information ADD CONSTRAINT member_ID FOREIGN KEY member_ID (Member_ID)
    REFERENCES team_members (Member_ID);

-- End of file.

