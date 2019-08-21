USE vk;

#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities` (`id`, `name`) VALUES (18, 'A deserunt.');
INSERT INTO `communities` (`id`, `name`) VALUES (10, 'Alias quo magni et itaque.');
INSERT INTO `communities` (`id`, `name`) VALUES (80, 'Aliquam cum praesentium.');
INSERT INTO `communities` (`id`, `name`) VALUES (36, 'Aliquam esse at autem.');
INSERT INTO `communities` (`id`, `name`) VALUES (73, 'Aliquam similique quae.');
INSERT INTO `communities` (`id`, `name`) VALUES (31, 'Animi alias beatae neque quam.');
INSERT INTO `communities` (`id`, `name`) VALUES (45, 'Architecto nobis enim fugit.');
INSERT INTO `communities` (`id`, `name`) VALUES (92, 'Aut laborum consequatur.');
INSERT INTO `communities` (`id`, `name`) VALUES (14, 'Aut natus dolor.');
INSERT INTO `communities` (`id`, `name`) VALUES (51, 'Aut nihil hic.');
INSERT INTO `communities` (`id`, `name`) VALUES (16, 'Aut quidem aut voluptatum.');
INSERT INTO `communities` (`id`, `name`) VALUES (69, 'Blanditiis aliquam quisquam asperiores.');
INSERT INTO `communities` (`id`, `name`) VALUES (24, 'Commodi dolore sit architecto.');
INSERT INTO `communities` (`id`, `name`) VALUES (44, 'Consequatur ipsam voluptate ut.');
INSERT INTO `communities` (`id`, `name`) VALUES (99, 'Corrupti incidunt aut.');
INSERT INTO `communities` (`id`, `name`) VALUES (47, 'Cupiditate cumque eligendi sunt.');
INSERT INTO `communities` (`id`, `name`) VALUES (79, 'Deleniti sed sed.');
INSERT INTO `communities` (`id`, `name`) VALUES (15, 'Dignissimos non.');
INSERT INTO `communities` (`id`, `name`) VALUES (3, 'Dolorem quis.');
INSERT INTO `communities` (`id`, `name`) VALUES (87, 'Dolores omnis sit corrupti.');
INSERT INTO `communities` (`id`, `name`) VALUES (46, 'Ea omnis et debitis.');
INSERT INTO `communities` (`id`, `name`) VALUES (62, 'Earum vero.');
INSERT INTO `communities` (`id`, `name`) VALUES (43, 'Enim architecto qui iusto.');
INSERT INTO `communities` (`id`, `name`) VALUES (7, 'Esse occaecati dolores.');
INSERT INTO `communities` (`id`, `name`) VALUES (90, 'Est consequatur.');
INSERT INTO `communities` (`id`, `name`) VALUES (84, 'Et consequatur aliquid hic.');
INSERT INTO `communities` (`id`, `name`) VALUES (57, 'Et distinctio et.');
INSERT INTO `communities` (`id`, `name`) VALUES (23, 'Eveniet quia aut ipsum.');
INSERT INTO `communities` (`id`, `name`) VALUES (89, 'Ex vel sed.');
INSERT INTO `communities` (`id`, `name`) VALUES (97, 'Expedita reiciendis vel.');
INSERT INTO `communities` (`id`, `name`) VALUES (37, 'Facere dolorum ipsam.');
INSERT INTO `communities` (`id`, `name`) VALUES (30, 'Fuga perferendis aut.');
INSERT INTO `communities` (`id`, `name`) VALUES (34, 'Fugit commodi magnam.');
INSERT INTO `communities` (`id`, `name`) VALUES (4, 'Harum necessitatibus.');
INSERT INTO `communities` (`id`, `name`) VALUES (86, 'Id enim dolorum omnis.');
INSERT INTO `communities` (`id`, `name`) VALUES (17, 'Id non sint.');
INSERT INTO `communities` (`id`, `name`) VALUES (76, 'In culpa nihil corrupti.');
INSERT INTO `communities` (`id`, `name`) VALUES (91, 'In dolores rerum.');
INSERT INTO `communities` (`id`, `name`) VALUES (42, 'In nobis eaque.');
INSERT INTO `communities` (`id`, `name`) VALUES (41, 'Incidunt dolor assumenda.');
INSERT INTO `communities` (`id`, `name`) VALUES (52, 'Inventore nesciunt assumenda.');
INSERT INTO `communities` (`id`, `name`) VALUES (74, 'Ipsa quia eligendi.');
INSERT INTO `communities` (`id`, `name`) VALUES (98, 'Ipsam quia iste optio et.');
INSERT INTO `communities` (`id`, `name`) VALUES (71, 'Ipsum praesentium.');
INSERT INTO `communities` (`id`, `name`) VALUES (56, 'Iste atque veritatis consequatur.');
INSERT INTO `communities` (`id`, `name`) VALUES (8, 'Itaque nostrum cumque ad at.');
INSERT INTO `communities` (`id`, `name`) VALUES (20, 'Itaque quia saepe maiores.');
INSERT INTO `communities` (`id`, `name`) VALUES (2, 'Magnam id amet non.');
INSERT INTO `communities` (`id`, `name`) VALUES (93, 'Molestiae perferendis fuga.');
INSERT INTO `communities` (`id`, `name`) VALUES (26, 'Nemo ut sit aut.');
INSERT INTO `communities` (`id`, `name`) VALUES (95, 'Nisi enim a.');
INSERT INTO `communities` (`id`, `name`) VALUES (1, 'Nobis doloribus itaque.');
INSERT INTO `communities` (`id`, `name`) VALUES (100, 'Non aliquid sed.');
INSERT INTO `communities` (`id`, `name`) VALUES (27, 'Numquam consequuntur rerum.');
INSERT INTO `communities` (`id`, `name`) VALUES (49, 'Pariatur molestiae rem molestiae placeat.');
INSERT INTO `communities` (`id`, `name`) VALUES (32, 'Perferendis dolorem id.');
INSERT INTO `communities` (`id`, `name`) VALUES (72, 'Porro et facilis ea consectetur.');
INSERT INTO `communities` (`id`, `name`) VALUES (19, 'Possimus quis maxime.');
INSERT INTO `communities` (`id`, `name`) VALUES (75, 'Quam adipisci sequi.');
INSERT INTO `communities` (`id`, `name`) VALUES (94, 'Quam totam porro enim dolorem.');
INSERT INTO `communities` (`id`, `name`) VALUES (38, 'Qui asperiores nesciunt.');
INSERT INTO `communities` (`id`, `name`) VALUES (50, 'Qui laborum consequatur.');
INSERT INTO `communities` (`id`, `name`) VALUES (85, 'Qui necessitatibus deserunt.');
INSERT INTO `communities` (`id`, `name`) VALUES (82, 'Qui sed qui commodi.');
INSERT INTO `communities` (`id`, `name`) VALUES (53, 'Quia amet.');
INSERT INTO `communities` (`id`, `name`) VALUES (21, 'Quia quaerat dignissimos et.');
INSERT INTO `communities` (`id`, `name`) VALUES (65, 'Quidem similique veritatis exercitationem.');
INSERT INTO `communities` (`id`, `name`) VALUES (33, 'Quis in at voluptatibus.');
INSERT INTO `communities` (`id`, `name`) VALUES (63, 'Quisquam corrupti tempora.');
INSERT INTO `communities` (`id`, `name`) VALUES (77, 'Quo qui et qui.');
INSERT INTO `communities` (`id`, `name`) VALUES (96, 'Quo rerum enim amet.');
INSERT INTO `communities` (`id`, `name`) VALUES (78, 'Quos rerum quo.');
INSERT INTO `communities` (`id`, `name`) VALUES (25, 'Ratione aliquid.');
INSERT INTO `communities` (`id`, `name`) VALUES (66, 'Ratione dignissimos mollitia eius.');
INSERT INTO `communities` (`id`, `name`) VALUES (64, 'Reiciendis quia aut.');
INSERT INTO `communities` (`id`, `name`) VALUES (88, 'Reprehenderit ut voluptatem.');
INSERT INTO `communities` (`id`, `name`) VALUES (67, 'Rerum magni saepe.');
INSERT INTO `communities` (`id`, `name`) VALUES (48, 'Rerum officiis ut labore.');
INSERT INTO `communities` (`id`, `name`) VALUES (11, 'Rerum rerum sit est.');
INSERT INTO `communities` (`id`, `name`) VALUES (39, 'Sed at aspernatur sunt.');
INSERT INTO `communities` (`id`, `name`) VALUES (81, 'Sequi expedita magni aliquam.');
INSERT INTO `communities` (`id`, `name`) VALUES (35, 'Similique dolorum.');
INSERT INTO `communities` (`id`, `name`) VALUES (60, 'Similique non dignissimos.');
INSERT INTO `communities` (`id`, `name`) VALUES (22, 'Sint et.');
INSERT INTO `communities` (`id`, `name`) VALUES (5, 'Sint vero vel.');
INSERT INTO `communities` (`id`, `name`) VALUES (58, 'Soluta facere.');
INSERT INTO `communities` (`id`, `name`) VALUES (40, 'Soluta ullam assumenda distinctio.');
INSERT INTO `communities` (`id`, `name`) VALUES (83, 'Sunt distinctio nam.');
INSERT INTO `communities` (`id`, `name`) VALUES (54, 'Sunt facilis tempore.');
INSERT INTO `communities` (`id`, `name`) VALUES (59, 'Tenetur vel explicabo.');
INSERT INTO `communities` (`id`, `name`) VALUES (61, 'Ullam odit dolorem temporibus.');
INSERT INTO `communities` (`id`, `name`) VALUES (28, 'Unde modi omnis.');
INSERT INTO `communities` (`id`, `name`) VALUES (13, 'Ut doloremque eligendi.');
INSERT INTO `communities` (`id`, `name`) VALUES (9, 'Ut omnis aut temporibus velit.');
INSERT INTO `communities` (`id`, `name`) VALUES (6, 'Vel eligendi et.');
INSERT INTO `communities` (`id`, `name`) VALUES (12, 'Vel labore eos doloribus.');
INSERT INTO `communities` (`id`, `name`) VALUES (68, 'Vel soluta tempore aut.');
INSERT INTO `communities` (`id`, `name`) VALUES (70, 'Voluptatem asperiores unde.');
INSERT INTO `communities` (`id`, `name`) VALUES (55, 'Voluptatem blanditiis voluptatibus dolores reprehenderit.');
INSERT INTO `communities` (`id`, `name`) VALUES (29, 'Voluptatum iste sit repellat.');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (0, 68);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 70);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 63);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 52);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 20);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 80);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 75);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 82);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 67);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 31);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 88);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (11, 97);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (12, 85);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (13, 76);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (14, 22);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (15, 62);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (16, 72);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (17, 83);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (18, 77);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (19, 71);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (20, 39);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (21, 78);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (22, 49);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (23, 59);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (24, 17);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (25, 47);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (26, 24);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (27, 40);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (28, 51);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (29, 14);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (30, 30);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (32, 45);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (33, 27);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (34, 15);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (35, 81);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (36, 90);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (37, 11);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (38, 99);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (39, 34);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (40, 44);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (41, 60);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (42, 95);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (43, 50);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (44, 32);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (45, 36);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (46, 48);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (47, 74);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (48, 79);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (49, 35);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (50, 10);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (51, 89);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (52, 38);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (53, 98);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (54, 91);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (55, 9);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (56, 73);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (57, 57);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (58, 21);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (59, 46);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (60, 8);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (61, 69);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (62, 42);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (63, 28);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (64, 93);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (65, 54);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (66, 86);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (67, 41);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (68, 96);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (69, 58);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (70, 65);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (71, 7);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (72, 6);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (73, 64);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (74, 55);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (75, 16);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (76, 29);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (77, 61);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (78, 100);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (79, 3);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (80, 23);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (81, 43);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (82, 2);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (83, 84);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (84, 13);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (85, 4);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (86, 1);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (87, 5);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (88, 25);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (89, 37);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (90, 66);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (91, 18);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (92, 87);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (93, 53);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (94, 26);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (95, 92);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (96, 19);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (97, 56);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (98, 12);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (99, 33);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (100, 94);


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (0, 18, 'eveniet', '1987-02-27 23:26:05', '1985-11-10 23:07:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (2, 53, 'iste', '2008-09-17 02:04:04', '2018-09-20 07:11:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (3, 18, 'molestias', '1977-11-10 10:15:51', '1998-12-25 23:39:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (6, 41, 'quia', '1980-06-06 00:26:30', '2009-10-03 21:33:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (6, 80, 'a', '1975-08-22 12:43:09', '2003-04-22 12:59:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (7, 20, 'aspernatur', '1977-08-19 04:19:38', '1999-12-12 19:24:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (7, 70, 'quibusdam', '1974-02-03 17:11:02', '1976-02-08 18:54:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (7, 92, 'aut', '1975-06-20 13:12:37', '1982-08-04 16:03:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (8, 46, 'amet', '1971-09-26 05:23:38', '1997-04-19 20:57:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (8, 83, 'blanditiis', '1975-05-30 02:48:58', '1996-05-02 01:12:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (9, 22, 'quo', '2003-05-03 04:35:31', '1997-05-01 16:57:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (17, 37, 'et', '1973-12-17 06:46:22', '1988-11-24 07:49:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (18, 17, 'ut', '2011-12-30 21:33:12', '2009-06-20 16:41:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (18, 30, 'maiores', '2006-07-29 15:02:33', '1979-05-27 10:57:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (18, 93, 'amet', '1980-01-30 04:59:40', '1997-05-16 11:38:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (20, 70, 'et', '1980-02-21 20:32:30', '2016-03-05 07:14:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (20, 90, 'quis', '1990-11-08 09:41:07', '1994-07-09 21:04:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (21, 80, 'necessitatibus', '1982-12-28 08:12:16', '2011-01-23 21:14:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (23, 1, 'eum', '1998-07-23 12:46:58', '2007-05-14 12:47:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (24, 60, 'debitis', '1970-03-22 22:04:28', '1977-10-23 00:13:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (24, 70, 'autem', '1971-12-31 00:43:12', '2012-01-23 19:18:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (25, 54, 'et', '1980-09-25 22:08:34', '1977-04-08 16:09:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (25, 85, 'quaerat', '1972-03-13 02:35:26', '2007-07-17 22:01:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (26, 54, 'voluptas', '2006-12-25 11:43:16', '1985-06-03 04:03:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (30, 18, 'eos', '1980-01-19 16:11:40', '2008-01-15 17:03:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (30, 57, 'quos', '1975-12-09 00:47:57', '1976-10-22 18:41:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (35, 23, 'et', '2012-04-16 10:12:22', '1976-02-17 10:35:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (36, 46, 'consequuntur', '1970-12-15 11:04:16', '2009-11-27 03:38:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (36, 81, 'at', '2016-01-15 23:33:23', '2017-10-12 04:57:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (37, 23, 'dolor', '1999-06-10 23:22:22', '1983-07-06 04:41:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (37, 75, 'porro', '1992-06-16 23:51:01', '2008-10-22 10:16:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (38, 21, 'non', '1989-06-18 17:42:36', '2018-09-24 00:15:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (39, 80, 'cupiditate', '2010-09-27 07:41:17', '1991-11-22 08:11:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (40, 21, 'soluta', '1974-10-30 23:05:17', '2002-02-20 13:01:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (40, 75, 'rerum', '1988-02-23 03:07:51', '1995-06-13 10:51:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (41, 46, 'et', '1991-07-02 22:38:54', '2008-05-17 05:21:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (42, 33, 'nobis', '1986-09-06 02:18:11', '1999-02-20 17:29:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (43, 68, 'cupiditate', '1994-10-10 08:10:57', '2012-11-22 21:44:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (43, 84, 'aut', '1991-11-16 23:39:20', '2012-12-19 09:43:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (44, 45, 'sunt', '1970-01-06 02:51:08', '1999-02-23 02:02:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (46, 60, 'laudantium', '1997-09-28 22:42:53', '1996-12-18 10:52:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (48, 36, 'reprehenderit', '1981-12-07 04:48:54', '1981-09-24 06:58:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (48, 40, 'eum', '1983-04-04 05:29:39', '2000-06-05 10:57:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (48, 81, 'ducimus', '1981-12-02 23:57:46', '1980-01-08 22:07:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (49, 64, 'ut', '2010-08-10 22:36:12', '1985-07-07 10:02:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (49, 89, 'eos', '2007-12-27 10:29:24', '2005-04-23 23:29:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (50, 1, 'ab', '1984-01-18 00:15:09', '1995-12-28 08:34:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (53, 25, 'voluptates', '1990-09-25 20:09:12', '1984-08-03 16:28:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (54, 96, 'vel', '2006-10-27 00:56:09', '2009-01-21 09:42:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (55, 48, 'maiores', '2009-05-29 22:39:11', '1973-10-06 10:35:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (55, 89, 'velit', '1985-08-21 02:48:40', '1978-11-25 11:46:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (56, 25, 'facilis', '1988-07-05 13:46:33', '2008-06-12 22:24:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (57, 60, 'qui', '1981-02-28 03:23:40', '1996-07-30 09:52:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (57, 71, 'fuga', '1998-03-30 19:30:31', '1970-02-06 19:15:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (58, 82, 'corporis', '2007-11-30 12:42:03', '2011-04-12 23:38:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (59, 33, 'qui', '1999-03-22 04:34:49', '1987-06-24 14:15:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (60, 83, 'nisi', '1988-02-09 19:09:44', '1982-08-18 05:17:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (62, 42, 'consequuntur', '2002-04-16 01:08:16', '2013-04-08 02:58:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (62, 61, 'accusantium', '2001-09-22 04:40:41', '1989-07-30 17:48:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (63, 18, 'quis', '1972-09-27 03:50:23', '2012-10-16 14:05:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (63, 85, 'minus', '1975-07-15 17:19:38', '1989-04-16 13:25:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (64, 13, 'est', '1996-04-25 17:56:05', '1973-10-12 23:08:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (65, 23, 'sequi', '1985-03-17 17:49:35', '1972-11-03 10:55:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (65, 42, 'sapiente', '1986-12-06 21:37:32', '1976-01-08 21:21:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (67, 20, 'eum', '1990-12-21 12:22:07', '1997-12-26 08:18:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (67, 78, 'ratione', '1970-01-31 07:37:32', '1988-06-03 13:00:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (67, 82, 'saepe', '1995-08-16 17:51:10', '1977-01-23 04:42:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (71, 20, 'animi', '1978-02-24 12:54:24', '2013-10-20 00:09:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (71, 64, 'magnam', '1980-04-13 18:34:45', '2001-11-09 18:51:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (72, 10, 'voluptate', '2011-08-08 11:31:20', '1977-06-08 08:54:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (72, 38, 'harum', '1997-05-16 07:48:51', '2004-12-23 07:08:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (72, 57, 'cumque', '2014-08-19 05:42:40', '1992-03-10 11:14:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (73, 77, 'minima', '2016-07-07 06:57:16', '1991-02-04 19:19:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (75, 12, 'dolor', '1979-01-12 08:17:56', '2012-05-15 02:06:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (76, 74, 'voluptatum', '1994-11-11 08:39:34', '2019-07-25 07:01:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (77, 17, 'perferendis', '2010-05-11 02:48:10', '2003-01-01 00:58:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (78, 3, 'sit', '1989-07-31 20:33:27', '1995-03-27 15:45:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (79, 29, 'fuga', '1990-02-06 06:21:00', '2002-05-02 22:45:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (79, 39, 'quidem', '1999-12-15 02:33:06', '1994-07-30 05:25:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (79, 58, 'deserunt', '1989-05-26 17:10:01', '1997-08-31 07:48:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (80, 84, 'corporis', '2018-01-23 08:43:10', '2014-05-15 11:42:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (82, 4, 'pariatur', '2005-05-19 02:25:53', '1983-11-05 07:58:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (82, 35, 'quasi', '2018-02-22 02:52:54', '1990-01-01 18:38:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (82, 52, 'vel', '2012-12-07 14:22:41', '1975-12-12 19:38:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (83, 42, 'aut', '1988-09-11 02:04:34', '1992-08-16 19:12:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (83, 78, 'voluptatem', '1993-01-31 21:14:21', '2015-12-23 15:11:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (85, 2, 'sint', '1983-09-20 08:00:47', '2001-12-11 10:48:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (86, 15, 'voluptatum', '1975-02-18 21:57:10', '2017-05-04 00:41:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (86, 38, 'modi', '2016-01-07 18:09:09', '1993-05-15 13:34:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (89, 85, 'voluptatibus', '1982-04-13 16:38:51', '1974-07-07 03:44:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (89, 90, 'eos', '1988-12-17 00:29:21', '1971-09-27 15:16:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (91, 78, 'dolorum', '2002-03-04 21:30:17', '2009-03-30 22:13:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (92, 14, 'quidem', '1989-10-15 00:13:03', '1985-10-18 16:22:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (93, 0, 'provident', '1982-09-24 18:37:56', '1988-01-17 17:32:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (93, 41, 'eos', '1995-09-20 00:26:16', '2000-11-04 09:06:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (98, 42, 'asperiores', '1988-10-29 18:16:20', '2016-07-05 10:46:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (98, 56, 'blanditiis', '1972-10-12 10:28:34', '2001-11-20 04:45:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (98, 84, 'sint', '1972-10-23 00:29:38', '1994-06-01 23:17:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (98, 88, 'et', '1990-05-21 03:50:26', '2001-03-22 15:33:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status`, `requested_at`, `confirmed_at`) VALUES (99, 74, 'pariatur', '2014-12-30 20:25:57', '1993-10-14 16:32:48');


#
# TABLE STRUCTURE FOR: like_statuses
#

DROP TABLE IF EXISTS `like_statuses`;

CREATE TABLE `like_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `like_statuses` (`id`, `description`) VALUES ('3', 'dolorem');
INSERT INTO `like_statuses` (`id`, `description`) VALUES ('1', 'et');
INSERT INTO `like_statuses` (`id`, `description`) VALUES ('2', 'iste');
INSERT INTO `like_statuses` (`id`, `description`) VALUES ('5', 'officia');
INSERT INTO `like_statuses` (`id`, `description`) VALUES ('4', 'quis');



DROP TABLE IF EXISTS `likes_media`;

CREATE TABLE `likes_media` (
  `user_id` int(10) unsigned NOT NULL,
  `for_media_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`for_media_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (42, 1, 0, '1982-04-14 01:27:43');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (9, 2, 2, '1998-12-26 13:16:02');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (23, 2, 4, '1985-06-03 00:33:46');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (80, 2, 1, '2009-08-15 10:29:03');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (92, 2, 5, '2012-02-06 19:02:55');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (90, 4, 4, '2004-02-09 07:10:50');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (11, 5, 1, '2015-12-24 14:27:30');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (18, 6, 1, '1980-11-05 09:38:27');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (34, 6, 0, '1998-05-06 11:19:16');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (23, 9, 1, '1979-03-13 01:33:26');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (74, 11, 1, '1979-01-26 09:27:12');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (5, 12, 5, '1977-02-13 09:44:03');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (88, 12, 4, '1998-10-10 20:43:25');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (99, 14, 4, '1985-12-10 11:25:01');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (71, 16, 4, '1972-06-28 22:02:29');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (7, 17, 0, '2000-10-23 20:13:02');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (95, 19, 1, '2003-03-26 03:51:04');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (74, 20, 4, '1988-06-18 06:50:09');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (86, 20, 2, '2008-06-05 04:15:40');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (16, 21, 0, '1993-12-14 12:35:54');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (90, 22, 0, '2013-08-17 20:14:46');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (18, 24, 2, '1970-06-25 03:56:00');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (40, 24, 0, '2007-02-13 08:40:45');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (84, 24, 2, '2013-10-10 19:07:28');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (28, 26, 3, '1988-05-31 16:37:01');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (37, 27, 2, '1988-07-10 20:21:53');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (90, 27, 1, '2007-02-01 19:53:52');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (62, 29, 2, '1997-06-04 09:01:32');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (82, 29, 1, '2000-02-05 04:05:37');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (63, 30, 1, '1982-05-28 20:14:39');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (7, 31, 1, '2004-08-22 12:11:02');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (21, 31, 1, '1973-07-22 05:39:23');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (20, 32, 4, '2015-09-11 00:06:00');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (95, 33, 5, '1989-11-10 08:56:39');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (3, 36, 1, '2014-04-30 05:48:31');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (21, 36, 3, '1981-08-08 03:40:21');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (45, 37, 4, '2015-03-11 14:13:58');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (100, 37, 4, '1997-10-24 18:06:21');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (0, 38, 5, '2017-09-26 23:44:01');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (24, 38, 0, '2019-05-17 00:09:12');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (26, 38, 1, '2005-02-17 16:04:07');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (94, 38, 1, '2019-05-20 15:05:48');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (99, 38, 1, '1979-12-29 17:42:42');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (66, 39, 3, '2007-01-25 06:09:18');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (84, 39, 4, '1996-10-02 08:59:44');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (8, 45, 4, '2002-10-29 06:23:20');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (47, 46, 2, '2007-01-26 12:34:04');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (60, 47, 3, '2009-04-17 23:36:04');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (88, 47, 1, '1989-11-20 23:52:40');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (13, 50, 2, '2002-12-27 09:35:12');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (67, 50, 0, '2019-03-14 15:33:10');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (21, 53, 0, '1981-07-15 02:40:52');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (50, 53, 0, '2012-09-18 16:23:02');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (84, 54, 4, '1976-10-24 20:42:50');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (12, 58, 1, '1988-07-03 07:03:09');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (57, 58, 2, '1972-01-07 04:12:54');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (8, 59, 1, '1994-08-15 14:59:52');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (93, 59, 2, '1974-11-02 20:36:27');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (18, 60, 3, '1980-07-15 06:42:09');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (68, 60, 4, '1993-07-11 20:39:43');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (17, 63, 1, '1999-11-01 05:47:26');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (45, 63, 5, '2019-01-28 00:59:37');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (72, 64, 2, '1977-10-23 07:50:42');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (20, 65, 5, '1998-05-09 12:08:23');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (90, 65, 5, '1989-04-14 00:47:47');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (43, 67, 1, '2012-08-04 23:39:59');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (61, 68, 3, '2015-10-08 05:53:22');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (41, 69, 4, '2015-05-03 02:25:14');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (14, 74, 4, '1986-05-02 22:24:46');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (38, 74, 1, '1977-05-07 06:28:28');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (72, 74, 1, '1973-09-17 07:12:35');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (4, 75, 0, '1998-03-03 01:21:38');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (35, 75, 0, '1979-11-26 08:59:30');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (52, 76, 0, '1996-07-24 04:00:53');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (55, 77, 5, '1977-05-29 03:12:39');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (7, 79, 4, '1993-12-02 12:42:11');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (42, 79, 3, '2011-05-15 09:12:43');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (74, 80, 2, '2009-04-30 09:57:36');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (27, 81, 3, '1994-04-02 11:28:48');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (33, 83, 1, '2016-09-05 14:24:49');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (67, 83, 5, '1983-05-18 14:36:28');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (98, 83, 4, '1978-12-10 15:47:25');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (3, 84, 2, '2013-08-23 15:49:49');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (7, 86, 1, '1974-03-14 20:31:06');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (47, 86, 4, '1977-06-24 08:25:51');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (65, 86, 2, '1977-02-04 10:52:15');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (99, 88, 2, '1983-03-17 14:02:58');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (58, 90, 3, '1971-10-26 12:25:57');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (96, 91, 4, '1994-08-20 13:55:35');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (71, 92, 5, '2018-05-09 11:59:46');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (94, 93, 2, '1988-02-01 17:23:28');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (4, 94, 5, '1994-08-29 05:43:55');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (56, 94, 3, '2003-08-18 19:01:03');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (50, 95, 3, '1986-10-10 14:45:53');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (98, 95, 4, '1976-07-05 15:44:23');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (81, 96, 0, '2005-01-21 02:33:21');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (86, 98, 2, '1985-01-16 21:35:24');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (17, 100, 2, '2003-09-09 13:50:10');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (31, 100, 2, '2001-11-20 11:25:42');
INSERT INTO `likes_media` (`user_id`, `for_media_id`, `status_id`, `created_at`) VALUES (48, 100, 3, '1978-12-12 17:13:10');


#
# TABLE STRUCTURE FOR: likes_messages
#

DROP TABLE IF EXISTS `likes_messages`;

CREATE TABLE `likes_messages` (
  `user_id` int(10) unsigned NOT NULL,
  `for_message_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`for_message_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (100, 2, 4, '1986-04-14 00:28:12');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (17, 3, 3, '1976-01-30 11:23:50');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (54, 3, 3, '1972-08-06 00:09:24');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (41, 5, 3, '1982-06-18 11:10:23');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (44, 5, 4, '2014-04-11 21:57:33');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (77, 5, 2, '2017-04-22 13:06:25');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (95, 6, 2, '2016-06-05 02:59:05');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (54, 8, 0, '2009-07-07 02:32:26');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (1, 9, 2, '2018-09-17 14:27:47');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (4, 9, 5, '1987-03-24 14:41:31');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (58, 9, 2, '1986-11-12 08:19:19');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (88, 9, 5, '2012-03-18 03:36:09');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (65, 10, 5, '2006-03-14 18:37:59');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (81, 10, 2, '1988-06-06 18:28:07');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (88, 10, 0, '1991-03-14 21:46:45');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (18, 13, 0, '2001-07-30 20:31:57');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (48, 13, 1, '1986-11-18 17:35:32');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (71, 17, 3, '1982-04-28 14:41:53');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (4, 20, 0, '1985-12-01 03:35:35');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (35, 21, 3, '2004-11-09 14:52:01');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (43, 21, 0, '1972-01-14 16:21:01');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (70, 23, 3, '1998-01-21 13:23:21');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (4, 25, 5, '2009-10-12 20:58:33');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (40, 29, 2, '1970-11-02 10:05:11');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (77, 29, 1, '2003-03-20 02:43:32');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (83, 29, 4, '1990-09-30 12:42:46');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (98, 30, 1, '2002-11-16 11:31:52');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (81, 32, 0, '1970-01-20 15:50:56');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (49, 33, 1, '2017-11-15 02:34:21');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (48, 35, 1, '1987-01-27 05:42:50');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (59, 35, 4, '1991-06-21 06:31:44');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (93, 35, 5, '1971-06-13 20:40:24');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (80, 38, 3, '2019-05-01 10:34:04');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (83, 38, 4, '1971-01-01 17:01:42');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (30, 39, 3, '2016-08-09 18:34:21');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (78, 39, 3, '1993-07-14 21:12:16');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (30, 40, 5, '2018-03-17 21:27:03');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (2, 41, 0, '1975-04-02 09:42:04');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (100, 41, 3, '1983-10-30 11:32:17');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (24, 42, 0, '1992-05-25 22:30:16');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (29, 42, 1, '1999-12-11 03:05:48');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (36, 42, 5, '2011-12-29 05:49:09');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (71, 42, 5, '1993-08-04 09:05:27');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (81, 43, 0, '1993-03-24 11:34:30');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (2, 45, 5, '1971-06-04 01:58:19');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (39, 45, 0, '1974-01-19 04:54:52');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (29, 48, 2, '2019-02-20 21:40:14');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (96, 48, 0, '2011-09-15 03:16:36');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (14, 49, 4, '1993-06-19 19:38:46');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (19, 49, 5, '2014-09-07 09:04:12');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (58, 51, 1, '1981-01-30 12:29:02');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (32, 53, 2, '2007-10-24 06:06:52');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (55, 55, 4, '1978-03-22 16:29:28');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (12, 57, 4, '1979-04-08 10:39:46');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (80, 59, 5, '1992-06-12 11:41:21');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (7, 60, 4, '1973-07-19 14:14:16');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (70, 61, 1, '1978-07-20 18:54:19');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (89, 62, 1, '2003-03-12 17:01:06');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (12, 63, 2, '1974-04-01 21:38:08');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (27, 64, 2, '2011-06-28 11:59:55');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (85, 64, 3, '1976-03-14 01:02:09');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (37, 67, 2, '1985-10-22 18:26:10');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (60, 68, 2, '2006-07-23 18:12:33');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (33, 69, 1, '1977-07-11 22:34:54');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (65, 70, 3, '2018-05-13 12:54:09');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (42, 71, 2, '1986-01-23 23:35:40');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (80, 72, 3, '2005-10-18 00:23:14');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (28, 73, 0, '2017-05-28 12:18:26');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (38, 73, 2, '2006-06-29 16:07:03');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (77, 73, 1, '1988-06-08 23:33:39');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (9, 75, 4, '1982-09-16 17:36:36');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (37, 76, 0, '2009-10-22 21:29:24');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (58, 76, 0, '1981-01-18 18:12:13');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (71, 76, 0, '1971-07-18 04:52:43');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (82, 76, 1, '1990-12-01 05:15:04');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (90, 77, 2, '1978-10-14 19:56:41');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (22, 78, 4, '2004-03-31 01:41:55');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (92, 78, 5, '1994-06-26 07:53:53');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (13, 81, 4, '2008-02-18 11:57:44');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (57, 82, 0, '1980-08-09 15:22:19');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (18, 83, 0, '1984-04-22 14:18:16');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (76, 83, 5, '2005-09-11 02:42:07');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (6, 85, 2, '2018-12-02 08:09:01');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (47, 85, 0, '1976-04-29 09:23:28');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (55, 85, 5, '2008-02-28 14:35:35');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (84, 85, 3, '1976-12-15 18:45:33');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (65, 86, 3, '1974-11-02 11:32:04');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (99, 86, 2, '1992-11-12 05:25:32');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (58, 90, 0, '1998-01-21 22:47:46');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (1, 92, 5, '2004-09-10 02:10:19');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (44, 92, 0, '1980-11-10 01:17:15');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (11, 93, 5, '2015-08-07 01:09:25');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (91, 93, 3, '1986-05-03 17:35:03');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (54, 94, 4, '1986-07-23 15:23:06');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (59, 94, 3, '2014-03-25 12:52:33');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (2, 96, 4, '1995-07-25 06:23:54');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (23, 96, 3, '2003-05-04 16:14:03');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (99, 97, 2, '1983-05-29 03:38:49');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (5, 98, 2, '1991-07-31 00:12:17');
INSERT INTO `likes_messages` (`user_id`, `for_message_id`, `status_id`, `created_at`) VALUES (14, 98, 2, '1978-03-09 04:13:35');


#
# TABLE STRUCTURE FOR: likes_users
#

DROP TABLE IF EXISTS `likes_users`;

CREATE TABLE `likes_users` (
  `user_id` int(10) unsigned NOT NULL,
  `for_user_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`for_user_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (7, 0, 3, '2016-07-03 12:51:08');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (4, 1, 0, '2013-05-27 16:50:16');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (11, 1, 3, '1988-11-14 17:46:44');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (75, 1, 4, '2002-05-09 22:18:50');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (3, 2, 1, '2009-07-06 09:43:53');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (78, 2, 2, '2018-01-18 17:46:45');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (32, 3, 3, '1970-02-02 15:38:16');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (84, 3, 1, '1972-04-14 23:35:37');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (86, 3, 3, '2000-02-25 03:59:06');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (88, 3, 3, '1987-02-08 22:16:43');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (97, 6, 3, '2004-12-17 21:34:08');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (2, 7, 0, '1983-03-03 02:38:47');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (56, 7, 2, '2019-01-29 18:47:28');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (3, 11, 1, '1985-09-29 23:28:51');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (73, 12, 3, '2013-06-19 21:44:25');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (59, 13, 3, '1996-11-14 04:06:02');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (97, 15, 3, '2004-06-02 01:39:36');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (91, 16, 2, '1971-06-17 22:18:23');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (52, 18, 3, '1992-06-20 19:47:42');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (34, 20, 2, '2011-07-17 14:51:31');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (69, 24, 5, '2013-10-06 01:29:37');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (24, 25, 0, '2005-09-29 19:25:11');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (77, 26, 1, '2009-11-15 17:48:15');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (82, 26, 2, '1992-12-29 16:58:49');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (94, 26, 2, '1983-12-29 15:35:00');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (19, 27, 4, '2010-09-04 14:10:25');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (49, 27, 3, '1992-06-10 20:15:25');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (36, 30, 0, '1970-01-21 17:38:51');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (8, 31, 2, '1981-01-11 00:34:43');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (89, 31, 2, '2006-11-29 22:47:30');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (30, 32, 3, '1992-05-16 07:54:52');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (0, 33, 5, '1973-07-07 12:30:39');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (2, 34, 5, '1993-08-10 22:10:05');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (62, 37, 3, '1995-06-17 16:00:58');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (69, 37, 4, '1994-02-21 08:59:54');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (90, 39, 2, '1996-10-04 03:20:38');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (72, 40, 4, '1991-06-30 22:42:00');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (86, 41, 1, '1975-09-26 16:33:18');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (4, 42, 0, '2013-09-13 13:09:44');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (15, 43, 0, '1977-09-24 14:05:24');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (23, 43, 2, '2007-11-02 00:15:26');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (50, 43, 2, '1981-12-22 02:04:24');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (93, 43, 1, '2012-09-21 23:17:51');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (97, 43, 5, '1982-04-28 02:18:06');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (44, 45, 3, '2001-04-28 09:29:19');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (53, 45, 4, '2003-04-15 14:43:31');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (55, 48, 1, '1987-05-24 20:44:53');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (66, 48, 0, '2017-02-23 23:30:14');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (37, 51, 3, '1986-05-17 01:29:23');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (40, 51, 0, '1998-12-25 12:02:42');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (94, 52, 1, '1979-09-29 13:22:20');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (6, 53, 2, '2014-05-02 13:24:29');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (82, 53, 0, '2007-02-06 09:30:52');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (90, 53, 3, '1999-07-05 01:35:44');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (6, 55, 2, '1990-05-12 12:01:31');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (37, 56, 1, '2012-12-08 16:54:54');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (89, 56, 5, '2018-04-20 02:03:54');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (99, 56, 0, '2012-11-24 23:40:42');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (47, 57, 0, '1988-08-11 05:30:10');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (54, 59, 0, '1979-07-16 00:29:48');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (27, 60, 5, '1974-11-25 05:07:30');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (57, 61, 5, '1992-05-18 21:47:10');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (91, 61, 0, '2000-03-25 04:06:15');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (88, 62, 3, '1995-08-12 00:26:38');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (2, 64, 5, '1976-03-29 04:39:12');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (3, 64, 5, '1974-10-02 01:58:53');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (66, 66, 1, '1993-01-24 13:42:06');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (86, 67, 4, '2013-06-09 20:25:21');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (12, 68, 5, '1980-04-10 03:12:49');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (71, 68, 5, '1975-06-01 03:33:39');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (67, 74, 5, '1998-06-05 14:38:22');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (12, 78, 2, '1991-12-07 20:27:22');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (31, 78, 2, '1989-04-30 10:30:27');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (42, 78, 0, '2011-01-17 08:23:33');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (68, 79, 4, '2001-11-10 06:24:15');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (10, 81, 5, '2008-06-09 05:08:37');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (14, 81, 1, '1975-06-19 14:46:16');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (28, 81, 1, '1985-09-15 09:09:10');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (58, 81, 0, '1972-07-01 02:58:00');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (76, 81, 1, '2016-05-22 07:37:45');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (4, 83, 4, '2011-11-07 06:29:44');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (22, 83, 5, '2012-01-27 12:47:06');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (26, 83, 2, '2003-09-10 16:26:28');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (38, 83, 0, '1973-02-22 00:46:13');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (3, 84, 1, '1984-08-01 22:21:49');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (55, 84, 4, '1993-06-28 10:06:39');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (62, 84, 0, '1984-06-11 12:22:44');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (93, 84, 4, '2007-11-05 03:43:24');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (55, 86, 1, '2002-01-19 20:13:27');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (40, 87, 0, '2011-11-17 15:06:47');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (52, 87, 2, '2018-12-29 05:16:20');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (87, 87, 4, '2012-11-09 00:19:36');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (66, 90, 5, '1978-01-26 19:29:08');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (18, 91, 1, '2015-04-21 21:34:44');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (14, 93, 3, '1970-06-04 01:52:39');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (46, 95, 5, '2004-01-07 13:44:06');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (25, 96, 0, '1977-07-25 09:33:47');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (73, 99, 1, '1972-05-01 18:57:13');
INSERT INTO `likes_users` (`user_id`, `for_user_id`, `status_id`, `created_at`) VALUES (94, 99, 4, '2017-08-06 01:15:51');




#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (1, 1, 1, '/6676b6dd54cf4ec5b51dfac6bbbc5c69.jpg', 50675, '5d012f1c-b413-3073-ac74-024c954a8d78', '1983-03-04 14:32:16', '1993-01-12 16:15:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (2, 2, 2, '/4d17b4cc80887c4bb19e374223fd581a.jpg', 754, '5b65b5da-1fba-3616-a8b8-573ab54dc1e6', '1992-02-10 21:28:05', '2019-01-08 16:41:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (3, 3, 3, '/7ddcfb1a980cd8057547f9befd81ad41.jpg', 58403, '073cf22d-2a55-3b2c-b3b6-2896fb52bff1', '2008-02-25 06:49:28', '1985-01-16 05:05:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (4, 4, 4, '/b7316c2c02bf4fa4b2ca1eb6a2487e2a.jpg', 0, 'd6966b6e-c160-3675-af36-e2716339eb28', '1990-07-24 23:19:36', '2008-02-07 21:22:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (5, 5, 5, '/e4b32a437329a55889eb71c568fe9d2b.jpg', 19843, 'c8142cb3-90d0-3143-b909-442eca697223', '1976-11-15 19:49:39', '1970-08-16 00:07:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (6, 1, 6, '/67fadf07fa7a7b1f2f8304f7307c0f6d.jpg', 85339, '13468a4a-4f9d-3e9e-bbd0-1a951b883004', '1974-09-24 08:29:10', '1992-07-01 12:09:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (7, 2, 7, '/7eb2e7bbed32fe1356e835d7ef1cd84f.jpg', 4, '0f9e8a7a-aaf4-3bfe-80d8-9d5f7d16b16a', '1975-01-06 08:49:52', '2004-05-17 00:22:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (8, 3, 8, '/ccb533b819cd061d00aa9da985c309eb.jpg', 3316435, '139a7fb3-4c39-36d8-a4d3-be62cb253d62', '1999-03-03 15:08:36', '2000-07-19 04:24:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (9, 4, 9, '/8c69ba562c16a7939de89b9fc9173b5c.jpg', 70497864, 'b10c1727-4179-3212-ade7-6e5f230e73c7', '2013-03-24 21:38:21', '1988-09-27 19:33:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (10, 5, 10, '/16bfc93dc6b4574809ef78b7c2f8b1d3.jpg', 60594396, '2ee4db89-f35a-30b8-baed-6b1167eb39b6', '2012-03-21 19:28:26', '1994-11-08 22:07:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (11, 1, 11, '/416a208eafe2aadf91215bdccc682e61.jpg', 30, '2624b64a-c380-38b4-9520-19bfadfe43bf', '2004-11-07 04:15:24', '1995-04-11 06:11:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (12, 2, 12, '/476eaf8663df09742984f21a8af5439d.jpg', 72, '33ffbc8a-6045-3282-942c-0f125d8d927b', '2007-08-30 03:14:44', '1985-03-30 02:37:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (13, 3, 13, '/2b8167243e76324a35acc7834f837f9d.jpg', 52923062, 'd32e7939-8eda-3ed9-8264-e7b469fd533c', '2005-04-16 08:12:29', '1995-01-03 00:57:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (14, 4, 14, '/bad8a95919b46c52846a157ce2c2a84c.jpg', 671569, '11ae7c96-ec5c-3e51-b5c6-46d668ddf02c', '1981-04-26 04:37:09', '1998-10-25 16:27:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (15, 5, 15, '/10c76e305256b5d5bb072b712fa2ab6c.jpg', 349395380, 'b795705e-3fc8-3458-9104-164c318c96c0', '1998-06-27 01:38:25', '1998-05-29 23:21:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (16, 1, 16, '/cd7f910b4ce40818009642b6bf3492e4.jpg', 4368, 'f7924c28-90ab-3655-b5fa-0125feb66610', '2012-06-07 22:02:56', '2018-11-17 15:25:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (17, 2, 17, '/a22512071a9ec538c97a75cb189f8a88.jpg', 55580, '80543f2e-ce5c-37e4-b2a9-49acf7dc8225', '1986-10-27 08:55:12', '2000-10-11 09:19:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (18, 3, 18, '/0804d76b5f9d9acc01a574d7e1ce8f1e.jpg', 11927, '266a3622-a9a7-39b3-b6b8-09a1247a3d66', '1992-02-02 21:54:26', '1994-12-04 18:50:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (19, 4, 19, '/00fc6f7455edd194b3b06ef3d6674180.jpg', 566, 'b2cafd67-ebb2-3591-807a-9f511007fcc7', '1973-07-05 11:27:13', '2004-09-10 22:55:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (20, 5, 20, '/9637ed3ca9fb37c38dd8ac74b9149b66.jpg', 8957704, '4956527e-dbc0-33b6-bd95-b025b5456c54', '2007-07-27 01:48:22', '2000-06-03 10:41:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (21, 1, 21, '/8a6d663e44fbb30ea33eb629f11f9b38.jpg', 6396199, '60f259e4-ab9e-3f36-91da-8350290d7d82', '1987-10-05 07:42:10', '1996-02-04 12:06:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (22, 2, 22, '/5d60e2e54aa6e2a3f473f8bd3c72e96d.jpg', 94883, 'c7e84e7a-6f9f-321b-a84c-0878db7144bd', '1987-08-29 11:15:32', '1979-04-21 04:04:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (23, 3, 23, '/a6d85b011883f155ac542401c14a3410.jpg', 12723, 'fbd43455-8cc1-3423-8ec5-8bb3b9358b69', '2004-03-03 07:02:47', '2007-02-11 05:28:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (24, 4, 24, '/c5ba2510a5fc7a62d8f193db678f25ad.jpg', 0, '167a7fd7-1fd1-36a9-8939-bb3c493e14c6', '1971-02-14 12:23:26', '2010-02-02 22:10:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (25, 5, 25, '/07c83e636d643befca080b79e02493d6.jpg', 22265, 'd6330900-f586-3474-b762-6b08e594e546', '2001-12-04 18:01:31', '1979-02-02 02:48:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (26, 1, 26, '/e7f07e68bab0d6fb0a21d6710810c29f.jpg', 339824786, '3f7252f4-eb29-3c90-878f-c967f3fa483b', '2005-02-09 08:24:43', '2001-09-04 05:49:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (27, 2, 27, '/c2f02ac155a34396d2ae98a5d5256e2d.jpg', 9, '45a52f9f-f921-3f47-a92f-9541d9385cf3', '2010-03-29 22:25:44', '1977-04-28 15:34:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (28, 3, 28, '/755f5a35ae5fbd11ce9b994d3e2985e0.jpg', 2, 'ed5d5483-2e28-38e4-8d4a-398dfc10f877', '1971-01-22 04:20:25', '2017-05-27 10:35:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (29, 4, 29, '/4d400c730338af04279136e6ef3f7fca.jpg', 5, '91adbdc8-6e3a-3f16-a786-135709c4e33d', '2000-09-27 19:23:54', '1991-07-12 00:42:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (30, 5, 30, '/853e4edee2b0f9b926add34182d99a20.jpg', 4, '3bc62a20-3c59-3ee2-86c0-f75e467dd8be', '1992-01-02 01:33:36', '1985-05-13 14:50:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (31, 1, 31, '/e07f5eba6d4498a2d4b913a1b736de3a.jpg', 0, '3b1bfac6-bcd5-314a-a775-6a36fc307814', '1990-03-28 09:31:11', '1980-03-17 05:10:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (32, 2, 32, '/a3a8423de539036ddb90f02f95991276.jpg', 5, '93a74655-9f47-3bc7-9379-5a09016d5e1d', '2012-04-15 01:15:46', '2001-07-13 19:04:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (33, 3, 33, '/08c6542d463f8a1c8c333e7dc0806c74.jpg', 30963479, '745018e4-c082-372f-baa3-56ca94f448a8', '1991-01-26 09:21:17', '1977-12-09 20:30:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (34, 4, 34, '/531e66e1e84e5d6e4a82c270bc5f3944.jpg', 524, '8558381b-4dfb-323b-b0af-68d7601e5938', '2003-11-16 00:25:37', '1986-01-27 01:08:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (35, 5, 35, '/1db4f22ed104d7b5fabebcb7cb1729f6.jpg', 5, 'c6f773bf-77ad-3a4c-a932-e0b005a994d1', '1997-06-18 01:24:43', '2007-10-08 18:08:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (36, 1, 36, '/73c1bb57957670a88bf8d105df1593fd.jpg', 0, '29adecaf-9b80-32c7-a051-5cdbd1c3cb63', '1996-05-20 13:44:47', '1975-03-10 17:49:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (37, 2, 37, '/bb9b4348a3750c4207e127077c23d7c6.jpg', 172942, '8491090b-2255-389f-9ca5-3a4b83d1dd7d', '1971-11-10 10:33:37', '2002-07-19 07:00:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (38, 3, 38, '/2c23d9576b4bdb122fb8ac98c7dfac1f.jpg', 448713, 'a285deca-ba61-30c5-b83e-c1e159030117', '1977-12-15 19:27:19', '1974-01-11 22:00:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (39, 4, 39, '/015a8c4288267adada782a318f144bd3.jpg', 9355028, 'bf201eff-9cae-3320-8886-001b33168bb5', '2018-03-15 09:14:47', '2002-06-15 06:00:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (40, 5, 40, '/12f9a65003c50b1c2761bf65e48b0c22.jpg', 0, '8455e52e-e7ae-3443-beeb-34c37fac5797', '2001-06-04 01:51:06', '1994-07-21 19:07:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (41, 1, 41, '/1954f85d66082f29123627aeab824fbd.jpg', 26886, '950fbd38-e4ea-3604-887d-f4ac846dd7dc', '2012-03-13 13:39:53', '2012-04-25 03:34:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (42, 2, 42, '/7d40163010bf9bb999c2d1e3bbb34cfb.jpg', 729008, 'b4b6a486-85bc-355b-a4df-ebacc85d47d5', '1978-01-13 01:01:48', '2017-10-18 17:07:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (43, 3, 43, '/7cbcef76901b52b652e29816430c396f.jpg', 0, '1e2f3a39-21ea-3ca7-8ead-a170a3e46245', '1979-09-06 13:42:46', '1982-12-24 14:20:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (44, 4, 44, '/e9363a8f43bd082d962b5d06f5afb52d.jpg', 0, 'd34a0e2b-8f0a-3728-8ee1-dda2eb48903f', '1987-09-13 20:15:24', '1990-06-05 15:29:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (45, 5, 45, '/5e42e6d6c908870f723a6c2559114c68.jpg', 81534, 'fcbbdff7-9906-3ce1-8d8b-6db5874cee42', '2012-09-08 12:44:02', '2000-01-21 23:43:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (46, 1, 46, '/d8b8b47fdf6b8a573a06371119ae2f7a.jpg', 0, 'bc3d33b5-59ad-3777-b338-56baaf943866', '2018-04-17 16:14:18', '1988-07-18 14:31:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (47, 2, 47, '/102ab7feece61eab312652aca90a73f4.jpg', 64, '8f6cb748-7a4d-3398-830f-ec7d8d1b45f5', '1995-11-27 10:30:28', '2011-12-07 08:04:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (48, 3, 48, '/8c63c6a74ebb5d949af9defa9454539d.jpg', 218771, '9992a050-84b7-32a9-9bc5-94002d137e84', '1999-03-10 04:51:12', '2012-04-14 11:12:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (49, 4, 49, '/6179c6b461e41db35779aa9fa5246364.jpg', 7068, '7371ae8b-47fd-3247-877d-02e560f70c5f', '1977-04-09 01:59:02', '1988-05-26 06:36:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (50, 5, 50, '/861484bd034140a7fb935079c349334d.jpg', 57170, 'c027a7ad-7785-366e-9da3-7f20d70db955', '1993-08-06 12:50:53', '1994-04-13 22:55:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (51, 1, 51, '/6de8c994fda655f7ac405db9ac9ba96e.jpg', 90040, '1fa0b829-c0f2-3dce-a02a-f94e64152cef', '2019-01-25 05:17:08', '2005-10-14 11:04:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (52, 2, 52, '/8b4b6c7317833037b348e7a71a2ab8a9.jpg', 0, '82fed157-c389-3487-b5dd-eb26e4eb7a38', '1989-03-06 22:22:22', '1999-08-10 07:26:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (53, 3, 53, '/ac1de8fbe29d5e90405a048ab1ee2a32.jpg', 32, '09466e2c-0fb0-3f36-b7e4-f8bf97752b28', '2011-09-19 14:59:23', '1999-01-07 17:45:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (54, 4, 54, '/3eef0eeec46c542480b874f183973fa4.jpg', 495585966, '0c754d02-84d6-381e-8c10-78286a65d2af', '1988-07-03 23:33:02', '1999-02-15 17:29:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (55, 5, 55, '/34e2d7b44af55eecab0393443990a553.jpg', 554, '6421ecf3-7567-356d-b6cf-f5b4b721f670', '1977-10-01 22:00:58', '1979-06-15 21:44:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (56, 1, 56, '/7d8fd642493677b8e27c29d3410e97ea.jpg', 22096216, '959a22dd-7e17-307b-951f-28dcf00b6373', '1999-09-02 19:33:09', '2012-12-20 00:54:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (57, 2, 57, '/9d445875aeb167e7bf92806315647271.jpg', 45, '26922665-e7ce-3bee-9d22-2d8e6e0348dd', '2009-08-18 02:10:45', '1978-12-27 22:40:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (58, 3, 58, '/cf0038ec43a67ef93bb80c132aa4aee0.jpg', 62254537, '3cf3326a-2b0b-390e-b45b-3d988c6d3966', '2001-05-03 12:37:32', '2019-01-26 19:28:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (59, 4, 59, '/f3e43e577f9989a4391d6eef8416ad96.jpg', 5444675, 'f4f55fbc-8fce-3272-a35b-2b69c6b08742', '1984-04-18 13:07:02', '2016-05-02 15:21:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (60, 5, 60, '/da8ba3c5799eb0fb28146da46748a1be.jpg', 355336, 'e3d449ef-5ced-378d-8363-cfd2741c89eb', '2009-07-02 05:01:40', '1983-01-06 22:41:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (61, 1, 61, '/7058f118f16238560de8df416559ad2a.jpg', 5241769, '7372d881-2e09-3695-9445-6423b888e3af', '2001-03-04 06:46:42', '1988-10-25 00:29:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (62, 2, 62, '/83a0e72086e15828a6a73da037e33e83.jpg', 571501, '8ea73447-e317-3afa-8798-d9bd41baafea', '1978-10-06 11:05:25', '2001-05-19 19:27:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (63, 3, 63, '/33d3675650f2ba622936a681de05b06f.jpg', 178630718, '28c55a35-53e0-3eb2-9676-3a7b3ff0d070', '2016-05-16 21:54:25', '2004-02-28 05:54:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (64, 4, 64, '/4f9a0af34dc2f6e37869b9c9674569da.jpg', 621764381, '06721bdb-b07d-39bd-b3a1-4934575f2a80', '2009-04-25 17:57:05', '2010-07-28 22:15:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (65, 5, 65, '/32419bede6b69987ae67e020ce5ad7e0.jpg', 831, '72302753-6eaf-3093-8150-06a46e87e958', '1978-07-16 11:17:33', '1997-11-19 22:59:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (66, 1, 66, '/8f24edb94b96da52d2d46bf50a95fcf5.jpg', 685770, '2f9bc8aa-1dbe-304f-93dd-b06cd703b405', '1976-08-05 22:07:41', '1971-10-16 01:44:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (67, 2, 67, '/757e8f66e6bb8a23fb318ab3049d319a.jpg', 2144540, '2045e489-d501-378c-9fa9-229a377cdedf', '2003-12-09 19:56:44', '1978-11-20 16:14:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (68, 3, 68, '/0b71b6acd6e8779c0e1c692b66412232.jpg', 6, 'ccd69519-e076-3ccf-9243-76bc813ccd4c', '2013-06-18 17:34:20', '2016-01-06 03:02:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (69, 4, 69, '/e2ea22214261fb90f7b647cc62bb4021.jpg', 2, 'c8245170-e9c4-3fd0-a2d7-2f93c9253e43', '1971-04-07 14:01:11', '1992-06-01 13:19:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (70, 5, 70, '/278a3b1eea2654374172aa34936bb89e.jpg', 53, '7a4a4822-5127-36e0-9fdc-4c76c9c03895', '2008-03-26 20:05:03', '2014-11-14 09:16:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (71, 1, 71, '/675c3d51ebfb4688ca7913b51460b826.jpg', 963443, 'b9800125-fa52-3093-b065-5d29e41c0471', '2001-02-15 19:02:21', '1983-02-23 21:50:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (72, 2, 72, '/a05aac0f0232e25dd0b93e958f458430.jpg', 2513613, 'ed7f2efd-a688-3c36-afa8-385b33315e85', '1997-06-25 16:05:05', '1976-07-31 14:30:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (73, 3, 73, '/d95480dce9f1726d6feea0546f5bde2e.jpg', 90782, 'd007be9c-124b-3e4d-bcd5-d6f58bd3c6a0', '1979-05-07 01:27:38', '2005-12-12 15:21:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (74, 4, 74, '/e8b5e57bde4dbcb23b5988e6927028e3.jpg', 2, '35f3b22c-d62b-3fb0-940a-01404546e604', '1971-02-04 02:31:05', '1971-03-04 15:38:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (75, 5, 75, '/41ace60fb50f5699e98c5b21878d8af2.jpg', 452, '8a9fa1a2-f51a-356b-ae98-b50e2adc7f63', '1972-03-16 06:22:48', '1994-11-15 11:51:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (76, 1, 76, '/78a4e7f440b9b97d8d67301131788fb3.jpg', 0, '9035c206-285b-39ba-8404-e8dfbdf2e994', '1997-12-29 00:08:35', '1992-08-22 04:08:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (77, 2, 77, '/067d2fbc6a0a516d6cb5e8d9ba556f83.jpg', 5225, '939d94b3-80c6-3558-84db-a1b8399b3cb3', '1990-01-11 14:42:25', '2001-04-02 03:28:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (78, 3, 78, '/4becbbd475703797a764562904ca5a75.jpg', 73572470, 'ba8c5da9-ba8d-3dd7-b56b-c8869329f774', '1989-11-04 08:42:04', '1982-01-09 17:46:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (79, 4, 79, '/8e4af18c0dd657b4570d6e8e8b3339cb.jpg', 60136271, '4ba2e1c1-0420-36cb-a7f3-562bc2747706', '1973-06-11 11:02:48', '2004-03-29 10:47:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (80, 5, 80, '/833953f693a3340ebb9d74e90ce9801a.jpg', 8, '04497a5b-66bc-3023-8912-cff7516842aa', '1989-10-11 08:25:37', '1992-08-10 06:19:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (81, 1, 81, '/c4e0f80bc97312621cfa24822e0d32f6.jpg', 121075651, '8e7094c6-f9a8-3174-b0ae-8e6f6620430f', '2003-04-29 22:27:48', '1994-09-19 17:50:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (82, 2, 82, '/2f006694301d95e102eecee5e85f56e2.jpg', 37419, 'fcc49d76-6d5d-3fe0-82da-7f33ce5b39af', '1980-01-22 15:02:53', '1981-11-27 18:53:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (83, 3, 83, '/e191147abf868ff0d4e0bf7403fbdef8.jpg', 8208, 'bbc4825b-12d5-3770-a729-5d82f4888994', '2019-07-25 01:45:09', '1992-04-03 06:04:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (84, 4, 84, '/33357620fb84832779f942932310c8e1.jpg', 39668534, 'ab6422bf-9958-3ae6-8edc-c8ecaac7c33f', '1998-01-21 18:04:03', '1984-01-16 06:30:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (85, 5, 85, '/88ac09f45e8395db74d178a744e8e10c.jpg', 79, 'bff72238-aabd-3ffa-a9b7-1520b3e97aea', '1970-04-18 16:15:36', '1977-04-10 05:46:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (86, 1, 86, '/63b5dbcb300eaffbe3a165a88e62b02a.jpg', 914034, 'dc1bc10d-7b21-3e4a-9e1c-951299788d54', '1980-10-28 19:17:09', '1992-01-03 17:37:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (87, 2, 87, '/36f2c6005de2a5270c0bbdd0d762b732.jpg', 570, '1b3362cc-15c7-3011-b8e7-00a8db41f280', '2012-12-15 23:22:24', '1997-02-14 02:28:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (88, 3, 88, '/5ea3160b799a66236de3e883f9c76f96.jpg', 353, '865922f9-4de9-3593-a01f-db8753290826', '1992-07-02 08:37:10', '1976-07-05 15:40:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (89, 4, 89, '/fad052a5e6a49779a53ef35f6aa2f7ea.jpg', 0, 'd8d19359-e754-3e5a-a025-02330dae266a', '1970-03-20 15:20:39', '1973-08-14 19:30:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (90, 5, 90, '/0656240823bb7cb6fc5934f454a0d9aa.jpg', 13775658, '4c82b8ec-ce0e-316a-9cec-01fb56b18c8c', '1981-12-07 11:33:13', '2004-02-20 07:27:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (91, 1, 91, '/0d938ad020a4c962fce320591751c658.jpg', 86, '26705506-4de1-32da-bdf8-561ca2193a98', '1996-11-17 21:26:31', '1975-04-17 12:41:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (92, 2, 92, '/cb8b0a28a482cb5b9e11c27e207e8cbf.jpg', 0, '09338227-fcd2-3cae-9fb9-c591f4bb9ff0', '2016-01-13 09:41:04', '1976-05-24 06:14:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (93, 3, 93, '/51e2a945a24e795961ad25767a7c35de.jpg', 845648, 'c9fe9580-9307-332a-838e-c5ca4bbca20b', '1995-11-13 07:48:22', '1988-10-04 13:44:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (94, 4, 94, '/50bbf3104c9c96c7248a2a0fe60170fd.jpg', 76, 'be16cf7a-71f7-39d1-aaac-40f4e805ee06', '1989-06-26 04:30:27', '2003-06-17 05:50:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (95, 5, 95, '/607a68ef74da0a2fe379f230b291799b.jpg', 1004444, '1c26e90a-4ea3-3030-9cdd-26e6a60b46b9', '1992-02-25 05:15:05', '2000-07-26 20:32:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (96, 1, 96, '/4c4d7c53a9ff8c1af82aaa957b610337.jpg', 2034, '8c88667d-71a2-382f-b5de-be972f4491a0', '1996-01-14 15:04:32', '1970-04-15 03:17:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (97, 2, 97, '/a67ace23990d6f423689c3237cf0a449.jpg', 0, 'b3f7127d-b639-365b-a473-f497431d2d89', '1995-06-14 02:44:54', '2012-05-21 08:36:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (98, 3, 98, '/8d215ddca1c6a9ec9d5638e791e5c0e1.jpg', 46472, '421dadcf-8512-30b3-99b1-d09075c51c0f', '1997-03-30 19:59:28', '1977-01-13 12:53:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (99, 4, 99, '/280fe29b6f2b5a66c404383c036ec924.jpg', 83897, '28d6346e-cb5c-3e43-99a0-54117cdeac92', '2008-07-10 05:45:03', '1992-12-01 19:59:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (100, 5, 100, '/5542b06f3796caa91cc862831e4800bc.jpg', 54034925, '1e9b11d8-32f3-38c6-9d5d-3fc300040ada', '1994-03-04 06:11:38', '1978-07-18 22:16:19');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media_types` (`id`, `name`) VALUES (2, 'application/vnd.fdf');
INSERT INTO `media_types` (`id`, `name`) VALUES (3, 'application/vnd.ms-powerpoint.template.macroenabled.12');
INSERT INTO `media_types` (`id`, `name`) VALUES (5, 'application/vnd.rn-realmedia');
INSERT INTO `media_types` (`id`, `name`) VALUES (4, 'application/vnd.umajin');
INSERT INTO `media_types` (`id`, `name`) VALUES (1, 'application/x-blorb');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `important` tinyint(1) DEFAULT NULL,
  `delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`from_user_id`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (0, 98, 'Dolor illum aut sequi praesentium quae. Quisquam mollitia et at architecto vel rerum similique. Aut qui ut autem. Consequatur nihil placeat corporis deleniti eligendi omnis excepturi.', 1, 0, '1997-12-19 09:13:52');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (1, 38, 'Dolorum unde porro ducimus reprehenderit labore autem magni. Officiis voluptatem dolorum natus veniam. Et voluptate qui repellat iure.', 1, 1, '1986-12-27 05:47:18');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (1, 23, 'Porro quia et nobis nisi sed qui blanditiis. Animi ut quis ut voluptate rerum. Autem quae et itaque.', 0, 0, '2006-11-10 12:48:37');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (2, 77, 'Nemo veniam cupiditate pariatur consequuntur illum. Ut in natus perferendis quia esse. Consequatur itaque aut perspiciatis blanditiis delectus labore.', 0, 0, '1984-03-08 13:25:59');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (3, 47, 'Maxime nisi dolores itaque quidem. Aliquid ea et quo quibusdam aut sed ut. Culpa rerum voluptates rerum iusto unde.', 1, 1, '1984-09-01 01:08:57');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (4, 99, 'Qui ea cumque quaerat. Omnis excepturi nesciunt velit et sunt ut et. Cumque officia et doloremque laboriosam sed ut. Illum debitis nihil voluptas est laboriosam praesentium perspiciatis.', 0, 0, '1972-01-17 08:32:57');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (4, 39, 'Repudiandae dolorem eligendi voluptate et et veritatis. Molestias et ut accusamus dolores. Voluptatem rem voluptatum iure voluptate earum. Ea aliquam iure quo aspernatur et autem iste.', 1, 1, '2002-01-26 04:18:04');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (4, 39, 'Illum delectus praesentium mollitia eligendi. Voluptatem sapiente quo distinctio a. Velit molestiae debitis ratione voluptatem neque. Aut eum consequuntur eligendi laudantium aut et est.', 0, 1, '2003-08-20 04:24:23');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (5, 85, 'Eos sed labore quae iure quia praesentium illum. Atque sit impedit mollitia autem ipsum praesentium. Qui officia exercitationem est sit natus blanditiis. Non consectetur minus cum nulla est omnis.', 1, 1, '1970-03-29 13:33:46');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (6, 24, 'Qui asperiores corrupti impedit hic velit aut blanditiis. Facere et eveniet et amet error id veniam. Deserunt atque est doloribus porro mollitia quisquam. Perspiciatis ratione repellat mollitia animi.', 0, 0, '1972-04-13 22:45:52');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (7, 50, 'Dolor tenetur ab aut nostrum. Porro dolore ab autem necessitatibus dolorem voluptas id soluta. Illum omnis eum quam iusto.', 0, 1, '2015-07-16 07:23:11');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (9, 12, 'Velit voluptas aut vitae quas ut temporibus quasi autem. Porro blanditiis asperiores quia libero et possimus. Adipisci molestiae aut ad corporis esse.', 1, 1, '1974-01-22 22:22:40');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (9, 82, 'Sed ut tempore aut laboriosam. Aut consequatur mollitia libero. Fugiat voluptas aut eveniet voluptas aut repellendus placeat.', 1, 0, '1980-12-30 00:42:51');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (9, 56, 'Ullam nam aut accusantium necessitatibus beatae. Debitis aut dolores excepturi omnis excepturi non sint. Autem aut ex aut voluptas consequatur sint delectus eaque.', 1, 1, '2005-03-20 11:21:50');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (11, 91, 'Et expedita vel ut sunt maiores sint vero iure. Eveniet sequi sed consequatur est. Vel deleniti temporibus et. Quos beatae voluptates aspernatur aliquam repellat non fugit sequi.', 1, 1, '1995-03-25 04:06:53');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (15, 31, 'Deleniti sit non error minima ea eveniet. Iure sunt dolore nisi modi. Et placeat temporibus ipsam hic et totam fuga. Ad reiciendis nulla quasi eligendi aut harum deserunt. Odio unde et quia qui.', 0, 1, '1995-11-18 03:33:41');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (17, 55, 'Eos amet illum cumque repellat quis eum voluptatibus. Fugit consectetur eligendi maiores ut dolore. Explicabo aliquid veniam facere esse velit omnis.', 0, 1, '2009-12-03 15:15:55');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (17, 29, 'Earum iste autem voluptatem expedita. Ut reiciendis voluptas reiciendis id. Assumenda recusandae sequi itaque inventore aut unde. In voluptatem consequuntur voluptas blanditiis.', 1, 0, '2019-05-13 11:22:37');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (21, 100, 'Consequatur sit et corrupti. Odit aliquid quo doloribus quo. Nihil enim corporis sint magni magnam labore aliquam. Recusandae veniam quo vel.', 1, 0, '1981-05-28 09:27:24');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (23, 13, 'Voluptate quo consequatur sunt est cupiditate. Ea aut autem illo repellendus eos sapiente. Eum ab hic sint doloremque cupiditate.', 0, 0, '1996-07-16 07:57:53');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (24, 79, 'Non blanditiis maiores cum. Sint quaerat illo et suscipit aperiam in. Distinctio exercitationem veniam ut aut eum quaerat. Labore sed distinctio illum dicta voluptatibus dolores.', 0, 0, '1994-09-16 16:17:37');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (28, 21, 'Officiis et aut odio praesentium ut maiores. Non rerum rerum recusandae. Ab officiis est dolore ex. Enim ea rerum accusamus nam perferendis illo.', 1, 0, '1983-09-11 15:45:08');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (28, 69, 'Reiciendis doloribus placeat autem eaque eum qui delectus. Ut ea aliquid autem dolores. Et non commodi est commodi in. Id quia quasi inventore.', 1, 1, '1988-11-24 13:27:17');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (29, 95, 'Natus eum ratione aperiam enim. Eos exercitationem corporis doloremque id aut tenetur. Architecto illo quisquam repellat ad consectetur temporibus similique. Omnis molestiae id eum rerum dolorem.', 0, 0, '1989-01-06 10:26:23');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (29, 72, 'Expedita adipisci fuga itaque. Enim repellat dicta consequatur veniam deleniti velit autem. Accusamus ab sit odio eligendi.', 1, 0, '1997-06-27 21:20:58');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (30, 15, 'Quibusdam blanditiis repudiandae sint ex unde reiciendis. Sit consectetur et occaecati aut doloremque qui et. Dicta ad adipisci sit dolor non accusantium. Libero molestias quidem delectus.', 1, 1, '2009-04-13 23:58:35');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (32, 63, 'Quod error rerum corporis repudiandae quae molestiae. Fuga enim consectetur inventore. Et hic consequatur sed id non.', 0, 0, '2004-07-10 15:09:01');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (33, 20, 'Voluptas fugiat non omnis cum voluptas delectus fugiat quo. Consectetur mollitia reprehenderit doloribus neque accusamus quas sit.', 0, 1, '2000-04-12 21:11:36');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (33, 74, 'Numquam inventore rerum ut occaecati quas aut similique. Nihil soluta voluptas velit magnam quibusdam. Ex numquam est aspernatur odit aut distinctio aut.', 1, 1, '2001-12-01 16:40:07');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (34, 20, 'A ea et voluptas cum tempore nobis quam. Omnis accusamus eligendi id exercitationem. Esse placeat exercitationem omnis dolor ducimus. Enim veritatis non mollitia.', 1, 0, '2010-10-15 16:47:31');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (35, 66, 'Dolor repellendus quas et ea vel quos corrupti labore. Est non eligendi in cupiditate neque repudiandae nemo. Aut occaecati nobis placeat porro ullam aspernatur rerum.', 0, 0, '1985-01-11 12:55:43');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (35, 19, 'Cum consectetur incidunt deleniti quaerat quidem molestiae ut. Voluptatum commodi ea qui perspiciatis optio aut non.', 1, 0, '2015-01-16 10:04:29');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (39, 49, 'Sunt qui officiis quis quasi perspiciatis suscipit. Nihil et eos non animi adipisci ut. Quas consectetur est sapiente qui asperiores est.', 0, 1, '1999-04-25 18:35:26');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (39, 33, 'Voluptas hic quae rerum itaque rerum odio numquam. Enim porro est dolor dolorem ipsa exercitationem quod. Iste aliquam aut laborum sit distinctio omnis.', 1, 0, '2017-12-06 02:04:59');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (41, 48, 'Qui libero sequi magnam quos ipsa culpa. Id est vel et architecto commodi. Omnis architecto saepe quo est asperiores ut minima excepturi.', 0, 0, '2010-03-22 22:56:53');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (41, 31, 'Repellat laborum temporibus quasi ipsa sed. Assumenda veniam et architecto minima ad et veniam. Officiis hic labore sunt consequatur et debitis corporis.', 0, 1, '2019-04-06 00:10:27');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (42, 11, 'Doloribus est rerum autem quia dolorem. Fugiat porro eaque ut sit dolorem quibusdam rerum. At rerum mollitia dolores totam dolor non. Hic tempora et consequatur cumque expedita.', 1, 0, '1987-12-26 08:40:28');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (42, 21, 'In at incidunt ullam maiores eaque deserunt unde. Dolorem ut animi praesentium nostrum. A distinctio delectus in corrupti ducimus et occaecati.', 0, 1, '1988-05-29 08:21:34');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (43, 24, 'Sunt quia repellendus porro officia sunt molestiae doloribus. Non architecto nam nobis sunt. Optio nisi repellat incidunt.', 1, 1, '2009-03-02 14:51:10');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (44, 33, 'Accusantium doloribus saepe accusamus omnis sint ullam laborum aliquid. Autem reiciendis architecto sint reprehenderit aliquid expedita dolorem. Velit dolor illo incidunt laboriosam deleniti. Consequatur omnis maiores repellat sequi aliquam.', 0, 0, '2009-12-14 19:28:39');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (46, 80, 'Totam autem veniam laboriosam quas voluptas. Dolorem atque et cum quam veniam recusandae dolorem. Ut eum praesentium enim est. Consequatur est dolor ut sit ad et temporibus.', 1, 1, '1972-07-03 00:40:47');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (46, 18, 'Odio in impedit iste. Non ipsam repellat natus eaque. Omnis est ipsam esse deleniti ut magni vitae. Perspiciatis modi non ipsum debitis tempore aut. Laborum quaerat in quia et molestiae quidem explicabo.', 0, 1, '1981-06-30 06:35:12');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (47, 71, 'Dolorem autem sunt illo nobis quae. Minima accusamus vero sit ipsa dolorem. Cum vero explicabo quas quisquam accusamus. Nihil repellendus perspiciatis perspiciatis.', 1, 0, '2016-11-30 15:06:43');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (48, 24, 'Et autem deserunt enim at. Iure corporis officia id consequuntur et doloremque qui delectus. Consectetur sunt et eaque corrupti commodi omnis.', 1, 1, '1974-04-28 01:19:29');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (50, 35, 'In sapiente magni ea nobis similique. Quod est accusamus voluptas molestias. Vel aliquid dolores distinctio ut quae ducimus. Accusantium quod sed eligendi consequatur hic.', 1, 0, '1981-02-01 13:13:00');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (51, 19, 'Delectus consequuntur rerum voluptatibus. Sapiente tempora delectus adipisci corporis aut occaecati. Fugiat in adipisci placeat. Eos in eum a.', 0, 0, '1991-06-13 05:35:16');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (52, 40, 'Fugit est facere natus et nesciunt. Similique qui explicabo ut autem odio totam ad ipsa. Et adipisci quo amet dolores a.', 1, 0, '1983-10-29 23:50:18');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (53, 88, 'Libero nam doloremque qui quibusdam corrupti. Sed non ullam fugiat mollitia ducimus. Minima vitae totam veritatis. Animi praesentium nostrum veniam accusamus sequi enim quidem.', 0, 1, '2005-01-26 21:15:33');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (53, 74, 'Animi accusamus mollitia vitae ea et repellat. Enim aut libero sit placeat velit earum sed. Vel ut eum rerum enim inventore quaerat aliquam.', 0, 1, '2013-03-30 03:18:37');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (54, 45, 'Qui eos perferendis modi ut id quo. Necessitatibus sint aliquam laborum aliquam voluptate quia. Quasi excepturi neque necessitatibus quibusdam consequatur facilis.', 0, 0, '1990-04-03 07:53:44');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (54, 80, 'Aperiam nam explicabo officia qui aut ducimus sunt. Exercitationem eligendi sunt voluptatem quia deserunt tempore assumenda. Voluptatem molestiae non eligendi suscipit.', 1, 1, '1995-06-20 17:50:20');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (55, 27, 'Ea aspernatur perferendis qui consequuntur ut architecto. Numquam qui ad sit aspernatur temporibus quia.', 1, 0, '1977-04-26 08:08:16');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (56, 32, 'Voluptatem accusantium non debitis iusto dicta. Aut libero molestiae inventore eaque. Ex natus corporis est ut.', 0, 1, '2007-06-18 16:30:48');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (56, 9, 'Dolor fuga inventore dolorem placeat suscipit nobis. Deserunt vitae illum eligendi. Non molestiae numquam quia veritatis.', 0, 0, '2019-01-26 15:20:27');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (57, 6, 'Dolore repellendus facilis consectetur numquam et rerum nam. A sapiente placeat id labore voluptatum. Quia dolorem architecto quis illum animi dolor officia repudiandae. Omnis fugit hic molestiae doloremque est architecto.', 1, 0, '2018-11-22 06:40:29');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (58, 8, 'Necessitatibus minus et veniam molestiae quo. Cumque commodi magnam non reprehenderit harum excepturi. Sapiente qui dolor qui repudiandae. Non et quibusdam eaque sunt.', 1, 0, '1980-01-11 13:34:08');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (58, 16, 'Enim ut aliquid eum qui. Doloremque eligendi impedit autem ut voluptatem aut occaecati libero. Pariatur voluptas ea laborum dicta distinctio et eius.', 1, 1, '2001-01-04 18:21:28');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (59, 18, 'Est molestiae quibusdam laboriosam inventore facere ut voluptatum. Veniam consequatur quis ex at ut autem et. Consequatur officia fugiat provident quis ullam reprehenderit facilis quaerat.', 0, 1, '2017-09-20 16:48:26');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (62, 88, 'Ea quos ut fuga dolores repudiandae dignissimos consequatur. Laudantium nostrum minima mollitia placeat laudantium temporibus vel. At perferendis odit consequatur architecto corrupti ipsa porro. Delectus vitae magni enim rerum qui eum.', 0, 1, '1972-03-18 17:18:27');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (64, 94, 'Accusamus magnam dolorem itaque. Perspiciatis architecto eos quia pariatur odio. Eligendi sint qui et omnis id et reprehenderit. Veritatis ut accusamus consectetur sunt aliquid delectus aut impedit.', 0, 1, '1988-07-15 01:55:23');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (66, 60, 'In odio non sed temporibus voluptas. Distinctio rerum repudiandae exercitationem voluptatibus sed voluptate laboriosam voluptatum.', 1, 0, '2002-10-10 04:13:01');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (67, 81, 'Similique aut quis veritatis quia. Ipsum nam magni fugit totam quae maiores. Sequi minus ipsa laboriosam et eveniet.', 1, 1, '1997-07-13 20:12:47');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (67, 4, 'Harum exercitationem animi accusantium quasi. Est voluptatum culpa rerum.', 0, 0, '2004-06-12 14:59:55');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (70, 6, 'Inventore molestiae perspiciatis sed numquam iure molestiae voluptas. Quo at quo doloremque iste temporibus dolor.', 1, 1, '2014-06-29 15:30:47');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (72, 64, 'Doloribus distinctio voluptates aut neque sit qui. Omnis accusantium aut animi veritatis rerum. Eum iure et et.', 0, 0, '1972-09-02 11:48:40');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (72, 90, 'Fugiat quod sequi sequi est aliquid et et voluptatem. Aut tenetur illum voluptatibus commodi consectetur quos.', 1, 1, '2002-03-24 06:02:37');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (73, 2, 'Atque fuga totam aut consequatur quae veniam voluptas. Voluptatibus dolorum eligendi et expedita. Sint harum sit dolorem fugiat.', 0, 0, '1994-01-27 04:54:59');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (74, 92, 'Et at quae ratione quidem sint at. Et necessitatibus quia nulla magni odit voluptatem magni. Soluta velit voluptatem rerum.', 0, 0, '2019-05-09 20:20:33');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (76, 70, 'Illo fugiat modi enim tenetur numquam numquam quam repellat. Similique est unde eum et voluptates tenetur nesciunt. Qui vero ducimus ad ab. Aperiam culpa aut harum.', 1, 0, '1970-12-28 18:01:17');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (76, 58, 'Corporis consequatur eaque doloremque voluptas autem cum mollitia. Non quam explicabo est iusto in est. Enim temporibus vero dolorem consequuntur.', 0, 0, '1992-01-28 15:41:00');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (77, 82, 'Ad facere voluptatem consequatur provident vel sed temporibus. Officia et voluptas earum quos repudiandae vel dicta. Autem amet qui commodi temporibus explicabo vitae magnam.', 1, 0, '2000-11-27 20:07:26');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (79, 56, 'Porro unde illo nisi aut expedita alias magni. Maxime aperiam possimus dolorem velit commodi corporis. Ut inventore vel dolor velit.', 1, 0, '1979-06-06 04:14:55');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (79, 5, 'Debitis inventore eum aut sed perspiciatis. Libero possimus sed provident minima. Est adipisci deleniti sit rerum quam quos. Qui nihil est autem quibusdam ut quo in recusandae.', 1, 0, '1990-09-06 04:09:42');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (79, 24, 'Amet dolorem deleniti qui eaque sit ipsa recusandae vel. Dignissimos corrupti facere ut rem voluptas voluptates. Quia et enim quod sapiente quis officiis eos.', 0, 0, '1997-08-20 18:18:54');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (79, 67, 'Qui nihil et provident accusamus maiores aut. Nulla quo distinctio explicabo et cum aspernatur. Non temporibus temporibus iusto atque ullam reiciendis. Sed in laudantium rerum officiis praesentium sed amet eveniet. Incidunt laboriosam quae nulla eos repellendus exercitationem omnis numquam.', 1, 1, '2002-07-31 08:36:53');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (79, 59, 'Provident dignissimos assumenda vel necessitatibus est. Saepe autem aliquid quod aut. Velit qui quos rerum est vero quas.', 0, 0, '2013-11-04 01:19:38');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (81, 3, 'Ad inventore vero numquam velit. Non facere atque in dolorem asperiores. Vel et ut voluptates culpa natus.', 0, 0, '2001-11-08 05:12:59');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (82, 16, 'Mollitia placeat et molestiae est aut odio ducimus tenetur. Alias possimus quis repudiandae quia odit. Molestiae dolorem cum hic ab possimus. Sit assumenda laudantium cumque accusantium ipsum.', 1, 1, '1986-05-31 19:31:29');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (84, 32, 'Excepturi sint omnis voluptatem ipsa atque aut corrupti. Placeat voluptatem dolorem fuga et minima. Veritatis porro sit architecto vero.', 1, 1, '1986-07-19 04:37:29');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (84, 85, 'Consequatur sequi quaerat esse doloremque quibusdam dolores molestiae ducimus. Praesentium non quia impedit. Ratione laudantium et neque explicabo veniam sit sunt. Voluptatum et tenetur magni quia quaerat rerum excepturi. Impedit harum cumque laboriosam enim eos quis.', 0, 1, '2013-04-21 09:53:03');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (85, 32, 'Quasi et ad aliquid praesentium reprehenderit fugiat. Voluptas repellendus sint enim vel enim perspiciatis. Nobis fugit fugiat consequuntur neque ut quas.', 1, 1, '1975-08-23 16:48:24');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (87, 30, 'Cupiditate commodi consequuntur aperiam totam ad est sit. Minima saepe est dicta rem repellat. Atque et exercitationem et perspiciatis consequuntur officiis rem. Reiciendis maxime quidem atque a.', 0, 1, '1988-08-24 14:04:06');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (87, 94, 'Laborum quam sit aliquid alias sed. Ducimus corrupti quia dolores voluptatum recusandae. Repellat eligendi nisi atque dignissimos consectetur ut enim repudiandae.', 0, 1, '2008-01-05 07:05:15');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (89, 85, 'Maxime consequatur eius tempore sit sint rerum. Labore alias possimus recusandae voluptatum praesentium asperiores quos ea. Quia officia illum et quia praesentium voluptates est. Culpa expedita error vel et.', 0, 1, '1979-02-22 00:04:39');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (90, 4, 'Commodi et eos sed aliquid quod. Eligendi ipsam officia atque aliquam illo.', 0, 0, '2002-11-06 06:43:07');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (90, 93, 'Tempore in est veniam tempore et vel quisquam. Hic aut iure minima voluptas aut illum. Temporibus inventore sunt aut sint quam nihil voluptatem animi.', 1, 0, '2012-06-12 19:35:52');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (91, 59, 'Ut delectus recusandae ratione velit non soluta. Libero sed occaecati voluptas dolores eos repellendus. Minus id et qui est.', 0, 0, '1985-10-19 22:18:28');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (91, 36, 'Placeat vel voluptates laudantium omnis. Eveniet sed praesentium ut dolorem minima provident excepturi.', 1, 1, '2006-06-13 08:37:11');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (93, 60, 'Quasi quo culpa ab consequatur et deleniti magnam nam. Sunt illo dolorem aperiam omnis ducimus aliquid animi reiciendis. Non optio facilis ad voluptate exercitationem eveniet eveniet. Et quae consequatur laborum sit illum dolor eos. Qui quisquam magni quibusdam vel explicabo ut.', 1, 0, '1984-05-30 02:28:00');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (93, 47, 'Officia itaque consequatur non et tenetur. Est minima est molestias cum adipisci quia. Qui quod fugiat molestiae et dolorem optio cumque. Omnis voluptas harum repellendus voluptas sed.', 0, 1, '1998-11-21 12:30:05');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (94, 90, 'Nulla sed ut sint est occaecati. Ipsam vitae atque similique. Cupiditate sed ipsum officiis aut.', 1, 0, '1993-01-12 16:37:46');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (94, 89, 'Blanditiis nobis eos qui modi cupiditate sit perferendis voluptatum. Sint quod doloribus quos aut ducimus aliquam at.', 1, 1, '2010-11-04 13:45:11');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (95, 74, 'Eos suscipit omnis rerum quaerat dolores eius delectus consequuntur. Nulla necessitatibus nobis temporibus consequatur iste sit repudiandae. Sapiente quasi illo numquam fugit magnam aut et.', 0, 1, '1973-03-04 12:13:19');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (97, 75, 'Sint non corporis similique ea laborum. Nisi quidem ut est repellat. Ut cum distinctio vero iusto dolore rem nesciunt.', 0, 0, '2014-08-31 19:37:49');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (98, 86, 'Odit assumenda aspernatur aut. Est impedit quaerat minus illo. Reprehenderit eos et quae sit eaque. Qui et laudantium quia dolor atque ipsa id.', 0, 0, '1978-12-19 09:48:07');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (99, 20, 'Suscipit voluptate vitae nostrum omnis et voluptatum optio qui. Dolores amet quis delectus blanditiis non. Rerum quas pariatur omnis quibusdam velit. Quasi atque aperiam ut eos est.', 1, 1, '1998-11-17 20:16:34');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (99, 25, 'Excepturi iste commodi occaecati odit voluptatem. Repellat nihil mollitia deleniti fuga.', 0, 0, '2000-03-14 10:57:46');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (100, 78, 'Aut incidunt amet perspiciatis quibusdam. Unde incidunt ut consequatur itaque quia ipsam placeat. Minus nam ullam consequatur porro maiores enim.', 1, 0, '1977-04-23 01:42:55');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (100, 97, 'Aspernatur explicabo animi architecto dolor neque quia. Distinctio consequatur minima voluptatum velit distinctio in est. Consequatur numquam voluptatem quia pariatur. Natus temporibus voluptate blanditiis repellat rerum eos laboriosam.', 0, 0, '1982-05-02 07:58:10');
INSERT INTO `messages` (`from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (100, 47, 'Totam ab alias fuga velit doloribus sint ab. Est quo dolores ea.', 0, 0, '2017-12-24 05:05:36');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `sex` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `hometown` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (1, '', '1992-09-30', 'Billbury', 6);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (2, '', '1979-04-13', 'Schroederside', 7);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (3, '', '1995-12-29', 'North Myriam', 20);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (4, '', '2013-07-04', 'Camronhaven', 98);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (5, 'm', '2018-12-16', 'North Audrashire', 2);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (6, 'm', '2018-05-07', 'North Cordelia', 14);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (7, 'm', '2012-03-19', 'Labadieton', 32);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (8, '', '1988-03-07', 'Lavernamouth', 21);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (9, 'm', '2007-08-31', 'Westfort', 95);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (10, 'm', '1987-10-10', 'Lake Karianneburgh', 25);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (11, '', '2001-03-22', 'Braedenton', 82);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (12, 'm', '2015-01-07', 'Demetriushaven', 59);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (13, 'm', '1972-05-29', 'New Luluton', 34);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (14, '', '1988-03-28', 'Lake Madisyn', 30);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (15, '', '1977-02-06', 'West Ima', 85);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (16, '', '2008-04-06', 'West Abrahambury', 39);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (17, 'm', '2007-06-27', 'Gerlachland', 58);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (18, 'm', '2001-10-09', 'Elnorastad', 38);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (19, 'm', '1987-12-03', 'Vidaland', 11);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (20, '', '1995-03-05', 'Craigton', 44);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (21, 'm', '1996-10-25', 'East Michelle', 12);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (22, 'm', '2005-04-01', 'Lake Fionashire', 84);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (23, 'm', '2000-09-30', 'East Clintonton', 77);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (24, 'm', '2004-07-17', 'Wilberttown', 33);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (25, '', '2015-07-08', 'Stromanton', 50);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (26, 'm', '2006-06-22', 'O\'Connerfort', 70);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (27, '', '2004-11-16', 'North Titus', 94);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (28, 'm', '1993-11-08', 'New Amirafort', 96);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (29, 'm', '2010-05-28', 'Nickolasborough', 55);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (30, 'm', '1988-04-23', 'North Dextertown', 99);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (31, '', '2019-01-21', 'Keelingville', 61);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (32, '', '1996-11-17', 'New Maryville', 29);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (33, '', '1982-08-13', 'Timothyport', 5);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (34, 'm', '1991-09-01', 'East Petrafurt', 48);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (35, '', '2017-03-28', 'Hellerville', 75);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (36, '', '1972-11-08', 'Lake Nelsville', 73);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (37, 'm', '1988-02-09', 'Jarrellland', 81);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (38, 'm', '2013-08-15', 'New Augustus', 63);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (39, 'm', '1975-12-29', 'Feeneytown', 91);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (40, '', '2010-03-03', 'East Linnea', 90);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (41, '', '2001-06-11', 'Kreigerhaven', 3);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (42, '', '2011-01-26', 'Lake Stanfordmouth', 47);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (43, '', '1970-07-24', 'Reillyberg', 53);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (44, 'm', '1977-05-27', 'Pacochaberg', 69);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (45, '', '1996-02-15', 'North Austyn', 65);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (46, '', '2009-01-06', 'Brakusland', 41);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (47, '', '1975-04-24', 'Port Marianeberg', 40);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (48, 'm', '1987-11-17', 'Kristown', 15);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (49, 'm', '1992-02-20', 'Boyleview', 57);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (50, '', '2013-05-28', 'Eriktown', 9);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (51, 'm', '1986-11-16', 'New Karenshire', 10);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (52, '', '1993-12-10', 'East Ines', 88);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (53, 'm', '1977-08-17', 'Sunnyville', 51);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (54, 'm', '1982-09-16', 'Lake Evans', 78);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (55, 'm', '1990-12-17', 'Dickiton', 1);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (56, '', '1982-04-13', 'South Sabrina', 31);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (57, '', '2003-01-27', 'Lake Colten', 80);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (58, 'm', '1990-06-09', 'East Bradford', 86);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (59, '', '2012-12-31', 'East Elliottport', 52);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (60, '', '1994-05-07', 'Rogahnstad', 36);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (61, '', '1996-07-07', 'Schmelerchester', 0);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (62, 'm', '1983-09-29', 'Autumnstad', 45);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (63, '', '2014-02-02', 'Kutchfurt', 43);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (64, 'm', '2004-08-30', 'Hettingerchester', 66);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (65, '', '1988-09-10', 'Lake Alphonso', 24);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (66, '', '1993-10-03', 'Lake Allyside', 93);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (67, 'm', '2004-05-08', 'VonRuedenburgh', 16);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (68, 'm', '2005-12-31', 'Gottliebstad', 35);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (69, 'm', '2003-03-20', 'Kunzeside', 46);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (70, 'm', '2014-09-27', 'Brendaberg', 18);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (71, 'm', '1995-07-13', 'Brakusbury', 76);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (72, '', '1977-04-02', 'New Marcelina', 56);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (73, '', '2002-11-18', 'West Katrina', 67);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (74, '', '1982-03-13', 'Tobyside', 22);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (75, '', '1986-12-16', 'Cleoraside', 97);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (76, '', '1986-06-13', 'Zellaport', 37);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (77, '', '1998-07-30', 'East Scottiebury', 49);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (78, '', '1986-02-10', 'North Logan', 87);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (79, 'm', '1994-03-18', 'Port Raina', 92);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (80, '', '1998-07-21', 'Jefferyhaven', 13);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (81, '', '1976-08-15', 'Port Carolinaberg', 60);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (82, 'm', '2015-09-07', 'West Arlieville', 68);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (83, 'm', '2019-05-13', 'Goldnerburgh', 89);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (84, 'm', '1972-04-15', 'East Alford', 23);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (85, '', '1976-02-13', 'Spencermouth', 74);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (86, 'm', '2017-02-26', 'West Tyrique', 28);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (87, 'm', '1970-02-09', 'East Noah', 72);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (88, '', '2000-08-24', 'Port Itzel', 64);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (89, 'm', '1987-10-20', 'North Maxine', 27);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (90, 'm', '2012-03-14', 'Lake Darien', 26);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (91, 'm', '1991-02-12', 'Kalebhaven', 71);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (92, 'm', '2008-01-25', 'New Albin', 83);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (93, 'm', '2014-12-14', 'Ryanview', 19);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (94, 'm', '1984-06-23', 'West Sonya', 62);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (95, '', '1983-06-07', 'West Bertram', 17);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (96, 'm', '1984-04-23', 'North Carolyn', 79);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (97, 'm', '1978-10-29', 'Lamarberg', 42);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (98, 'm', '1976-11-23', 'East Breannefort', 4);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (99, '', '1982-03-03', 'Reynoldsport', 8);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (100, 'm', '2019-03-12', 'Sydneymouth', 54);


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Dorothy', 'Grady', 'bins.cara@example.net', '345-618-6228', '1991-05-04 12:04:51', '2015-12-14 03:11:20');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Keon', 'Rogahn', 'leola.greenholt@example.org', '388-901-6121x87254', '2017-02-14 10:27:54', '2009-07-13 10:39:19');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Yasmeen', 'Smitham', 'percival02@example.com', '(392)907-2525x299', '1986-03-12 12:13:05', '2000-05-13 02:07:53');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Elsie', 'Crist', 'shane08@example.net', '169.725.7015x6067', '1996-08-14 05:23:26', '1991-11-07 17:21:16');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Lupe', 'Nolan', 'sporer.chadrick@example.org', '(338)437-4310x68960', '1991-01-27 19:38:04', '2008-07-12 11:15:39');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Mohamed', 'Williamson', 'bianka.feil@example.net', '1-088-355-7166', '1981-12-24 05:57:10', '2019-03-02 03:10:56');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Oswaldo', 'Oberbrunner', 'mkessler@example.org', '000.748.8431', '2003-11-20 04:19:12', '1994-04-21 01:11:32');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Wilhelm', 'Gerhold', 'swaniawski.marjolaine@example.com', '(968)031-2197', '2005-07-01 20:09:33', '2000-02-29 19:04:10');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Sonia', 'Williamson', 'velva.cummings@example.net', '(388)009-4942x200', '1994-01-17 01:45:42', '2015-06-08 01:57:12');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Felipe', 'Dickens', 'beer.manuel@example.net', '584-229-8205', '1984-07-18 18:23:51', '1973-03-09 19:56:07');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Luna', 'Waters', 'ignatius.adams@example.com', '09485808236', '2008-02-27 03:39:00', '1993-12-29 20:29:34');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Jerrod', 'Daugherty', 'gilda.volkman@example.net', '610.203.7614', '1996-03-26 07:44:45', '1991-03-29 04:14:17');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Dina', 'Labadie', 'zgutkowski@example.net', '(534)681-4485x767', '1985-05-20 17:39:21', '2008-06-23 18:52:22');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Theresa', 'Ryan', 'jimmy71@example.com', '432-943-4885x48398', '1970-06-16 13:35:54', '2015-04-16 15:52:17');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Halle', 'Corkery', 'alvera13@example.com', '1-710-159-1212', '1993-11-28 16:01:13', '1979-07-20 05:33:27');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Aida', 'Macejkovic', 'joanne.wuckert@example.org', '1-004-928-9723x5599', '1985-07-31 03:10:46', '2001-03-21 20:30:21');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Milan', 'Hamill', 'bins.savanah@example.net', '991-472-0921x369', '1987-07-08 11:05:43', '1973-10-07 11:28:34');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Russel', 'Daugherty', 'gryan@example.com', '108.703.3029x278', '2003-08-24 10:56:13', '2009-08-17 17:45:44');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Carroll', 'Blick', 'kmonahan@example.org', '+87(2)7230845725', '2010-11-10 20:28:20', '1996-06-10 05:30:23');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Ashtyn', 'Kiehn', 'bahringer.gracie@example.com', '(004)268-3910', '1977-05-06 04:25:35', '1970-04-05 19:06:41');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Lon', 'Sporer', 'denesik.rey@example.org', '560.137.3374', '1983-03-13 05:14:04', '1992-07-23 10:46:00');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Morgan', 'Pfannerstill', 'avis20@example.org', '275.957.1423x898', '1973-04-12 22:16:18', '1981-10-03 12:56:41');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Dedric', 'Mayer', 'heaney.alda@example.com', '383.979.6390', '2014-07-10 12:32:55', '2008-08-25 18:38:41');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Reina', 'Windler', 'norma.mcclure@example.net', '997-457-0073x1586', '2019-04-28 22:33:50', '1980-06-29 07:47:48');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Meggie', 'Price', 'aosinski@example.org', '1-533-840-7528x722', '1989-08-28 08:36:40', '1970-05-24 18:55:48');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Johan', 'Willms', 'augusta56@example.org', '05998314338', '1979-05-23 05:31:32', '1979-07-08 08:06:44');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Gianni', 'Fritsch', 'helga96@example.net', '297.449.5032x908', '1987-06-30 15:31:57', '2010-09-06 15:09:01');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Laurine', 'Altenwerth', 'mkrajcik@example.net', '135.990.2408', '2008-02-24 03:37:55', '1999-10-08 13:14:26');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Kenneth', 'Schuster', 'white.kristy@example.com', '(066)684-6717x880', '2018-01-05 22:55:01', '1976-03-06 14:49:20');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Taryn', 'Stracke', 'btorphy@example.com', '(807)231-2164', '2004-02-25 12:26:49', '1981-01-25 15:22:26');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Sheila', 'Kulas', 'marcelino09@example.com', '(890)018-5970', '2002-09-08 18:04:00', '2011-10-20 11:44:06');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Bradley', 'Lebsack', 'jemmerich@example.net', '124-411-8837x74628', '1979-09-05 18:11:30', '1989-12-03 02:59:02');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Leland', 'Cummerata', 'oral.crooks@example.net', '1-218-506-8741x103', '2009-08-24 16:14:24', '2013-03-17 21:37:56');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Kenny', 'Armstrong', 'kellie48@example.com', '03635467405', '1981-07-01 07:28:32', '2017-04-24 13:49:47');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Corrine', 'Toy', 'zkuphal@example.net', '+49(6)1422234412', '1999-01-26 04:27:42', '1991-12-05 02:09:43');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Rodger', 'Mante', 'dawson.leannon@example.net', '(890)556-4469', '1983-05-07 15:36:13', '1978-08-26 12:17:56');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Lelah', 'Stark', 'bogisich.keara@example.org', '615-954-2571x2898', '1980-04-11 16:14:28', '1983-12-11 01:18:03');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Margarita', 'Doyle', 'itoy@example.com', '07977096927', '1984-05-22 02:12:55', '1995-08-11 18:18:01');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Chad', 'Sawayn', 'alexandrea65@example.net', '1-573-060-9723', '1993-05-28 07:45:53', '1987-06-21 05:42:18');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Leora', 'Wiza', 'lowe.corrine@example.org', '(750)294-4006', '1970-04-18 03:38:29', '2004-04-03 01:25:12');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Lillian', 'Bernhard', 'vita80@example.net', '387.253.8021x093', '1974-03-21 03:15:54', '1985-09-16 17:06:03');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Bonita', 'Littel', 'katlyn48@example.net', '(858)541-3280x886', '1980-02-07 23:58:59', '1989-10-24 14:35:52');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Cindy', 'Kerluke', 'napoleon72@example.net', '996-170-0927', '1979-07-10 11:12:27', '1985-01-24 10:08:11');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Faustino', 'Spinka', 'dudley.anderson@example.net', '425-458-4777x638', '2018-01-30 14:55:31', '2006-05-24 09:39:49');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Teresa', 'Cummings', 'eleanora79@example.org', '855.742.9403x418', '1993-03-21 01:30:59', '1988-12-11 09:27:39');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Britney', 'Boyer', 'austin.schimmel@example.org', '1-811-717-5734x755', '1979-10-19 23:12:09', '1987-09-03 12:41:01');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Ashton', 'Cronin', 'sydnie.schaefer@example.org', '1-833-542-1477', '1982-03-01 17:29:08', '1986-11-22 02:06:17');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Joshuah', 'Littel', 'gerry79@example.org', '(325)684-6378x382', '1986-04-03 14:15:00', '1974-12-28 16:34:46');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Keyshawn', 'Roob', 'nstroman@example.org', '03688622191', '2010-06-23 05:47:21', '2002-11-06 20:53:12');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Dominique', 'Morissette', 'rafael90@example.net', '1-754-527-8235x10845', '1999-01-18 16:36:19', '1988-11-30 07:23:03');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Max', 'Pfeffer', 'rocio.mraz@example.com', '(941)743-9885x1021', '2006-09-17 16:37:16', '1980-08-01 12:26:27');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Crawford', 'Gulgowski', 'ebrown@example.org', '379-719-7522', '2003-04-30 23:29:42', '2006-07-17 17:09:55');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Merle', 'Berge', 'eruecker@example.com', '422-310-1754x425', '1986-10-27 08:03:27', '1981-10-28 16:00:49');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Miles', 'Lubowitz', 'bruen.verona@example.com', '(693)704-3619x41005', '2004-04-26 13:24:40', '2000-04-26 06:20:00');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Orlo', 'Cassin', 'cartwright.ashtyn@example.net', '08975137506', '1991-02-01 00:29:41', '1975-06-10 16:50:43');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Gloria', 'Murphy', 'alexandre55@example.net', '+19(6)2904037427', '2012-06-25 05:26:14', '1976-09-15 11:49:55');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Nova', 'Treutel', 'iwisozk@example.net', '771-638-1592x02890', '1978-03-02 16:24:44', '2007-12-15 11:24:20');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Nathanial', 'Grant', 'shannon.schumm@example.net', '(424)314-0605', '1997-08-11 13:00:56', '1983-01-01 19:58:00');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Yasmin', 'Connelly', 'johnny.fay@example.com', '(534)878-9129x530', '2004-08-07 16:10:11', '2016-07-12 04:50:33');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Dallin', 'Funk', 'rhea.krajcik@example.net', '05652815961', '1978-03-11 13:16:05', '2006-11-21 06:25:53');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Lia', 'Keeling', 'kframi@example.org', '319.989.4398', '2017-05-27 19:31:56', '2007-07-12 01:02:36');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Kenyatta', 'Crist', 'alford75@example.net', '803.349.5647x067', '1996-01-23 16:37:46', '2012-09-14 15:34:56');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Drake', 'Dare', 'champlin.alvis@example.com', '1-308-351-8315x673', '2001-05-14 06:00:44', '1981-10-20 21:13:48');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Zachary', 'Dickens', 'kamron67@example.org', '539-189-3023x4024', '1990-05-03 21:36:04', '2019-02-15 19:54:42');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Waylon', 'Grady', 'shanna.champlin@example.org', '767-927-6047x78193', '1989-02-08 14:18:57', '1979-05-28 00:20:05');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Rebecca', 'Keebler', 'alana.witting@example.com', '787.229.4827', '1998-08-30 10:37:12', '1990-11-19 06:44:53');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Jaylan', 'Wiza', 'lrempel@example.com', '03631146536', '1985-10-19 05:51:02', '1979-03-03 01:06:57');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Loy', 'Schowalter', 'bayer.felicity@example.net', '1-293-049-3760x4684', '1977-08-28 12:42:55', '1985-08-18 00:53:19');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Joseph', 'Gleason', 'nella04@example.org', '311.114.5037x26461', '1971-09-24 11:21:26', '2011-07-07 11:36:58');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Heath', 'Abbott', 'csawayn@example.net', '1-970-693-9132', '1975-10-12 23:30:24', '1979-11-05 06:13:56');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Bridie', 'Rogahn', 'bheidenreich@example.com', '1-065-352-7234x61183', '1983-02-11 20:31:16', '1994-02-18 01:05:14');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Ricky', 'McKenzie', 'jarred83@example.org', '+82(3)4671381787', '1997-06-20 06:57:02', '2002-09-13 00:33:52');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Norwood', 'Schaden', 'cristal81@example.net', '858.541.0332x572', '2011-10-19 18:48:58', '1981-04-06 12:09:01');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Raphaelle', 'Kilback', 'xhoppe@example.org', '638-162-9908', '1976-10-21 23:46:31', '2016-03-20 19:16:08');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Pablo', 'Vandervort', 'kkoch@example.net', '1-062-793-2437x587', '1974-02-04 20:44:47', '2015-06-20 22:57:52');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Nicole', 'Herzog', 'grant.alva@example.net', '1-463-613-8773', '1993-06-06 22:38:25', '1971-07-11 06:13:22');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Demarco', 'Zulauf', 'allison02@example.com', '(370)968-5868x7057', '2014-08-25 16:21:53', '1971-03-06 01:13:31');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Patricia', 'Wyman', 'erica41@example.org', '828.427.3289x97183', '2010-08-21 21:37:16', '1978-01-12 14:27:52');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Oceane', 'Bode', 'berge.devan@example.com', '05551292680', '1997-03-13 05:44:15', '2008-05-03 03:34:53');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Bianka', 'Lynch', 'myrtie.kessler@example.com', '263.221.9097', '1990-06-25 16:01:37', '1972-12-29 04:25:07');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Noah', 'Turcotte', 'zcummings@example.com', '520-856-5074x57070', '1998-07-31 16:45:12', '2012-03-13 12:33:01');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Mable', 'Wolf', 'kirlin.cordia@example.net', '091.545.9025x44746', '2017-03-18 03:10:42', '1977-10-21 15:00:24');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Evalyn', 'Purdy', 'rey.gerlach@example.com', '1-937-723-2684x32207', '1992-06-29 23:09:44', '1973-01-10 19:31:10');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Mathew', 'Gleason', 'kohler.adrianna@example.com', '941.381.5635x2678', '2004-02-27 18:34:38', '2016-06-16 19:59:19');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Mozelle', 'Bins', 'gregg44@example.org', '+72(5)8894555157', '2000-06-17 02:37:06', '1974-12-17 01:53:01');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Shayne', 'Kuhlman', 'isabelle38@example.org', '187.657.8362x88429', '1985-04-13 09:01:11', '2017-12-26 20:34:27');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Chelsea', 'Corwin', 'ndaugherty@example.org', '+85(9)4315869993', '1970-08-10 06:26:42', '1978-09-01 21:42:21');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Solon', 'O\'Hara', 'ankunding.kenna@example.net', '919.888.7541', '2014-02-07 21:05:28', '1971-01-11 03:31:15');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Keshawn', 'Ryan', 'hand.maddison@example.com', '057.485.6678x7947', '1999-06-21 19:02:37', '1995-08-28 23:54:18');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Maye', 'Wisoky', 'giovanna64@example.com', '(266)244-3961', '2016-01-29 08:25:57', '2001-08-30 03:11:20');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Zita', 'Huel', 'feil.horace@example.net', '(136)635-0233x8076', '2001-10-10 13:40:09', '2019-02-21 05:32:41');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Darrell', 'Smith', 'alanna11@example.net', '148-542-0775x97577', '1977-04-06 01:40:23', '1977-05-18 13:09:04');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Rafael', 'Murray', 'xbrown@example.net', '959-359-0804x5070', '1972-10-24 02:23:31', '1994-05-27 20:41:25');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Landen', 'Sawayn', 'fritz34@example.org', '687-890-0997', '2019-07-14 06:30:39', '2016-07-27 00:28:28');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Chanelle', 'Gleichner', 'imelda.batz@example.org', '1-152-081-4389x611', '2018-07-07 15:24:38', '1994-12-01 18:19:08');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Cody', 'Schneider', 'karley66@example.com', '309-298-7582x4214', '2011-03-29 03:34:01', '1973-01-31 03:05:52');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Shanna', 'Stroman', 'rudolph80@example.org', '01132089309', '2001-10-01 10:02:45', '2003-08-04 00:03:36');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Maxie', 'Abernathy', 'vhoppe@example.com', '930.643.2127x13191', '1988-02-23 00:31:23', '1988-01-17 05:40:42');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Allison', 'Hane', 'kendra.heaney@example.org', '884.922.1573x9532', '1999-07-16 15:03:41', '1977-12-31 23:01:13');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Faye', 'Johns', 'vbrekke@example.org', '338.874.4003x075', '2004-05-21 04:25:49', '1984-09-13 16:10:56');


