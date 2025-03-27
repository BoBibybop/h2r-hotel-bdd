
-- ============================================================================
-- file : h2r-dr.sql
-- author : Noah PAULMIER / Noé LETEURTRE
-- date : 10/02/25
-- role : Creating DR for database tables
-- ============================================================================

ALTER TABLE GUEST
	ADD CONSTRAINT FK_ADDRESS_TO_GUEST
    	FOREIGN KEY (address)
    	REFERENCES ADDRESS (id_address);

ALTER TABLE ROOM
	ADD CONSTRAINT FK_BED_TO_ROOM
    	FOREIGN KEY (bed)
    	REFERENCES ADDRESS (id_bed);

ALTER TABLE ROOM
	ADD CONSTRAINT FK_CATEG_ROOM_TO_ROOM
    	FOREIGN KEY (categ)
    	REFERENCES ADDRESS (id_categ);

ALTER TABLE ROOM
	ADD CONSTRAINT FK_HOTEL_TO_ROOM
    	FOREIGN KEY (hotel)
    	REFERENCES ADDRESS (id_hotel);

ALTER TABLE HOTEL_RESERVATION
	ADD CONSTRAINT FK_ROOM__TO_HOTEL_RESERVATION
    	FOREIGN KEY (room)
    	REFERENCES ADDRESS (id_room);

ALTER TABLE HOTEL_RESERVATION
	ADD CONSTRAINT FK_GUEST_RESERVATION_TO_HOTEL_RESERVATION
    	FOREIGN KEY (guest_reservation)
    	REFERENCES ADDRESS (id_guest_reservation);

ALTER TABLE HOTEL
	ADD CONSTRAINT FK_ADRESS_TO_HOTEL
    	FOREIGN KEY (address)
    	REFERENCES ADDRESS (id_address);

ALTER TABLE GUEST_RESERVATION
	ADD CONSTRAINT FK_GUEST_TO_GUEST_RESERVATION
    	FOREIGN KEY (guest)
    	REFERENCES ADDRESS (id_guest);
