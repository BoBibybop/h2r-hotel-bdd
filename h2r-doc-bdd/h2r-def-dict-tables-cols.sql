-- ============================================================================
-- file : h2r-def-dict-tables-cols.sql
-- author : Noah PAULMIER / Noé LETEURTRE
-- date : 10/02/25
-- role : Definition of the column dictionary for database
-- ============================================================================

-- ADDRESS Table
COMMENT ON COLUMN ADDRESS.id_address IS 'Unique identifier for the address';
COMMENT ON COLUMN ADDRESS.address_line IS 'Full address line, including street and number';
COMMENT ON COLUMN ADDRESS.city IS 'City of the address';
COMMENT ON COLUMN ADDRESS.zip_code IS 'Postal code of the address';
COMMENT ON COLUMN ADDRESS.international_code IS 'International country code';

-- BED Table
COMMENT ON COLUMN BED.id_bed IS 'Unique identifier for the bed configuration';
COMMENT ON COLUMN BED.nb_double_bed IS 'Number of double beds available';
COMMENT ON COLUMN BED.nb_simple_bed IS 'Number of single beds available';
COMMENT ON COLUMN BED.nb_bunk_bed IS 'Number of bunk beds available';

-- CATEG_ROOM Table
COMMENT ON COLUMN CATEG_ROOM.id_categ IS 'Unique identifier for the room category';
COMMENT ON COLUMN CATEG_ROOM.label IS 'Category label (e.g., Single, Double, Suite)';

-- GUEST Table
COMMENT ON COLUMN GUEST.id_guest IS 'Unique identifier for the guest';
COMMENT ON COLUMN GUEST.lastname IS 'Last name of the guest';
COMMENT ON COLUMN GUEST.firstname IS 'First name of the guest';
COMMENT ON COLUMN GUEST.mail IS 'Email address of the guest';
COMMENT ON COLUMN GUEST.birthdate IS 'Birthdate of the guest';
COMMENT ON COLUMN GUEST.address IS 'Reference to the guest''s address (foreign key to ADDRESS)';

-- GUEST_RESERVATION Table
COMMENT ON COLUMN GUEST_RESERVATION.id_guest_reservation IS 'Unique identifier for the guest reservation';
COMMENT ON COLUMN GUEST_RESERVATION.total_paid IS 'Total amount paid by the guest';
COMMENT ON COLUMN GUEST_RESERVATION.ht_paid IS 'Pre-tax amount paid';
COMMENT ON COLUMN GUEST_RESERVATION.taxes IS 'Amount of taxes applied to the reservation';

-- HOTEL Table
COMMENT ON COLUMN HOTEL.id_hotel IS 'Unique identifier for the hotel';
COMMENT ON COLUMN HOTEL.name IS 'Name of the hotel';
COMMENT ON COLUMN HOTEL.address IS 'Reference to the hotel''s address (foreign key to ADDRESS)';
COMMENT ON COLUMN HOTEL.nb_stage IS 'Number of floors in the hotel';

-- HOTEL_RESERVATION Table
COMMENT ON COLUMN HOTEL_RESERVATION.id_hotel_reservation IS 'Unique identifier for the hotel reservation';
COMMENT ON COLUMN HOTEL_RESERVATION.arrival_date IS 'Check-in date for the reservation';
COMMENT ON COLUMN HOTEL_RESERVATION.departure_date IS 'Check-out date for the reservation';
COMMENT ON COLUMN HOTEL_RESERVATION.room IS 'room of the reservation';
COMMENT ON COLUMN HOTEL_RESERVATION.guest_reservation IS 'guest of the reservation';

-- ROOM Table
COMMENT ON COLUMN ROOM.id_room IS 'Unique identifier for the room';
COMMENT ON COLUMN ROOM.room_number IS 'Room number within the hotel';
COMMENT ON COLUMN ROOM.nb_person IS 'Maximum number of occupants allowed in the room';
COMMENT ON COLUMN ROOM.price IS 'Price per night for the room';
COMMENT ON COLUMN ROOM.bed IS 'Reference to the bed configuration (foreign key to BED)';
COMMENT ON COLUMN ROOM.hotel IS 'Reference to the hotel the room belongs to (foreign key to HOTEL)';
COMMENT ON COLUMN ROOM.categ IS 'Reference to the room category (foreign key to CATEG_ROOM)';
