-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-08-06 10:36:31.249




-- tables
-- Table Hoa_Don
CREATE TABLE Hoa_Don (
    Ma_HD int    NOT NULL ,
    Ngay_Giao_Hang date    NOT NULL ,
    ID_KH int    NOT NULL ,
    Tong_Tien int    NOT NULL ,
    Ma_San_Pham int    NOT NULL ,
    Khach_Hang_ID_Khach_Hang int    NOT NULL ,
    Khanh_Hang_ID_KH int    NOT NULL ,
    CONSTRAINT Hoa_Don_pk PRIMARY KEY (Ma_HD)
);

-- Table Hoa_Don_Chi_Tiet
CREATE TABLE Hoa_Don_Chi_Tiet (
    Ma_SP int    NOT NULL ,
    So_Luong varchar(5)    NOT NULL ,
    ID_Khach_Hang int    NOT NULL ,
    Don_Gia int    NOT NULL ,
    Tong_Tien int    NOT NULL ,
    Ngay_Giao_Hang date    NOT NULL ,
    Hoa_Don_Ma_Hoa_Don int    NOT NULL ,
    Ma_Loai_San_Pham int    NOT NULL ,
    San_Pham_Ma_San_Pham int    NOT NULL ,
    Hoa_Don_Ma_HD int    NOT NULL ,
    San_Pham_Ma_SP int    NOT NULL 
);

-- Table Khanh_Hang
CREATE TABLE Khanh_Hang (
    ID_KH int    NOT NULL ,
    Ho_Ten varchar(50)    NOT NULL ,
    Email varchar(40)    NOT NULL ,
    SDT varchar(15)    NOT NULL ,
    Dia_Chi varchar(50)    NOT NULL ,
    Ngay_Sinh date    NOT NULL ,
    Gioi_Tinh varchar(10)    NOT NULL ,
    CMMD varchar(10)    NOT NULL ,
    CONSTRAINT Khanh_Hang_pk PRIMARY KEY (ID_KH)
);

-- Table Loai_San_Pham
CREATE TABLE Loai_San_Pham (
    Ma_Loai_San_Pham int    NOT NULL ,
    Hang_San_Xuat int    NOT NULL ,
    San_Pham_Ma_SP int    NOT NULL 
);

-- Table San_Pham
CREATE TABLE San_Pham (
    Ma_SP int    NOT NULL ,
    Ten_SP varchar(50)    NOT NULL ,
    Don_Gia money    NOT NULL ,
    Mau varchar(20)    NOT NULL ,
    Ma_Loai_San_Pham int    NOT NULL ,
    Loai_San_Pham_Ma_Loai_San_Pham int    NOT NULL ,
    CONSTRAINT San_Pham_pk PRIMARY KEY (Ma_SP)
);





-- foreign keys
-- Reference:  Hoa_Don_Chi_Tiet_Hoa_Don (table: Hoa_Don_Chi_Tiet)


ALTER TABLE Hoa_Don_Chi_Tiet ADD CONSTRAINT Hoa_Don_Chi_Tiet_Hoa_Don FOREIGN KEY Hoa_Don_Chi_Tiet_Hoa_Don (Hoa_Don_Ma_HD)
    REFERENCES Hoa_Don (Ma_HD);
-- Reference:  Hoa_Don_Chi_Tiet_San_Pham (table: Hoa_Don_Chi_Tiet)


ALTER TABLE Hoa_Don_Chi_Tiet ADD CONSTRAINT Hoa_Don_Chi_Tiet_San_Pham FOREIGN KEY Hoa_Don_Chi_Tiet_San_Pham (San_Pham_Ma_SP)
    REFERENCES San_Pham (Ma_SP);
-- Reference:  Hoa_Don_Khanh_Hang (table: Hoa_Don)


ALTER TABLE Hoa_Don ADD CONSTRAINT Hoa_Don_Khanh_Hang FOREIGN KEY Hoa_Don_Khanh_Hang (Khanh_Hang_ID_KH)
    REFERENCES Khanh_Hang (ID_KH);
-- Reference:  Loai_San_Pham_San_Pham (table: Loai_San_Pham)


ALTER TABLE Loai_San_Pham ADD CONSTRAINT Loai_San_Pham_San_Pham FOREIGN KEY Loai_San_Pham_San_Pham (San_Pham_Ma_SP)
    REFERENCES San_Pham (Ma_SP);



-- End of file.

