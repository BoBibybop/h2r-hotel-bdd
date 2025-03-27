-- ============================================================================
-- file : h2r-def-dict-tables.sql
-- author : Noah PAULMIER / Noé LETEURTRE
-- date : 10/02/25
-- role : Definition of the database table dictionary database
-- ============================================================================

COMMENT ON TABLE ADDRESS IS 'Postal address information, including city, zip code, and international code';

COMMENT ON TABLE BED IS 'Details about bed configurations, including the number of double, single, and bunk beds';

COMMENT ON TABLE CATEG_ROOM IS 'Room category, specifying different types of accommodations';

COMMENT ON TABLE GUEST IS 'Guest information, including personal details and address reference';

COMMENT ON TABLE GUEST_RESERVATION IS 'Guest reservation details, including total amount paid and taxes';

COMMENT ON TABLE HOTEL IS 'Hotel information, including name, address, and number of floors';

COMMENT ON TABLE HOTEL_RESERVATION IS 'Hotel reservation details, specifying arrival and departure dates';

COMMENT ON TABLE ROOM IS 'Room details, including room number, capacity, price, bed configuration, hotel, and category reference';