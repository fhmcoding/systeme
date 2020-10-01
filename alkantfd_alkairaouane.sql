-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 01 oct. 2020 à 11:27
-- Version du serveur :  10.3.24-MariaDB-log-cll-lve
-- Version de PHP : 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `alkantfd_alkairaouane`
--

-- --------------------------------------------------------

--
-- Structure de la table `absencs`
--

CREATE TABLE `absencs` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeStart` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeEnd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `alphas`
--

CREATE TABLE `alphas` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favourite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `alphas`
--

INSERT INTO `alphas` (`id`, `title`, `description`, `image`, `statu`, `favourite`, `created_at`, `updated_at`) VALUES
(7, 'التلميذ الخطري ينال نحاسية \"أولمبياد المعلوميات\"', 'توج التلميذ محمد الخطري بالميدالية النحاسية، وذلك في نهائيات الدورة الثانية والثلاثين للأولمبياد الدولية في المعلوميات دورة 2020، التي نظمت \"عن بعد\" خلال الفترة الممتدة من 13 إلى19 شتنبر 2020، تحت إشراف اللجنة الدولية، بعدما كان مقررا احتضانها حضورياً من طرف دولة سنغفورة.\r\n\r\n وقد مثل بلادنا في هذه التظاهرة العلمية الدولية أربعة مترشحين، بعد اجتيازهم مختلف محطات الأولمبياد الوطنية في المعلوميات، التي تنظمها الوزارة بشراكة مع الجمعية المغربية للثقة الرقمية \"أمان\"، حيث يتم على إثر اختباراتها النهائية تحديد أعضاء الفريق الذي يمثل بلادنا فيها، ويتعلق الأمر بكل من التلميذ محمد الخطري، ممثلا للأكاديمية الجهوية لجهة الدار البيضاء سطات ونبيل بودراع وأيمن مطيع وأيمن رياض الصلح ممثلين للأكاديمية الجهوية لجهة الرباط سلا القنيطرة.\r\n\r\nوقد حصل الفريق الوطني في هذه الدورة على 580 نقطة، حصد منها التلميذ محمد الخطري لوحده 260 نقطة.\r\n\r\nوتعتبر هذه النتيجة جد مشرفة للمغرب وللمنظومة التعليمية، وذلك اعتبارا لحداثة مشاركة بلادنا في هذه التظاهرة الدولية (المشاركة الرابعة)، مقارنة بعدد الدول المشاركة التي يبلغ عددها 86 دولة وعدد مشاركاتها.\r\n\r\nوبهذه المناسبة تتقدم وزارة التربية الوطنية والتكوين المهني والتعليم العالي والبحث العلمي، وجمعية \"أمان\" بخالص التهاني إلى المتوجين وأمهاتهم وآبائهم وكذا  إلى الأطر التربوية التي سهرت على تأطيرهم لتحقيق هذه النتائج المشرفة، متمنية لهم التميز في التظاهرات المقبلة.', 'student/bHZYjsatekfUTSU9Ex1wkdfCuqJcwCqGPYWu7D00.jpeg', 'true', 'true', '2020-09-26 10:13:45', '2020-09-26 10:15:01'),
(8, 'اجتماع وزراء التعليم العرب', 'أوصى اجتماع وزراء التعليم العرب الذي نظمته وزارة التعليم بالمملكة العربية السعودية، عبر تقنية المناظرة المرئية، يوم الأربعاء 23 شتنبر 2020، باعتماد وثيقة تطوير التعليم في العالم العربي،   وذلك بعد مناقشتها، ودراسة السبل الكفيلة بتطوير وتجويد المنظومة التربوية بالوطن العربي.\r\n\r\n\r\n\r\nوقد شاركت في أشغال هذا الاجتماع 16 دولة عربية، وتميزت بمساهمة نوعية للسيد سعيد أمزازي، وزير التربية الوطنية والتكوين المهني والتعليم العالي والبحث العلمي، الذي أعرب في كلمة له بالمناسبة، عن شكره للمملكة العربية السعودية في شخص معالي وزير التعليم الدكتور حمد بن محمد آل الشيخ، والمنظمة العربية للتربية والثقافة والعلوم (ألكسو) وجامعة الدول العربية والبرلمان العربي على الدعوة الكريمة إلى المشاركة في هذا الاجتماع بين وزراء التعليم العرب لتبادل الرؤى وتنسيق المواقف في مجال التربية والتكوين.\r\n\r\n\r\n\r\n واعتبر أن وثيقة تطوير التعليم في العالم العربي تشكل لبنة أساسية في بناء مواطن عربي، كما أنها تجيب عن كافة الإشكالات التي تعرفها المنظومة التربوية في مختلف الأقطار العربية، ومنها بالخصوص المنظومة التعليمية المغربية، وذلك من خلال حرصها على تحقيق معدلات الجودة في جميع مراحل التعليم منذ الطفولة المبكرة وإلى التعليم الجامعي، وما بعد الجامعي، دون إغفالها دور التكوين الأساس والمستمر، مشددا على ضرورة توفير نظام تعليمي يتلاءم والمستجدات الطارئة لضمان تعليم مستمر ومتواصل للجميع وذي جودة، خاصة في ظل الظرف الاستثنائي الذي يمر بها العالم بسبب جائحة كورونا المستجد.\r\n\r\n\r\n\r\nوعبر السيد سعيد أمزازي، عن موقف المملكة المغربية المزكي والمدعم لهذه الوثيقة، وذلك اعتبارا لانسجام روحها والتقاء مضامينها مع مضامين القانون الإطار 1751- المتعلق بمنظومة التربية والتكوين والبحث العلمي والتي يوليها صاحب الجلالة الملك محمد السادس نصره الله عناية خاصة، مجسدا أهم ملامح هذا الانسجام والالتقائية في دعوتها إلى تطوير \"التعليم عن بعد\"، باعتباره مكملا للتعليم الحضوري، وكذا في استيعابها للتغيرات السريعة والتحولات الرقمية بصفتها أداة من أدوات تحقيق مجتمع المعرفة، وقدرتها، كذلك، على رفع تحديات العولمة والانخراط في عالم تسمه المنافسة والتطور السوسيو اقتصادي.\r\n\r\n\r\n\r\nفضلا عن ذلك، كونها تنص على تحقيق الإنصاف وتكافؤ الفرص من أجل تعميم تعليم دامج وتضامني وكذا ضمان الحق في ولوج التربية والتكوين للجميع ومواصلة الجهود الهادفة إلى التصدي للانقطاع الدراسي والحد من الفوارق الاجتماعية، والعمل على توفير الشروط الكفيلة بالقضاء على الأمية وإعادة تنظيم وهيكلة التربية والتكوين والبحث العلمي مع إصلاح التعليم العالي وتشجيع البحث العلمي والتقني والابتكار. كما تنص على إرساء نموذج بيداغوجي موجه نحو الذكاء يطور الحس النقدي وينمي الانفتاح والابتكار ويربي على المواطنة والقيم الكونية، وكل هذه الأهداف السامية، الرامية إلى الارتقاء بالفرد وتقدم المجتمع، يسعى إلى تحقيقها القانون الإطار المتعلق بمنظومة التربية والتكوين والبحث العلمي، الذي يتماشى مع الرؤية الاستراتيجية للتربية والتكوين 2015-2030.\r\n\r\n\r\n\r\nإلى ذلك، قدم السيد الوزير عدة اقتراحات باسم المملكة المغربية من أجل إغناء هذه الوثيقة تم اعتمادها من طرف المؤتمر.', 'student/ImpHvhDwxLexpRm6tgs99fssZjKAJ4BxZzGhsEan.jpeg', 'true', 'true', '2020-09-26 10:19:11', '2020-09-26 10:19:39');

-- --------------------------------------------------------

--
-- Structure de la table `by_class_exmen`
--

CREATE TABLE `by_class_exmen` (
  `id` int(10) UNSIGNED NOT NULL,
  `exmen_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `by_class_lessons`
--

CREATE TABLE `by_class_lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `lesson_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `by_student_exmen`
--

CREATE TABLE `by_student_exmen` (
  `id` int(10) UNSIGNED NOT NULL,
  `exmen_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `by_student_lessons`
--

CREATE TABLE `by_student_lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `lesson_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `calendar_students`
--

CREATE TABLE `calendar_students` (
  `id` int(10) UNSIGNED NOT NULL,
  `classe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `calendar_teachers`
--

CREATE TABLE `calendar_teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `teacher_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `centermedia`
--

CREATE TABLE `centermedia` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_fr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname_fr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE `classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `leval_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `classes`
--

INSERT INTO `classes` (`id`, `leval_id`, `name`, `created_at`, `updated_at`) VALUES
(29, '14', 'groupe A', '2020-09-30 16:10:15', '2020-09-30 16:10:15'),
(30, '15', 'groupe A', '2020-09-30 16:10:40', '2020-09-30 16:10:40'),
(31, '15', 'groupe B', '2020-09-30 16:11:04', '2020-09-30 16:11:04'),
(32, '20', 'groupe A', '2020-09-30 16:13:33', '2020-09-30 16:13:33'),
(33, '20', 'groupe B', '2020-09-30 16:13:44', '2020-09-30 16:13:44'),
(34, '20', 'groupe C', '2020-09-30 16:14:00', '2020-09-30 16:14:00'),
(35, '21', 'groupe A', '2020-09-30 16:14:15', '2020-09-30 16:14:15'),
(36, '21', 'groupe B', '2020-09-30 16:14:28', '2020-09-30 16:14:28'),
(37, '21', 'groupe C', '2020-09-30 16:14:41', '2020-09-30 16:14:41'),
(38, '22', 'groupe A', '2020-09-30 16:15:01', '2020-09-30 16:15:01'),
(39, '22', 'groupe B', '2020-09-30 16:15:17', '2020-09-30 16:15:17'),
(40, '22', 'groupe C', '2020-09-30 16:15:29', '2020-09-30 16:15:29'),
(41, '23', 'groupe A', '2020-09-30 16:15:47', '2020-09-30 16:15:47'),
(42, '23', 'groupe B', '2020-09-30 16:16:00', '2020-09-30 16:16:00'),
(43, '23', 'groupe C', '2020-09-30 16:16:12', '2020-09-30 16:16:12'),
(44, '24', 'groupe A', '2020-09-30 16:16:31', '2020-09-30 16:16:31'),
(45, '24', 'groupe B', '2020-09-30 16:16:45', '2020-09-30 16:16:45'),
(46, '24', 'groupe C', '2020-09-30 16:16:58', '2020-09-30 16:16:58'),
(47, '25', 'groupe A', '2020-09-30 16:17:15', '2020-09-30 16:17:15'),
(48, '25', 'groupe B', '2020-09-30 16:17:25', '2020-09-30 16:17:25'),
(49, '25', 'groupe C', '2020-09-30 16:17:41', '2020-09-30 16:17:41'),
(50, '28', '1 APIC', '2020-09-30 18:28:25', '2020-09-30 18:28:25'),
(51, '30', '2APIC', '2020-09-30 18:31:54', '2020-09-30 18:31:54'),
(52, '32', '3APIC', '2020-09-30 18:32:27', '2020-09-30 18:32:27');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lesson_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `comment_exmen`
--

CREATE TABLE `comment_exmen` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exmen_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `conxtions`
--

CREATE TABLE `conxtions` (
  `id` int(10) UNSIGNED NOT NULL,
  `teacher_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `emails`
--

CREATE TABLE `emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `emails`
--

INSERT INTO `emails` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'test@gmail.com', '2020-09-21 02:28:24', '2020-09-21 02:28:24'),
(2, 'moutcho70@gmail.com', '2020-09-21 02:29:02', '2020-09-21 02:29:02'),
(3, 'moutcho70@gmail.com', '2020-09-21 02:29:02', '2020-09-21 02:29:02');

-- --------------------------------------------------------

--
-- Structure de la table `exmen`
--

CREATE TABLE `exmen` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `docunment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_docunment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `centermedia_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `frame` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `groups`
--

INSERT INTO `groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, NULL),
(2, '2', NULL, NULL),
(3, '3', NULL, NULL),
(4, '4', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `infos`
--

CREATE TABLE `infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `infos`
--

INSERT INTO `infos` (`id`, `user_id`, `key`, `created_at`, `updated_at`) VALUES
(31, '86', '123456', '2020-10-01 13:36:37', '2020-10-01 13:36:37'),
(32, '87', '123456', '2020-10-01 13:44:06', '2020-10-01 13:44:06'),
(33, '88', '123456', '2020-10-01 13:45:49', '2020-10-01 13:45:49'),
(34, '89', '123456', '2020-10-01 13:58:15', '2020-10-01 13:58:15'),
(35, '90', '123456', '2020-10-01 13:59:12', '2020-10-01 13:59:12'),
(36, '91', '123456', '2020-10-01 14:05:52', '2020-10-01 14:05:52'),
(37, '92', '123456', '2020-10-01 14:07:44', '2020-10-01 14:07:44'),
(38, '93', '123456', '2020-10-01 14:08:47', '2020-10-01 14:08:47'),
(39, '94', '123456', '2020-10-01 14:09:40', '2020-10-01 14:09:40'),
(40, '95', '123456', '2020-10-01 14:10:43', '2020-10-01 14:10:43'),
(41, '96', '123456', '2020-10-01 14:11:38', '2020-10-01 14:11:38'),
(42, '97', '123456', '2020-10-01 14:12:34', '2020-10-01 14:12:34'),
(43, '98', '123456', '2020-10-01 14:14:47', '2020-10-01 14:14:47'),
(44, '99', '123456', '2020-10-01 14:17:24', '2020-10-01 14:17:24'),
(45, '100', '123456', '2020-10-01 14:19:18', '2020-10-01 14:19:18'),
(46, '101', '123456', '2020-10-01 14:20:04', '2020-10-01 14:20:04'),
(47, '102', '123456', '2020-10-01 14:20:59', '2020-10-01 14:20:59'),
(48, '103', '123456', '2020-10-01 14:21:42', '2020-10-01 14:21:42'),
(49, '104', '123456', '2020-10-01 14:23:12', '2020-10-01 14:23:12'),
(50, '105', '123456', '2020-10-01 14:24:09', '2020-10-01 14:24:09'),
(51, '106', '123456', '2020-10-01 14:24:32', '2020-10-01 14:24:32'),
(52, '107', '123456', '2020-10-01 14:25:06', '2020-10-01 14:25:06'),
(53, '108', '123456', '2020-10-01 14:25:46', '2020-10-01 14:25:46'),
(54, '109', '123456', '2020-10-01 14:25:51', '2020-10-01 14:25:51'),
(55, '110', '123456', '2020-10-01 14:27:05', '2020-10-01 14:27:05'),
(56, '111', '123456', '2020-10-01 14:27:50', '2020-10-01 14:27:50'),
(57, '112', '123456', '2020-10-01 14:28:45', '2020-10-01 14:28:45'),
(58, '113', '123456', '2020-10-01 14:30:07', '2020-10-01 14:30:07'),
(59, '114', '123456', '2020-10-01 14:31:30', '2020-10-01 14:31:30'),
(60, '115', '123456', '2020-10-01 14:32:36', '2020-10-01 14:32:36'),
(61, '116', '123456', '2020-10-01 14:33:16', '2020-10-01 14:33:16'),
(62, '117', '123456', '2020-10-01 14:33:19', '2020-10-01 14:33:19'),
(63, '118', '123456', '2020-10-01 14:35:47', '2020-10-01 14:35:47'),
(64, '119', '123456', '2020-10-01 14:37:12', '2020-10-01 14:37:12'),
(65, '120', '123456', '2020-10-01 14:41:49', '2020-10-01 14:41:49'),
(66, '121', '123456', '2020-10-01 14:45:08', '2020-10-01 14:45:08'),
(67, '122', '123456', '2020-10-01 14:46:30', '2020-10-01 14:46:30'),
(68, '123', '123456', '2020-10-01 14:48:46', '2020-10-01 14:48:46'),
(69, '124', '123456', '2020-10-01 14:49:45', '2020-10-01 14:49:45'),
(70, '125', '123456', '2020-10-01 14:50:50', '2020-10-01 14:50:50'),
(71, '126', '123456', '2020-10-01 14:56:34', '2020-10-01 14:56:34'),
(72, '127', '123456', '2020-10-01 14:57:55', '2020-10-01 14:57:55'),
(73, '128', '123456', '2020-10-01 14:59:58', '2020-10-01 14:59:58'),
(74, '129', '123456', '2020-10-01 15:05:53', '2020-10-01 15:05:53'),
(75, '130', '123456', '2020-10-01 15:08:00', '2020-10-01 15:08:00'),
(76, '131', '123456', '2020-10-01 15:09:15', '2020-10-01 15:09:15'),
(77, '132', '123456', '2020-10-01 18:00:23', '2020-10-01 18:00:23'),
(78, '133', '123456', '2020-10-01 18:05:04', '2020-10-01 18:05:04'),
(79, '134', '123456', '2020-10-01 18:10:58', '2020-10-01 18:10:58'),
(80, '135', '123456', '2020-10-01 18:12:45', '2020-10-01 18:12:45'),
(81, '136', '123456', '2020-10-01 18:15:31', '2020-10-01 18:15:31'),
(82, '137', '123456', '2020-10-01 18:59:17', '2020-10-01 18:59:17'),
(83, '138', '123456', '2020-10-01 19:15:08', '2020-10-01 19:15:08'),
(84, '139', '123456', '2020-10-01 19:22:47', '2020-10-01 19:22:47');

-- --------------------------------------------------------

--
-- Structure de la table `lastnews`
--

CREATE TABLE `lastnews` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `docunment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `centermedia_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type_docunment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frame` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `levals`
--

CREATE TABLE `levals` (
  `id` int(10) UNSIGNED NOT NULL,
  `maslak_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `levals`
--

INSERT INTO `levals` (`id`, `maslak_id`, `name`, `created_at`, `updated_at`) VALUES
(14, '12', 'التمهيدي الاول', '2020-09-25 21:05:18', '2020-09-26 19:51:26'),
(15, '12', 'التمهيدي الثاني', '2020-09-25 21:05:51', '2020-09-26 19:51:46'),
(20, '15', 'المستوى الاول', '2020-09-26 11:08:08', '2020-09-26 11:08:08'),
(21, '15', 'المستوى الثاني', '2020-09-26 11:08:24', '2020-09-26 11:08:24'),
(22, '15', 'المستوى الثالث', '2020-09-26 11:08:38', '2020-09-26 11:08:38'),
(23, '15', 'المستوى الرابع', '2020-09-26 11:08:58', '2020-09-26 11:08:58'),
(24, '15', 'المستوى الخامس', '2020-09-26 11:09:21', '2020-09-26 11:09:21'),
(25, '15', 'المستوى السادس', '2020-09-26 11:09:38', '2020-09-26 11:09:38'),
(27, '16', 'الاولى عام', '2020-09-30 14:50:18', '2020-09-30 14:50:18'),
(28, '16', 'الاولى دولي', '2020-09-30 16:08:19', '2020-09-30 16:08:19'),
(29, '16', 'الثانية عام', '2020-09-30 16:08:37', '2020-09-30 16:08:37'),
(30, '16', 'الثانية دولي', '2020-09-30 16:08:52', '2020-09-30 16:08:52'),
(31, '16', 'الثالثة عام', '2020-09-30 16:09:04', '2020-09-30 16:09:04'),
(32, '16', 'الثالثة دولي', '2020-09-30 16:09:27', '2020-09-30 16:09:27');

-- --------------------------------------------------------

--
-- Structure de la table `maslaks`
--

CREATE TABLE `maslaks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `maslaks`
--

INSERT INTO `maslaks` (`id`, `name`, `created_at`, `updated_at`) VALUES
(12, 'التعليم الاولي', '2020-09-25 22:16:24', '2020-09-25 22:16:24'),
(15, 'التعليم الابتدائي', '2020-09-25 22:16:42', '2020-09-25 22:16:42'),
(16, 'التعليم الثانوي الاعدادي', '2020-09-25 22:16:58', '2020-09-25 22:16:58'),
(17, 'التعليم الثانوي التأهيلي', '2020-09-26 04:16:51', '2020-09-26 11:07:29'),
(19, 'التعليم العالي', '2020-09-30 14:48:52', '2020-09-30 14:48:52');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(24, '2014_10_12_000000_create_users_table', 1),
(25, '2014_10_12_100000_create_password_resets_table', 1),
(26, '2020_08_31_211014_create_centermedia_table', 1),
(27, '2020_08_31_211144_create_teachers_table', 1),
(28, '2020_08_31_211524_create_maslaks_table', 1),
(29, '2020_08_31_211553_create_levals_table', 1),
(30, '2020_08_31_211828_create_classes_table', 1),
(31, '2020_08_31_211934_create_subjects_table', 1),
(32, '2020_08_31_220636_create_students_table', 1),
(33, '2020_08_31_221718_create_conxtions_table', 1),
(34, '2020_08_31_223408_create_groups_table', 1),
(35, '2020_08_31_223557_create_lessons_table', 1),
(36, '2020_08_31_225834_create_exmen_table', 1),
(37, '2020_08_31_230135_create_reponses_table', 1),
(38, '2020_08_31_231056_create_by_student_lessons_table', 1),
(39, '2020_08_31_231602_create_by_class_lessons_table', 1),
(40, '2020_08_31_231928_create_by_student_exmen_table', 1),
(41, '2020_08_31_232014_create_by_class_exmen_table', 1),
(42, '2020_08_31_232406_create_comments_table', 1),
(43, '2020_08_31_232717_create_comment_exmen_table', 1),
(44, '2020_08_31_233542_create_vue_lessons_table', 1),
(45, '2020_08_31_233721_create_vue_exmen_table', 1),
(46, '2020_08_31_234657_create_notes_table', 1),
(47, '2020_09_03_130103_create_points_table', 2),
(48, '2020_09_04_084112_create_pointexmen_table', 3),
(49, '2020_09_05_081752_create_calendar_students_table', 4),
(50, '2020_09_05_081923_create_calendar_teachers_table', 4),
(52, '2020_09_06_103605_create_absencs_table', 5),
(53, '2020_09_08_104607_create_infos_table', 6),
(55, '2020_09_11_140812_create_msgs_table', 7),
(56, '2020_09_12_111527_create_msgexmen_table', 8),
(57, '2020_09_17_130930_create_private_chats_table', 9),
(58, '2020_09_20_115143_create_news_table', 10),
(59, '2020_09_20_115949_news', 10),
(60, '2020_09_20_120036_create_posts_table', 10),
(61, '2020_09_20_120353_create_lasts_table', 11),
(62, '2020_09_20_164501_create_lastnews_table', 12),
(63, '2020_09_20_171055_create_alphas_table', 13),
(64, '2020_09_21_021655_create_emails_table', 14);

-- --------------------------------------------------------

--
-- Structure de la table `msgexmen`
--

CREATE TABLE `msgexmen` (
  `id` int(10) UNSIGNED NOT NULL,
  `exman_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_file` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `msgs`
--

CREATE TABLE `msgs` (
  `id` int(10) UNSIGNED NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_file` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `teacher_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `withpremision` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vu_student` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vu_teatcher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vu_dercture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vu_father` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pointexmen`
--

CREATE TABLE `pointexmen` (
  `id` int(10) UNSIGNED NOT NULL,
  `centermedia_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exmen_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doucument` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `points`
--

CREATE TABLE `points` (
  `id` int(10) UNSIGNED NOT NULL,
  `centermedia_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lesson_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doucument` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `private_chats`
--

CREATE TABLE `private_chats` (
  `id` int(10) UNSIGNED NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_file` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_audio` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reponses`
--

CREATE TABLE `reponses` (
  `id` int(10) UNSIGNED NOT NULL,
  `exmen_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname_fr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lasttname_fr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leval_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'empty',
  `absente` int(11) NOT NULL,
  `number_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `leval_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `students`
--

INSERT INTO `students` (`id`, `user_id`, `firstname_ar`, `firstname_fr`, `lastname_ar`, `lasttname_fr`, `gender`, `leval_name`, `date_of_birth`, `place_of_birth`, `father_name`, `mother_name`, `responsable`, `job`, `email`, `phone`, `photo`, `classe_id`, `absente`, `number_id`, `created_at`, `updated_at`, `leval_id`) VALUES
(31, '87', 'الراجي', 'AHLAM', 'احلام', 'RAJI', 'femelle', '32', '14-09-2006', 'العيون', 'عبد الرحمان', 'لطيفة', 'عبد الرحمان', 'تاجر', 'ahlamraji@gmail.com', '0661077350', 'teacher\\defuolt.png', '52', 0, 0, '2020-10-01 14:04:18', '2020-10-01 14:04:18', 32);

-- --------------------------------------------------------

--
-- Structure de la table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `leval_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `subjects`
--

INSERT INTO `subjects` (`id`, `leval_id`, `name`, `created_at`, `updated_at`) VALUES
(26, '28', 'اللغة العربية', '2020-09-30 18:52:37', '2020-09-30 18:52:37'),
(27, '30', 'اللغة العربية', '2020-09-30 18:52:52', '2020-09-30 18:52:52'),
(28, '32', 'اللغة العربية', '2020-09-30 18:53:09', '2020-09-30 18:53:09'),
(29, '28', 'اللغة الفرنسية', '2020-09-30 18:53:39', '2020-09-30 18:53:39'),
(30, '32', 'اللغة الفرنسية', '2020-09-30 19:01:51', '2020-09-30 19:01:51'),
(31, '30', 'اللغة الفرنسية', '2020-09-30 19:02:25', '2020-09-30 19:02:25'),
(32, '28', 'اللغة الانجليزية', '2020-09-30 19:03:31', '2020-09-30 19:03:31'),
(33, '30', 'اللغة الانجليزية', '2020-09-30 19:03:51', '2020-09-30 19:03:51'),
(34, '32', 'اللغة الانجليزية', '2020-09-30 19:04:05', '2020-09-30 19:04:05'),
(35, '28', 'الاجتماعيات', '2020-09-30 19:04:28', '2020-09-30 19:04:28'),
(36, '30', 'الاجتماعيات', '2020-09-30 19:04:46', '2020-09-30 19:04:46'),
(37, '32', 'الاجتماعيات', '2020-09-30 19:05:54', '2020-09-30 19:05:54');

-- --------------------------------------------------------

--
-- Structure de la table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname_fr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lasttname_fr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statu_famile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Matiere` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Diploma` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `centermedia_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `statu`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'MohamedA', 'test@gmail.com', '$2y$10$Ka.6nZTjSDvyKpv/SzCB0OuvSYe11viXEvJ.3fWVog/zmcOvowkDG', 'director', 'true', 'nCViXge0yWXflEEsYOKXXGs4nwaa4b23xc5DPlK2Mk0uf2Z6DyNWMYin1Ob6', '2020-09-03 15:44:54', '2020-09-22 18:25:18'),
(76, 'khadijazabour', 'khadijaalkairaouane@gmail.com', '$2y$10$iGPn.zXD7BYAB4SWMzwsfeNefZJk.dtQOFn2QTR0WNmARqGfIEUI2', 'director', 'true', 'nDBlKma74aD2ufzM9IDdWvRVoiXF7D55T3lWdwVS2hLM647H3V0rzpJhXDOw', '2020-09-30 16:34:20', '2020-09-30 16:34:49'),
(77, 'brahimsbai', 'brahimsbai@gmail.com', '$2y$10$iuRkWrZereP1wjbC0qgWue9zEKM2jZ57tlYbzhemApcgAvTjV088e', 'director', 'true', 'RWvOwDyVxjuSwtVALoAsupk2VmOg22gA5dDAcdzK26mJVYEa0YaICk5so4iz', '2020-09-30 16:36:22', '2020-09-30 16:36:22'),
(78, 'souadjahid', 'souadjahid@gmail.com', '$2y$10$tWMsfY1HUp/KNn20tAlOOODgDQ8W8/uNU3LnWzpnZKkBt5AJyEc9a', 'director', 'true', NULL, '2020-09-30 16:36:59', '2020-09-30 16:37:18'),
(79, 'bananeammar', 'bananeammar@gmail.com', '$2y$10$43DXBXST7AT65wOLmJg8yeorZC7BcWMTSrFqMldQIUa0FTBVEOuAG', 'director', 'true', '655vILXRcrr0JzNxt02CXw9vfBSqqfrZlvWxLZpOuvkw3rUoCZrBfZ0AIaZJ', '2020-09-30 16:37:53', '2020-09-30 16:37:53'),
(81, 'student_test', 'student_test@gmail.com', '$2y$10$U/T.Aew9Aya2XohyhgwOWufpR8d47l5qf55Ejxmo9x6iNx4eAORIm', 'teacher', 'true', NULL, '2020-09-30 23:50:14', '2020-09-30 23:50:14'),
(86, 'as.elfallah', 'as.Elfallah@gmail.com', '$2y$10$c4z38fXm9UPHPMlnjJAiYugLyskkyy6yFisu6CHkNkV0tphC6S2JG', 'student', 'true', 'OLgWNhqBNeHdOAhAMAHLFcdjUkOjnwolfeBzjFL7gRTRAd9LQll5En9ByG1O', '2020-10-01 13:36:37', '2020-10-01 13:36:37'),
(87, 'ahlam.rj', 'ahlamraji@gmail.com', '$2y$10$S5ILsI05IO.dNyUKj9qFhOJ9s0AoJoWF1DeXNPux.Tx.hEMFTAiPC', 'student', 'true', 'yHFIQsbsI7Dkd30tb3LxMHDYpmnA4WSjFRMYfSfZa82797nsT5kA93HI9rIm', '2020-10-01 13:44:06', '2020-10-01 14:05:26'),
(88, 'ra.maalaynine', 'ra.maalaynine@gmail.com', '$2y$10$7UZW.HXxfIwoGelKvbG52.7VB8UMgBf4A7BUjkxV4odtxGjzKXYvO', 'student', 'true', NULL, '2020-10-01 13:45:49', '2020-10-01 13:45:49'),
(89, 'ta.zannoud', 'ta.zannoud@gmail.com', '$2y$10$hJz.IBMKfGpETXaUJEIgjeHNi8pxY1w2Q95BDnChnKNMLmLfSl09i', 'student', 'true', NULL, '2020-10-01 13:58:15', '2020-10-01 13:58:15'),
(90, 'hi.aalouan', 'hi.aalouan@gmail.com', '$2y$10$ghRfMilwan2gbLQQcSzgAOFZ6A4zDm2PQJe.Cw7wi3aqOMOKX0ati', 'student', 'true', NULL, '2020-10-01 13:59:12', '2020-10-01 13:59:12'),
(91, 'br.bounaaje', 'br.bounaaje@gmail.com', '$2y$10$/r93AWBXticmmju8b6iwX.s9XKofRCsxemrefc73i4kB3N/ZBj5ZC', 'student', 'true', NULL, '2020-10-01 14:05:52', '2020-10-01 14:05:52'),
(92, 'sa.rida', 'sa.rida@gmail.com', '$2y$10$uzAWliP7fWyWLvx2o4u1lu0ECI0eddbXe.5Mf5FxHkpbUXKx4Kjti', 'student', 'true', NULL, '2020-10-01 14:07:44', '2020-10-01 14:07:44'),
(93, 'ar.zannoud', 'ar.zannoud@gmail.com', '$2y$10$aPnzHpiQakUY1or5i5tDeud7RqjtPFTjryy4y686ipkUaSBRTWr3W', 'student', 'true', NULL, '2020-10-01 14:08:47', '2020-10-01 14:08:47'),
(94, 'sa.ouzgani', 'sa.ouzgani@gmail.com', '$2y$10$LpmKpmIuGS0xELjjUQ97TudcPOOYGpzkRqfD3Oa.MC5yIoHxxHH4m', 'student', 'true', NULL, '2020-10-01 14:09:40', '2020-10-01 14:09:40'),
(95, 'za.zaym', 'za.zaym@gmail.com', '$2y$10$o/6pL2ltTL.0uBoBN7wQ7O.OQKpmGgCBNul3Me.jLkLNXaokpr2ke', 'student', 'true', NULL, '2020-10-01 14:10:43', '2020-10-01 14:10:43'),
(96, 'ra.souad', 'ra.souad@gmail.com', '$2y$10$S1y4Od1ozUJUoLztUT6PWuPmf7H1ywgJFVNGebCC6MxPRshqKBUI.', 'student', 'true', NULL, '2020-10-01 14:11:38', '2020-10-01 14:11:38'),
(97, 'ze.dich', 'ze.dich@gmail.com', '$2y$10$8qNMjqSSrZ89spmoHCtrMuCwPNK5BupOav12c7VtDitwgSiRJuHl.', 'student', 'true', NULL, '2020-10-01 14:12:34', '2020-10-01 14:12:34'),
(98, 'bi.qarafi', 'bi.qarafi@gmail.com', '$2y$10$f7dgIz5SLpttzRm2hgdpg.zJ/x7Ka.an3V89R.x7q.2TMmhePAC5i', 'student', 'true', NULL, '2020-10-01 14:14:47', '2020-10-01 14:14:47'),
(99, 'cheleh.hibrahimsbai', 'chelehhiba@gmail.com', '$2y$10$LpQAbPugxO/UCKhjNXsdYeHI2WcLeUJbxn4opbGAGl1CWUdtJAOg.', 'student', 'true', NULL, '2020-10-01 14:17:24', '2020-10-01 14:17:24'),
(100, 'bouderbal.ma', 'bouderbalmariam@gmail.com', '$2y$10$mLjBxaQBuOMM3orjGj8aTOqvJkaCMm./x39.XEWFDZOUfFkhKm5zq', 'student', 'true', NULL, '2020-10-01 14:19:18', '2020-10-01 14:19:18'),
(101, 'salma.zw', 'salmazouita@gmail.com', '$2y$10$uS9o852UFF3N3pzRsBMgNePdDnNwFNSzU5yKQTd.c8UgS/72P1ZXa', 'student', 'true', NULL, '2020-10-01 14:20:04', '2020-10-01 14:20:04'),
(102, 'talbi.ay', 'aya.talbi@gmail.com', '$2y$10$VbzJ58KJVqGtQJWyJyz2nOp/Ps7SoEiTVCqtWZ8GFW5rz7cfNw3o6', 'student', 'true', NULL, '2020-10-01 14:20:59', '2020-10-01 14:20:59'),
(103, 'soukina.kn', 'soukinakanti@gmail.com', '$2y$10$o1.Qg73dYVo4bX08oN7N3.bWLIju2k9LYTOsOcJdcbIlUPADCGsxq', 'student', 'true', NULL, '2020-10-01 14:21:42', '2020-10-01 14:21:42'),
(104, 'rguibi.th', 'thourayarguibi@gmail.com', '$2y$10$RJBXn0lsZR1oFwLBu1B85up83btcGpMobIELjv3sQ8wz1KkHkX28q', 'student', 'true', NULL, '2020-10-01 14:23:12', '2020-10-01 14:23:12'),
(105, 'saadi.ma', 'mariamsaadi@gmail.com', '$2y$10$QZoDGi62MNNG3h93OHAqneVIEKgQYbWnge8gAsFtNfhQTB61X4Nr2', 'student', 'true', NULL, '2020-10-01 14:24:09', '2020-10-01 14:24:09'),
(106, 'na.henane', 'na.henane@gmail.com', '$2y$10$t4yyA3tfI6d2iKQZtGTnEe6I.Orz1y7f1XXtYBvzlZWhMHbNamKOy', 'student', 'true', NULL, '2020-10-01 14:24:32', '2020-10-01 14:24:32'),
(107, 'ansari.is', 'israeelansari@gmail.com', '$2y$10$QTkSN7YXu21FdWzVNAauf.m4ZV.iTChniBfB/eDqpMuq2piPlKOka', 'student', 'true', NULL, '2020-10-01 14:25:06', '2020-10-01 14:25:06'),
(108, 'sa.guernaoui', 'sa.guernaoui@gmail.com', '$2y$10$7UrojGlfUf/UNmwnrbOhy.6ULduQ4bEIzK/ECZxk1NvH48Fo6nqe6', 'student', 'true', NULL, '2020-10-01 14:25:46', '2020-10-01 14:25:46'),
(109, 'elayamani.ay', 'ayaelyamani@gmail.com', '$2y$10$60SOsNoKmCtqRPXb0ievY.1s8QV6zy3Bb/qgpSw7k7Fg3JAFou/Gq', 'student', 'true', NULL, '2020-10-01 14:25:51', '2020-10-01 14:25:51'),
(110, 'biadillah.med', 'medismailbiadillah@gmail.com', '$2y$10$IcKgXjOQoIgPXVD7Avvnsui/yalofVDgmeO6bn5HQX9B35.X7WYt2', 'student', 'true', NULL, '2020-10-01 14:27:05', '2020-10-01 14:27:05'),
(111, 'mansour.lmb', 'lmbarkimansour@gmail.com', '$2y$10$K/sEeJ1aulnoiJa9nwdL6eLs0CMQssBvdoy8S/IVeTAp/ZwLDUwX6', 'student', 'true', NULL, '2020-10-01 14:27:50', '2020-10-01 14:27:50'),
(112, 'fathi.dfl', 'daifallahfathi@gmail.com', '$2y$10$P88e6KSpmgC12BgyjcuiM.ORqO0DpiR.zI.Yg91dLzbNPQDJWBBPq', 'student', 'true', NULL, '2020-10-01 14:28:45', '2020-10-01 14:28:45'),
(113, 'ab.aabid', 'ab.aabid@gmail.com', '$2y$10$fShBdCDvn9VpPpsxGyMb1OBEuZv5FKwuCfCuI.yQbIsR2qMqRljIq', 'student', 'true', NULL, '2020-10-01 14:30:07', '2020-10-01 14:30:07'),
(114, 'hassanfadel.sw', 'swahhassanfadel@gmail.com', '$2y$10$WbcHsvO6oVI15VdXLNaA.eG0cQH8KrS3rFVvfkQrX1qp.2O/aJ6Km', 'student', 'true', NULL, '2020-10-01 14:31:29', '2020-10-01 14:31:29'),
(115, 'hassan.la', 'hassanlakhalfi@gmail.com', '$2y$10$.lAj1Ft.Vg.GwdCWe61gYuOVYC1yJ9tIxqYLC4guWSs0Pz/eIWS/W', 'student', 'true', NULL, '2020-10-01 14:32:36', '2020-10-01 14:32:36'),
(116, 'ha.aggag', 'ha.aggag@gmail.com', '$2y$10$Q7pxIp92.i4ISfP50V3X6uFZ0gO6oY9mJHP5cg34flmlh1wXvtYCO', 'student', 'true', NULL, '2020-10-01 14:33:16', '2020-10-01 14:33:16'),
(117, 'ayoub.rs', 'ayoubrass@gmail.com', '$2y$10$0Q97NbOzy7yZG.1Ncr5WUe6K.qQzIVv2.ZiU5nVa577ExMPutyleu', 'student', 'true', NULL, '2020-10-01 14:33:19', '2020-10-01 14:33:19'),
(118, 'is.elmoussaoui', 'is.elmoussaoui@gmail.com', '$2y$10$3t2hFni.LBPWqrOrr2hA4usDB1XNYoxtZVrT4lPeZsZGs5qGxYP5C', 'student', 'true', NULL, '2020-10-01 14:35:47', '2020-10-01 14:35:47'),
(119, 'ri.bammou', 'ri.bammou@gmail.com', '$2y$10$szoI//lHxPrVW0Wvx0kBzeeyQe/JkGxkuQnw1.rMy/MEo.i2tal/2', 'student', 'true', NULL, '2020-10-01 14:37:12', '2020-10-01 14:37:12'),
(120, 'mo.elkamel', 'mo.elkamel@gmail.com', '$2y$10$Vo4Vn7aJL/xeCFk98DKWE.hg4QMXy78dQa9ygdlkLeso4i72.Ekju', 'student', 'true', NULL, '2020-10-01 14:41:49', '2020-10-01 14:41:49'),
(121, 'mo.maelainin', 'mo.maelainin@gmail.com', '$2y$10$LgerDbiBe8AR.aKVqndqAubedJCZGyv2KkwUaFvXV6rlXZfr51zny', 'student', 'true', NULL, '2020-10-01 14:45:08', '2020-10-01 14:45:08'),
(122, 'sa.omansour', 'sa.omansour@gmail.com', '$2y$10$U3hG1I.T1OizhbZ2WmuzKO3bAb06A4VDGrLrA6HZttOvHjcvkg3Fe', 'student', 'true', NULL, '2020-10-01 14:46:30', '2020-10-01 14:46:30'),
(123, 'sa.omansour', 'sa.omansou@gmail.com', '$2y$10$AXJXYzxNs2IdESUddX0CF.4YV4z0FhJeesqFbM7J4nUlKj2caAKFS', 'student', 'true', NULL, '2020-10-01 14:48:46', '2020-10-01 14:48:46'),
(124, 'ba.embarec', 'ba.embarec@gmail.com', '$2y$10$z4JXTMmL5C85xwaCjiSKCueyd/Xxm8VqnhL45O0JWuzjNqyisfvZq', 'student', 'true', NULL, '2020-10-01 14:49:45', '2020-10-01 14:49:45'),
(125, 'ib.zakaoui', 'ib.zakaoui@gmail.com', '$2y$10$c09lEb3vEJZESARIacKc8uWCvjo7q3wEwP7LRKeRVP/NvwlAzH0Wu', 'student', 'true', NULL, '2020-10-01 14:50:50', '2020-10-01 14:50:50'),
(126, 'a.b.bousaid', 'a.b.bousaid@gmail.com', '$2y$10$yPdzaSWhNqAaRbTlcnkP/.LKS5yZECYezJ8GAJiWor.NNd9EaD2rC', 'student', 'true', NULL, '2020-10-01 14:56:34', '2020-10-01 14:56:34'),
(127, 'ya.sbai', 'ya.sbai@gmail.com', '$2y$10$WMzXFPNxvuPIW8SIUrgQje.m6.IppzHDOBOfgThJJRfmbE6zy/PPu', 'student', 'true', NULL, '2020-10-01 14:57:55', '2020-10-01 14:57:55'),
(128, 'ho.housni', 'ho.housni@gmail.com', '$2y$10$NUdnCM1xrptY5IocmNntiODO3OE6VnIj97hFFHvCcLfQ34f4jDZte', 'student', 'true', NULL, '2020-10-01 14:59:58', '2020-10-01 14:59:58'),
(129, 'ba.hamdi', 'ba.hamdi@gmail.com', '$2y$10$dqjmDxVQsA6FcwDo9nFAmempsCtOdi6KUlKzUlap6A8b7QRP8pQc.', 'student', 'true', NULL, '2020-10-01 15:05:53', '2020-10-01 15:05:53'),
(130, 'mh.bounaaj', 'mh.bounaaj@gmail.com', '$2y$10$WWPnPz0V3JTuUtHDPNfrx.hQUtYO85KsYYQyAJCiUmpcoXkLXNoRO', 'student', 'true', NULL, '2020-10-01 15:08:00', '2020-10-01 15:08:00'),
(131, 'ha.ezzaiar', 'ha.ezzaiar@gmail.com', '$2y$10$0qlnh.Ir8FmDLfAww8QgEuhTrERRBid6PYIwW3u30nrWk6zpEqqry', 'student', 'true', NULL, '2020-10-01 15:09:15', '2020-10-01 15:09:15'),
(132, 'ro.dich', 'ro.dich@gmail.com', '$2y$10$eU.nXYd317q.Vg8.r9quSuPyJ/.YcNZRmpU7Aylzy2h6qsONBIaJC', 'student', 'true', NULL, '2020-10-01 18:00:23', '2020-10-01 18:00:23'),
(133, 'm.t.benosmane', 'm.t.benosmane@gmail.com', '$2y$10$HZe39fjwf8D9kIjqxos90uhBWBapyeL6hfDmzW8GKWelH1/ICEM9K', 'student', 'true', NULL, '2020-10-01 18:05:04', '2020-10-01 18:05:04'),
(134, 'ba.boushaba', 'ba.boushaba@gmail.com', '$2y$10$Se7Dm7p4yU.TW3y2gO3TX.7U/Jp4xMhRWt7qTmwb4rkXqBVC1FEWi', 'student', 'true', NULL, '2020-10-01 18:10:58', '2020-10-01 18:10:58'),
(135, 'ab.elfghir', 'ab.elfghir@gmail.com', '$2y$10$Px1rCZxGnt2vYaRI/19o2uUGzNv2EQMzU1JnSuPIH/y1I9manul4y', 'student', 'true', NULL, '2020-10-01 18:12:45', '2020-10-01 18:12:45'),
(136, 'sa.ouhmi', 'sa.ouhmi@gmail.com', '$2y$10$SsDfBTMEpnB50iM3gC3qn.7BKrXZj2PcAuoiZMPMDJQBY9/MJysS.', 'student', 'true', NULL, '2020-10-01 18:15:31', '2020-10-01 18:15:31'),
(137, 'mr.bougraj', 'mr.bougraj@gmail.com', '$2y$10$vGyMqUnurH4voeTyXHaZ1uoJ5wlyRJ9ZPBDGIXo3GthwtO4cMKaJe', 'student', 'true', NULL, '2020-10-01 18:59:17', '2020-10-01 18:59:17'),
(138, 'ma.laayali', 'ma.laayali@gmail.com', '$2y$10$g3266.9ELljQXO4luZbQQuZFPV8DFjgGI2c7sTtStepox6Vozz1bK', 'student', 'true', NULL, '2020-10-01 19:15:08', '2020-10-01 19:15:08'),
(139, 'sa.achrak', 'sa.achrak@gmail.com', '$2y$10$mY.DTdCsEmJyUa6USTZSeuk6vU.OGpqVNofLEqfFOjd9E6nZ7ebO.', 'student', 'true', NULL, '2020-10-01 19:22:47', '2020-10-01 19:22:47'),
(140, 'z.yousoufi', 'z.yousoufi@gmail.com', '$2y$10$uO1Q4JbnCLHejOP/FLSJzuIxvJEJBwunuKJV/BAdgM.ylW6gdmrHW', 'student', 'true', NULL, '2020-10-01 19:28:18', '2020-10-01 19:28:18');

-- --------------------------------------------------------

--
-- Structure de la table `vue_exmen`
--

CREATE TABLE `vue_exmen` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exmen_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `vue_lessons`
--

CREATE TABLE `vue_lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lesson_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `absencs`
--
ALTER TABLE `absencs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `alphas`
--
ALTER TABLE `alphas`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `by_class_exmen`
--
ALTER TABLE `by_class_exmen`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `by_class_lessons`
--
ALTER TABLE `by_class_lessons`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `by_student_exmen`
--
ALTER TABLE `by_student_exmen`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `by_student_lessons`
--
ALTER TABLE `by_student_lessons`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `calendar_students`
--
ALTER TABLE `calendar_students`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `calendar_teachers`
--
ALTER TABLE `calendar_teachers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `centermedia`
--
ALTER TABLE `centermedia`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comment_exmen`
--
ALTER TABLE `comment_exmen`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `conxtions`
--
ALTER TABLE `conxtions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `exmen`
--
ALTER TABLE `exmen`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lastnews`
--
ALTER TABLE `lastnews`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `levals`
--
ALTER TABLE `levals`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `maslaks`
--
ALTER TABLE `maslaks`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `msgexmen`
--
ALTER TABLE `msgexmen`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `msgs`
--
ALTER TABLE `msgs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `pointexmen`
--
ALTER TABLE `pointexmen`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `private_chats`
--
ALTER TABLE `private_chats`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reponses`
--
ALTER TABLE `reponses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `vue_exmen`
--
ALTER TABLE `vue_exmen`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vue_lessons`
--
ALTER TABLE `vue_lessons`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `absencs`
--
ALTER TABLE `absencs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `alphas`
--
ALTER TABLE `alphas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `by_class_exmen`
--
ALTER TABLE `by_class_exmen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `by_class_lessons`
--
ALTER TABLE `by_class_lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `by_student_exmen`
--
ALTER TABLE `by_student_exmen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `by_student_lessons`
--
ALTER TABLE `by_student_lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `calendar_students`
--
ALTER TABLE `calendar_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `calendar_teachers`
--
ALTER TABLE `calendar_teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `centermedia`
--
ALTER TABLE `centermedia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `comment_exmen`
--
ALTER TABLE `comment_exmen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `conxtions`
--
ALTER TABLE `conxtions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `exmen`
--
ALTER TABLE `exmen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `infos`
--
ALTER TABLE `infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT pour la table `lastnews`
--
ALTER TABLE `lastnews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `levals`
--
ALTER TABLE `levals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `maslaks`
--
ALTER TABLE `maslaks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT pour la table `msgexmen`
--
ALTER TABLE `msgexmen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `msgs`
--
ALTER TABLE `msgs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `pointexmen`
--
ALTER TABLE `pointexmen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `points`
--
ALTER TABLE `points`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `private_chats`
--
ALTER TABLE `private_chats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT pour la table `reponses`
--
ALTER TABLE `reponses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT pour la table `vue_exmen`
--
ALTER TABLE `vue_exmen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `vue_lessons`
--
ALTER TABLE `vue_lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
