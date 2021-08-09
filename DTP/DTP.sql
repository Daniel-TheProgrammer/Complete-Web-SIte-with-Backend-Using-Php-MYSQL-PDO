-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 19, 2020 at 04:29 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acorn`
--
CREATE DATABASE IF NOT EXISTS `acorn` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `acorn`;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
CREATE TABLE `leads` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `stairs` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `fname`, `lname`, `street`, `city`, `state`, `zip`, `email`, `stairs`) VALUES
(1, 'bill', 'gates', '123 street', 'city', 'washington', '12345', 'bill@ms.com', '10-10');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `author`, `image`, `created_at`) VALUES
(1, 'Stay Active While Inside', '<p>For the next few weeks we&rsquo;ve been told to stay at home as much as possible to help combat the spread of COVID-19, but it&rsquo;s important to keep active, especially if you have limited mobility.</p>\r\n\r\n<p>Keeping active will help maintain muscle mass, prevent falls, and&nbsp;improve your overall&nbsp;balance and flexibility. Keeping joints moving, using muscles, getting the blood pumping and the lungs working are all beneficial to both physical and mental health.&nbsp;Being sedentary for long periods can lead to various medical problems.</p>\r\n\r\n<p><em><strong>Make sure to contact your physician before changing your fitness routine.</strong></em></p>\r\n\r\n<p><strong>STRENGTH EXERCISES<br />\r\nChair Squats:</strong> this exercise focuses on strengthening your lower body.</p>\r\n\r\n<p>1. Stand in front of a chair, back toward the chair, and keep your feet and hips the same width apart, bending knees slightly.</p>\r\n\r\n<p>2. Lower your body onto the chair as if you were about to take a seat.</p>\r\n\r\n<p>3. Lift your body off the chair to return into a standing position</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Wall Push-ups:</strong> this exercise focuses on strengthening your arms and chest.</p>\r\n\r\n<p>1. Stand in front of a wall, keeping about 2 feet from you and the wall.</p>\r\n\r\n<p>2. Place your hands up against the wall directly in front of your shoulders.</p>\r\n\r\n<p>3. Keep your body straight and while you lean against the wall, bend the elbows, lean forward and perform a push up motion.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>BALANCE EXERCISES<br />\r\nSingle Foot Stand: </strong>the goal of this exercise is to be able to stand on one foot for as long as possible (up to a minute). For this, make sure you have a chair next to you to help you balance.</p>\r\n\r\n<p>1. Stand with the back of a chair in front of you and hold onto it.</p>\r\n\r\n<p>2. Pick up your foot and balance on the opposite one for as long as possible.</p>\r\n\r\n<p>3. Put your foot back down and then repeat with the opposite foot.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tippy Toe Lifts:</strong> strengthen your legs and ankles with this exercise. Use a chair with this exercise to help balance.</p>\r\n\r\n<p>1. Stand behind the back of a chair.</p>\r\n\r\n<p>2. Lift your body up using your tippy toes as high as you can that is comfortable and then place your feet back down to a flat foot.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FLEXIBLITY EXERCISES<br />\r\nWall Snow Angels: </strong>this exercise will help you open your chest and decrease the tightness in the middle of the back.</p>\r\n\r\n<p>1. Stand a few inches away from the wall and make sure youre body is flat.</p>\r\n\r\n<p>2. Put your hands and palms facing outward above your head, like youre creating a snow angel.</p>\r\n\r\n<p>3. With your arms touching the wall, raise and lower them.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Head Turn:</strong> this is more of a stretch than an excercise. It helps keep your neck flexible</p>\r\n\r\n<p>1. In a relaxed position, stand or sit with your back straight and shoulders relaxed.</p>\r\n\r\n<p>2. Turn your head slowly to the side until you start to feel a stretch.</p>\r\n\r\n<p>3. Hold your head in that position for a second, then slowly turn it back to the starting position. Repeat with the other side of your neck.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>source: <a href=\"https://www.nursenextdoor.com/blog/6-easy-and-safe-exercises-for-seniors/\">https://www.nursenextdoor.com/blog/6-easy-and-safe-exercises-for-seniors/</a></p>\r\n                                       ', 'Arthur P. Author', 'img/stayactive.jpg', '2020-08-17'),
(2, 'Stuck in Quarantine? Things to do While Stuck Inside', '<p>With the world fighting against COVID-19, more schools, restaurants and attractions are starting to close and people are being asked to stay home. Experts say that staying home will help &ldquo;flatten the curve&rdquo; and stop the virus from spreading, and while not the entire country is on lockdown, those of us who are might need some ideas on what to do while hunkering down.</p>\r\n\r\n<p>Below is a short list of ideas to keep you and your family occupied &mdash; and even productive, during quarantine.</p>\r\n\r\n<ul>\r\n	<li>Complete a puzzle (word search, sudoku, rubik&rsquo;s cube)</li>\r\n	<li>Start a journal or blog on a favorite hobby</li>\r\n	<li>Learn a new language. There&rsquo;s an app for that!</li>\r\n	<li>Deep clean the house</li>\r\n	<li>Declutter your home</li>\r\n	<li>Go out for a walk. Just make sure you&rsquo;re social distancing!</li>\r\n	<li>Video chat with your loved ones (near and far)</li>\r\n	<li>Try out a new at-home yoga/workout routine</li>\r\n	<li>Color in a coloring book</li>\r\n	<li>Host your own wine tasting. Set up stations in different rooms of the house.</li>\r\n	<li>Try and replicate your favorite dish from a cooking show</li>\r\n	<li>Catch up on some well-deserved sleep<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<p>For more ideas on what to do while being quarantined, here are a few sites that may help:<br />\r\n<br />\r\n<a href=\"https://www.everydayfamily.com/slideshow/stuck-inside-check-30-fun-indoor-activities/\">30 Fun Indoor Activities - Everyday Family</a></p>\r\n\r\n<p><a href=\"https://www.crosswalk.com/family/parenting/things-to-do-with-your-family-while-you-are-quarantined.html\">Things to Do With your Family While Quarantined - Crosswalk</a></p>\r\n\r\n<p><a href=\"https://www.tahoedailytribune.com/news/quarantining-making-the-best-of-it/\">Making the Best of Quarantining - Tahoe Daily Tribune</a></p>\r\n\r\n<p><a href=\"https://www.usatoday.com/story/life/health-wellness/2020/03/16/coronavirus-quarantine-100-things-do-while-trapped-inside/5054632002/\">100 Things to Do While Trapped Inside - USA Today</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Make sure to follow us on all our other social medias!<br />\r\n@AcornStairliftsInc on Facebook / Instagram&nbsp;and @Acorn_Stairlift on Twitter</em></p>\r\n\r\n<p>&nbsp;</p>', 'Chester B. Writington', 'img/stuck.jpg', '2020-08-17'),
(3, 'Aging Spotlight', '\r\n<p>Running has always been a passion for Joan Benoit Samuelson, and she has been a huge inspiration for runners nationwide.</p>\r\n\r\n<p>Benoit&#39;s success began in&nbsp;1979, when she competed in the Boston Marathon and won. Four years later in 1983, she competed again and beat her original record time; and in 1984, she won the gold medal in the first women&rsquo;s Olympic Games marathon in Los Angeles. Benoit also held the record for the fastest time for an American woman at them Chicago Marathon&nbsp;for 32 years after winning the race in 1985.</p>\r\n\r\n<p>Her success doesn&#39;t end there.&nbsp;40 years later in 2019, at the age of 61, Benoit took her skills back to where it all started and competed in the Boston Marathon again, where she finished within 40 minutes of her winning time in 1979. &ldquo;I don&#39;t have any secrets, I&rsquo;m just passionate about what I do. I love to run&hellip;I love to set goals for myself,&rdquo; says Samuelson in a recent interview with <a href=\"http://www.growingbolder.com\">Growing Bolder.</a> &ldquo;If people can grab onto that and be inspired, then great!&rdquo;</p>\r\n\r\n<p>Running hasn&rsquo;t just been a passion of her past, at the age of 50, Benoit set a record at 50 at the US Olympic trials. When asked what advice she has when it comes to getting older and continuing to do what she loves, she said &ldquo;Look forward. Live each day like its your last.&rdquo;</p>\r\n\r\n<p>&ldquo;Life has a beginning and an end and there&rsquo;s no finish line right now in my life, and when its there it&rsquo;s there.&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sources:&nbsp;<a href=\"https://www.growingbolder.com/staying-in-the-race-at-any-age-joan-benoit-samuelsons-story-3058736/\">https://www.growingbolder.com/staying-in-the-race-at-any-age-joan-benoit-samuelsons-story-3058736/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Make sure to follow us on all our other social medias!<br />\r\n@AcornStairliftsInc on Facebook / Instagram&nbsp;and @Acorn_Stairlift on Twitter</em></p>', 'Joan Benoit Samuelson', 'img/aging.jpg', '2020-08-17'),
(4, 'Top 4 Common Stairlift Questions', '<p>Here at Acorn, we understand that opting for a stairlift can be a big change in people&rsquo;s lives, though it shouldn&rsquo;t be a difficult one. In our experience, it&rsquo;s also a decision you won&rsquo;t regret. The one comment we hear all the time from satisfied Acorn customers is: &ldquo;I only wish I&rsquo;d done it sooner.&rdquo;</p>\r\n\r\n<p>If you&rsquo;re making that decision and have questions to ask, the best way to start is by giving us a call at 1-866-873-6574 to speak to one of our friendly and helpful stairlift specialists.</p>\r\n\r\n<p>In the meantime, here are four of the most frequently asked questions:</p>\r\n\r\n<p><strong>QUESTION #1: Will my stairs accommodate an Acorn Stairlift?</strong> The answer is almost certainly yes. Acorn builds, supplies and installs around 70,000 stairlifts per year and it is very rare indeed that we come across a staircase that we are unable to accommodate. Some people worry that their stairs are too narrow, but Acorn Stairlifts are designed to be extremely slim, with seats, armrests and a footrest that all fold up neatly when not in use. Our stairlift rails are also slim unobtrusive and fix to the staircase, not the walls.<br />\r\n<br />\r\nFor curved staircases our pioneering FastTrack&reg; modular rail system is extremely versatile and flexible, capable of providing bespoke stairlift solutions in almost all settings. Our FastTrack&reg;modular system is a system built on a comprehensive inventory of differently shaped interlocking rail sections, allowing us to select the right sections for your stairs and assemble the rail in as little as a few days, if available, far faster than any other manufacturer.</p>\r\n\r\n<p><strong>QUESTION #2:</strong> <strong>How much will an Acorn Stairlift cost?</strong> Since no two staircases are exactly the same, it&rsquo;s impossible to give a standard price. What we can tell you though, is exactly how much your own custom made Acorn Stairlift will cost, with no hidden extras or unexpected add-ons. The way we do this is through a completely <strong>FREE</strong>, no-obligation home consultation by one of our experienced Acorn Stairlift surveyors, based all around the US. Our surveyor will first ask about your individual needs, then precisely measure your staircase. Only then can we recommend the ideal solution for you and your home, and provide a comprehensive all-inclusive quote for the work. We won&rsquo;t pressure you and your quote is valid for a year, giving you plenty of time to decide.</p>\r\n\r\n<p><strong>QUESTION #3:</strong> <strong>How quickly can an Acorn Stairlift be installed?</strong> Some of our customers need a stairlift urgently, perhaps after a fall or returning home from a stay in hospital. In the past it could take several weeks to design, build, ship and install a one-off stairlift rail &ndash; especially for a curved staircase &ndash; and with some stairlift companies it still does. But Acorn can fit your stairlift within a few days of your first contact if available, even for curved stairs.</p>\r\n\r\n<p><strong>QUESTION #4:</strong> <strong>Will I be safe on my stairlift?</strong> All Acorn Stairlifts are independently tested to meet or exceed all current and relevant safety standards. Our installer will complete a comprehensive safety check and make sure you are completely confident in all aspects of using your stairlift before leaving you with it. In the rare event that something does go wrong, help is just a phone call away, seven days-a-week, 365 (366 this year) days-a-year.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Make sure to follow us on all our other social medias!<br />\r\n@AcornStairliftsInc on Facebook / Instagram&nbsp;and @Acorn_Stairlift on Twitter</em></p>', 'Walker T. Ranger', 'img/top4.jpg', '2020-08-17');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `quote` text NOT NULL,
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `quote`, `author`) VALUES
(1, 'From the beginning on the phone to the sales rep & installer, all were courteous, professional, friendly & empathetic to needs of client, especially elderly', 'Thomas Albert - PA'),
(2, 'Acorn had best presentation and best design idea for our curved staircase. 2 other companies we got bids were using unfamiliar subcontractors. A local Med equipment company discouraged us from even thinking about it because stairlifts were unreliable and they had quit installing them. The primary reason we went with Acorn was dealing directly with the Mfg and Acorn Employees. No Subcontractors. So far, the thing is working well!\r\n\r\n', 'Rueben Carothers - TX'),
(5, 'Everything went as clock work. Everyone I talked to was helpful. The experience & the stairlift were better than I expected', 'Harvey Wohlers - MN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
