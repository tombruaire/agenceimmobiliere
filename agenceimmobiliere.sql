-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 03 mai 2021 à 21:10
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `agenceimmobiliere`
--

-- --------------------------------------------------------

--
-- Structure de la table `biens`
--

DROP TABLE IF EXISTS `biens`;
CREATE TABLE IF NOT EXISTS `biens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `surface` int(11) NOT NULL,
  `nb_pieces` int(11) NOT NULL,
  `nb_chambres` int(11) NOT NULL,
  `etages` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `ville` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendu` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `biens`
--

INSERT INTO `biens` (`id`, `titre`, `description`, `surface`, `nb_pieces`, `nb_chambres`, `etages`, `prix`, `ville`, `adresse`, `cp`, `vendu`, `date_creation`) VALUES
(4, 'aliquid voluptates vitae', 'Tempora suscipit architecto et dolorum voluptas ea dolor. Quod quod molestiae autem minus. Quam recusandae ducimus excepturi quidem minima a quia ut.', 21, 5, 7, 5, 176860, 'Michel-sur-Mer', '677, rue Munoz\n38 223 Martel-sur-Gillet', '61 026', 0, '2021-05-02 20:42:43'),
(5, 'deserunt ad qui', 'Qui eius velit maiores molestiae soluta ex. Corrupti deleniti qui necessitatibus. Et laborum cum illo rerum.', 85, 2, 2, 15, 951558, 'Breton', '2, boulevard de Pasquier\n81 250 TeixeiraVille', '06 295', 0, '2021-05-02 20:42:43'),
(6, 'quidem velit et', 'Rerum alias quo rerum fugit itaque. At eius nostrum sapiente aliquam dolor. Quis natus et voluptatem qui sint fugit autem.', 300, 6, 6, 14, 507019, 'Langlois', 'avenue Rémy Georges\n22294 BouchetVille', '01127', 0, '2021-05-02 20:42:43'),
(7, 'unde error id', 'Omnis molestias nesciunt pariatur incidunt qui. Rem amet odit suscipit. Rerum et aut vitae nesciunt enim.', 20, 4, 7, 8, 757534, 'Brunet-sur-Herve', '7, rue Benoît Grenier\n28764 Lelievre', '70 499', 0, '2021-05-02 20:42:43'),
(8, 'et ipsa aut', 'Odit quis accusamus cum rerum dolore praesentium quos. Odio tempore nihil sunt distinctio labore. Amet cupiditate distinctio consequatur cumque.', 299, 6, 4, 2, 940132, 'CarpentierVille', '54, chemin Raynaud\n33784 Boulay', '67975', 0, '2021-05-02 20:42:43'),
(9, 'hic numquam ad', 'Qui unde culpa earum repellat officiis. Facilis assumenda consequuntur et autem quo quia. Doloremque est odit omnis rerum voluptatum tempore.', 294, 9, 8, 11, 545987, 'Martel-sur-Lefevre', '37, chemin de Verdier\n40 114 Girard', '93982', 0, '2021-05-02 20:42:43'),
(10, 'rerum labore quis', 'Nisi dolor ut quis voluptas vel ipsa exercitationem. Autem omnis ducimus veritatis possimus. Ut ut id esse qui illum.', 97, 9, 5, 4, 557491, 'Menard', '41, boulevard de Normand\n99 142 Hoareau', '52576', 0, '2021-05-02 20:42:43'),
(11, 'laboriosam ut ipsa', 'Doloremque facere saepe excepturi animi fuga. Minima autem molestiae autem laudantium soluta ad. Natus est unde harum sint necessitatibus laudantium.', 73, 7, 4, 5, 394378, 'Imbert', '21, boulevard de Thibault\n50 490 Diasboeuf', '47640', 0, '2021-05-02 20:42:43'),
(12, 'distinctio ratione enim', 'Quia veniam qui autem ipsum vero. Voluptatum autem mollitia et similique et omnis. Excepturi accusantium dicta consequuntur.', 159, 10, 8, 6, 849283, 'Renault', '2, boulevard Agnès Faure\n84196 Michel-sur-Vallet', '47 479', 0, '2021-05-02 20:42:43'),
(13, 'accusantium quaerat necessitatibus', 'Tenetur labore eaque vel enim deserunt. Impedit voluptatem voluptatem tempore velit. Qui molestiae aliquam voluptatem.', 59, 2, 9, 12, 685448, 'Gimenez', '243, rue de Launay\n55 305 Parent', '49390', 0, '2021-05-02 20:42:43'),
(14, 'non a recusandae', 'Quia qui omnis occaecati rem tenetur et sed. Vero dolorem qui maxime fugit quia aut ratione. Quaerat dignissimos iste voluptates voluptatem perferendis architecto provident.', 167, 8, 1, 13, 436162, 'Da Costa', '3, impasse Maillard\n16 447 Leduc-sur-Gregoire', '92 587', 0, '2021-05-02 20:42:43'),
(15, 'officia eius quidem', 'Qui nobis at sit tempore. Facilis laborum blanditiis sed laborum. Eum vel animi dolorem qui.', 315, 8, 3, 13, 187613, 'Diallo', '28, rue Pauline Da Silva\n65635 BouvierVille', '78 503', 0, '2021-05-02 20:42:43'),
(16, 'perferendis labore aut', 'Beatae voluptatem harum voluptas ut porro. Et similique nesciunt nesciunt explicabo ut qui in. Deserunt et aut voluptatibus in molestiae dolor.', 315, 6, 4, 2, 421238, 'Barbe', '20, chemin Remy\n65 345 Maurice', '64 989', 0, '2021-05-02 20:42:43'),
(17, 'ut iure et', 'Velit cum hic molestias veritatis. Maxime reiciendis cum ut et. Et illo doloremque culpa eveniet natus.', 152, 6, 4, 11, 421900, 'Fouchernec', '48, boulevard Victor Dubois\n81321 Marechalboeuf', '17 063', 0, '2021-05-02 20:42:43'),
(18, 'quia impedit est', 'Vero rerum qui repellendus est fuga delectus illo. Repellendus est debitis odio quis. Magnam rem quis autem voluptas saepe tenetur rerum modi.', 217, 9, 2, 13, 258158, 'Gilbert', '7, chemin Alain Joseph\n11 789 Gallet', '20489', 0, '2021-05-02 20:42:43'),
(19, 'ut aut velit', 'Et optio facilis laborum quod nam. Exercitationem molestiae ut eaque laudantium amet magni distinctio. Eos voluptas cupiditate aspernatur maiores vel et.', 86, 9, 7, 1, 349410, 'BlancVille', '58, rue de Texier\n20 865 Maillarddan', '98644', 0, '2021-05-02 20:42:43'),
(20, 'est nemo fugit', 'Est voluptas ullam et molestiae omnis. Quae quis modi maxime accusamus iusto perspiciatis. Molestiae totam iure quaerat consectetur ipsa est iure.', 32, 2, 4, 5, 403364, 'Chretien', '88, boulevard Perrot\n79441 Dupuy', '49802', 0, '2021-05-02 20:42:43'),
(21, 'molestias autem nulla', 'Velit et recusandae eos est officia. Officiis sunt eligendi et harum inventore odio omnis necessitatibus. Sed accusamus earum et asperiores quis veritatis qui.', 50, 9, 2, 14, 412521, 'Dos Santosboeuf', '54, rue de Etienne\n52090 Delattre', '38 407', 0, '2021-05-02 20:42:43'),
(22, 'perspiciatis ut neque', 'Optio sed consequuntur neque doloremque voluptatem. Dicta veritatis consequatur sed aliquam officiis maxime quaerat repudiandae. Officia dolores quis voluptatem sit praesentium ducimus.', 193, 6, 7, 13, 335045, 'Marin-sur-Mer', '73, rue de Breton\n08 954 Besson', '63679', 0, '2021-05-02 20:42:43'),
(23, 'enim eveniet libero', 'Nihil molestiae rerum dignissimos et. Odit qui dolores ut. Non deleniti corrupti quod quia animi odio.', 42, 7, 3, 13, 308975, 'Morin', '53, avenue Thierry\n84 194 Hubertnec', '04418', 0, '2021-05-02 20:42:43'),
(24, 'autem voluptas nostrum', 'Voluptatem dolorem sit et sit. Minus necessitatibus ab dolorem iusto eligendi consequatur illo. Quia quia aut perferendis aut officiis aliquid.', 85, 5, 1, 14, 857539, 'FoucherVille', '7, impasse Geneviève Remy\n61152 Guillou', '89875', 0, '2021-05-02 20:42:43'),
(25, 'in cumque nobis', 'Qui accusantium quis harum voluptas impedit voluptas doloribus. Aut ea ut recusandae assumenda et. Consequatur quae impedit accusantium fuga cum dignissimos.', 314, 4, 2, 13, 113893, 'Clerc', '93, chemin Lemaitre\n43 852 Delattredan', '04257', 0, '2021-05-02 20:42:43'),
(26, 'eum quisquam voluptatem', 'Reprehenderit consequatur voluptatibus sint quia culpa. Asperiores rerum nihil quo est perspiciatis modi autem. Voluptatem et quo sequi enim blanditiis adipisci.', 288, 7, 5, 7, 784657, 'Meyer-sur-Auger', '989, impasse de Brun\n40153 Fleury-les-Bains', '77 862', 0, '2021-05-02 20:42:43'),
(27, 'similique molestiae ducimus', 'Quis nulla fuga qui eaque. Ut sequi sint odio doloremque. Voluptatem expedita quae occaecati autem modi adipisci dolor.', 218, 9, 4, 15, 328350, 'Louis', '976, chemin de Boulanger\n69886 Buisson-la-Forêt', '64 914', 0, '2021-05-02 20:42:43'),
(28, 'fuga provident ipsum', 'Culpa beatae et nemo accusantium iste ipsum. Aut doloremque quisquam nemo molestiae eos non et. Reiciendis qui quidem ad aspernatur eveniet et quia.', 64, 8, 5, 5, 846813, 'Martel', '8, rue Guibert\n53857 Rodrigues-sur-Mer', '34 770', 0, '2021-05-02 20:42:43'),
(29, 'ducimus eum cumque', 'Ipsam voluptate repudiandae soluta soluta illo. Enim nobis ut ut id voluptatum nam possimus. Et minus fugiat voluptas.', 164, 9, 6, 7, 761144, 'Roger', '230, boulevard Benjamin Bourdon\n25 131 Morin', '31909', 0, '2021-05-02 20:42:43'),
(30, 'inventore veritatis voluptatem', 'Fugit esse incidunt officiis commodi. Laborum rerum laudantium impedit voluptas. Commodi natus nostrum unde dicta modi autem illo perspiciatis.', 94, 7, 7, 7, 887874, 'Lacombe', '141, boulevard Arnaude Pons\n81385 Ramos', '92 972', 0, '2021-05-02 20:42:43'),
(31, 'aliquid quas eaque', 'Quia voluptatem enim expedita mollitia quaerat dolorem quaerat atque. Adipisci veritatis earum nisi mollitia. Recusandae eos fugiat quasi iusto.', 86, 4, 4, 1, 146489, 'Bouvet', '66, boulevard Simone Gillet\n57 143 Texier-sur-Mer', '28723', 0, '2021-05-02 20:42:43'),
(32, 'quas perferendis sequi', 'Rerum quaerat sunt beatae ipsum. Voluptas velit excepturi sit esse fugit iure corrupti laboriosam. Molestiae perspiciatis recusandae non ipsa veniam nemo omnis necessitatibus.', 120, 7, 1, 0, 421708, 'Marchal', '35, impasse Richard Marin\n31058 Traore-sur-Gomez', '22 510', 0, '2021-05-02 20:42:43'),
(33, 'voluptas similique et', 'Ratione porro repudiandae provident possimus consequatur saepe. Et quaerat consequatur quam ut perspiciatis id est. Delectus nulla dolore non aliquam aliquam itaque.', 166, 6, 2, 8, 340890, 'Marie-sur-Guillet', '63, avenue Nguyen\n70667 Pires-sur-Riou', '87 370', 0, '2021-05-02 20:42:43'),
(34, 'temporibus aut unde', 'Autem dolorem et voluptate expedita. Minima atque sint eligendi dolorem. Soluta maiores quidem id qui vel sequi.', 306, 5, 4, 15, 309076, 'FaivreVille', '496, rue de Brunet\n89 338 Perrier', '14 589', 0, '2021-05-02 20:42:43'),
(35, 'porro sit libero', 'Est sed minus quibusdam distinctio perferendis nostrum. Quaerat facilis voluptatem et atque facilis sint. Non sit error quia quidem fugiat eaque ut perspiciatis.', 171, 5, 6, 1, 122220, 'Rolland', '61, impasse Lemaitre\n13 722 Lambert', '41173', 0, '2021-05-02 20:42:43'),
(36, 'enim autem quia', 'Id qui totam ut id et et. Est mollitia reprehenderit et quo magni. Alias maxime et et.', 291, 3, 9, 3, 794481, 'Georges', '70, rue de Faivre\n13024 Cordier-sur-Mer', '56517', 0, '2021-05-02 20:42:43'),
(37, 'earum inventore accusamus', 'Praesentium ut doloremque nemo doloribus unde ab culpa. Iste laboriosam a blanditiis ut fuga. Non facilis aliquam quod.', 276, 2, 7, 8, 389613, 'Langlois', '2, place Lelievre\n10 014 Raynaud', '69778', 0, '2021-05-02 20:42:43'),
(38, 'dignissimos dolorum voluptatem', 'Reiciendis dignissimos labore facere exercitationem. Odio sed id distinctio reprehenderit dolores veritatis. Voluptatem ea dolorem velit asperiores iste fugiat.', 162, 2, 7, 8, 299504, 'Brunetnec', '99, place Carre\n91 238 Langlois', '89375', 0, '2021-05-02 20:42:43'),
(39, 'nostrum minima amet', 'Dolores eius eum rerum aspernatur. Vero sunt id incidunt hic quos consequuntur. Eum eos rerum facilis fuga.', 344, 5, 2, 10, 437652, 'ColletBourg', '45, impasse Jacques\n42 675 Guyon-sur-Gallet', '82 836', 0, '2021-05-02 20:42:43'),
(40, 'commodi excepturi beatae', 'Optio impedit et repellat non eum corrupti itaque. Consequuntur itaque dolor qui nobis exercitationem perferendis sapiente maxime. Placeat adipisci repellendus aut magnam.', 151, 8, 8, 1, 986618, 'Couturier', '91, chemin Guillaume\n97940 Thibault', '41 972', 0, '2021-05-02 20:42:43'),
(41, 'velit ad sint', 'Quasi necessitatibus voluptatem dolor provident consectetur qui. Corporis illo quibusdam reiciendis totam. Consequatur sunt nostrum sint sed.', 317, 5, 5, 2, 922903, 'Lecoq', '3, rue Robin\n98 648 Colin', '57867', 0, '2021-05-02 20:42:43'),
(42, 'a porro laudantium', 'Eius similique eum alias debitis. Recusandae et vero enim aspernatur voluptates esse reiciendis harum. Sed eum deleniti officia inventore ut deleniti ea.', 346, 8, 4, 6, 138738, 'Lacombe', '49, avenue Vidal\n75928 Pinto', '21 847', 0, '2021-05-02 20:42:43'),
(43, 'tenetur tenetur et', 'Necessitatibus qui ducimus non enim rerum deleniti blanditiis. Laborum nihil eveniet ullam et explicabo in harum autem. Ea ut nostrum dolorum autem debitis dolorem eos.', 120, 6, 1, 2, 993222, 'Lagarde-sur-Riviere', '18, rue Lejeune\n23 499 Maury', '61253', 0, '2021-05-02 20:42:43'),
(44, 'minus facilis omnis', 'Molestias deserunt quia dolores nam. Voluptatem culpa voluptatem saepe ducimus aliquam consectetur possimus. Et aut ipsa incidunt consequatur est beatae quo.', 239, 7, 3, 8, 216148, 'Humbert', '4, place de Chartier\n16707 Le Goffdan', '58427', 0, '2021-05-02 20:42:43'),
(45, 'laborum corporis velit', 'Officia quod impedit fuga veniam. Quas molestiae autem quibusdam et omnis enim. Officia sunt dolor ut corrupti occaecati.', 160, 4, 6, 4, 895520, 'Pierre-sur-Ribeiro', '56, chemin de Vincent\n61572 Diaz', '85 313', 0, '2021-05-02 20:42:43'),
(46, 'molestias et voluptates', 'Amet ut nisi ut natus. Ut omnis voluptatem voluptatem qui accusantium qui molestiae. Sint distinctio qui eligendi ab et officiis libero.', 345, 2, 6, 13, 143266, 'Herve', '72, avenue de Toussaint\n83 681 Carpentier', '33006', 0, '2021-05-02 20:42:43'),
(47, 'esse qui voluptatem', 'Accusamus consequatur culpa molestias est et quidem. Aperiam voluptatem consectetur sit distinctio amet beatae. Aperiam praesentium ipsa laudantium ut commodi.', 249, 8, 7, 11, 294148, 'Guyon', '25, rue de Roche\n76 908 Martin', '94859', 0, '2021-05-02 20:42:43'),
(48, 'sed fugiat qui', 'Error dolorem placeat eaque expedita voluptatibus et. Et ullam aliquam laboriosam. Molestiae rerum laborum optio voluptatum quis itaque.', 326, 9, 8, 6, 517509, 'Brun', 'chemin Claude Raynaud\n79 553 PoulainVille', '65570', 0, '2021-05-02 20:42:43'),
(49, 'nihil eos molestiae', 'Accusamus laborum nemo neque qui. Esse porro quo itaque sit non omnis. Sint corporis sapiente porro ut ab eos.', 252, 9, 8, 4, 651234, 'Neveu', 'boulevard Fernandes\n09083 Carlier-sur-Mer', '15 429', 0, '2021-05-02 20:42:43'),
(50, 'itaque et odio', 'Minus iure ipsum assumenda maiores doloremque dicta. Explicabo eum aspernatur eos nam rerum nesciunt ipsum sunt. Facilis odit aspernatur dignissimos ut est voluptas.', 269, 3, 5, 15, 914652, 'Dupre', 'avenue Gomes\n29 337 Chretien', '67569', 0, '2021-05-02 20:42:43'),
(51, 'sed rerum nulla', 'Est voluptatem mollitia illum rem nemo laborum laborum quos. Voluptas recusandae veniam deleniti alias et repudiandae fugiat eos. Voluptatem suscipit eveniet doloremque ut.', 324, 10, 5, 2, 664536, 'Cousin', '22, chemin de Vasseur\n26984 Ferrand', '60 321', 0, '2021-05-02 20:42:43'),
(52, 'molestiae dolorem sapiente', 'Modi rerum et repellat cupiditate. Cum temporibus possimus porro dolor reprehenderit. Delectus laboriosam temporibus maxime qui corrupti.', 200, 8, 7, 0, 590769, 'Neveu', '8, rue de Guyot\n22345 Raymond', '95 629', 0, '2021-05-02 20:42:43'),
(53, 'quis voluptas ut', 'Commodi quasi tempore dolorem in. Repellat et et officiis rerum harum rerum. Quia occaecati ab porro sint assumenda qui explicabo ratione.', 349, 2, 5, 4, 619123, 'Voisin', '32, chemin Collet\n97 422 Philippe', '59623', 0, '2021-05-02 20:42:43'),
(54, 'sit quia veniam', 'Eum numquam inventore quo perspiciatis. Suscipit quod sit laborum deserunt ipsam. Ad et et quos exercitationem repellendus dolorum optio.', 26, 10, 4, 2, 822436, 'Labbe-sur-Duhamel', '82, rue de Gomes\n26 095 Bazin-sur-Mer', '51 311', 0, '2021-05-02 20:42:43'),
(55, 'rerum ex sed', 'Unde non libero quis voluptatem quas quam. Aliquid est at neque natus. Eveniet veritatis consequatur illum autem ex.', 166, 2, 4, 0, 379942, 'Bouvier-sur-Fernandes', '64, boulevard de Boutin\n64 468 Maurice', '43139', 0, '2021-05-02 20:42:43'),
(56, 'voluptates sit enim', 'Blanditiis exercitationem facere et in quas occaecati. Illo aspernatur non recusandae iste non atque incidunt. Atque ad et nemo nihil unde iusto qui.', 61, 9, 9, 15, 658168, 'Georges-les-Bains', 'rue Françoise Foucher\n41548 Menard-sur-Mer', '62 415', 0, '2021-05-02 20:42:43'),
(57, 'repellendus illo qui', 'Et assumenda suscipit laboriosam recusandae. Repellat inventore pariatur et architecto et. Et explicabo omnis molestias in odio.', 331, 2, 2, 4, 919000, 'Renault', 'rue Arthur Weiss\n42 618 Laurent', '28141', 0, '2021-05-02 20:42:43'),
(58, 'voluptas optio quo', 'Minus tempora aut iure voluptatibus nihil tenetur. Nesciunt et voluptatum dolorem laborum. Qui nobis explicabo sint soluta.', 58, 5, 6, 11, 207517, 'Letelliernec', '198, rue Olivie Munoz\n21309 Alves', '02634', 0, '2021-05-02 20:42:43'),
(59, 'possimus ut ut', 'Dolore debitis illo itaque ab quasi et repellat. Et aut praesentium quia dicta qui cumque possimus. Ut molestiae vitae sequi tempora omnis velit beatae.', 331, 3, 8, 14, 617614, 'Aubry-les-Bains', '99, place Inès Colin\n09220 VincentVille', '20 716', 0, '2021-05-02 20:42:43'),
(60, 'ut quisquam non', 'Expedita rerum sit cumque sint amet. Ex rem distinctio sint vero in. Reiciendis impedit officia accusantium id.', 71, 3, 4, 7, 645871, 'Lebon', '881, boulevard Guillet\n03304 DiazBourg', '10179', 0, '2021-05-02 20:42:43'),
(61, 'impedit fuga laudantium', 'Facere eum omnis et. Dolores officia qui consectetur rerum distinctio. Aut amet distinctio ex.', 127, 10, 4, 10, 401266, 'Cousin', '189, boulevard de Duval\n48286 Laine', '22 318', 0, '2021-05-02 20:42:43'),
(62, 'iusto non officia', 'Molestiae corporis esse nisi blanditiis. Et dolorem nihil recusandae quod beatae. Nemo at quidem aut qui velit cum explicabo.', 93, 8, 1, 2, 770958, 'Pereiraboeuf', '23, chemin Roussel\n53 149 Robin', '30 411', 0, '2021-05-02 20:42:43'),
(63, 'aut totam sint', 'Et vero molestiae sed quae suscipit omnis nesciunt. Ipsum quo et qui similique. Doloribus minima nesciunt adipisci amet dolorum sunt.', 59, 10, 7, 5, 683708, 'Gallet', '10, boulevard de Martins\n53 001 Bourdon', '24 000', 0, '2021-05-02 20:42:43'),
(64, 'nihil sequi vel', 'Qui molestiae explicabo sequi est. Delectus sunt rerum autem reprehenderit rem qui. Dolores in quo et neque nemo.', 341, 5, 9, 10, 488042, 'ParisBourg', '69, impasse Berthelot\n96 959 Legendre-sur-Chartier', '19781', 0, '2021-05-02 20:42:43'),
(65, 'ut in aliquid', 'Est accusantium excepturi aliquam qui eos enim. Dolore cupiditate praesentium amet libero tempora sint qui. Odit temporibus repellat est necessitatibus fuga ad magnam.', 285, 9, 4, 15, 777697, 'Thibault', 'place Boucher\n39 481 Joubert', '02125', 0, '2021-05-02 20:42:43'),
(66, 'tempore est molestiae', 'Magni sunt dolor soluta. Et placeat natus enim aliquam. Voluptatem explicabo beatae autem debitis sit.', 55, 6, 1, 8, 552946, 'Pintoboeuf', '5, rue Agnès Diallo\n73059 AllardVille', '77295', 0, '2021-05-02 20:42:43'),
(67, 'harum eum veniam', 'Quia facere ut quo consectetur ipsa rerum laudantium. Quia dignissimos dolore et autem qui beatae. Voluptas qui id numquam dolorum qui ut quisquam.', 97, 6, 1, 2, 343970, 'MilletBourg', '412, boulevard Bonnin\n70536 GimenezVille', '74487', 0, '2021-05-02 20:42:43'),
(68, 'tempore impedit quisquam', 'Qui quae velit sapiente temporibus cupiditate ab et eum. Commodi voluptatibus nemo mollitia porro. Adipisci est quibusdam ad deleniti qui.', 113, 3, 3, 13, 319141, 'GillesVille', '33, boulevard Maurice Voisin\n76 659 Tanguy-sur-Durand', '23 238', 0, '2021-05-02 20:42:43'),
(69, 'vel sit unde', 'Ullam repellat quia saepe veritatis. Nihil nobis et mollitia commodi odio at. Corrupti quasi laudantium ratione magnam.', 177, 2, 4, 8, 940031, 'Aubertboeuf', '1, chemin de Munoz\n65330 Le Roux-la-Forêt', '44198', 0, '2021-05-02 20:42:43'),
(70, 'cupiditate odio error', 'Molestiae facilis quibusdam rerum esse enim reprehenderit ut nesciunt. Dignissimos aliquam labore temporibus molestias. Minima voluptatem mollitia totam molestiae.', 62, 3, 5, 11, 668592, 'Couturier', 'avenue Alexandre Gauthier\n23006 Fleurydan', '42 994', 0, '2021-05-02 20:42:43'),
(71, 'porro et id', 'Sunt non sint repellendus hic natus nulla consectetur. Accusantium iste eveniet ratione et est id est. Assumenda eius voluptas et eos aut vero.', 315, 4, 1, 0, 570182, 'Gonzalez', '527, rue Philippe\n84340 Richard-sur-Marie', '87 525', 0, '2021-05-02 20:42:43'),
(72, 'sint autem omnis', 'Quae et excepturi aperiam nemo earum. Quia eius ad distinctio qui ea et. Sint optio ad quo modi.', 174, 7, 6, 2, 631715, 'Meunier', '7, impasse Mathieu\n44 320 Jacob', '97 866', 0, '2021-05-02 20:42:43'),
(73, 'deleniti dolores facilis', 'Corporis est dolor libero ut. Amet quae totam iure non reiciendis impedit. Id at nulla nulla sapiente eaque.', 67, 6, 6, 11, 780424, 'Diaz', '64, chemin Thierry Morin\n61089 DiazBourg', '61850', 0, '2021-05-02 20:42:43'),
(74, 'ut autem commodi', 'Ea voluptatem est vero alias impedit est. Sed labore iure iste officia beatae est. Cumque assumenda fuga ut esse ullam temporibus repellat.', 337, 7, 3, 14, 369342, 'Fleury', '67, avenue Poirier\n98754 Barre-sur-Guerin', '10 189', 0, '2021-05-02 20:42:43'),
(75, 'et quae cumque', 'Quis deleniti et cum corrupti. Est eum iste quo eum dolores ullam. Facere animi doloribus laborum sunt sed velit.', 237, 3, 5, 8, 212961, 'Sanchez', '9, boulevard Gerard\n80 938 Charrier-sur-Breton', '90 918', 0, '2021-05-02 20:42:43'),
(76, 'error repellendus ex', 'Impedit dolores est sit est mollitia possimus. Molestiae aperiam quo magni vitae debitis voluptatibus. Voluptas vitae non et et unde quidem.', 82, 5, 3, 6, 275784, 'Pages', '33, rue Picard\n76684 Jacob-sur-Parent', '20431', 0, '2021-05-02 20:42:43'),
(77, 'ut sint iusto', 'Rerum aliquid voluptatum ut magni dolorem mollitia sit a. Illo et et laboriosam id. Dolore ut voluptatem velit rerum.', 108, 6, 1, 12, 582876, 'Clement-sur-Blanc', 'impasse Joseph\n29 102 Auger-sur-Brun', '71 043', 0, '2021-05-02 20:42:43'),
(78, 'tempora veniam asperiores', 'Eius eveniet consequuntur tenetur dolor. Voluptatum aliquid et sunt minima velit maxime. Quia distinctio enim necessitatibus dignissimos distinctio.', 188, 3, 2, 3, 460860, 'Hebert', '5, impasse de Giraud\n86 666 Vallet', '61522', 0, '2021-05-02 20:42:43'),
(79, 'repellat repellat vero', 'Quos sint voluptatibus delectus omnis. Omnis corrupti placeat magnam. Quia in assumenda neque minima.', 126, 10, 3, 8, 493696, 'Lemaitre', '491, rue Thierry Philippe\n72 163 Lacombe-les-Bains', '17 651', 0, '2021-05-02 20:42:43'),
(80, 'id ullam magni', 'Sunt aut doloribus ad voluptas modi quisquam molestiae. Maiores nostrum velit sint rerum rerum qui. Reiciendis et quis qui aut.', 170, 10, 4, 15, 680686, 'Dupuy-sur-Mer', '37, avenue Vidal\n59 919 Boyer', '36125', 0, '2021-05-02 20:42:43'),
(81, 'accusantium nulla culpa', 'Eveniet omnis id omnis sequi veritatis maxime magni eos. Earum error sunt nemo at porro. Nemo et magni sunt est recusandae.', 307, 7, 3, 15, 960136, 'Morel-sur-Pottier', '64, impasse Martine Gerard\n13458 Lopez', '95970', 0, '2021-05-02 20:42:43'),
(82, 'ullam optio est', 'Recusandae est ullam vel doloremque modi officiis eos. Ullam magnam et voluptatum culpa et voluptatem aspernatur. Ut tenetur omnis consectetur non dolores.', 295, 3, 6, 15, 651841, 'HuetVille', '58, rue Picard\n10157 Thibault', '22956', 0, '2021-05-02 20:42:43'),
(83, 'voluptas id eos', 'Rerum qui hic provident aspernatur vitae. Veniam ipsam et nemo qui. Quidem earum laudantium quaerat assumenda consequatur.', 268, 7, 7, 5, 512603, 'Pierre', '90, impasse Pelletier\n41269 Rodriguez-sur-Blondel', '58 163', 0, '2021-05-02 20:42:43'),
(84, 'velit expedita aut', 'Sed aspernatur voluptate dolorum quae dolor ea. Incidunt quis maxime eaque quia nam vero exercitationem. Nam vitae voluptatum pariatur reiciendis.', 240, 2, 6, 7, 163317, 'Marin-les-Bains', '31, rue Pierre Collin\n19697 Breton', '10 228', 0, '2021-05-02 20:42:43'),
(85, 'incidunt quisquam voluptatem', 'Neque quo recusandae fuga. Vero dolores saepe amet rerum. Qui dolore et saepe est nulla.', 341, 9, 6, 7, 835915, 'Peron-la-Forêt', '40, rue Louise Weber\n82613 Paris', '31 183', 0, '2021-05-02 20:42:43'),
(86, 'dignissimos ratione necessitatibus', 'Ea ut quidem asperiores nisi. Quas nam corporis aspernatur cupiditate eos mollitia itaque quidem. Quia tempore commodi sit aliquid non earum sed.', 274, 4, 1, 6, 937278, 'Laurent', '31, chemin Sylvie Perrot\n60 538 RossiBourg', '95270', 0, '2021-05-02 20:42:43'),
(87, 'provident deserunt sequi', 'Qui laboriosam soluta sed pariatur repudiandae ducimus sed. Asperiores et atque quo blanditiis. Dolores impedit accusantium consequatur molestiae qui perferendis.', 162, 4, 4, 0, 129906, 'Carre-sur-Mendes', '31, rue Reynaud\n51 566 Couturier', '62205', 0, '2021-05-02 20:42:43'),
(88, 'vel velit quia', 'Illo placeat nostrum quae ducimus. Commodi recusandae fugit reprehenderit ipsum unde natus provident numquam. Dolores adipisci aliquid placeat quasi repellat sint consequatur totam.', 146, 8, 3, 4, 883172, 'Fischernec', '923, chemin Étienne Ferrand\n12 797 Joly', '87 595', 0, '2021-05-02 20:42:43'),
(89, 'sint ipsam rerum', 'Quos nemo alias velit veritatis. Non alias et tempora aut. Ea blanditiis in fugiat.', 89, 5, 5, 11, 706385, 'Imbert', '97, impasse de Colas\n14 445 Laurentdan', '68680', 0, '2021-05-02 20:42:43'),
(90, 'ea minus sapiente', 'Quia error est et et officia. Quam perspiciatis tempora esse ad maxime. Eum dolor corrupti tempora iusto eius occaecati.', 31, 2, 4, 8, 307248, 'Collin', '69, impasse Schneider\n03 839 Marechaldan', '36 972', 0, '2021-05-02 20:42:43'),
(91, 'quasi soluta facere', 'Officia omnis sint in maiores culpa veritatis. Quibusdam esse deserunt dolorem velit eum. Sit est ea quo voluptatem asperiores.', 98, 10, 4, 6, 756235, 'Antoineboeuf', '3, rue de Charles\n69844 Weiss-la-Forêt', '20 428', 0, '2021-05-02 20:42:43'),
(92, 'et totam neque', 'In esse pariatur dignissimos repellat. Dolorem molestias soluta quia modi necessitatibus quam quia. Eum qui sunt modi molestiae dolores enim.', 131, 3, 1, 13, 908738, 'Chauvet', 'impasse Lagarde\n95 775 Guibert-sur-Seguin', '71434', 0, '2021-05-02 20:42:43'),
(93, 'hic in minus', 'Et rerum est ut iusto. Omnis est quidem veritatis voluptatibus dolore. Et accusantium ex et nihil.', 196, 10, 1, 2, 763079, 'Lebrun', 'place de Fernandes\n18855 Marques', '84 250', 0, '2021-05-02 20:42:43'),
(94, 'hic sequi corrupti', 'Animi excepturi veniam voluptates commodi repellat odio ea. Velit ut natus ut harum. Numquam cupiditate nisi enim sapiente.', 318, 2, 1, 5, 410784, 'Grenier', '52, chemin de Martins\n62 858 Richard', '87384', 0, '2021-05-02 20:42:43'),
(95, 'et labore veniam', 'Quam ipsum maiores vel adipisci praesentium itaque. Enim expedita accusamus qui quia et perspiciatis sit. Distinctio repellat aut qui cum iure minima necessitatibus.', 225, 10, 5, 3, 616462, 'Lecomte-sur-Mer', '21, rue de Coulon\n28 571 Guillet', '62 536', 0, '2021-05-02 20:42:43'),
(96, 'aut sit illum', 'Aut voluptatem harum voluptatibus aut cumque quia est. Voluptate rem maiores deserunt quis nemo dolores. In ea voluptatem consequuntur ea corporis.', 176, 5, 2, 11, 435247, 'Loiseau', '475, avenue de Thomas\n16 232 Ledoux', '24329', 0, '2021-05-02 20:42:43'),
(97, 'dolorem praesentium ratione', 'Perspiciatis earum voluptatibus ducimus nihil eveniet. Ab aut maxime quidem voluptatem ipsum accusamus nisi. Molestias quisquam recusandae ut perferendis quibusdam asperiores illo non.', 287, 3, 1, 6, 845716, 'Jean-la-Forêt', '66, chemin Lebrun\n32498 Riouboeuf', '30 640', 0, '2021-05-02 20:42:43'),
(98, 'ullam iste nisi', 'Laudantium accusantium neque suscipit dolor dolore. Sunt neque et ea doloribus quaerat. Qui adipisci autem occaecati.', 65, 3, 3, 2, 337615, 'Delahaye-sur-Legros', '22, impasse Luce Louis\n44 495 HoareauVille', '91548', 0, '2021-05-02 20:42:43'),
(99, 'qui blanditiis distinctio', 'Illo et sed dicta perferendis autem. Ducimus aspernatur dicta illum in temporibus. Tempora inventore veritatis consequatur odit repudiandae.', 68, 4, 7, 6, 674975, 'Paris', '569, chemin de Maillet\n19132 Louis', '06316', 0, '2021-05-02 20:42:43'),
(100, 'recusandae similique eos', 'Ut aut ullam tempore vel est vitae assumenda. Et qui sit nobis doloribus rerum. Animi dolorem quaerat dolor nobis ipsum eaque id.', 36, 7, 6, 4, 686604, 'Charles-sur-Herve', '2, avenue de Jean\n39 773 Labbe', '81079', 0, '2021-05-02 20:42:43'),
(101, 'odit neque distinctio', 'Ea est nam consequatur placeat magnam laudantium laudantium. Autem ut sunt voluptas cupiditate. Possimus natus eligendi velit dolorem maxime.', 289, 3, 7, 14, 986882, 'Ramos-sur-Auger', '82, boulevard Jean\n39 183 FernandesVille', '31 742', 0, '2021-05-02 20:42:43'),
(102, 'assumenda ipsam nesciunt', 'Non explicabo ut et dolores molestiae. Dolorum in minus natus dolore neque explicabo et rerum. Ut commodi totam voluptas est voluptatem ea quidem.', 265, 2, 4, 15, 856695, 'Gimenez-sur-Grenier', '10, rue de Leclercq\n85 950 Dumont-sur-Lopes', '29027', 0, '2021-05-02 20:42:43'),
(103, 'est explicabo aliquam', 'Cupiditate dicta asperiores voluptatem nulla. Nesciunt fugiat nesciunt voluptatum deleniti vitae quae eligendi fuga. Et qui incidunt nostrum.', 103, 4, 6, 7, 597710, 'Chevalierdan', '36, chemin Margaux Bouchet\n61 719 Dumont-sur-Masse', '56 857', 0, '2021-05-02 20:42:43');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210501203701', '2021-05-01 20:39:34', 68),
('DoctrineMigrations\\Version20210501205240', '2021-05-01 20:53:36', 103),
('DoctrineMigrations\\Version20210502160524', '2021-05-02 16:06:05', 120),
('DoctrineMigrations\\Version20210502175213', '2021-05-02 17:52:24', 50),
('DoctrineMigrations\\Version20210502180121', '2021-05-02 18:01:40', 54);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'tombruaire', '$argon2id$v=19$m=65536,t=4,p=1$b2RVR3UyLkM3Tkllblg3NQ$2dDOH1JiMv1tNOfrg6K460IJehBjFIWEIMhKIhbE+QY');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
