#
# TABLE STRUCTURE FOR: booking
#

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arrival` date NOT NULL,
  `departure` varchar(45) NOT NULL,
  `total_cost` int(10) unsigned DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `room_id` smallint(5) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_booking_client1_idx` (`client_id`),
  KEY `fk_booking_room1_idx` (`room_id`),
  KEY `fk_booking_group1_idx` (`group_id`),
  CONSTRAINT `fk_booking_client1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_booking_group1` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_booking_room1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (1, '1991-06-10', '1994-06-28', 0, 1, 1, 0);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (2, '1983-07-27', '2021-01-29', 14, 2, 2, 1);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (3, '2006-08-02', '1972-12-27', 11445, 3, 3, 3);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (4, '2001-01-23', '2008-04-18', 8, 4, 4, 4);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (5, '2007-10-12', '1973-10-08', 0, 5, 5, 5);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (6, '2022-09-05', '2015-05-14', 570153, 6, 6, 6);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (7, '2008-05-09', '2007-07-23', 108240051, 7, 7, 7);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (8, '2015-02-09', '2022-10-01', 13086772, 8, 8, 8);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (9, '2016-10-06', '2004-05-14', 181552, 9, 9, 9);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (10, '1978-05-26', '1979-03-15', 42, 10, 10, 31);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (11, '2008-07-07', '2003-07-28', 64749, 11, 11, 38);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (12, '1987-01-15', '2009-10-19', 52697142, 12, 12, 47);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (13, '1974-06-02', '1980-11-24', 78, 13, 13, 48);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (14, '1986-01-27', '1994-10-12', 318698, 14, 14, 49);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (15, '1971-09-12', '1992-09-02', 0, 15, 15, 62);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (16, '1970-04-30', '2012-03-28', 309, 16, 16, 71);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (17, '1978-09-12', '1973-07-14', 11196, 17, 17, 72);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (18, '2013-11-09', '2021-03-28', 0, 18, 18, 73);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (19, '2007-08-05', '2006-06-26', 463, 19, 19, 95);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (20, '2005-03-21', '2022-05-25', 547, 20, 20, 117);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (21, '1982-08-17', '1986-01-14', 1795891, 21, 21, 118);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (22, '2006-12-21', '1976-10-11', 27980908, 22, 22, 157);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (23, '1985-05-24', '1994-01-06', 0, 23, 23, 193);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (24, '2014-06-17', '2012-02-22', 2872, 24, 24, 252);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (25, '1982-09-24', '2001-07-14', 44189587, 25, 25, 379);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (26, '1979-03-28', '1992-10-27', 0, 26, 26, 530);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (27, '1986-04-03', '1973-07-22', 0, 27, 27, 618);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (28, '2019-01-27', '1996-11-30', 0, 28, 28, 622);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (29, '2004-07-22', '1984-06-18', 46749, 29, 29, 664);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (30, '1993-09-09', '1973-03-03', 3565756, 30, 30, 741);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (31, '2000-02-15', '1974-08-12', 1835, 31, 31, 805);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (32, '1993-04-16', '2009-04-17', 15, 32, 32, 1467);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (33, '1971-10-11', '1991-07-18', 0, 33, 33, 2834);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (34, '2015-09-15', '2001-03-21', 7831, 34, 34, 3765);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (35, '1975-12-23', '1985-12-19', 887158, 35, 35, 3826);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (36, '1971-09-20', '2004-06-25', 229774, 36, 36, 5223);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (37, '1984-02-08', '2023-01-30', 161746, 37, 37, 5965);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (38, '1977-09-29', '1986-03-29', 190, 38, 38, 7016);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (39, '2012-03-29', '2017-08-19', 0, 39, 39, 7264);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (40, '1971-09-04', '1981-07-17', 411055495, 40, 40, 7361);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (41, '1983-10-21', '1996-07-24', 7121834, 41, 41, 8712);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (42, '2001-05-10', '1977-07-17', 447232895, 42, 42, 9240);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (43, '1993-10-02', '2017-08-15', 28485160, 43, 43, 9320);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (44, '2010-10-15', '2009-04-18', 4983681, 44, 44, 9468);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (45, '2012-05-07', '2017-09-22', 1306, 45, 45, 15119);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (46, '1990-02-06', '2005-01-17', 0, 46, 46, 18322);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (47, '2010-06-08', '2014-11-11', 35, 47, 47, 18542);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (48, '1977-12-16', '1985-03-27', 46438, 48, 48, 27740);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (49, '2013-02-05', '1982-12-30', 15912, 49, 49, 55612);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (50, '2013-10-27', '1994-01-18', 71977573, 50, 50, 65871);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (51, '2004-08-01', '1990-07-24', 23900, 51, 51, 66058);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (52, '1981-06-15', '2001-03-11', 0, 52, 52, 79454);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (53, '1975-10-12', '2007-09-19', 1, 53, 53, 83746);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (54, '1970-12-04', '1976-04-06', 2374553, 54, 54, 85372);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (55, '1982-10-18', '1986-07-27', 28460, 55, 55, 85615);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (56, '2003-09-20', '2023-11-10', 0, 56, 56, 96599);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (57, '2008-09-01', '1993-06-27', 19449172, 57, 57, 97376);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (58, '1987-09-17', '1978-03-13', 0, 58, 58, 196784);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (59, '1975-08-03', '1987-05-05', 59891, 59, 59, 204904);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (60, '1979-05-31', '2005-04-18', 302444, 60, 60, 329752);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (61, '1999-12-10', '1985-10-12', 4924, 61, 61, 365990);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (62, '2018-12-06', '2009-01-26', 144, 62, 62, 388949);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (63, '2006-08-05', '1987-08-04', 7057333, 63, 63, 561466);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (64, '2000-02-26', '1996-02-22', 43503, 64, 64, 657833);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (65, '1972-07-19', '1970-06-02', 125752, 65, 65, 776431);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (66, '1990-07-13', '1977-11-10', 6, 66, 66, 957031);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (67, '2008-11-19', '1989-09-30', 341, 67, 67, 1283830);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (68, '2023-12-12', '1980-11-13', 4467, 68, 68, 3118126);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (69, '2002-05-07', '2003-01-04', 942, 69, 69, 4187384);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (70, '2021-07-16', '2020-10-08', 9, 70, 70, 5364104);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (71, '1989-10-16', '1974-03-28', 5, 71, 71, 7760508);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (72, '1989-10-02', '2012-07-11', 69265794, 72, 72, 7831494);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (73, '1983-09-20', '2001-05-10', 34553143, 73, 73, 8070394);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (74, '1972-12-20', '1990-08-10', 5077, 74, 74, 11883106);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (75, '2008-12-27', '2016-09-09', 11212664, 75, 75, 20932052);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (76, '2000-01-09', '1974-11-18', 24508202, 76, 76, 22251490);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (77, '1981-10-28', '2014-01-06', 89481, 77, 77, 25506392);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (78, '1983-10-23', '1978-05-26', 417678460, 78, 78, 29495437);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (79, '1975-05-02', '1974-12-11', 24687623, 79, 79, 36265003);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (80, '2023-09-20', '2016-05-03', 252006325, 80, 80, 38392109);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (81, '2009-08-26', '2005-04-05', 36091, 81, 81, 43879532);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (82, '1982-09-14', '2005-09-12', 0, 82, 82, 51558310);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (83, '2001-08-19', '2003-02-08', 573523205, 83, 83, 55225510);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (84, '2000-06-04', '2013-12-30', 421, 84, 84, 62196518);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (85, '2023-04-21', '1993-11-12', 81, 85, 85, 65512484);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (86, '1998-07-11', '2021-04-04', 1071, 86, 86, 69138339);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (87, '2015-08-09', '2003-03-09', 33, 87, 87, 73380091);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (88, '2000-04-15', '1977-08-17', 984, 88, 88, 75496822);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (89, '2005-03-23', '1976-12-17', 477031443, 89, 89, 78448038);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (90, '1972-09-27', '1981-04-22', 3426, 90, 90, 94465496);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (91, '1996-01-05', '2001-04-25', 33, 91, 91, 96087856);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (92, '1975-06-21', '2015-03-17', 2386078, 92, 92, 136827961);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (93, '2024-01-24', '1984-04-24', 897361, 93, 93, 156954617);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (94, '1995-06-05', '1986-02-12', 565737, 94, 94, 358317808);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (95, '2010-11-02', '1995-07-06', 379669, 95, 95, 590166095);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (96, '2013-07-10', '1984-08-13', 629, 96, 96, 606740419);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (97, '2007-01-06', '2015-11-09', 1, 97, 97, 719246542);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (98, '1980-11-25', '2020-08-24', 92, 98, 98, 740204704);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (99, '1987-08-19', '1984-08-25', 2644, 99, 99, 873220961);
INSERT INTO `booking` (`id`, `arrival`, `departure`, `total_cost`, `client_id`, `room_id`, `group_id`) VALUES (100, '2001-02-20', '1974-01-21', 313, 100, 100, 982270065);


#
# TABLE STRUCTURE FOR: booking_has_option
#

DROP TABLE IF EXISTS `booking_has_option`;

CREATE TABLE `booking_has_option` (
  `booking_id` int(10) unsigned NOT NULL,
  `option_id` tinyint(3) unsigned NOT NULL,
  `date` date NOT NULL,
  `coupon` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`booking_id`,`option_id`),
  KEY `fk_booking_has_option_option1_idx` (`option_id`),
  KEY `fk_booking_has_option_booking1_idx` (`booking_id`),
  CONSTRAINT `fk_booking_has_option_booking1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_booking_has_option_option1` FOREIGN KEY (`option_id`) REFERENCES `option` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (1, 1, '2023-10-18', 84);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (2, 2, '1970-07-11', 0);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (3, 3, '1976-04-06', 1);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (4, 4, '1989-03-08', 95);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (5, 5, '2018-07-27', 6);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (6, 6, '1970-11-12', 63);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (7, 7, '1983-09-26', 54);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (8, 8, '2002-04-27', 82);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (9, 9, '2014-09-12', 73);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (10, 10, '1985-05-08', 2);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (11, 11, '2021-03-17', 94);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (12, 12, '1972-05-05', 72);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (13, 13, '1992-11-19', 40);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (14, 14, '2000-06-25', 3);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (15, 15, '1983-12-23', 39);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (16, 16, '1972-02-14', 25);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (17, 17, '2022-04-09', 57);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (18, 18, '2004-03-22', 23);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (19, 19, '1983-12-26', 55);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (20, 20, '2005-07-21', 82);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (21, 21, '1970-05-21', 87);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (22, 22, '1984-11-30', 14);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (23, 23, '2008-03-22', 55);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (24, 24, '2008-11-23', 13);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (25, 25, '2022-11-10', 8);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (26, 26, '1994-07-11', 14);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (27, 27, '2006-03-25', 95);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (28, 28, '1992-09-26', 0);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (29, 29, '1995-10-20', 68);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (30, 30, '1975-03-04', 75);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (31, 31, '2010-08-14', 73);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (32, 32, '1983-02-17', 75);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (33, 33, '1999-12-23', 83);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (34, 34, '2015-11-10', 32);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (35, 35, '2006-09-23', 27);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (36, 36, '1981-05-25', 30);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (37, 37, '2013-05-16', 83);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (38, 38, '1984-12-21', 98);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (39, 39, '1981-02-23', 73);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (40, 40, '1987-06-20', 81);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (41, 41, '2016-09-15', 70);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (42, 42, '1998-07-20', 42);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (43, 43, '1971-10-15', 92);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (44, 44, '1989-10-30', 79);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (45, 45, '1985-07-18', 64);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (46, 46, '2015-06-08', 15);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (47, 47, '2019-01-17', 32);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (48, 48, '1970-02-19', 4);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (49, 49, '1993-01-04', 17);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (50, 50, '1983-11-13', 60);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (51, 51, '2008-08-31', 33);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (52, 52, '1993-04-30', 53);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (53, 53, '2014-09-11', 32);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (54, 54, '1984-07-22', 19);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (55, 55, '1974-10-01', 29);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (56, 56, '1988-03-15', 64);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (57, 57, '1976-03-20', 72);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (58, 58, '1998-09-11', 38);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (59, 59, '1977-04-20', 66);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (60, 60, '2004-06-08', 0);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (61, 61, '1992-08-21', 18);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (62, 62, '2006-02-28', 79);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (63, 63, '2002-07-07', 34);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (64, 64, '1971-06-11', 67);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (65, 65, '1972-12-18', 28);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (66, 66, '2016-10-31', 3);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (67, 67, '1992-05-28', 47);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (68, 68, '2013-12-13', 91);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (69, 69, '1991-05-07', 18);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (70, 70, '1998-01-24', 21);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (71, 71, '2009-01-07', 13);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (72, 72, '2015-05-29', 93);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (73, 73, '2008-07-09', 21);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (74, 74, '1995-03-28', 0);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (75, 75, '2021-11-21', 78);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (76, 76, '1994-07-24', 23);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (77, 77, '1992-10-25', 22);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (78, 78, '2018-05-21', 4);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (79, 79, '2005-01-25', 80);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (80, 80, '2010-04-15', 84);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (81, 81, '1972-12-14', 9);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (82, 82, '1999-08-27', 18);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (83, 83, '2013-04-25', 17);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (84, 84, '2011-12-09', 28);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (85, 85, '1980-02-06', 73);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (86, 86, '2000-10-11', 42);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (87, 87, '2004-01-10', 80);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (88, 88, '2012-01-13', 81);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (89, 89, '1982-04-04', 44);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (90, 90, '1985-10-19', 62);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (91, 91, '1997-08-20', 94);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (92, 92, '1983-07-08', 25);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (93, 93, '2015-08-30', 40);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (94, 94, '2015-12-18', 1);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (95, 95, '1979-04-28', 61);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (96, 96, '2017-05-31', 75);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (97, 97, '2005-06-07', 79);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (98, 98, '2000-07-03', 18);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (99, 99, '1980-07-16', 68);
INSERT INTO `booking_has_option` (`booking_id`, `option_id`, `date`, `coupon`) VALUES (100, 100, '1986-05-13', 51);


#
# TABLE STRUCTURE FOR: client
#

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `birthday` date NOT NULL,
  `mail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (1, 'Ceasar', 'Brakus', '1990-05-29', 'consuelo31@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (2, 'Marguerite', 'Prosacco', '1983-01-06', 'calista23@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (3, 'Malvina', 'Adams', '2018-12-22', 'dalton03@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (4, 'Anahi', 'Donnelly', '1976-12-11', 'una04@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (5, 'Alf', 'Corwin', '1979-05-07', 'ima47@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (6, 'Maximillian', 'Donnelly', '2014-03-31', 'kelsi36@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (7, 'Diamond', 'Lind', '2016-08-09', 'nannie.eichmann@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (8, 'Clemens', 'Grimes', '2020-04-19', 'abbey04@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (9, 'Delaney', 'Towne', '2006-03-13', 'willa.gislason@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (10, 'Koby', 'Trantow', '2005-08-26', 'wayne60@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (11, 'Jasen', 'Sporer', '2001-08-09', 'dschmeler@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (12, 'Dejuan', 'Denesik', '1984-05-05', 'dwalter@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (13, 'Hallie', 'Torphy', '2021-04-18', 'nadams@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (14, 'Iva', 'Beier', '1996-09-27', 'khettinger@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (15, 'Aron', 'Schuppe', '2001-03-04', 'ogoyette@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (16, 'Maxwell', 'Daugherty', '1977-06-13', 'eduardo.miller@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (17, 'Hallie', 'Okuneva', '1998-07-09', 'garrison.gibson@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (18, 'Aron', 'Corkery', '1997-03-30', 'gibson.janice@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (19, 'Rhoda', 'Jones', '1977-07-09', 'lacey.kuphal@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (20, 'Llewellyn', 'Morissette', '1997-06-30', 'mkutch@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (21, 'Loma', 'Beier', '1984-12-19', 'hal08@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (22, 'Janae', 'Smitham', '1988-02-12', 'unitzsche@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (23, 'Nicole', 'Brown', '2008-08-15', 'cristal65@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (24, 'Jena', 'Will', '2002-09-27', 'pwolff@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (25, 'Obie', 'Stoltenberg', '1971-04-13', 'david.reichel@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (26, 'Jedediah', 'Padberg', '2017-11-05', 'lonie.o\'keefe@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (27, 'Sienna', 'Witting', '1981-01-02', 'rosamond.langworth@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (28, 'Darrion', 'Kirlin', '2009-07-20', 'osinski.rex@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (29, 'Virgil', 'Schultz', '1991-12-21', 'pswift@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (30, 'Jazlyn', 'Denesik', '1987-09-21', 'julia87@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (31, 'Dylan', 'Lebsack', '2005-06-07', 'dell.bahringer@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (32, 'Aron', 'Predovic', '2004-02-13', 'kemmer.alejandrin@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (33, 'Roxane', 'McLaughlin', '1990-01-05', 'kcasper@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (34, 'Linwood', 'Swift', '2005-11-17', 'lwaters@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (35, 'Nelle', 'Crist', '2014-10-17', 'lew.stehr@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (36, 'Franz', 'Heaney', '2005-03-02', 'gaylord95@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (37, 'Elisha', 'Donnelly', '1977-07-23', 'electa62@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (38, 'Sadie', 'Tillman', '2001-11-11', 'dpouros@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (39, 'Horace', 'Beatty', '1982-02-18', 'rebeka88@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (40, 'Tiana', 'Lynch', '2006-09-21', 'pstanton@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (41, 'Nikita', 'Roberts', '2014-03-27', 'padberg.alfonzo@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (42, 'Rafael', 'Harvey', '1981-07-02', 'ejohnston@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (43, 'Viviane', 'Walker', '2006-09-01', 'teichmann@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (44, 'Kamron', 'Gutkowski', '1971-04-02', 'pblanda@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (45, 'Edmund', 'Toy', '1990-11-30', 'green.rex@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (46, 'Ramon', 'Goldner', '1984-10-25', 'rae71@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (47, 'Winfield', 'Schimmel', '1983-09-30', 'lizeth48@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (48, 'Minerva', 'Stoltenberg', '2022-07-01', 'geoffrey.jast@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (49, 'Morris', 'Hermiston', '2019-08-21', 'bergnaum.blaze@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (50, 'Addison', 'Schuster', '1991-12-29', 'tromp.marcel@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (51, 'Andreanne', 'Durgan', '1981-06-23', 'mante.simeon@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (52, 'Bennie', 'Kuphal', '1997-02-26', 'dmiller@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (53, 'Marcia', 'Terry', '2019-07-29', 'thea.murphy@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (54, 'Leland', 'Gutmann', '1999-07-10', 'diamond22@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (55, 'Estrella', 'O\'Hara', '1996-05-08', 'vernie.schmidt@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (56, 'Lempi', 'Hauck', '1996-10-22', 'prohaska.modesto@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (57, 'Brooks', 'Doyle', '2009-12-09', 'armani.hudson@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (58, 'Rosetta', 'Medhurst', '2013-07-12', 'ishanahan@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (59, 'Ariane', 'Dicki', '2000-10-17', 'schaefer.johanna@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (60, 'Elsie', 'Davis', '2016-03-10', 'fcrona@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (61, 'Mabelle', 'Little', '1986-03-07', 'pouros.pietro@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (62, 'Granville', 'Beier', '1997-12-19', 'heaney.herminia@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (63, 'Mafalda', 'Turner', '1979-04-28', 'caden68@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (64, 'Rosie', 'Torp', '2021-03-02', 'audreanne02@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (65, 'Jovani', 'Abbott', '1976-02-25', 'ebeahan@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (66, 'Titus', 'Spinka', '2023-07-05', 'carmelo.considine@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (67, 'Yadira', 'Schuppe', '2016-01-27', 'swaniawski.demetris@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (68, 'Justine', 'Moen', '2017-03-25', 'pagac.jaclyn@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (69, 'Audie', 'Stamm', '2019-04-19', 'dkilback@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (70, 'Judge', 'Nitzsche', '2017-11-28', 'pluettgen@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (71, 'Nona', 'Schumm', '1970-09-21', 'wkling@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (72, 'Obie', 'Breitenberg', '1979-05-10', 'karl00@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (73, 'Mittie', 'Goldner', '1993-01-23', 'mcclure.erika@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (74, 'Isaias', 'Hudson', '1998-04-30', 'langworth.nat@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (75, 'Vidal', 'O\'Hara', '1996-07-06', 'heaney.amelie@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (76, 'Tressa', 'Beatty', '2003-10-17', 'wcasper@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (77, 'Lorenz', 'Price', '1979-05-31', 'kihn.pat@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (78, 'Hermann', 'Turcotte', '1990-11-28', 'ghackett@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (79, 'Patience', 'Yost', '1987-05-07', 'goodwin.winona@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (80, 'Willa', 'Huels', '2023-05-21', 'ruecker.francesco@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (81, 'Hans', 'Connelly', '2020-01-23', 'zupton@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (82, 'Aditya', 'Wunsch', '2012-09-21', 'parker.herminio@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (83, 'Annabell', 'Hilll', '2008-11-17', 'dortha.pacocha@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (84, 'Amber', 'Dicki', '2016-05-14', 'anibal77@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (85, 'Maud', 'Nolan', '1995-12-13', 'mylene03@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (86, 'Ivah', 'DuBuque', '2013-05-26', 'emard.eliseo@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (87, 'Mable', 'Marquardt', '2001-07-21', 'cheyenne00@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (88, 'Ulises', 'Stoltenberg', '2001-10-30', 'kmedhurst@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (89, 'Abigail', 'Greenholt', '1971-07-03', 'etha.hessel@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (90, 'Patrick', 'Jerde', '1987-03-27', 'amely.morissette@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (91, 'Wilton', 'Lueilwitz', '1981-01-11', 'elmer.cormier@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (92, 'Kylie', 'Block', '2013-12-13', 'nicolas.irving@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (93, 'Brady', 'Wunsch', '2007-08-17', 'fnader@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (94, 'Loy', 'Schaefer', '2015-11-09', 'lueilwitz.paolo@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (95, 'Lambert', 'Welch', '1988-08-01', 'cara98@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (96, 'Eileen', 'Cummerata', '2013-01-31', 'geoffrey.metz@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (97, 'Cathryn', 'Russel', '1984-11-23', 'tyra73@example.org');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (98, 'Alene', 'Bartoletti', '2010-09-02', 'joy06@example.net');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (99, 'Kelvin', 'Fritsch', '2015-11-18', 'virginia55@example.com');
INSERT INTO `client` (`id`, `first_name`, `last_name`, `birthday`, `mail`) VALUES (100, 'Rachael', 'Schultz', '2011-12-18', 'kovacek.alisa@example.org');


#
# TABLE STRUCTURE FOR: group
#

DROP TABLE IF EXISTS `group`;

CREATE TABLE `group` (
  `id` int(10) unsigned NOT NULL,
  `contact_client_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_group_client1_idx` (`contact_client_id`),
  CONSTRAINT `fk_group_client1` FOREIGN KEY (`contact_client_id`) REFERENCES `client` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `group` (`id`, `contact_client_id`) VALUES (657833, 1);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (48, 2);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (0, 3);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (193, 4);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (1467, 5);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (62196518, 6);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (982270065, 7);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (5, 8);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (3118126, 9);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (3826, 10);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (72, 11);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (8, 12);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (622, 13);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (719246542, 14);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (62, 15);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (94465496, 16);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (95, 17);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (329752, 18);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (73, 19);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (97376, 20);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (73380091, 21);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (6, 22);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (9, 23);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (873220961, 24);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (55612, 25);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (4187384, 26);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (25506392, 27);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (776431, 28);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (618, 29);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (43879532, 30);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (49, 31);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (69138339, 32);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (11883106, 33);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (5223, 34);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (71, 35);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (741, 36);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (196784, 37);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (47, 38);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (22251490, 39);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (65871, 40);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (96087856, 41);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (20932052, 42);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (156954617, 43);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (9468, 44);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (204904, 45);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (3765, 46);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (4, 47);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (379, 48);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (27740, 49);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (66058, 50);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (252, 51);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (388949, 52);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (83746, 53);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (85615, 54);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (1283830, 55);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (7361, 56);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (96599, 57);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (9240, 58);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (55225510, 59);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (664, 60);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (18322, 61);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (78448038, 62);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (85372, 63);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (740204704, 64);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (29495437, 65);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (7, 66);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (79454, 67);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (365990, 68);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (38392109, 69);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (530, 70);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (15119, 71);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (5364104, 72);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (2834, 73);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (8712, 74);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (7831494, 75);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (1, 76);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (31, 77);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (36265003, 78);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (136827961, 79);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (561466, 80);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (7016, 81);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (606740419, 82);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (7264, 83);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (3, 84);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (590166095, 85);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (358317808, 86);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (38, 87);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (157, 88);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (118, 89);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (957031, 90);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (18542, 91);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (8070394, 92);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (9320, 93);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (5965, 94);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (65512484, 95);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (117, 96);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (7760508, 97);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (805, 98);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (51558310, 99);
INSERT INTO `group` (`id`, `contact_client_id`) VALUES (75496822, 100);


#
# TABLE STRUCTURE FOR: group_has_client
#

DROP TABLE IF EXISTS `group_has_client`;

CREATE TABLE `group_has_client` (
  `group_id` int(10) unsigned NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`client_id`),
  KEY `fk_group_has_client_client1_idx` (`client_id`),
  KEY `fk_group_has_client_group1_idx` (`group_id`),
  CONSTRAINT `fk_group_has_client_client1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_group_has_client_group1` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (0, 1);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (1, 2);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (3, 3);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (4, 4);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (5, 5);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (6, 6);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (7, 7);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (8, 8);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (9, 9);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (31, 10);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (38, 11);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (47, 12);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (48, 13);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (49, 14);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (62, 15);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (71, 16);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (72, 17);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (73, 18);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (95, 19);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (117, 20);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (118, 21);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (157, 22);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (193, 23);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (252, 24);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (379, 25);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (530, 26);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (618, 27);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (622, 28);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (664, 29);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (741, 30);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (805, 31);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (1467, 32);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (2834, 33);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (3765, 34);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (3826, 35);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (5223, 36);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (5965, 37);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (7016, 38);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (7264, 39);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (7361, 40);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (8712, 41);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (9240, 42);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (9320, 43);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (9468, 44);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (15119, 45);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (18322, 46);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (18542, 47);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (27740, 48);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (55612, 49);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (65871, 50);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (66058, 51);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (79454, 52);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (83746, 53);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (85372, 54);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (85615, 55);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (96599, 56);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (97376, 57);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (196784, 58);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (204904, 59);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (329752, 60);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (365990, 61);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (388949, 62);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (561466, 63);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (657833, 64);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (776431, 65);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (957031, 66);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (1283830, 67);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (3118126, 68);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (4187384, 69);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (5364104, 70);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (7760508, 71);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (7831494, 72);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (8070394, 73);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (11883106, 74);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (20932052, 75);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (22251490, 76);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (25506392, 77);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (29495437, 78);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (36265003, 79);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (38392109, 80);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (43879532, 81);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (51558310, 82);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (55225510, 83);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (62196518, 84);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (65512484, 85);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (69138339, 86);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (73380091, 87);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (75496822, 88);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (78448038, 89);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (94465496, 90);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (96087856, 91);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (136827961, 92);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (156954617, 93);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (358317808, 94);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (590166095, 95);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (606740419, 96);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (719246542, 97);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (740204704, 98);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (873220961, 99);
INSERT INTO `group_has_client` (`group_id`, `client_id`) VALUES (982270065, 100);


#
# TABLE STRUCTURE FOR: option
#

DROP TABLE IF EXISTS `option`;

CREATE TABLE `option` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `cost_per_person` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (1, 'eligendi', 'voluptatem', 0);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (2, 'nostrum', 'et', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (3, 'rerum', 'dolorem', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (4, 'magni', 'quia', 581);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (5, 'sunt', 'et', 5131);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (6, 'est', 'excepturi', 2840);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (7, 'ea', 'voluptatem', 124);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (8, 'eum', 'non', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (9, 'illum', 'consequuntur', 645);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (10, 'optio', 'sed', 2507);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (11, 'vero', 'quisquam', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (12, 'dolor', 'amet', 0);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (13, 'sint', 'non', 0);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (14, 'sint', 'incidunt', 0);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (15, 'quaerat', 'mollitia', 463);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (16, 'deleniti', 'odio', 0);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (17, 'sed', 'vero', 0);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (18, 'ipsam', 'ipsa', 30);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (19, 'voluptatem', 'expedita', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (20, 'maiores', 'et', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (21, 'explicabo', 'corporis', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (22, 'eum', 'rerum', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (23, 'voluptatem', 'laboriosam', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (24, 'blanditiis', 'velit', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (25, 'ratione', 'corporis', 45036);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (26, 'ut', 'asperiores', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (27, 'quia', 'est', 2);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (28, 'nesciunt', 'tempora', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (29, 'ut', 'porro', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (30, 'ipsam', 'et', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (31, 'dolore', 'accusamus', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (32, 'ipsa', 'quae', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (33, 'distinctio', 'atque', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (34, 'quis', 'assumenda', 25293);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (35, 'est', 'provident', 48216);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (36, 'atque', 'quis', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (37, 'ipsam', 'sunt', 0);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (38, 'fugit', 'ut', 342);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (39, 'adipisci', 'maxime', 35018);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (40, 'autem', 'et', 74);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (41, 'eum', 'optio', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (42, 'veniam', 'provident', 15);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (43, 'et', 'dolores', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (44, 'nihil', 'ut', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (45, 'perferendis', 'ratione', 71);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (46, 'soluta', 'officiis', 61);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (47, 'provident', 'iste', 1139);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (48, 'itaque', 'eaque', 552);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (49, 'porro', 'eaque', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (50, 'non', 'ea', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (51, 'quis', 'ducimus', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (52, 'dolor', 'culpa', 1);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (53, 'qui', 'laudantium', 4168);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (54, 'corrupti', 'est', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (55, 'quibusdam', 'ex', 3);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (56, 'nostrum', 'quam', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (57, 'qui', 'dolor', 9);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (58, 'praesentium', 'hic', 3);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (59, 'aliquid', 'non', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (60, 'nostrum', 'quia', 8);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (61, 'consequatur', 'rerum', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (62, 'explicabo', 'est', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (63, 'fuga', 'inventore', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (64, 'iure', 'rem', 58);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (65, 'quia', 'sit', 17137);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (66, 'dolorem', 'exercitationem', 549);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (67, 'nobis', 'praesentium', 2742);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (68, 'suscipit', 'dolor', 11685);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (69, 'excepturi', 'et', 7597);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (70, 'sequi', 'numquam', 21986);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (71, 'architecto', 'expedita', 1);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (72, 'voluptas', 'illo', 1);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (73, 'voluptatem', 'sed', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (74, 'excepturi', 'consequatur', 38697);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (75, 'aut', 'in', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (76, 'dolores', 'ullam', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (77, 'labore', 'nesciunt', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (78, 'eum', 'officiis', 13009);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (79, 'doloribus', 'voluptatibus', 163);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (80, 'possimus', 'voluptatem', 0);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (81, 'odio', 'assumenda', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (82, 'est', 'accusamus', 60728);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (83, 'eveniet', 'soluta', 4927);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (84, 'ab', 'voluptatem', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (85, 'ab', 'commodi', 26386);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (86, 'tenetur', 'pariatur', 55);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (87, 'ut', 'sint', 3);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (88, 'corrupti', 'animi', 45);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (89, 'officia', 'soluta', 0);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (90, 'optio', 'minus', 0);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (91, 'dolorum', 'dolorem', 6513);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (92, 'eaque', 'et', 0);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (93, 'repudiandae', 'nam', 20);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (94, 'accusantium', 'omnis', 65535);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (95, 'esse', 'dicta', 234);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (96, 'itaque', 'numquam', 661);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (97, 'inventore', 'esse', 1);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (98, 'vel', 'aut', 0);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (99, 'incidunt', 'pariatur', 3704);
INSERT INTO `option` (`id`, `name`, `type`, `cost_per_person`) VALUES (100, 'maiores', 'at', 65535);


#
# TABLE STRUCTURE FOR: room
#

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `capacity` tinyint(3) unsigned NOT NULL,
  `room_type_id` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_room_room_type1_idx` (`room_type_id`),
  CONSTRAINT `fk_room_room_type1` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (1, 1, 0);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (2, 6, 5);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (3, 8, 7);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (4, 1, 8);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (5, 5, 93);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (6, 4, 255);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (7, 8, 0);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (8, 0, 5);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (9, 7, 7);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (10, 1, 8);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (11, 8, 93);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (12, 3, 255);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (13, 3, 0);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (14, 2, 5);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (15, 2, 7);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (16, 9, 8);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (17, 4, 93);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (18, 7, 255);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (19, 2, 0);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (20, 7, 5);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (21, 1, 7);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (22, 4, 8);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (23, 8, 93);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (24, 9, 255);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (25, 4, 0);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (26, 1, 5);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (27, 4, 7);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (28, 6, 8);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (29, 8, 93);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (30, 2, 255);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (31, 5, 0);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (32, 7, 5);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (33, 2, 7);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (34, 4, 8);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (35, 7, 93);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (36, 1, 255);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (37, 1, 0);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (38, 8, 5);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (39, 2, 7);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (40, 0, 8);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (41, 1, 93);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (42, 4, 255);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (43, 7, 0);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (44, 6, 5);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (45, 3, 7);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (46, 7, 8);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (47, 5, 93);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (48, 5, 255);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (49, 8, 0);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (50, 2, 5);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (51, 6, 7);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (52, 2, 8);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (53, 3, 93);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (54, 6, 255);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (55, 6, 0);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (56, 1, 5);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (57, 8, 7);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (58, 8, 8);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (59, 3, 93);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (60, 2, 255);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (61, 0, 0);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (62, 2, 5);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (63, 7, 7);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (64, 2, 8);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (65, 1, 93);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (66, 3, 255);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (67, 2, 0);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (68, 4, 5);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (69, 0, 7);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (70, 5, 8);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (71, 5, 93);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (72, 2, 255);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (73, 2, 0);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (74, 6, 5);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (75, 0, 7);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (76, 9, 8);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (77, 2, 93);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (78, 7, 255);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (79, 9, 0);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (80, 2, 5);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (81, 3, 7);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (82, 6, 8);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (83, 5, 93);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (84, 7, 255);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (85, 9, 0);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (86, 7, 5);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (87, 7, 7);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (88, 1, 8);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (89, 9, 93);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (90, 4, 255);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (91, 6, 0);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (92, 6, 5);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (93, 3, 7);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (94, 9, 8);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (95, 9, 93);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (96, 4, 255);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (97, 7, 0);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (98, 9, 5);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (99, 8, 7);
INSERT INTO `room` (`id`, `capacity`, `room_type_id`) VALUES (100, 3, 8);


#
# TABLE STRUCTURE FOR: room_type
#

DROP TABLE IF EXISTS `room_type`;

CREATE TABLE `room_type` (
  `id` tinyint(3) unsigned NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `room_type` (`id`, `type`) VALUES (0, 'at');
INSERT INTO `room_type` (`id`, `type`) VALUES (5, 'ab');
INSERT INTO `room_type` (`id`, `type`) VALUES (7, 'a');
INSERT INTO `room_type` (`id`, `type`) VALUES (8, 'accusantium');
INSERT INTO `room_type` (`id`, `type`) VALUES (93, 'sit');
INSERT INTO `room_type` (`id`, `type`) VALUES (255, 'eligendi');


