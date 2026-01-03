-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db.3wa.io
-- Généré le : sam. 03 jan. 2026 à 11:24
-- Version du serveur :  5.7.33-0ubuntu0.18.04.1-log
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `kelyddondiemunsch_Akinator`
--

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_question_id` int(11) DEFAULT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `answer`
--

INSERT INTO `answer` (`id`, `question_id`, `text`, `next_question_id`, `result`, `image_url`, `description`) VALUES
(1, 1, 'Oui', 2, NULL, NULL, NULL),
(2, 1, 'Non', 3, NULL, NULL, NULL),
(3, 2, 'Oui', 4, NULL, NULL, NULL),
(4, 2, 'Non', 5, NULL, NULL, NULL),
(5, 3, 'Oui', 10, NULL, NULL, NULL),
(6, 3, 'Non', 13, NULL, NULL, NULL),
(7, 4, 'Oui', 6, NULL, NULL, NULL),
(8, 4, 'Non', 7, NULL, NULL, NULL),
(9, 5, 'Oui', 8, NULL, NULL, NULL),
(10, 5, 'Non', 9, NULL, NULL, NULL),
(11, 6, 'Oui', NULL, 'Doom 1993', 'https://assets.nintendo.com/image/upload/c_fill,w_1200/q_auto:best/f_auto/dpr_2.0/ncom/software/switch/70010000018923/d3aded1e0752535a6aa95175dedf0c450227e108a0462288d3123393fa20ac7a\r\n', 'Doom, ou DOOM, est un jeu vidéo de tir à la première personne (FPS), développé et édité par id Software et publié le 10 décembre 1993.\r\nDistribué en tant que shareware (partagiciel, que l\'on peut essayer gratuitement de manière limitée), Doom a été téléchargé approximativement 10 millions de fois en une année, popularisant ainsi un type de gameplay et engendrant une sous-culture par lui-même.'),
(12, 6, 'Non', NULL, 'Half Life', 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/70/capsule_616x353.jpg?t=1738795025', 'Half-Life est une série de jeux vidéo de tir à la première personne de science-fiction. La série doit son nom au mot anglais signifiant demi-vie qui fait référence à la radioactivité.\r\nLe protagoniste de la série est Gordon Freeman.'),
(13, 7, 'Oui', NULL, 'Metro Exodus', 'https://shared.cloudflare.steamstatic.com/store_item_assets/steam/apps/412020/header.jpg?t=1725363713', 'Metro Exodus est le troisième jeu de la série de jeux vidéo Metro, qui se déroule après les événements de Metro : Last Light et Métro 2035.\r\nExodus est un jeu de tir à la première personne de 4A Games qui mêle combat mortel, furtivité, exploration et survie horreur. Il présente un mélange de couloirs confinés et de vastes niveaux non linéaires situés dans la nature sauvage russe. Le jeu s\'étend sur une année entière, à travers les quatre saisons. Inspiré des romans de Dmitry Glukhovsky, Metro Exodus est le premier jeu à se dérouler entièrement après les livres plutôt que pendant ou entre.'),
(14, 7, 'Non', NULL, 'Ready or Not', 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/1144200/header.jpg?t=1733935197', 'Ready or Not est un jeu vidéo de tir tactique à la première personne développé et édité par le studio irlandais VOID Interactive.\r\nLe jeu est centré sur une équipe d\'agents du SWAT dans la ville américaine fictive de Los Suenos. Le réalisme est un pilier central de l\'expérience, les joueurs et les suspects étant tués en seulement quelques tirs. Une variété d\'armes moins mortelles telles que des grenades assourdissantes, des tasers, fusil à pois et du gaz poivre sont disponibles en plus des armes à feu et les joueurs reçoivent plus de points pour avoir arrêté des suspects en vies.'),
(15, 8, 'Oui', NULL, 'Grand Theft Auto 5', 'https://image.api.playstation.com/vulcan/ap/rnd/202203/0911/VIB0SeEj9vT6DTv7P4thJLZi.jpg', 'Grand Theft Auto V (GTA V ou GTA 5) est un jeu vidéo d\'action-aventure, développé par Rockstar North et édité par Rockstar Games.\r\nCet épisode se déroule dans l\'État fictif de San Andreas en Californie du Sud. L\'histoire solo suit trois protagonistes : le braqueur de banque à la retraite Michael De Santa (avant l’accord avec le FIB : Michael Townley), le gangster Franklin Clinton et le trafiquant de drogue et d\'armes Trevor Philips, et leurs braquages sous la pression d\'une agence gouvernementale corrompue et de puissants criminels.'),
(16, 8, 'Non', NULL, 'Tomb Raider', 'https://cdn1.epicgames.com/salesEvent/salesEvent/EGS_TombRaiderGAMEOFTHEYEAREDITION_CrystalDynamics_S1_2560x1440-0c41fcc8db62992e8d098d304b2277f8', 'Tomb Raider est un jeu vidéo d\'action-aventure développé par Core Design et édité par Eidos en 1996 sur DOS, PlayStation, Saturn et Macintosh.\r\nLara Croft est engagée par Jacqueline Natla, pour retrouver un objet provenant de la mystérieuse Atlantide, nommé le Scion des Atlantes. Elle parcourt donc différents endroits de la planète à la recherche de cet artéfact.'),
(17, 9, 'Oui', NULL, 'Warframe', 'https://www-static.warframe.com/uploads/2ffe2f121607e7b2c93d59aaf3f20e0e.png\r\n', 'Warframe est un jeu de tir à la troisième personne en ligne de type free to play développé par Digital Extremes.\r\nLes joueurs incarnent les Tennos, des humains ayant des pouvoirs combattant à l\'aide d\'armures nommées Warframes. Ils œuvrent pour le maintien de l\'équilibre dans le système solaire, réduisant les rangs des factions Grineers, Corpus et tentant d\'éradiquer une épidémie mutante nommée Infestation.'),
(18, 9, 'Non', NULL, 'Ghost of Tsushima', 'https://blog.fr.playstation.com/tachyon/sites/10/2021/03/GoT_KeyArt_1080.jpg?resize=1088%2C612&crop_strategy=smart', 'Ghost of Tsushima est un jeu vidéo d\'action en monde ouvert développé par Sucker Punch et édité par Sony.\r\nGhost of Tsushima prend place au Japon féodal durant l\'époque de Kamakura. Même si le jeu s\'appuie sur des évènements historiques (en particulier, l\'invasion ratée du Japon par les Mongols qui dirigeaient alors la Chine), les développeurs ont précisé qu\'ils prendraient quelques libertés.'),
(19, 10, 'Oui', 11, NULL, NULL, NULL),
(20, 10, 'Non', 12, NULL, NULL, NULL),
(21, 11, 'Oui', NULL, 'Castlevania', 'https://www.nintendo.com/eu/media/images/assets/nintendo_switch_games/castlevaniacollectionsbundle/2x1_CastlevaniaCollectionsBundle_image1600w.jpg', 'Castlevania est une série de jeux vidéo éditée par Konami, débutée en 1986 et qui a dépassé les vingt épisodes. Elle est considérée comme l\'une des plus importantes de l\'histoire du jeu vidéo.\r\nLes jeux reprennent le thème de la confrontation du Bien contre le Mal en s\'inspirant très librement du mythe du vampire Dracula mais aussi de moult autres œuvres du romantisme noir. Les jeux narrent l\'histoire des membres de la famille Belmont, armés du \"Tueur de vampires\" - un fouet purificateur transmis de génération en génération - et de tout un attirail de chasseurs de vampires (tels qu\'un crucifix-boomerang, une bible, des haches en argent, dagues de jet, et flacons d\'eau bénite), et de leurs affrontements contre le seigneur des ténèbres Dracula, ici non pas un simple vampire comme dans le roman d\'origine mais bien une incarnation du mal à la façon du Diable de la mythologie chrétienne, ressuscitant systématiquement cent ans après chacune de ses défaites, puisant sa force dans la part de vice contenue dans le coeur de chaque être humain.'),
(22, 11, 'Non', NULL, 'Super Mario Bros', 'https://www.nintendo.com/eu/media/images/10_share_images/games_15/virtual_console_nintendo_3ds_7/SI_3DSVC_SuperMarioBros.jpg', 'Super Mario Bros est un jeu vidéo de plates-formes à défilement horizontal développé par Nintendo R&D4 et édité par Nintendo.\r\nIl s\'agit du premier jeu de la série Super Mario.\r\nLe joueur contrôle Mario et voyage à travers le Royaume Champignon afin de sauver la princesse Peach des griffes de Bowser, l\'antagoniste de Mario.'),
(23, 12, 'Oui', NULL, 'Ori and the Will of the Wisps', 'https://www.nintendo.com/eu/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_OriAndTheWillOfTheWisps_image1600w.jpg\r\n', 'Ori and the Will of the Wisps est un jeu vidéo de plates-formes et d\'aventure développé par Moon Studios et édité par Xbox Game Studios.\r\nOri and the Will of the Wisps est un jeu de plates-formes en deux dimensions dans lequel le joueur incarne Ori, un esprit sylvestre blanc.'),
(24, 12, 'Non', NULL, 'Shovel Knight', 'https://assets.nintendo.com/image/upload/c_fill,w_1200/q_auto:best/f_auto/dpr_2.0/ncom/software/switch/70010000000121/2a52dd0769e5d8dba0d9d8d1aaf23803068b6350d2cbfb680df2fa113c23ec8f', 'Shovel Knight est un jeu vidéo indépendant de plates-formes développé par Yacht Club Games.\r\nInitialement prévu pour septembre 20131, le jeu est d\'abord sorti internationalement sur PC en 2014, puis la même année sur Wii U et Nintendo 3DS. Il est ensuite sorti en 2015 sur PlayStation 3, PlayStation 4, PlayStation Vita et Xbox One, puis en 2017 sur Nintendo Switch.\r\nLe jeu remporte le prix du meilleur jeu indépendant lors des Game Awards 2014.'),
(25, 13, 'Oui', 14, NULL, NULL, NULL),
(26, 13, 'Non', 15, NULL, NULL, NULL),
(27, 14, 'Oui', NULL, 'Minecraft', 'https://data.xxlgamer.com/products/655/Xj7NwXA4lIawrn-big.jpg', 'Minecraft est un jeu vidéo de type aventure « bac à sable » développé par le Suédois Markus Persson, alias Notch, puis par la société Mojang Studios. Il s\'agit d\'un univers composé de voxels et généré de façon procédurale, qui intègre un système d\'artisanat axé sur la collecte puis la transformation de ressources naturelles.'),
(28, 14, 'Non', NULL, 'Terraria', 'https://static.wikia.nocookie.net/terraria_gamepedia/images/1/19/Day.jpg/revision/latest?cb=20160221173920', 'Terraria est un jeu vidéo indépendant de type action-aventure et bac à sable développé par Re-Logic.\r\nLe jeu propose d\'explorer, de fabriquer des objets, de construire des habitations et de combattre des créatures variées dans un monde en 2D généré aléatoirement.'),
(29, 15, 'Oui', NULL, 'Fire Emblem', 'https://www.nintendo.com/eu/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_FireEmblemThreeHouses_image1600w.jpg', 'Fire Emblem est une série de jeux vidéo de rôle tactique créée par Shouzou Kaga, développée par Intelligent Systems et éditée par Nintendo.\r\nCette série est celle qui a posé les bases du genre tactical RPG, mais est également réputée pour être l\'une des plus ardues. En effet, l\'une de ses particularités, et ce à travers chacun de ses épisodes, est que chaque personnage jouable tombé au combat ne peut jamais être réutilisé dans la partie. Le challenge revient alors à avancer à travers les chapitres en perdant le moins de personnages possible.'),
(30, 15, 'Non', NULL, 'Pas de jeu choisi', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `parties`
--

CREATE TABLE `parties` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `parties`
--

INSERT INTO `parties` (`id`, `user_id`, `date`, `result`) VALUES
(57, 15, '2025-02-20 18:13:59', 'Doom 1993'),
(58, 15, '2025-02-20 18:14:14', 'Half Life'),
(59, 15, '2025-02-20 22:40:13', 'Pas de jeu choisi'),
(60, 15, '2025-02-20 22:40:16', 'Warframe'),
(61, 15, '2025-02-20 22:40:35', 'Grand Theft Auto 5'),
(62, 16, '2025-02-21 07:46:06', 'Half Life'),
(63, NULL, '2025-02-21 07:48:58', 'Tomb Raider'),
(64, NULL, '2025-04-02 14:48:14', 'Pas de jeu choisi'),
(65, NULL, '2025-06-25 12:53:58', 'Tomb Raider');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_question` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`id`, `text`, `first_question`) VALUES
(1, 'Est-ce un jeu d’action ?', 1),
(2, 'Est-ce un fps ?', 0),
(3, 'Est-ce un jeu de plateforme ?', 0),
(4, 'A-t-il plus de 10 ans ?', 0),
(5, 'Est-il sorti sur PS3 et Xbox 360 ?', 0),
(6, 'A-t-il des graphismes en pixels ?', 0),
(7, 'Se passe t’il dans un monde post Apocalyptique ?', 0),
(8, 'Se passe t’il à Los Angeles ?', 0),
(9, 'Est-ce un jeu futuristique ?', 0),
(10, 'Est-ce une vieille franchise ?', 0),
(11, 'Se passe t’il uniquement dans un château ?', 0),
(12, 'Est-ce que le perso principal est un animal ?', 0),
(13, 'Est-ce un jeu bac à sable ?', 0),
(14, 'Est-ce un jeu 3D ?', 0),
(15, 'Est-ce un jeu de stratégie ?', 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(15, 'ss', '$2y$10$QxjmZUy96aWSf4BHkAZt6ekpoQjzN5v9eVSpI2GR7tJqXPxO7/ZcW', 'ss@ss'),
(16, 'cecile', '$2y$10$pAApIHcPY4q3ZE.8x.rYh.WoUgRThdHxjbmPloWmPCa.eFAK5v6vu', 'cecile@gmail.com');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `question_suivante_id` (`next_question_id`);

--
-- Index pour la table `parties`
--
ALTER TABLE `parties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `utilisateur_id` (`user_id`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `parties`
--
ALTER TABLE `parties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`next_question_id`) REFERENCES `questions` (`id`);

--
-- Contraintes pour la table `parties`
--
ALTER TABLE `parties`
  ADD CONSTRAINT `parties_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
