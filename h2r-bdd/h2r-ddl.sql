-- ============================================================================
-- file : h2r-ddl.sql
-- author : Noah PAULMIER / Noé LETEURTRE
-- date : 10/02/25
-- role : Creating database tables
-- ============================================================================

prompt "creation of table ADDRESS"

CREATE TABLE ADDRESS
(
    id_address            NUMBER        default seq_ADDRESS.nextval,
    address_line          VARCHAR2(500) NOT NULL,
    city                  VARCHAR2(50)  NOT NULL,
    zip_code              VARCHAR2(10)          ,
    international_code    VARCHAR2(4)   NOT NULL,
    CONSTRAINT PK_address PRIMARY KEY (id_address)
);

prompt "creation of table BED"

CREATE TABLE BED
(
    id_bed          NUMBER default seq_BED.nextval,
    nb_double_bed   NUMBER                        ,
    nb_simple_bed   NUMBER                        ,
    nb_bunk_bed     NUMBER                        ,
    CONSTRAINT PK_bed PRIMARY KEY(id_bed)
);

prompt "creation of table CATEG_ROOM"

CREATE TABLE CATEG_ROOM
(
    id_categ    NUMBER        NOT NULL,
    label       VARCHAR2(250) NOT NULL,
    CONSTRAINT PK_categ_room PRIMARY KEY (id_categ)
);

prompt "creation of table GUEST"

CREATE TABLE GUEST
(
    id_guest    NUMBER        default seq_GUEST.nextval,
    lastname    VARCHAR2(50)  NOT NULL,
    firstname   VARCHAR2(50)  NOT NULL,
    mail        VARCHAR2(250) NOT NULL,
    birthdate   VARCHAR2(250) NOT NULL,
    address     NUMBER        NOT NULL,
    CONSTRAINT PK_guest PRIMARY KEY (id_guest)
);

prompt "creation of table GUEST_RESERVATION"

CREATE TABLE GUEST_RESERVATION
(
    id_guest_reservation    NUMBER default seq_GUEST_RESERVATION.nextval,
    total_paid              NUMBER NOT NULL,
    ht_paid                 NUMBER NOT NULL,
    taxes                   NUMBER NOT NULL,
    CONSTRAINT PK_guest_reservation PRIMARY KEY (id_guest_reservation)
);

prompt "creation of table HOTEL"

CREATE TABLE HOTEL
(
    id_hotel    NUMBER        default seq_HOTEL.nextval,
    name        VARCHAR2(250) NOT NULL,
    address     NUMBER        NOT NULL,
    nb_stage    NUMBER        NOT NULL,
    CONSTRAINT PK_hotel PRIMARY KEY (id_hotel)
);

prompt "creation of table HOTEL_RESERVATION"

CREATE TABLE HOTEL_RESERVATION
(
    id_hotel_reservation    NUMBER       default seq_HOTEL_RESERVATION.nextval,
    arrival_date            VARCHAR2(10) NOT NULL,
    departure_date          VARCHAR2(10) NOT NULL,
    room                    NUMBER NOT NULL,
    guest_reservation       NUMBER NOT NULL,CONSTRAINT PK_hotel_reservation PRIMARY KEY (id_hotel_reservation)
);

prompt "creation of table ROOM"

CREATE TABLE ROOM
(
    id_room     NUMBER default seq_ROOM.nextval,
    room_number NUMBER NOT NULL,
    nb_person   NUMBER NOT NULL,
    price       NUMBER NOT NULL,
    bed         NUMBER NOT NULL,
    hotel       NUMBER NOT NULL,
    categ       NUMBER NOT NULL,
    CONSTRAINT PK_room PRIMARY KEY (id_room)
);