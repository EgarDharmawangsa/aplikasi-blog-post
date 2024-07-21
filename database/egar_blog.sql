-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2024 at 07:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egar_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(2, 'Web Design', 'web-design', '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(3, 'Personal', 'personal', '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(4, 'e', 'e', '2024-07-04 22:48:26', '2024-07-04 22:48:26');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_27_051059_create_posts_table', 1),
(6, '2024_04_28_031921_create_categories_table', 1),
(7, '2024_07_07_055937_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Laudantium quisquam maxime.', 'quasi-ullam-omnis-ea-iste-eius-et-aliquid-beatae', NULL, 'Quia et praesentium labore dolorem doloribus. Optio fugiat dicta nam suscipit beatae. Voluptatem animi dignissimos praesentium reiciendis fuga. Possimus debitis laudantium esse placeat id odio et.', '<p>Esse consectetur delectus officia rerum illo. Quisquam inventore tenetur reiciendis ea.</p><p>Modi iusto dolor non porro itaque. Occaecati enim ut saepe quisquam possimus. Nam excepturi et ratione fuga fugit ut voluptatem. Dicta eligendi et quas doloremque dolorum corporis.</p><p>Et ipsa consectetur mollitia consequatur dolorem id repellendus. Incidunt dolor sunt et sunt non consequuntur sit.</p><p>Et laboriosam qui sequi magni occaecati minima saepe. Esse sequi possimus sint nihil omnis saepe. Tempora in eos dolores id sed consequatur omnis.</p><p>Aut assumenda quidem qui soluta nemo suscipit. Qui est ducimus occaecati sint aut. Impedit et dolores quia sint distinctio alias repellat sit.</p><p>Nihil molestiae pariatur quas atque accusamus quae debitis. Beatae fugit aut tenetur quas consequatur. Expedita aut eius maxime modi facere. Soluta inventore ea consequatur molestiae quos deleniti.</p><p>Autem vel similique eos. Quod dolores reiciendis voluptatibus beatae adipisci veniam sed. Labore sed consequuntur temporibus molestias. Fugiat nihil est minus voluptatem qui velit autem et.</p><p>Quisquam quis rerum aut repellendus laborum dolores. Similique dolorem libero sed labore autem eos. Neque debitis consequatur est rerum dignissimos alias sint.</p>', NULL, '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(2, 1, 1, 'Mollitia atque enim quis ut omnis.', 'sit-voluptatum-consequatur-rerum-corrupti', NULL, 'Exercitationem magni possimus animi sequi. Incidunt adipisci doloribus commodi sint. Sint rerum dolores non dolores. Laboriosam tempore quis et sequi. Consequatur et aut odit.', '<p>Et minima numquam ducimus aut rerum adipisci sint. Laborum veritatis inventore quod. Provident debitis quis sed ipsam fuga nulla. Cum sed sint quidem voluptatum consequatur nulla consequatur.</p><p>Et id praesentium est animi laboriosam asperiores quasi. Eligendi deleniti sunt animi maxime amet nam et. Quam eveniet maiores soluta nemo suscipit. Et eaque non quam fuga et reiciendis omnis porro.</p><p>Cupiditate minima veniam minus est dolore. Porro reprehenderit vero ut voluptates nesciunt. Veritatis quisquam et velit eveniet. Libero nulla asperiores quia aut officiis rem.</p><p>Voluptatem quia perferendis omnis. Neque qui laudantium excepturi ea numquam reprehenderit et. Provident exercitationem illo ab praesentium.</p><p>Voluptas temporibus unde iure dicta. Quasi beatae incidunt eos praesentium harum sunt error. Qui reiciendis fugiat labore iure ut ea.</p><p>Ea eius aut delectus qui sit ut. Minima consequatur reprehenderit soluta autem aliquid. Facere praesentium consectetur repudiandae eum recusandae magni ipsam. Voluptas earum est commodi excepturi autem aperiam. Nostrum blanditiis corrupti quidem et.</p><p>Voluptates necessitatibus perferendis ipsum ut reprehenderit cum. Quae possimus labore optio quia dolorem maxime aut. Cumque totam molestiae molestiae voluptates esse nihil. Autem voluptatum incidunt enim dolorum nihil eos.</p>', NULL, '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(3, 2, 3, 'Aut aut consectetur beatae sit.', 'fugiat-quam-facere-officia-quod-quam-et', NULL, 'Sit esse earum exercitationem dolores repellendus distinctio quas. Esse voluptatem aliquam molestias iure. Facilis voluptatem quo consectetur et provident. Libero dolores libero dolorem velit.', '<p>Occaecati deserunt sunt cumque. Natus assumenda voluptatem cupiditate. Voluptatem sit non earum dolor recusandae ad voluptas qui. Impedit laborum eum quidem quis a sit vitae ipsa. Et qui voluptate dolorum ea sequi.</p><p>Cupiditate cupiditate voluptatem magni rem reiciendis quia dolores similique. Reprehenderit omnis assumenda sed facere. Quia placeat saepe ut amet quam itaque quis et. Sed eveniet quasi fuga nihil.</p><p>Dolorem sequi tenetur voluptatem eos nihil nam officia. Eius dolorem quae placeat. Velit sed exercitationem quia eius dignissimos facere. Reprehenderit fugiat dolor esse voluptate officiis quibusdam corrupti.</p><p>Dignissimos eius eos occaecati similique et debitis harum. Incidunt placeat velit quibusdam corrupti voluptatem dolor commodi. Ad animi totam provident blanditiis. Neque non sequi est recusandae et quia et.</p><p>Libero earum voluptatem ut nostrum repellendus fuga. Totam placeat enim fugiat quae quos quae aut enim. Quidem doloremque reprehenderit blanditiis esse et omnis laudantium. Laboriosam nam asperiores officiis ratione praesentium quo.</p><p>Sint facilis consequatur tempora voluptatum. Rerum tempora nemo eveniet illo. Quisquam hic accusantium odio sed vel temporibus.</p>', NULL, '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(4, 3, 2, 'Dolores at porro quia nemo aut excepturi.', 'quasi-saepe-similique-nisi-libero-aut', NULL, 'Omnis voluptas tempore animi ut natus recusandae explicabo. Delectus unde beatae sint est aut. Vero dolorem ipsa labore consequatur ut eum et. Atque nulla consequatur qui aut.', '<p>Qui iste quia nisi mollitia fugit enim quam. Officiis laudantium quo ea consequatur rem odio mollitia. Maiores voluptatem corporis autem sapiente id.</p><p>Ut et sit laborum at placeat consequatur. Ut placeat et aperiam molestias est cum. Recusandae unde expedita vitae. Consequatur quibusdam suscipit deleniti qui molestias laborum recusandae.</p><p>Voluptatem aut culpa error excepturi impedit totam eveniet ipsam. Adipisci blanditiis incidunt corrupti enim in debitis explicabo. Rerum nostrum sunt neque molestias excepturi maiores consequuntur.</p><p>Nemo maiores facere quia consequuntur unde. Quo amet maiores et rerum maiores enim incidunt. Ipsum consequatur ut dolores nobis non consequatur esse.</p><p>Dolores omnis dolores doloribus. Sapiente consequuntur autem quas et accusantium. Non voluptatem sapiente et ut aut harum. Sunt iste ad pariatur.</p><p>Nihil debitis eveniet ipsum. Esse est explicabo aut ut aut rerum eius. Ipsam et omnis quia. Rerum nisi temporibus iusto provident.</p>', NULL, '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(5, 2, 2, 'Eos aut praesentium est.', 'a-qui-assumenda-omnis-necessitatibus-eligendi', NULL, 'Quis nam nobis sequi excepturi explicabo vero incidunt. Dolores libero rerum earum. Odit molestiae quisquam voluptatem eum laboriosam.', '<p>Quo quasi est ea est natus voluptates. Rem fuga nam fugit tenetur voluptas non. Qui et provident nobis corporis.</p><p>Et aut laudantium molestiae fuga eaque voluptate et magnam. Non ut et quo consequatur autem voluptas. Minus sit fugiat sit porro magnam non excepturi. Officia autem quam natus voluptatem. Itaque cumque explicabo architecto quia.</p><p>Recusandae voluptatem omnis hic ut dolores sint. Quaerat quis optio expedita et. Omnis quos cum labore excepturi doloribus non accusamus ullam.</p><p>Non sint aut et. Consequatur iusto consequuntur molestiae dolorem. Quis officiis rerum quisquam sit.</p><p>Consequatur iure et et eos sit quidem ut. Sed quis voluptatem pariatur perferendis sit porro eos eum. Veritatis voluptatem praesentium officiis autem assumenda animi quae.</p><p>Numquam blanditiis quo quae temporibus. Sint ullam occaecati quod voluptatibus unde. Omnis dolores praesentium incidunt quaerat voluptatem maiores. Sint exercitationem totam qui maiores voluptatem iure.</p>', NULL, '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(6, 3, 1, 'Et magni odio beatae.', 'consequatur-dolorem-et-maiores', NULL, 'Aut eligendi neque nobis temporibus voluptas aperiam. Id dolorem dolor sapiente ut consequatur delectus asperiores. Saepe voluptas aut ut aliquid. Et non aut quam corrupti aut architecto.', '<p>Explicabo perferendis eveniet aut et est sequi. Esse eaque inventore ipsam mollitia dolorem nisi at voluptatem. Possimus corporis voluptatem sit aspernatur inventore quae error. Iusto ut a quisquam eveniet fugit.</p><p>Ut enim iure repudiandae odit reiciendis. Omnis quis molestias et est. Fugit voluptate velit qui sunt.</p><p>Beatae quo sed praesentium totam perspiciatis. Et unde quae et est dolorum. Sed velit modi aut enim quos.</p><p>Eaque facere eligendi architecto animi odio voluptatem vel. Laudantium molestiae cumque odit et rem quidem. Molestias ullam sed illum. Non quos itaque nesciunt pariatur aut molestiae.</p><p>Sunt repellat doloremque dolorum sit temporibus doloremque molestiae. Velit neque excepturi sint exercitationem animi aut cumque.</p><p>Animi vel ducimus eos voluptas earum neque cum. Ad excepturi eum recusandae neque. Repellat corporis voluptates iusto voluptatem rerum recusandae.</p><p>Quasi voluptatem tenetur voluptatem est. Ullam officia autem dolores qui. Dolor quibusdam voluptas sunt excepturi est maiores quae tempore.</p><p>Dolore aperiam nisi earum amet consectetur autem. Rem quia expedita quia molestiae doloremque ut ut earum. Itaque rerum sed eos aut quo veritatis.</p>', NULL, '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(7, 1, 3, 'Fugit minima.', 'tenetur-sequi-ipsam-quia-corrupti-quo', NULL, 'Laudantium libero in eaque quis laborum dolores. Vero iusto aliquam hic assumenda enim deleniti. Et rem repellat dolores.', '<p>Laborum amet similique ut ea ducimus id. Pariatur accusamus voluptates aut sequi consequatur provident asperiores debitis. Ut quae ullam voluptatem odio dolore. Sed aut voluptas excepturi sunt qui ut nihil. Sint quia voluptatum nostrum et.</p><p>Debitis ipsa et sunt temporibus cupiditate velit dignissimos iste. Sunt aut asperiores et blanditiis. Nobis labore minus eum. Minus tempora necessitatibus deserunt sunt eum voluptas et.</p><p>Dignissimos sed est natus ut ab blanditiis. Repellendus nostrum voluptatem ipsa. Eum aut eos et molestiae deserunt eum quam. Illum cumque recusandae sed saepe eius illo saepe eligendi.</p><p>Ea dolor labore et. Porro vel aut qui numquam. In deleniti amet est soluta similique reiciendis. Facere molestiae tempore quibusdam id adipisci id. Officiis nemo ex nemo libero deserunt repellat officiis.</p><p>Voluptas non est exercitationem laudantium tenetur eos. Explicabo accusamus aut nulla cumque. Et ut provident non omnis recusandae. Et quia itaque quo quis.</p><p>Eligendi est sed eos sit earum cupiditate. Nesciunt cumque fugit ut. Distinctio veritatis sed dignissimos ut debitis. Aut laudantium ipsam tempora quia deleniti inventore.</p><p>Sit sint est voluptate illo officiis. Ut et aut corrupti sed officia ipsa ducimus. Veniam sequi magni culpa commodi. Temporibus deserunt non et perspiciatis ea aut unde.</p><p>Provident consequuntur et et ratione labore praesentium. Quia iusto nulla perspiciatis dolores aut quis est sapiente.</p>', NULL, '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(8, 1, 3, 'Saepe sed odio dolores molestiae.', 'dolores-in-sapiente-incidunt-libero-vitae', NULL, 'Facere numquam id libero et. Temporibus eum saepe ad consectetur. Sequi cum molestias dolor eius ea.', '<p>Voluptatum qui cum rerum. Exercitationem esse explicabo ex ut. Perspiciatis ea sed facilis.</p><p>Esse aut vel alias voluptatem. Qui et ipsa nemo assumenda animi occaecati quos autem.</p><p>Impedit ut ducimus voluptate ea sunt omnis est. Consequatur voluptate nihil earum impedit aspernatur debitis. Vitae velit consequatur et itaque voluptatem esse molestiae. Dolor porro nulla porro excepturi ut omnis recusandae.</p><p>Non dolores est sint. Consequatur corrupti repellendus autem qui animi ut sunt. Eum error illum architecto ut perspiciatis maiores.</p><p>Quis quaerat quis temporibus vero velit. Veritatis ab facilis quos sit. Explicabo occaecati autem ut architecto amet eos excepturi.</p><p>Culpa ut non qui occaecati dolor mollitia hic. Voluptatem nam qui nobis exercitationem illo. Natus quod recusandae quos eum est. Iure porro voluptas rerum aut ex libero.</p><p>Et alias ipsam et aut quis et et. Suscipit qui dolorem et provident quo incidunt cumque. Quis neque eos neque doloremque asperiores omnis magni esse. Deserunt molestiae consequatur voluptatem dignissimos.</p><p>Quaerat quas sed molestiae architecto non. Impedit et est et.</p><p>Dolores quis excepturi ratione quibusdam quia. Quo praesentium omnis ducimus dolores. Quia eos tempore vel iure vel enim maxime.</p>', NULL, '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(9, 1, 3, 'Qui totam ab et voluptas velit a mollitia voluptas similique.', 'vel-accusantium-ea-mollitia-aliquam', NULL, 'Modi et hic ex omnis modi id voluptas. Beatae doloremque aut reprehenderit. Consequatur perspiciatis ipsum ut aut quisquam ullam.', '<p>Esse maxime perferendis perspiciatis nemo tempora vel cumque sequi. Impedit dignissimos sed pariatur quasi aut in ea. Reiciendis molestiae veniam omnis.</p><p>Ab aut dolorem eum voluptatem iusto. Accusamus eaque expedita non qui corporis. Eligendi ut eos doloribus quaerat saepe accusantium temporibus quis. Illo inventore sunt qui.</p><p>Corrupti officiis rerum quis sit consectetur sunt ut earum. Animi quod consequatur voluptas nostrum minus rerum dicta explicabo. Possimus exercitationem architecto eum voluptatibus inventore dolore.</p><p>Non et omnis explicabo repudiandae porro vitae ex sint. Suscipit voluptatem quis delectus similique aut dolore. Itaque a ducimus asperiores nisi. Nam magni ducimus mollitia at distinctio.</p><p>Molestiae animi omnis officiis quas eos. Eligendi est perferendis labore soluta dolor iure. Reiciendis eligendi exercitationem vitae consectetur.</p><p>Corporis error cumque sit. Molestias molestias cumque minima tempore iure. Ea possimus non sint id. Aperiam est non voluptatem in corporis expedita dolorum laboriosam.</p><p>Fugit sed consequatur eveniet ipsum. Cupiditate omnis cum tempora non provident repellendus. Facilis distinctio maiores fuga ipsam quia aut aut consequatur.</p><p>Reiciendis natus nulla inventore excepturi et facilis harum error. Ut accusamus ratione expedita cumque labore repudiandae eius. Ut optio modi qui recusandae est quis quia.</p><p>Inventore eligendi et quam est officia autem omnis voluptatum. Accusamus commodi ab ipsam quia. Repellendus ad ab tempora quo qui quos sed.</p>', NULL, '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(10, 2, 1, 'Enim autem ut quo est voluptatibus veniam esse.', 'quasi-cumque-consectetur-pariatur-ea-quas-facilis-voluptatem', NULL, 'Voluptas ea qui provident sit minus ex amet. Et quisquam id voluptatem sunt eveniet omnis et.', '<p>Dolore perferendis modi dolor delectus dolores. Cupiditate nihil ipsa ipsam illum distinctio et.</p><p>Nulla molestiae laboriosam ipsum a ipsam non. Aliquid omnis ut enim et.</p><p>Iure qui accusantium et voluptates. Rerum delectus sint consequatur ut dolorem est consectetur debitis. Optio consequatur numquam numquam possimus soluta vero.</p><p>Aliquam iste architecto minima sed non ipsum aut quo. Officiis laborum minima ullam iste exercitationem et est.</p><p>Minima omnis beatae dignissimos ut. Vel rem quibusdam autem nostrum optio iusto. Aut nostrum ad et. A ipsa accusantium aliquid quia ad qui.</p>', NULL, '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(11, 1, 1, 'Numquam quos consequuntur deleniti.', 'perferendis-placeat-qui-dolorem-animi-fugiat-laboriosam', NULL, 'Esse et dolorem temporibus dolorem nulla eveniet sint. Vel ipsam modi rem qui officiis. Neque consequatur ut ut voluptate omnis rerum iste non. Doloremque natus assumenda iusto.', '<p>Voluptatem et blanditiis rerum id ullam. Quas rem ut ut odit. Nisi eligendi aut sapiente officiis ullam porro quam.</p><p>Dolores odit officiis enim illo facilis explicabo. Et aut saepe quia numquam harum.</p><p>Quod id beatae omnis voluptatem laudantium accusantium. Odio voluptatum repellat possimus error veritatis sequi aperiam. Quos iure aut odio quae excepturi eum corporis. Eum cumque molestiae nobis vero est molestiae ratione.</p><p>Odio magnam deserunt nemo corrupti non. Repudiandae quam fugiat maxime voluptatem ipsa aperiam. Sapiente voluptas expedita sint et.</p><p>Est tempora esse ut et possimus. Eos minima quia et quod nemo. Et et provident non odit. Vitae quam quia enim quas.</p><p>Rerum quisquam consequatur ut eos harum sapiente doloribus. Quia ipsum fugit molestias explicabo. Consectetur optio et eligendi nobis dignissimos sed sequi quae.</p><p>Non pariatur neque quo est. Nostrum qui et nobis quibusdam assumenda sit. Ut unde sed nihil laborum consequatur temporibus voluptate. Quod et dolor itaque.</p><p>Tempora reprehenderit et exercitationem amet et totam minus. Dignissimos nesciunt autem ratione eveniet veritatis. Cum in praesentium numquam corrupti. Voluptas dicta consequatur dolorum necessitatibus ullam reiciendis.</p><p>Consequatur repellendus autem eum vel ipsam. Ut maiores quas expedita voluptas veritatis id.</p>', NULL, '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(12, 1, 2, 'Qui quam quis magni aut nihil reprehenderit.', 'molestiae-mollitia-non-est-similique-nam', NULL, 'Aut rerum et iure ullam voluptas pariatur. Ut autem possimus et. Cum dolor aliquid voluptate.', '<p>Voluptatem enim sit a atque animi. Qui aspernatur est illo deleniti. Non similique perferendis porro aut minima maxime vero. Ut eius et non saepe est.</p><p>Nisi quia autem ut officiis dignissimos. Atque quo placeat aspernatur. Praesentium provident quos vel provident. Asperiores qui est quia praesentium.</p><p>Provident recusandae soluta dignissimos quidem consequatur et. Quaerat sit molestiae sunt omnis aut quaerat porro sit. Ut impedit porro repellendus occaecati. Sed soluta dicta qui sit eum vel.</p><p>Amet modi fuga dolores atque repellendus. Id laboriosam dignissimos praesentium quasi. Et ipsum architecto atque omnis. Occaecati alias voluptatem cumque velit quod.</p><p>Sed nulla et et aut delectus numquam. Est est repudiandae et est sed. Possimus amet magni velit aut. Libero et expedita necessitatibus dolorem ea repellat accusantium.</p><p>Odit omnis occaecati et expedita hic tempora expedita. Quidem omnis sunt sed et in asperiores. Qui rerum fugit expedita est aut pariatur nobis quisquam.</p><p>Et aliquid nam eum aspernatur debitis accusamus. Incidunt officiis rem sint officiis at. Laborum quis veniam assumenda quia aut ad.</p><p>Autem fugit suscipit vero magnam vel repellat molestiae. Ut rem sequi sed iste. Optio sequi voluptatibus hic voluptatem.</p>', NULL, '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(13, 1, 1, 'Quis deleniti quidem.', 'cum-est-aut-dolor-sit-dolorum-quidem', NULL, 'Dicta adipisci optio qui commodi et aut. Omnis sunt nihil eveniet at blanditiis. Non assumenda asperiores aut alias odit assumenda. Accusantium et aspernatur voluptatem itaque.', '<p>Et omnis similique omnis facere. Illum dignissimos nostrum officiis asperiores reprehenderit. Enim rerum doloremque et omnis.</p><p>Sint commodi dolore delectus id. Accusantium ut non dolor officia amet beatae asperiores nam. Qui quia magni culpa voluptatem distinctio.</p><p>Dicta assumenda non sed eius doloribus et. Nihil et est deleniti qui. Iure fugit hic rerum facere atque.</p><p>Cupiditate ea fugit exercitationem velit facere consequatur et ut. Velit ut dolores sunt autem omnis. Eaque earum velit iusto minus voluptatem quisquam soluta dicta. Optio exercitationem aspernatur velit aut blanditiis veniam tempora.</p><p>Porro quo voluptas at corrupti ad. Quaerat laborum aut ad asperiores voluptatem deserunt. Distinctio laborum ex dolore minima eligendi sunt. Asperiores doloremque nemo accusantium est in beatae nesciunt.</p><p>Nulla quisquam pariatur in quo et dolor distinctio. Omnis ipsam tenetur cumque dolorem et nobis officiis. Non architecto commodi dolores et quod atque. Quia laboriosam et et.</p><p>Repellendus minus quo voluptas occaecati vero libero neque. Quasi a consequuntur pariatur eaque sed aut molestias qui.</p><p>Ducimus corrupti voluptatem quam nemo asperiores nobis qui. Natus maiores eaque sed recusandae. Voluptas assumenda sit ducimus laborum porro.</p>', NULL, '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(14, 3, 3, 'Suscipit eius et.', 'quae-voluptas-ab-ea-eos-dignissimos', NULL, 'Modi aut non repellat adipisci repellendus sed. Quia quia accusamus accusantium fuga nam magnam. Quia occaecati cum omnis perferendis. Nihil consequatur distinctio qui quos eaque tempora hic vel.', '<p>Et ut quidem earum quo. Est quaerat blanditiis non optio inventore libero sapiente. Dolorem eveniet aut recusandae facilis exercitationem optio rerum. Et tempora adipisci occaecati ab quaerat ut aut.</p><p>Consectetur dolorem culpa nisi similique iste laudantium ea. Quos unde dolores ut aut et. Nisi accusamus recusandae aut quia rerum voluptas qui sint. Et ut id hic rerum et suscipit.</p><p>Et sunt aut perferendis autem nisi ad amet excepturi. Aperiam ad mollitia explicabo dolorem. Nam fugit eum quo. Sunt non ratione beatae sed.</p><p>Totam aspernatur voluptas sequi natus. Quos cupiditate labore excepturi sequi officiis.</p><p>Eaque et et et veritatis. Rerum reprehenderit quos inventore. Voluptas ipsa aut aperiam delectus facere molestiae. Dignissimos libero facere itaque corrupti aut pariatur.</p><p>Corporis quo accusantium non amet aut. Porro doloribus et magnam ab. Est mollitia qui id pariatur. Et quia expedita modi quidem saepe nesciunt.</p><p>Amet aut est est et dolorem quod. Modi cumque tempora sint eius et. Est quasi totam eligendi est quia est sit ipsum. Ipsum molestias eum pariatur id.</p>', NULL, '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(15, 3, 3, 'Alias praesentium in qui nesciunt dolorum.', 'ratione-at-explicabo-harum-ipsam-rem-similique', NULL, 'Eum voluptatem nihil voluptas provident et ad voluptate culpa. Sit minus iste qui commodi. Iure aut ullam ut nemo quas aperiam tenetur. Quos sint sed consequatur eos minus suscipit omnis. Amet odio sequi explicabo vitae voluptatem laborum.', '<p>Veritatis recusandae quia neque illum minima. Provident sit vitae autem voluptatum saepe aut ea. Molestias doloribus sed atque deserunt.</p><p>Nihil consequuntur velit exercitationem autem nihil qui voluptate laudantium. Quia incidunt dolor quia sapiente qui magni. Est voluptas quo nostrum esse expedita ut.</p><p>Corrupti unde fuga harum dolorum ut maiores nihil. Voluptatem eaque explicabo dolores quia labore libero. Est dolores architecto quia minus ea praesentium qui. Iusto eum animi aliquid dolores cum voluptates sapiente explicabo.</p><p>In quia est magni nobis in. Odit quae ipsam repellat laudantium eaque similique est. Ut voluptatum et corporis qui laboriosam et.</p><p>Iure magnam placeat non voluptatem. Nam nemo consequatur iste aut. Doloribus enim perferendis amet optio. Omnis maiores vel nihil laboriosam temporibus distinctio.</p><p>Consequatur dolor unde omnis et. Quia consequatur enim qui at omnis aut et. Sapiente nam maxime rerum quam tenetur fuga. Molestiae ut voluptatem veniam ea officiis et possimus cum.</p><p>Accusamus et est dolor impedit a et earum. Numquam molestiae nihil itaque vel dolor. Tempore non porro maxime eius vero voluptates fugiat soluta. Provident soluta minima nihil voluptatem dolorem consequatur sit voluptas. Saepe enim commodi mollitia in saepe quas dolor.</p><p>Ea consequatur qui ut nulla ut dolor quod. Iusto quia ut perspiciatis voluptatibus illo consectetur expedita. Consequatur et sint ducimus possimus.</p><p>Ut sit expedita distinctio. Qui debitis aspernatur placeat velit. Dolores iste asperiores voluptatem quis rerum sunt reiciendis. Est distinctio architecto illo sequi tempore reiciendis voluptas.</p>', NULL, '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(16, 3, 3, 'Amet aliquam est.', 'repellendus-accusamus-illum-iure-voluptatum-expedita-distinctio-molestiae', NULL, 'Magnam doloribus sit officia hic autem sed velit. Suscipit aut unde consequatur iusto. Doloribus occaecati voluptatem alias assumenda enim consequatur sit. Eos eum quo iure nisi rerum tenetur.', '<p>Doloremque ut ut laudantium et officiis nemo deserunt. Quisquam ut accusamus aliquam aliquam consequatur nulla et. Voluptatem dolores dolores delectus ut. Quibusdam et ut enim.</p><p>Et est ut est ad consequatur magnam in id. Quo impedit ut impedit inventore suscipit placeat quod debitis. Nesciunt est quia pariatur laudantium suscipit mollitia. Eveniet qui sunt libero occaecati quasi culpa.</p><p>Repellat inventore dicta corporis repellendus fuga iusto. Aut officia omnis consequatur cumque sed vel porro. Aspernatur iste eos quasi cumque sapiente culpa officiis.</p><p>Et nihil aut consequatur iure laborum molestiae. Animi qui impedit et earum perferendis totam dolores. Et omnis quaerat enim id non. Eos sed quo quibusdam inventore.</p><p>Ex rerum ut autem id facere sapiente dolorum. Dolorem quod ut omnis. Inventore et neque voluptatem provident non iusto.</p><p>Nihil repudiandae maxime quia quidem. Deleniti autem repellendus tenetur porro sit sint deserunt. Aut ad repudiandae hic officiis ut beatae et. In velit qui delectus reiciendis numquam.</p><p>Ut ducimus et ea provident magnam sed. Nisi doloremque suscipit ut libero quo. Quasi molestiae sequi animi et aperiam repudiandae saepe.</p><p>Aliquam qui mollitia vel deserunt nemo dolores. Sint accusamus libero hic amet aut quas. Molestias qui quaerat ex consequatur et repellat qui.</p><p>Ea aut unde accusamus. Ipsam illo labore asperiores impedit. Aut molestias saepe eveniet quibusdam.</p>', NULL, '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(17, 3, 1, 'Consequatur provident aliquam laudantium.', 'sit-voluptatem-suscipit-earum-ab-error-reiciendis', NULL, 'Ipsam cupiditate ut magnam aut doloribus commodi ex nemo. Veniam quos vel suscipit distinctio.', '<p>Repellendus est est repudiandae qui sunt. Commodi enim et et quos illo. Consequuntur natus ut libero.</p><p>Consequuntur et voluptatem vero quis praesentium. Possimus eum ut voluptatem corrupti. Ipsa ipsam vero eos sed.</p><p>Veritatis et neque fuga voluptas culpa consequuntur aliquam. Impedit aut non inventore. Nesciunt quos facilis ut beatae sunt. Debitis nisi et aspernatur a modi quod non. Praesentium minus sequi modi rerum ducimus fugiat sapiente ea.</p><p>Dolorem esse autem eius veritatis quae. Voluptatem distinctio nemo ab asperiores. Quisquam architecto rem optio sapiente. Error ut qui dolorem quia.</p><p>Cupiditate voluptas perspiciatis tempore et molestiae. Sit voluptas voluptate aperiam animi unde rerum. Praesentium ut nulla autem rerum mollitia enim corrupti repellat.</p><p>Rerum voluptatem non alias rerum. Nihil consectetur rerum rem quidem est quod. Quia porro reiciendis veniam sed consequatur necessitatibus. Minus soluta qui error.</p><p>Hic qui asperiores fugiat doloribus consequatur ea saepe perspiciatis. Sunt autem cupiditate sequi repudiandae est nihil. In est atque et aut consequatur et quae. Harum et ut nihil quo in voluptates accusamus laborum.</p><p>Incidunt qui saepe numquam animi dolorem. Suscipit voluptatem velit est cupiditate impedit perspiciatis. Officiis id mollitia dignissimos quae qui saepe. Sequi dolores cupiditate tempore sint dolorem consequatur.</p><p>Iusto sit consectetur similique et doloremque corrupti. Aliquid sint odit architecto earum non est excepturi. Doloremque molestiae tenetur ut architecto esse possimus.</p><p>Eum fuga rerum cum optio enim impedit quas. Consequatur eveniet excepturi voluptas praesentium. Necessitatibus ex incidunt dolorum quasi et ipsum.</p>', NULL, '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(18, 2, 2, 'Provident distinctio qui dolor.', 'nam-odio-fuga-aspernatur-debitis', NULL, 'Exercitationem fugiat facere totam voluptas. Quis fugiat nemo voluptatem reiciendis. Voluptas qui pariatur iste quae molestiae dolorem adipisci numquam. Minus sed qui dolor pariatur. Voluptatem quos mollitia et rerum et.', '<p>Sint ducimus qui porro. Occaecati est quia libero. Error similique libero maxime doloremque praesentium error. Magnam consectetur aut vero provident expedita. Vitae nostrum impedit deleniti quis consequatur eum animi sunt.</p><p>Inventore ad beatae voluptate commodi a qui numquam. Nobis nulla quia rerum itaque. Tenetur occaecati est magni eaque nobis. Maxime odio qui voluptatibus eveniet nisi consectetur.</p><p>Sit harum voluptatibus debitis beatae repellendus aut. Ut ex est quaerat iste similique placeat. Totam culpa ex a sunt ex dignissimos. Mollitia ad eaque dicta.</p><p>Voluptatibus delectus recusandae et quis ipsum voluptatibus reprehenderit. Dicta rem qui eum. Voluptas modi non quo nostrum voluptatibus.</p><p>Ut sapiente ut amet perferendis animi ratione beatae. Adipisci alias molestiae velit explicabo. Consequatur quia sunt illo vitae.</p><p>Debitis sunt ea esse eligendi sapiente. Aut iste eum a facilis. Occaecati assumenda quod est.</p><p>Id in minima est in ut repellat corrupti. Repudiandae corporis ipsa ut enim. Quis quos ut asperiores sed.</p><p>In facilis amet sequi repellendus. Sit id molestiae ut delectus. Voluptates eum fuga aut voluptatem. Natus quod aut quo temporibus et doloremque. Inventore odio eum dolor odit et repellendus.</p><p>Vitae cupiditate laborum esse aut ad ut. Expedita accusamus eum voluptatem sit illum non. Ad consectetur beatae natus labore in omnis. Corrupti reiciendis sint quos aspernatur sint maxime. Commodi excepturi dicta quos porro aut.</p>', NULL, '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(19, 1, 1, 'Expedita qui ut qui exercitationem est iusto hic.', 'qui-non-autem-maxime-sed-quod', NULL, 'Aliquam velit consequatur voluptas atque omnis facere labore. Architecto quis magni voluptate id. Qui veritatis voluptatem facilis nostrum. Dolorem quibusdam voluptatum minus facere consectetur totam blanditiis iure.', '<p>Rerum magnam eligendi nisi voluptas nam quia esse. Ea ipsa distinctio distinctio sit. Autem praesentium deleniti quaerat illum tenetur.</p><p>Asperiores eos asperiores qui tenetur dolorem voluptatum dolorum. Deleniti id consequatur officiis rerum et dolores. Debitis aspernatur dignissimos ex fugit iusto.</p><p>Ad exercitationem est quo dolorem voluptas cumque. Aperiam autem doloremque voluptate laborum ipsam. Porro nesciunt et rerum sed adipisci incidunt.</p><p>Perspiciatis sit est aliquam repudiandae repellat aut. Maxime velit ut et cumque. Velit blanditiis et dolore itaque sed. Incidunt modi mollitia id et aut nesciunt minus.</p><p>Est blanditiis neque eum aut illo. Modi placeat et magni iusto iusto quam enim. Harum sint possimus ullam cum velit ad. Cum voluptas ipsa similique asperiores non perspiciatis ducimus.</p>', NULL, '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(20, 3, 2, 'Est facilis dolorum id animi possimus.', 'nihil-expedita-ut-eligendi-reiciendis-aut-expedita-a', NULL, 'Aliquam nam ipsa vel ipsa minima. Itaque quia tenetur deserunt velit officiis. Sed ipsa illo voluptatem numquam illum. Non beatae dolores eum quae maiores.', '<p>Similique quia adipisci ab consequatur aspernatur. Nam rerum fugiat ea. Natus consequatur non dolore dolorum.</p><p>Tempora vel ducimus ipsam autem sit. Voluptatibus dolores maiores similique sit temporibus debitis. Molestiae incidunt maxime est.</p><p>Omnis molestias suscipit qui quibusdam cum dolores. Ex et recusandae id at deserunt. Veritatis a nam iusto libero aut. Molestias ab dolor sapiente magni.</p><p>Molestiae cum vero et nesciunt porro velit labore deserunt. Accusamus sed consequuntur quidem quasi. Voluptas vel cumque quaerat quam numquam.</p><p>Aperiam ut cum voluptatem modi. Provident quasi ex non. Nulla neque est sit illum distinctio et possimus.</p><p>Labore et ut omnis omnis officia laboriosam. Non reprehenderit nam consequatur odio iusto culpa pariatur.</p>', NULL, '2024-07-01 21:11:04', '2024-07-01 21:11:04'),
(21, 1, 6, 'apa aja', 'apa-aja', NULL, 'apa aja', '<div>apa aja</div>', NULL, '2024-07-01 21:32:58', '2024-07-01 21:32:58'),
(22, 1, 6, 'apa aja2', 'apa-aja2', NULL, 'p', '<div>p</div>', NULL, '2024-07-01 21:43:07', '2024-07-01 21:43:07'),
(23, 1, 6, 'test', 'test', NULL, 'test test', '<div>test test</div>', NULL, '2024-07-01 21:48:24', '2024-07-01 21:48:24'),
(24, 1, 6, 'pppp', 'pppp', NULL, 'ppppp', '<div>ppppp</div>', NULL, '2024-07-01 21:51:37', '2024-07-01 21:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Mujur Santoso', 'laksana.safitri', 'vlaksita@example.net', '2024-07-01 21:11:03', '$2y$12$3Na4NfEd1.oyXKqby3MeDu3nal1z/1w830eojhjBBwjOr9EqrJUYu', '6CbFMRtbsRXu0fGD5Gt063x5q3GCwUfzkLKNsmCqOTLp7F4szrUpS5M9Kve4', '2024-07-01 21:11:03', '2024-07-01 21:11:03', 0),
(2, 'Michelle Handayani', 'xuyainah', 'nasrullah.prastuti@example.net', '2024-07-01 21:11:03', '$2y$12$3Na4NfEd1.oyXKqby3MeDu3nal1z/1w830eojhjBBwjOr9EqrJUYu', 'cb4fELWTgl', '2024-07-01 21:11:03', '2024-07-01 21:11:03', 0),
(3, 'Dadap Jumadi Hakim', 'cemplunk.uyainah', 'wani19@example.org', '2024-07-01 21:11:03', '$2y$12$3Na4NfEd1.oyXKqby3MeDu3nal1z/1w830eojhjBBwjOr9EqrJUYu', '6Zvhjq3DY7', '2024-07-01 21:11:03', '2024-07-01 21:11:03', 0),
(4, 'Cengkir Umay Hutagalung S.Farm', 'raina13', 'agus45@example.net', '2024-07-01 21:11:03', '$2y$12$3Na4NfEd1.oyXKqby3MeDu3nal1z/1w830eojhjBBwjOr9EqrJUYu', 'ykZYXUdGya', '2024-07-01 21:11:03', '2024-07-01 21:11:03', 0),
(5, 'Kamaria Dina Fujiati', 'nanggraini', 'faizah29@example.net', '2024-07-01 21:11:03', '$2y$12$3Na4NfEd1.oyXKqby3MeDu3nal1z/1w830eojhjBBwjOr9EqrJUYu', 'BNJkeuYg96', '2024-07-01 21:11:03', '2024-07-01 21:11:03', 0),
(6, 'admin', 'admin', 'admin@gmail.com', NULL, '$2y$12$jZJJt2hcgUq5VgT99IO/b.V8swhDKxd0lS/NkB7oz6Fo7eAKs1xjy', NULL, '2024-07-01 21:11:04', '2024-07-01 21:11:04', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
