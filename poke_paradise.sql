-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 17 déc. 2023 à 23:01
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `poke_paradise`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(16, 'Plat'),
(18, 'Boisson'),
(19, 'Dessert');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20231130210017', '2023-11-30 21:00:40', 99),
('DoctrineMigrations\\Version20231203210953', '2023-12-03 21:10:16', 47),
('DoctrineMigrations\\Version20231204220954', '2023-12-04 22:14:35', 89),
('DoctrineMigrations\\Version20231207202132', '2023-12-07 20:21:50', 35),
('DoctrineMigrations\\Version20231207222159', '2023-12-07 22:24:04', 18);

-- --------------------------------------------------------

--
-- Structure de la table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subscribed` tinyint(1) NOT NULL,
  `subscription_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`, `subscribed`, `subscription_date`) VALUES
(4, 'k@gmail.com', 1, '2023-12-07 22:02:25'),
(9, 'aya@gmail.com', 1, '2023-12-12 07:24:45'),
(10, 'clency@gmail.com', 1, '2023-12-12 20:41:05'),
(13, 'florian@gmail.com', 1, '2023-12-12 21:16:56'),
(14, 'meijuan@gmail.com', 1, '2023-12-12 21:23:55'),
(16, 'hello@gmail.fr', 1, '2023-12-17 18:56:14');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `image`, `price`) VALUES
(45, 16, 'Poké Paradise Bowl', 'Un mélange exquis de saumon frais coupé en dés, d\'avocat crémeux, de concombre croquant, de radis mariné et de sauce ponzu sur un lit de riz vinaigré.', 'bol-nourriture-vegetalien-823696-1659-657b0942b440e.avif', 12.59),
(46, 16, 'Tropical Tuna Delight Bowl', 'Des cubes de thon mariné dans une sauce aux fruits tropicaux, accompagnés d\'ananas frais, de mangue juteuse, d\'oignon rouge et de coriandre, servi sur du riz blanc.', 'there-is-sticker-of-gnome-with-basket-of-flowers-generative-ai-927978-14001-657ead0dd6f3f.avif', 15.99),
(47, 16, 'Zen Garden Veggie Bowl', 'Un festin végétarien avec des légumes croquants tels que des carottes râpées, des edamames, des champignons shiitake marinés, des graines de sésame.', 'delicieux-plat-fruits-mer-au-saumon-23-2150463249-657ead5caa3ce.avif', 21.88),
(48, 16, 'Spicy Salmon Fiesta Bowl', 'Un bol plein de saveurs avec du saumon épicé, des dés de tomates fraîches, du maïs grillé, des oignons verts, des graines de sésame et une touche de sauce épicée.', '116-657eaf94af3e8.png', 31.99),
(49, 16, 'Hawaiian Heatwave Bowl', 'Une combinaison enflammée de thon épicé, d\'avocat crémeux, de jalapeños frais, de radis mariné, de ciboule et de sauce Sriracha sur un lit de riz vinaigré.', 'photographie-plat-poke-bowl-thon-hawaien-53876-104583-657eb05dbb2ac.avif', 25.88),
(50, 16, 'Mango Tango Chicken Bowl', 'Du poulet grillé mariné avec de la mangue fraîche, des concombres, des carottes râpées, des graines de grenade et une sauce à la mangue sur du riz blanc.', 'bol-nourriture-vegetalien-823696-1659-657eb0c1b0f8b.avif', 18.77),
(51, 16, 'Poké Tropical', 'Des dés de thon frais marinés dans une sauce épicée aux saveurs asiatiques, accompagnés de concombres croquants, d\'oignons rouges et de graines de sésame.', 'buddha-bowl-riz-au-saumon-radis-chou-rouge-haricots-edamame-graines-sesame-concept-aliments-delicieux-sains-vue-dessus-127032-2418-657eb12ccacab.avif', 27.99),
(52, 18, 'Mojito frais à la fraise et à la menthe', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'mojito-frais-fraise-menthe-144627-1171-657eb420ee25c.jpg', 9.59),
(53, 18, 'Boisson fraîche au citron vert', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'boisson-fraiche-au-citron-vert-144627-12397-657eb4e25ad6c.jpg', 5.59);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `is_verified`, `image`) VALUES
(25, 'baron.anouk@sfr.fr', '[\"ROLE_ADMIN\"]', '$2y$13$LfdWar3SY.9cWcLglQ6JiOI0MOdKFARPM4H5R45nEBTDAf0NbjTGC', 0, 'illustration-icone-vectorielle-dessin-anime-scooter-equitation-homme-mignon-icone-transport-personnes-isolee-plat_138676-6330.avif'),
(27, 'josephine.bertrand@sfr.fr', '[\"ROLE_USER\"]', '$2y$13$Me8anLrhVsSMEt8Pi1NoH.8plAUQacPixfdiGvjhg.Rj02iiqc.Gi', 0, 'jolie-fille-123.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04AD12469DE2` (`category_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
