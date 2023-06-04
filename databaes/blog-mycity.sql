-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2023 at 02:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog-mycity`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `caption` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `writer` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `readtime` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `tags` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `caption`, `writer`, `date`, `readtime`, `image`, `tags`) VALUES
(29, 'طرز تهیه کیک یزدی زعفرانی خانگی خوشمزه ', '<p style=\"text-align:right\">یکی از انواع کیک های بسیار خوشمزه و سنتی ایرانی است که همانطور که از نامش مشخص است اصالتش متعلق به شهر یزد است. این کیک خوش طعم در ماه محرم به عنوان یک شیرینی مناسبتی به عنوان نذری در میان مردم پخش می شود و به قدری محبوب است که در سراسر ایران تهیه می شود شما به راحتی می توانید این کیک را در منزل تهیه کنید و اگر دوست دارید یک کیک یزدی بازاری و خوشمزه داشته باشید همراه ما باشید با مقدار موادی که در این دستور شیرینی پزی قرار گرفته است می توانید برای ۴ نفر&nbsp;<a href=\"https://parsiday.com/2389-cake-yazdi/\">کیک یزدی</a>&nbsp;تهیه کنید. در صورتی که می خواهید مقدار کمتر یا بیشتری کیک یزدی تهیه کنید کافیست مقدار مواد را ضرب یا تقسیم کنید.</p>\r\n\r\n<h2 style=\"text-align:right\">مواد لازم</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:right\">آرد قنادی</td>\r\n			<td style=\"text-align:right\">۳۰۰ گرم معادل ۲ پیمانه و ۵ ق غذا خوری</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">شکر</td>\r\n			<td style=\"text-align:right\">۲۰۰ گرم معادل ۱ پیمانه</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">ماست غلیظ</td>\r\n			<td style=\"text-align:right\">۱۵۰ گرم معادل ۱/۲ پیمانه و ۱ ق غذا خوری</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">تخم مرغ</td>\r\n			<td style=\"text-align:right\">۳ عدد</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">روغن مایع</td>\r\n			<td style=\"text-align:right\">۱۷۵ گرم معادل&nbsp; ۳/۴ پیمانه</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">گلاب</td>\r\n			<td style=\"text-align:right\">۱ قاشق غذا خوری</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">وانیل</td>\r\n			<td style=\"text-align:right\">۱/۴ ق چای خوری</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">پودر هل</td>\r\n			<td style=\"text-align:right\">&frac14; قاشق مربا خوری</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">نمک میوه</td>\r\n			<td style=\"text-align:right\">۱/۴ ق چای خوری</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">عسل یا شربت بار</td>\r\n			<td style=\"text-align:right\">۲ ق غذا&nbsp; خوری</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">کنجد بو داده</td>\r\n			<td style=\"text-align:right\">مقدار لازم</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2 style=\"text-align:right\">طرز تهیه کیک یزدی</h2>\r\n\r\n<h3 style=\"text-align:right\">مرحله اول: آماده سازی</h3>\r\n\r\n<p style=\"text-align:right\">برای تهیه&nbsp;<a href=\"https://parsiday.com/2389-cake-yazdi/\" rel=\"noopener noreferrer\" target=\"_blank\">کیک یزدی حاج خلیفه</a>&nbsp;داخل قالب مافین کپسول کاغذی قرار دهید.سپس فر را روشن می کنیم و سینی آن را بیرون می آوریم و حرارت را روی ۱۸۰ درجه سانتیگراد قرار می دهیم تا گرم شود و آرد و بیکینگ پودر را باهم مخلوط کنید و سه بار الک کنید تا سبک شود.</p>\r\n\r\n<h3 style=\"text-align:right\">مرحله دوم: هم زدن تخم مرغ</h3>\r\n\r\n<p style=\"text-align:right\">تخم مرغ ها را جداگانه در پیاله ای می شکنیم و اگر سالم بودن در کاسه ای بزرگ می ریزیم و با همزن خوب می زنیم تا یکدست شود و در حین هم زدن شکر و هل و وانیل را کم کم اضافه می کنیم و هم می زنیم تا رنگ آن ها کرم رنگ شود باید به مدت ۷ دقیقه تخم مرغ ها را خوب بزنید.</p>\r\n\r\n<h3 style=\"text-align:right\">مرحله سوم: تهیه مایه کیک یزدی</h3>\r\n\r\n<p style=\"text-align:right\">در ادامه ماست و روغن مایع و گلاب و عسل و نمک میوه را به مواد اضافه می کنیم و خوب با همزن مواد را مخلوط می کنیم و در حین همزدن مایه کیک ،مخلوط آرد را نیز کم کم به آن اضافه می کنیم و با همزن می زنیم تا آرد در مایه گلوله نشود و مایه یکدست و منسجمی داشته باشیم( در هنگام افزودن آرد باید ۲۰ ثانیه با دور کند همزن بزنید)</p>\r\n\r\n<h3 style=\"text-align:right\">مرحله چهارم: پخت کیک یزدی</h3>\r\n\r\n<p style=\"text-align:right\">در ادامه مایه کیک را داخل ی قیف ریخته و دو سوم حجم قالب ها را قیف یا قاشق یا ملاقه از مایع کیک برداشته و می ریزیم (بعد از پخت کیک ها پف می کنند پس نیاز به فضای خالی دارند) سپس روی مایه کیک یزدی با کارد چرب شده یک بعلاوه ایجاد کنید&nbsp; و کمی کنجد بپاشید و سینی را داخل فر قرار می دهیم در ابتدا دما را روی ۲۱۰ درجه قرار دهید تا کیک کاملا پف کند سپس بعد از گذشت ۱۵ دقیقه دما را به ۱۸۰ کاهش دهید به همین راحتی کیک یزدی ما حاضر است. نوش جان</p>\r\n\r\n<h2 style=\"text-align:right\">فوت و فهای دستور پخت کیک یزدی&nbsp;</h2>\r\n\r\n<ol>\r\n	<li style=\"text-align:right\">&nbsp;اگر مشاهده کردید که اطراف کیک ها پف کرده و پخته شده است ولی وسط آن ها پف نکرده است دلیل آن یا این است که مایه کیک پس از آماده شدن زمان زیادی منتظر مانده تا داخل فر برود(باید سریعا پس از افزودن مواد و مخلوط شدن آن ها مایه کیک را در قالب بریزید و داخل فر قرار دهید)</li>\r\n	<li style=\"text-align:right\">نمک میوه اختیاری می باشد ولی باعث ترک دار شدن سطح کیک یزدی می شود.</li>\r\n	<li style=\"text-align:right\">می توانید در فر دست ساز به روی گاز نیز کیک یزدی را تهیه کنید.</li>\r\n	<li style=\"text-align:right\">برای فرهای برقی و توستر دما را ۲۰ درجه کمتر تنطیم کنید.</li>\r\n	<li style=\"text-align:right\">با این دستور حدود ۲۲ تا ۲۴ عدد کیک یزدی خواهید داشت.</li>\r\n	<li style=\"text-align:right\">اگر نتوانستید همه قالب ها را باهم داخل فر قرار دهید روی باقی مانده مواد رو بپوشانید و در دمای محیط بذارید و قالب اول رو که از فر درآوردید دوباره با مواد باقی مانده پر کنید و در فر بذارید.</li>\r\n	<li style=\"text-align:right\">عسل باعث خوش رنگ تر شدن کیک یزدی می شود.</li>\r\n	<li style=\"text-align:right\">دما فر باید از فقط پایین باشد.</li>\r\n	<li style=\"text-align:right\">ماست حتما باید چکیده و یا غلیظ باشد ماست سون بسیار مناسب است.</li>\r\n	<li style=\"text-align:right\">برای اینکه کیک یزدی ترک دار و بازاری داشته باشید حتما پخت دو مرحله ای یعنی ابتدا دمای زیاد و بعد کاهش دما را رعایت کنید.</li>\r\n</ol>\r\n', 5, '۰۲/۰۳/۱۴', 15, 'https://parsiday.com/wp-content/uploads/2019/03/cake-yazdi.jpg', 'ارد,خمیر,کیک,یزدی'),
(30, 'طرز تهیه کیک توت فرنگی', '<p style=\"text-align:right\">کیک توت فرنگی یکی از نواع کیک های ساده&nbsp;و خوشمزه در سراسر جهان که ظاهری بسیار شکیل و مجلسی دارد، .</p>\r\n\r\n<p style=\"text-align:right\">&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"text-align:right\">مواد لازم کیک توت فرنگی</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">آرد سفید</td>\r\n			<td style=\"text-align:right\">۲ پیمانه</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">شکر</td>\r\n			<td style=\"text-align:right\">۱ پیمانه</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">روغن مایع</td>\r\n			<td style=\"text-align:right\">نصف پیمانه</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">تخم مرغ</td>\r\n			<td style=\"text-align:right\">۲ عدد</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">باترمیلک</td>\r\n			<td style=\"text-align:right\">۱ پیمانه</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">بکینگ پودر</td>\r\n			<td style=\"text-align:right\">۲ قاشق چایخوری</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">وانیل</td>\r\n			<td style=\"text-align:right\">نصف قاشق چایخوری</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">نمک</td>\r\n			<td style=\"text-align:right\">نصف قاشق چایخوری</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">توت فرنگی</td>\r\n			<td style=\"text-align:right\">۱۰ عدد</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2 style=\"text-align:right\">دستور پخت کیک توت فرنگی</h2>\r\n\r\n<h3 style=\"text-align:right\">مرحله اول</h3>\r\n\r\n<p style=\"text-align:right\">ابتدا تخم مرغ را به همراه شکر داخل یک کاسه مناسب می ریزیم و با همزن دور تند خوب مخلوط می کنیم تا مخلوط کشدار شود و به رنگ کرمی در بیاید. در ادامه باترمیلک را اضافه می کنیم و کمی مخلوط می کنیم تا با مواد یکدست شود.</p>\r\n\r\n<h3 style=\"text-align:right\">مرحله دوم</h3>\r\n\r\n<p style=\"text-align:right\">پس از مخلوط شدن باترمیلک، وانیل و روغن مایع را اضافه می کنیم و مجددا مخلوط می کنیم تا مواد یکدست شوند. حالا آرد را به همراه بکینگ پودر و نمک مخلوط می کنیم و چند مرتبه الک می کنیم تا کاملا صاف و یکدست شود.</p>\r\n\r\n<h3 style=\"text-align:right\">مرحله سوم</h3>\r\n\r\n<p style=\"text-align:right\">حالا آرد را کم کم اضافه می کنیم و با لیسک مواد را مخلوط می کنیم تا مایه کیک یکدست شود. توجه کنید نیاز نیست مایه کیک را خیلی مخلوط کنید، فقط باید در حدی مخلوط کنید که مواد با هم یکدست شوند و آرد گلوله شده در مایه کیک نباشد.</p>\r\n\r\n<h3 style=\"text-align:right\">مرحله چهارم</h3>\r\n\r\n<p style=\"text-align:right\">پس از اینکه مایه کیک آماده شد یک قالب با دیواره ۲۰ سانتی متری را با کاغذ روغنی می پوشانیم یا اگر کاغذ روغنی در دسترس نبود با روغن مایع چرب می کنیم، سپس مایه کیک را داخل قالب می ریزیم و اجازه می دهیم توی قالب پخش شود.</p>\r\n\r\n<h3 style=\"text-align:right\">مرحله پنجم</h3>\r\n\r\n<p style=\"text-align:right\">حالا زیر توت فرنگی ها را کاملا آردی می کنیم و روی کیک با ترکیب دلخواه می چینیم. فر را باید از ۱۵ دقیقه قبل با حرارت ۱۷۵ درجه سانتیگراد روشن کنیم تا کاملا گرم شود و وقتی مایه کیک آماده شد معطل داغ شدن فر نشود.</p>\r\n\r\n<h3 style=\"text-align:right\">مرحله ششم</h3>\r\n\r\n<p style=\"text-align:right\">حالا قالب را در طبقه وسط فر قرار می دهیم و حدود ۴۰ تا ۴۵ دقیقه صبر می کنیم تا کیک بپزد. پس از پخت کیک دو دقیقه گریل را هم روشن می کنیم تا روی کیک هم طلایی شود. پس از خارج کردن از فر صبر می کنیم کمی خنک شود سپس از قالب خارج می کنیم.</p>\r\n\r\n<h3 style=\"text-align:right\">باتر میلک خانگی</h3>\r\n\r\n<p style=\"text-align:right\">اگر باتر میلک در خانه ندارید می توانید به سادگی آنرا در منزل تهیه کنید. کافیست یک قاشق غذاخوری از یک پیمانه شیر را کم کنید و به جای آن سرکه سفید بریزید. شیر را در دمای آشپزخانه کنار بگذارید تا ببرد سپس از آن استفاده کنید.</p>\r\n\r\n<h3 style=\"text-align:right\">پایین رفتن توت فرنگی ها</h3>\r\n\r\n<p style=\"text-align:right\">یکی از مشکلاتی که برای پخت این کیک وجود دارد این است که بعد از پف کردن کیک توت فرنگی ها داخل بافت کیک فرو می روند. برای رفع این مشکل حتما زیر توت فرنگی ها را با آرد پوشش دهید، با این روش توت فرنگی ها روی سطح کیک باقی می مانند.</p>\r\n\r\n<h3 style=\"text-align:right\">خیس شدن کیک</h3>\r\n\r\n<p style=\"text-align:right\">کسانی که تجربه پخت کیک های میوه ای را داشته باشند می دانند که پس از پخت اطراف میوه ها کمی نمدار و خیس می شود. برای کسانی که آشنایی ندارند باید بگوییم که اصلا جای نگرانی نیست و خیس شدن اطراف میوه ها طبیعی است فقط برای خمیر نشدن کیک صبر کنید خنک شود سپس برش بزنید.</p>\r\n\r\n<h3 style=\"text-align:right\">خواص توت فرنگی</h3>\r\n\r\n<p style=\"text-align:right\">توت فرنگی خواص بسیار زیادی برای سلامتی بدن دارد که از مهم ترین این خواص می توان به کاهش فشار خون، درمان یبوست، نقرص و .. اشاره کرد.</p>\r\n', 6, '۰۲/۰۳/۱۴', 25, 'https://chishi.ir/wp-content/uploads/2020/05/cake-tootfarangi.jpg', 'ارد,خمیر,کیک,توت فرنگی'),
(31, 'طرز تهیه کیک وانیلی', '<p style=\"text-align:right\">کیک وانیلی از کیک های ساده و پرطرفدار بین المللی است که معمولا به عنوان کیک پایه هم استفاده می شود،</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"text-align:right\">مواد لازم کیک وانیلی</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">تخم مرغ</td>\r\n			<td style=\"text-align:right\">۳ عدد</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">آرد</td>\r\n			<td style=\"text-align:right\">۲ و نیم لیوان</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">شکر</td>\r\n			<td style=\"text-align:right\">۱ لیوان</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">شیر</td>\r\n			<td style=\"text-align:right\">۱ لیوان</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">روغن مایع</td>\r\n			<td style=\"text-align:right\">&frac12; پیمانه</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">بکینگ پودر</td>\r\n			<td style=\"text-align:right\">۱ قاشق غذاخوری</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:right\">وانیل</td>\r\n			<td style=\"text-align:right\">۱ قاشق مربا خوری</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2 style=\"text-align:right\">طرز تهیه کیک وانیلی</h2>\r\n\r\n<h3 style=\"text-align:right\">مرحله اول</h3>\r\n\r\n<p style=\"text-align:right\">برای تهیه&nbsp;<strong><a href=\"https://darnahayat.ir/4090-cake-vanili/\">کیک وانیلی خوشمزه</a></strong>&nbsp;ابتدای کار از ۳۰ دقیقه قبل تمام مواد یخچالی را از یخچال خارج می کنیم، سپس در فضای آشپز خانه قرار می دهیم و اجازه می دهیم مواد با دمای محیط به طور کامل هماهنگ شوند.</p>\r\n\r\n<h3 style=\"text-align:right\">مرحله دوم</h3>\r\n\r\n<p style=\"text-align:right\">در این مرحله تخم مرغ به دمای محیط رسیده را به همراه شکر و وانیل درون یک کاسه مناسب اضافه می کنیم، سپس با دور تند همزن برقی به مدت ۵ تا ۷ دقیقه مخلوط می کنیم تا مخلوط تخم مرغ روشن و کش دار شود.</p>\r\n\r\n<h3 style=\"text-align:right\">مرحله سوم</h3>\r\n\r\n<p style=\"text-align:right\">حالا ابتدا روغن مایع، سپس شیر را به ترتیب به مخلوط تخم مرغ و شکر اضافه می کنیم، سپس مجددا با همزن برقی به مدت ۱ دقیقه در حد ترکیب شدن مخلوط می کنیم. در ادامه یک کاسه مناسب انتخاب می کنیم.</p>\r\n', 5, '۰۲/۰۳/۱۴', 8, 'https://panamag.ir/wp-content/uploads/2022/01/cake-vanili.jpg', 'ارد,خمیر,کیک,توت فرنگی');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `post` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `post`, `user_id`, `text`) VALUES
(11, 27, 'محمدعلی گرگیج', '<p>سلام بسیار عالی بود ممنون</p>\r\n'),
(14, 27, 'محمدعلی گرگیج', '<p>خیلی خوب</p>\r\n'),
(15, 27, 'علی سپهری', '<p>جالب بود</p>\r\n'),
(16, 29, 'محمدعلی گرگیج', '<p>بسیار عالی</p>\r\n'),
(17, 29, 'محمدعلی گرگیج', '<p>جالب بود</p>\r\n'),
(18, 29, 'علی سپهری', '<p>عالی بود تشکر</p>\r\n'),
(19, 30, 'علی سپهری', '<p>سپاس از شما</p>\r\n'),
(20, 29, 'کاربر عادی', '<p>اموزنده بود</p>\r\n'),
(21, 30, 'کاربر عادی', '<p>زیبا بود</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roll` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `roll`) VALUES
(5, 'محمدعلی گرگیج', 'mohmmadaligorgich82@gmail.com', '1234', 2),
(6, 'علی سپهری', 'gorgichmamadali@gmail.com', '1111', 2),
(7, 'کاربر عادی', 'user@gmail.com', '2222', 1);

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` bigint(20) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `post_id`) VALUES
(1, 6),
(2, 6),
(3, 7),
(4, 8),
(5, 9),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(10, 6),
(11, 6),
(12, 6),
(13, 6),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 7),
(19, 7),
(20, 7),
(21, 8),
(22, 8),
(23, 8),
(24, 8),
(25, 8),
(26, 8),
(27, 8),
(28, 8),
(29, 8),
(30, 8),
(31, 8),
(32, 8),
(33, 7),
(34, 7),
(35, 6),
(36, 6),
(37, 6),
(38, 6),
(39, 6),
(40, 6),
(41, 6),
(42, 6),
(43, 6),
(44, 6),
(45, 6),
(46, 6),
(47, 6),
(48, 6),
(49, 6),
(50, 6),
(51, 6),
(52, 6),
(53, 6),
(54, 6),
(55, 6),
(56, 6),
(57, 6),
(58, 6),
(59, 6),
(60, 6),
(61, 6),
(62, 6),
(63, 6),
(64, 6),
(65, 6),
(66, 6),
(67, 6),
(68, 6),
(69, 6),
(70, 6),
(71, 6),
(72, 6),
(73, 6),
(74, 6),
(75, 6),
(76, 6),
(77, 6),
(78, 6),
(79, 6),
(80, 6),
(81, 6),
(82, 6),
(83, 6),
(84, 6),
(85, 6),
(86, 6),
(87, 6),
(88, 6),
(89, 6),
(90, 6),
(91, 6),
(92, 6),
(93, 6),
(94, 6),
(95, 6),
(96, 6),
(97, 6),
(98, 6),
(99, 6),
(100, 6),
(101, 6),
(102, 6),
(103, 6),
(104, 6),
(105, 6),
(106, 6),
(107, 6),
(108, 6),
(109, 6),
(110, 6),
(111, 6),
(112, 6),
(113, 6),
(114, 6),
(115, 6),
(116, 6),
(117, 6),
(118, 6),
(119, 6),
(120, 6),
(121, 6),
(122, 12),
(123, 12),
(124, 6),
(125, 6),
(126, 6),
(127, 6),
(128, 6),
(129, 6),
(130, 6),
(131, 6),
(132, 6),
(133, 18),
(134, 18),
(135, 18),
(136, 18),
(137, 18),
(138, 18),
(139, 18),
(140, 18),
(141, 18),
(142, 18),
(143, 18),
(144, 27),
(145, 27),
(146, 27),
(147, 27),
(148, 27),
(149, 27),
(150, 27),
(151, 27),
(152, 27),
(153, 27),
(154, 27),
(155, 27),
(156, 27),
(157, 27),
(158, 27),
(159, 27),
(160, 27),
(161, 27),
(162, 27),
(163, 27),
(164, 27),
(165, 27),
(166, 27),
(167, 27),
(168, 27),
(169, 27),
(170, 27),
(171, 27),
(172, 27),
(173, 27),
(174, 27),
(175, 27),
(176, 27),
(177, 27),
(178, 27),
(179, 27),
(180, 27),
(181, 27),
(182, 27),
(183, 27),
(184, 27),
(185, 27),
(186, 27),
(187, 27),
(188, 27),
(189, 27),
(190, 27),
(191, 27),
(192, 27),
(193, 27),
(194, 27),
(195, 27),
(196, 27),
(197, 27),
(198, 27),
(199, 27),
(200, 27),
(201, 27),
(202, 27),
(203, 27),
(204, 27),
(205, 27),
(206, 27),
(207, 27),
(208, 27),
(209, 27),
(210, 27),
(211, 27),
(212, 27),
(213, 27),
(214, 27),
(215, 27),
(216, 27),
(217, 27),
(218, 27),
(219, 27),
(220, 27),
(221, 27),
(222, 27),
(223, 27),
(224, 27),
(225, 27),
(226, 27),
(227, 27),
(228, 27),
(229, 27),
(230, 27),
(231, 27),
(232, 27),
(233, 27),
(234, 27),
(235, 27),
(236, 27),
(237, 27),
(238, 27),
(239, 27),
(240, 27),
(241, 27),
(242, 27),
(243, 27),
(244, 27),
(245, 27),
(246, 27),
(247, 27),
(248, 27),
(249, 27),
(250, 27),
(251, 27),
(252, 27),
(253, 27),
(254, 27),
(255, 27),
(256, 27),
(257, 27),
(258, 27),
(259, 27),
(260, 27),
(261, 27),
(262, 27),
(263, 27),
(264, 27),
(265, 27),
(266, 27),
(267, 27),
(268, 27),
(269, 27),
(270, 27),
(271, 27),
(272, 27),
(273, 27),
(274, 27),
(275, 27),
(276, 27),
(277, 27),
(278, 27),
(279, 27),
(280, 27),
(281, 27),
(282, 27),
(283, 27),
(284, 27),
(285, 27),
(286, 27),
(287, 27),
(288, 27),
(289, 27),
(290, 27),
(291, 27),
(292, 27),
(293, 27),
(294, 27),
(295, 27),
(296, 27),
(297, 27),
(298, 27),
(299, 27),
(300, 27),
(301, 27),
(302, 27),
(303, 27),
(304, 27),
(305, 27),
(306, 27),
(307, 27),
(308, 27),
(309, 27),
(310, 27),
(311, 27),
(312, 27),
(313, 27),
(314, 27),
(315, 27),
(316, 28),
(317, 28),
(318, 28),
(319, 27),
(320, 27),
(321, 27),
(322, 27),
(323, 27),
(324, 27),
(325, 27),
(326, 27),
(327, 27),
(328, 27),
(329, 27),
(330, 27),
(331, 27),
(332, 27),
(333, 27),
(334, 27),
(335, 27),
(336, 27),
(337, 27),
(338, 27),
(339, 27),
(340, 27),
(341, 27),
(342, 27),
(343, 27),
(344, 27),
(345, 27),
(346, 27),
(347, 27),
(348, 29),
(349, 29),
(350, 29),
(351, 29),
(352, 29),
(353, 29),
(354, 29),
(355, 29),
(356, 29),
(357, 29),
(358, 29),
(359, 29),
(360, 29),
(361, 29),
(362, 29),
(363, 29),
(364, 29),
(365, 29),
(366, 29),
(367, 29),
(368, 29),
(369, 29),
(370, 29),
(371, 29),
(372, 29),
(373, 29),
(374, 29),
(375, 29),
(376, 29),
(377, 29),
(378, 29),
(379, 29),
(380, 29),
(381, 29),
(382, 29),
(383, 29),
(384, 29),
(385, 29),
(386, 29),
(387, 29),
(388, 29),
(389, 29),
(390, 29),
(391, 29),
(392, 29),
(393, 29),
(394, 29),
(395, 29),
(396, 29),
(397, 29),
(398, 29),
(399, 29),
(400, 29),
(401, 29),
(402, 29),
(403, 29),
(404, 29),
(405, 29),
(406, 29),
(407, 29),
(408, 29),
(409, 29),
(410, 29),
(411, 29),
(412, 29),
(413, 29),
(414, 29),
(415, 29),
(416, 29),
(417, 29),
(418, 29),
(419, 29),
(420, 29),
(421, 29),
(422, 29),
(423, 29),
(424, 29),
(425, 29),
(426, 29),
(427, 29),
(428, 29),
(429, 29),
(430, 29),
(431, 29),
(432, 29),
(433, 29),
(434, 29),
(435, 29),
(436, 29),
(437, 29),
(438, 29),
(439, 29),
(440, 27),
(441, 29),
(442, 29),
(443, 29),
(444, 29),
(445, 29),
(446, 29),
(447, 29),
(448, 27),
(449, 27),
(450, 27),
(451, 29),
(452, 29),
(453, 29),
(454, 29),
(455, 29),
(456, 29),
(457, 29),
(458, 29),
(459, 29),
(460, 29),
(461, 29),
(462, 29),
(463, 29),
(464, 29),
(465, 29),
(466, 29),
(467, 29),
(468, 29),
(469, 29),
(470, 29),
(471, 29),
(472, 29),
(473, 29),
(474, 30),
(475, 30),
(476, 30),
(477, 29),
(478, 29),
(479, 29),
(480, 30),
(481, 30),
(482, 31);

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `bio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `username`, `image`, `bio`) VALUES
(9, 'محمدعلی گرگیج', 'https://static.roocket.ir/public/images/2019/10/22/laravel-2.png', 'سلام محمدعلی هستم علاقه مند به یادگیری برنامه نویسی وب'),
(10, 'علی سپهری', 'https://www.karlancer.com/blog/wp-content/uploads/2022/08/20220827172853_fpdl.ir_young-cheerful-programmer-with-headphones-looking-you-with-smile-during-work-new-software-office_274679-9896.jpg', 'سلام سپهری هستم توسعه دهنده وب');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
