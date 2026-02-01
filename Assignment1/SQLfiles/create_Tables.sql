-- Create SIULIBRARY Table
CREATE TABLE SIULIBRARY (
    Slid INT PRIMARY KEY,
    lname VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    noofbranches INT DEFAULT 1
);

-- Create ILibrary Table
CREATE TABLE ILibrary (
    Lid INT PRIMARY KEY,
    lname VARCHAR(100) NOT NULL,
    city VARCHAR(50),
    area VARCHAR(50),
    slid INT,
    FOREIGN KEY (slid) REFERENCES SIULIBRARY(Slid)
);

-- Create BOOKS Table
CREATE TABLE BOOKS (
    Bid INT PRIMARY KEY,
    Bname VARCHAR(200) NOT NULL,
    Price DECIMAL(10,2) CHECK (Price > 0),
    Lid INT,
    FOREIGN KEY (Lid) REFERENCES ILibrary(Lid)
);

-- Create Noofcopies Table
CREATE TABLE Noofcopies (
    bnid INT,
    bid INT,
    blid INT,
    PRIMARY KEY (bnid, bid),
    FOREIGN KEY (bid) REFERENCES BOOKS(Bid)
);
]
