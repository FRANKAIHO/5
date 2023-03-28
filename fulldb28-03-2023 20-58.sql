#
# TABLE STRUCTURE FOR: magazini
#

DROP TABLE IF EXISTS `magazini`;

CREATE TABLE `magazini` (
  `store_id` int(11) NOT NULL,
  `store_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: pokypateli
#

DROP TABLE IF EXISTS `pokypateli`;

CREATE TABLE `pokypateli` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: prodavci
#

DROP TABLE IF EXISTS `prodavci`;

CREATE TABLE `prodavci` (
  `staff_id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `manager_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE KEY `email` (`email`),
  KEY `store_id` (`store_id`),
  KEY `manager_id` (`manager_id`),
  CONSTRAINT `prodavci_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `salesstores` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prodavci_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `salesstaffs` (`staff_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: tovari
#

DROP TABLE IF EXISTS `tovari`;

CREATE TABLE `tovari` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (1, 'natus', 104118, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (2, 'sit', 23429, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (3, 'dolorem', 352021990, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (4, 'nesciunt', 0, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (5, 'minus', 56, '0.00');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (6, 'itaque', 14, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (7, 'et', 198172, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (8, 'laboriosam', 52020495, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (9, 'accusantium', 0, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (10, 'sit', 28401, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (11, 'non', 29549, '2.58');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (12, 'repellat', 2945, '0.38');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (13, 'eum', 163514526, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (14, 'fuga', 205880, '2.00');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (15, 'suscipit', 617565819, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (16, 'velit', 21826354, '24.09');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (17, 'nihil', 3, '2.41');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (18, 'quam', 0, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (19, 'natus', 16274, '312.10');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (20, 'quae', 4, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (21, 'vel', 1, '626.77');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (22, 'nesciunt', 233, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (23, 'fuga', 7, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (24, 'esse', 1962, '0.00');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (25, 'quia', 5076, '0.69');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (26, 'dolor', 0, '74.00');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (27, 'aliquid', 269974936, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (28, 'rerum', 110, '6.70');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (29, 'atque', 753, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (30, 'consectetur', 1156, '41.29');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (31, 'consequatur', 926089, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (32, 'provident', 516, '1.72');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (33, 'minima', 3, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (34, 'est', 6758, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (35, 'excepturi', 3020, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (36, 'vero', 0, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (37, 'possimus', 1474, '0.49');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (38, 'ad', 283224, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (39, 'corrupti', 3157597, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (40, 'officia', 2457043, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (41, 'laboriosam', 22975784, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (42, 'tempore', 14796006, '158.59');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (43, 'quis', 17608, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (44, 'ullam', 6, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (45, 'aut', 336852731, '2.04');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (46, 'nulla', 0, '381.65');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (47, 'omnis', 4572, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (48, 'voluptates', 4606905, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (49, 'molestiae', 0, '5.18');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (50, 'unde', 858, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (51, 'cum', 86, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (52, 'aut', 72930, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (53, 'id', 284354103, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (54, 'dolor', 40195, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (55, 'accusantium', 0, '0.00');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (56, 'ut', 1926098, '63.09');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (57, 'natus', 17, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (58, 'maxime', 4, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (59, 'quia', 5, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (60, 'quaerat', 8526, '0.00');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (61, 'voluptatem', 14313, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (62, 'aliquam', 58, '206.00');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (63, 'ratione', 11, '0.00');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (64, 'eum', 696, '0.90');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (65, 'ipsa', 103387932, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (66, 'vel', 2554067, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (67, 'corrupti', 12, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (68, 'accusantium', 131969353, '0.00');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (69, 'quis', 96057, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (70, 'fuga', 100405, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (71, 'exercitationem', 0, '0.00');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (72, 'repudiandae', 741, '1.00');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (73, 'et', 17761, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (74, 'reiciendis', 3, '0.00');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (75, 'dolores', 148, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (76, 'dolor', 94, '717.00');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (77, 'explicabo', 7405953, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (78, 'commodi', 0, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (79, 'quo', 3031994, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (80, 'et', 29707222, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (81, 'recusandae', 3, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (82, 'voluptas', 10019, '0.00');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (83, 'quasi', 0, '215.00');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (84, 'provident', 114, '162.70');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (85, 'reiciendis', 6, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (86, 'voluptatem', 4322942, '2.81');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (87, 'eos', 2933, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (88, 'qui', 5196, '0.00');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (89, 'rerum', 125341, '147.39');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (90, 'tempore', 33708182, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (91, 'velit', 905546, '340.47');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (92, 'voluptatibus', 31, '0.00');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (93, 'necessitatibus', 1005278, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (94, 'aut', 0, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (95, 'est', 190048, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (96, 'reprehenderit', 0, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (97, 'consequatur', 2, '58.56');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (98, 'fugit', 312036, '999.99');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (99, 'vitae', 0, '42.42');
INSERT INTO `tovari` (`item_id`, `item_name`, `quantity`, `price`) VALUES (100, 'quam', 11, '999.99');


#
# TABLE STRUCTURE FOR: zakazi
#

DROP TABLE IF EXISTS `zakazi`;

CREATE TABLE `zakazi` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_status` tinyint(4) NOT NULL,
  `order_date` date NOT NULL,
  `required_date` date NOT NULL,
  `shipped_date` date DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `store_id` (`store_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `zakazi_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `salescustomers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `zakazi_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `salesstores` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `zakazi_ibfk_3` FOREIGN KEY (`staff_id`) REFERENCES `salesstaffs` (`staff_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

