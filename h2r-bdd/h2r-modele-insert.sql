-- ============================================================================
-- file : h2r-modele-insert.sql
-- author : Noah PAULMIER / Noé LETEURTRE
-- date : 10/02/25
-- role : Model for inserting nuplets into database relationships
-- ============================================================================

-- ============================================================================
-- CATEG_ROOM
-- ============================================================================

insert into CATEG_ROOM(id_categ, label)
values(1, 'standard');

insert into CATEG_ROOM(id_categ, label)
values(2, 'familly');

insert into CATEG_ROOM(id_categ, label)
values(3, 'suite');

-- ============================================================================
-- ADRESS
-- ============================================================================

insert into ADDRESS(address_line, city, zip_code, international_code)
values('32 Rue Victor Hugo', 'La Ferté Bernard', 72400, 'fr');

-- ============================================================================
-- HOTEL
-- ============================================================================

insert into ADDRESS(address_line, city, zip_code, international_code)
values('134 Place Verdin', 'La Rochelle', 17000, 'fr');

insert into HOTEL(name, address, nb_floors)
values('Le Rochelais', seq_ADDRESS.currval, 3);

-- ============================================================================
-- BED
-- ============================================================================

insert into BED(nb_double_bed, nb_simple_bed, nb_bunk_bed)
values(1, 1, 1);

-- ============================================================================
-- ROOM
-- ============================================================================

insert into BED(nb_double_bed, nb_simple_bed, nb_bunk_bed)
values(1, 2, 0);

insert into ADDRESS(address_line, city, zip_code, international_code)
values('Place du Commandant de la Motte Rouge', 'La Rochelle', 17000, 'fr');

insert into HOTEL(name, address, nb_floors)
values('IBIS Hotel', seq_ADDRESS.currval, 4);

insert into ROOM(room_number, nb_person, price, bed, hotel, categ)
values(101, 4, 90, seq_BED.currval, seq_HOTEL.currval, 2);

-- ============================================================================
-- GUEST
-- ============================================================================

insert into ADDRESS(address_line, city, zip_code, international_code)
values('Rue Richelieu', 'La Foubrie', 34500, 'fr');

insert into GUEST(lastname, firstname, mail, birthdate, address)
values('Malard','Gaspard','gmalard@gmail.com','29/07/2006',seq_ADDRESS.currval);

-- ============================================================================
-- GUEST_RESERVATION
-- ============================================================================

insert into ADDRESS(address_line, city, zip_code, international_code)
values('13 rue du fantome', 'Angoul', 45300, 'fr');

insert into GUEST(lastname, firstname, mail, birthdate, address)
values('Latuile','Frédéric','flatuile@gmail.com','24/02/2000',seq_ADDRESS.currval);

insert into GUEST_RESERVATION(total_paid, ht_paid, taxes)
values(110, 88, 0.2);

-- ============================================================================
-- HOTEL_RESERVATION
-- ============================================================================

insert into ADDRESS(address_line, city, zip_code, international_code)
values('53 rue de la coudrie', 'Prodilgu', 76500, 'fr');

insert into GUEST(lastname, firstname, mail, birthdate, address)
values('Latuile','Frédéric','flatuile@gmail.com','24/02/2000',seq_ADDRESS.currval);

insert into GUEST_RESERVATION(total_paid, ht_paid, taxes)
values(110, 88, 0.2);

insert into HOTEL (arrival_date, departure_date, room, guest_reservation)
values('22/06/2025', '24/06/2025', seq_ROOM.currval, seq_GUEST_RESERVATION.currval);
