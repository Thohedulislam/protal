-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2022 at 03:12 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(10, 'Sports', '2022-11-26 07:13:59', '2022-11-26 07:13:59'),
(11, 'TopNews', '2022-11-26 07:14:11', '2022-11-26 07:14:11'),
(12, 'Highlight News', '2022-11-26 07:25:17', '2022-11-26 07:25:17'),
(13, 'Teconology', '2022-11-30 03:32:08', '2022-11-30 03:32:08'),
(14, 'World', '2022-11-30 03:32:23', '2022-11-30 03:32:23'),
(16, 'Entertainment', '2022-11-30 03:32:57', '2022-11-30 03:32:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_19_105810_create_categories_table', 2),
(6, '2022_11_20_060643_create_posts_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `image`, `cate_id`, `created_at`, `updated_at`) VALUES
(10, 'Mbappe has found harmony with France, but tension lies ahead at PSG and a sale could follow', 'As the French players huddled together to celebrate Adrien Rabiot’s equalising goal against Australia, there was an embrace between the Juventus midfielder and France’s superstar forward Kylian Mbappe.\r\nTo many, the scene may have appeared to be a straightforward moment of relief after the World Champions fell behind in their World Cup opening match. Yet to those who have followed this dramatic French national team in recent years, it was a sign of harmony.', '1669804131.webp', 10, '2022-11-30 04:28:51', '2022-11-30 04:28:51'),
(11, 'England 3 Wales 0: Rashford at the double, Foden takes chance, has Bale bowed out?', 'Two goals in a minute from Marcus Rashford and Phil Foden helped England end Wales’ resistance to top Group B and set up a round-of-16 date with Senegal.\r\nAfter a dour first half, England were brought to life when Rashford scored a sublime free kick before Foden finished at the far post from \r\nHarry Kane’s cross following woeful Welsh defending.', '1669804254.avif', 10, '2022-11-30 04:30:54', '2022-11-30 04:30:54'),
(12, 'Nine minutes and 53 seconds: The excruciating final moments of the USMNT’s win over Iran', 'Nine minutes and 53 seconds.\r\nStoppage time in the U.S. men’s national team 1-0 win over Iran was agony. Almost 10 full minutes of exasperation, terrified shrieks and furious shouting, and then, finally — mercifully — a gigantic sigh of relief.\r\nThe U.S. got the win they needed against Iran in Tuesday night’s World Cup Group B finale, advancing them to the round of 16. But only just.', '1669804329.webp', 10, '2022-11-30 04:32:09', '2022-11-30 04:32:09'),
(13, 'Netflix biodrama draws attention to real-life refugee-turned-Olympian', 'Communications chief Melissa Fleming also called the Netflix film The Swimmers, “a wakeup call” and a “hugely welcome step” for everyone to stand in solidarity with refugees. \r\nAlthough Yusra and Sara Mardini were forced to flee Syria’s civil war in 2015, the biographical drama, which Netflix dropped on Wednesday, makes clear that they took their bravery and humanitarian spirit with them as Yusra went on to compete in two Olympic games. \r\nTweet URL\r\n“At a very young age, they become heroes for millions, saving people who were in peril at sea,” explained Ms. Fleming at the screening, held at UN Headquarters in New York. “And while they had to re-start from scratch, they managed to achieve their dreams through persistence and hard work', '1669804451.jpg', 10, '2022-11-30 04:34:11', '2022-11-30 04:34:11'),
(14, 'Ukraine: Heading into winter without heat or water, needs in Mykolaiv are \'critical’', 'Updating journalists at a regular press briefing, Stéphane Dujarric recounted Humanitarian Coordinator Denise Brown’s visit over the weekend to Kherson and \r\nMykolaiv where she assessed the humanitarian situation, met with authorities, and monitored the response provided by aid organizations.  \r\nShe observed that although humanitarians are delivering vital aid, “the needs are immense”.', '1669804577.jpg', 14, '2022-11-30 04:36:17', '2022-11-30 04:36:17'),
(15, 'Ukraine: Missile strikes, summary executions highlight importance of international law', '“Millions are being plunged into extreme hardship and appalling conditions of life by these strikes”, he said.\r\n“Taken as a whole, this raises serious problems under international humanitarian law, which requires a concrete and direct military advantage for each object attacked”.\r\nRacking up casualties\r\nTweet URL\r\nAccording to the UN Human Rights Monitoring Mission in Ukraine (HRMMU), on Wednesday further missile strikes in the city and region of Kyiv killed at least eight civilians, counting one girl, and injured some 45 others, including seven children.\r\nA two-day old baby boy was killed, and two doctors injured by a rocket strike on a hospital in Vilniansk, in the Zaporizhzhia region.\r\nSince Russia began its ongoing barrage of missile strikes and loitering munition attacks across the country on 10 October, HRMMU has verified at least 77 civilian deaths and 272 injured.', '1669804617.jpg', 14, '2022-11-30 04:36:57', '2022-11-30 04:36:57'),
(16, '‘Catastrophic’ winter in store for Ukraine, warns UN peacebuilding chief, following Russian strikes on critical infrastructure', 'Ms. DiCarlo referred to the latest wave of Russian missile and drone strikes in Ukraine which, she said, terrorized the citizens of several cities (Kyiv, Odesa, Lviv, Mykolaiv, Kharkiv, and Zaporizhzhia).\r\nWith winter approaching, the attacks, she said, “renew fears that this winter will be catastrophic for millions of Ukrainians, who face the prospect of months of frigid weather with no heating, electricity, water, or other basic utilities”.', '1669804656.jpg', 14, '2022-11-30 04:37:36', '2022-11-30 04:37:36'),
(17, 'Overnight blasts near Ukraine nuclear plant are ‘playing with fire!’ – UN nuclear chief', 'In a statement issued by the International Atomic Energy Agency (IAEA), Director General Rafael Mariano Grossi said that that blasts yesterday evening and again this morning further underlined “the urgent need for measures to help prevent a nuclear accident there”.\r\n\r\n“As I have said many times before, you’re playing with fire!”.\r\n\r\nTweet URL\r\n\r\nRenewed shelling\r\nIn what appeared to be renewed shelling near and at the site of Europe’s largest nuclear power plant, IAEA experts on the ground reported that more than a dozen blasts were heard within a short period of time in the morning local time.\r\n\r\nThe IAEA team were also able to see some of the explosions from their windows.\r\n\r\n“The news from our team yesterday and this morning is extremely disturbing”, said Mr. Grossi.\r\n\r\nCiting information provided by plant management, the IAEA team said there had been damage to some buildings, systems, and equipment at the site, but noncritical for nuclear safety and security.\r\n\r\n“Explosions occurred at the site of this major nuclear power plant, which is completely unacceptable”, he added. “Whoever is behind this, it must stop immediately”.\r\n\r\nAccording to news reports, Russian and Ukrainian nuclear energy authorities each blamed the other side’s forces for the strikes – triggering fears of a serious nuclear accident. So far, there have been no reports of any radiation leaks at the Russian-', '1669804758.jpg', 14, '2022-11-30 04:39:18', '2022-11-30 04:39:18'),
(18, 'UN envoy warns against ‘worrying and dangerous’ military escalation in Syria', 'Mr. Pedersen feared the ramp-up in military operations has the potential to unravel a strategic stalemate in the war that has brought relative calm for almost three years. \r\n‘Escalatory dynamics’ \r\n“In repeated briefings, I have warned of the dangers of military escalation in Syria. I am here in person today to tell you that escalatory dynamics are taking place, and this is worrying and dangerous,” he said. \r\nHe reported that in recent months, mutual strikes have slowly increased in the north between the Syrian Democratic Forces (SDF) on one side, and Türkiye and armed opposition groups on the other, with the violence spilling over the border. \r\nFollowing a deadly bombing in Istanbul earlier this month, Türkiye launched airstrikes on what it said were terrorist targets across northern Syria and Iraq.  SDF strikes on Turkish forces, and armed opposition-controlled areas and inside Turkish territory, also were reported. \r\n\r\n‘Deeply worrying’ trend  \r\nMeanwhile, deadly pro-Government air and ground-based strikes have occurred in Idlib, in northwestern Syria – the last area where rebel groups hold sway - hitting camps that host internally displaced persons. \r\nReported terrorist attacks also were carried out against Syrian forces in Government-controlled areas. \r\nFurthermore, strikes attributed to Israel hit Damascus, Homs, Hama and Latakia, prompting Syrian Government anti-aircraft fire in response.  There also were reports of airstrikes on the border between Syria and Iraq, among other incidents. \r\n“The trend lines are deeply worrying, and carry real dangers of further escalation,” Mr. Pedersen told the Council.\r\n“Let me therefore call loudly and clearly on all actors to restrain themselves and engage in serious efforts to reinstate the calm, move towards a nationwide ceasefire and a cooperative approach to counter-terrorism in line with international humanitarian law.”', '1669805000.jpg', 11, '2022-11-30 04:43:20', '2022-11-30 04:43:20'),
(19, 'COP27 closes with deal on loss and damage: ‘A step towards justice’, says UN chief', '“This COP has taken an important step towards justice. I welcome the decision to establish a loss and damage fund and to operationalize it in the coming period,” UN Secretary-General António Guterres said in a video message issued from the conference venue in Egypt, underscoring that the voices of those on frontlines of the climate crisis must be heard. \r\nThe UN chief was referring to what ended up becoming the thorniest issue at this COP, shorthand for the annual Conference of Parties to the UN Framework Convention on Climate Change (UNFCCC).', '1669805041.jpg', 11, '2022-11-30 04:44:01', '2022-11-30 04:44:01'),
(20, 'Three years of flatlined progress on HIV treatment and prevention affect 2.7 million youth', 'Three years of flatlined progress on HIV treatment and prevention affect 2.7 million youth  \r\nSome 110,00 youth under age 19 died last year from AIDS-related causes, the UN Children’s Fund (UNICEF) said on Friday, noting that coupled with 310,000 newly infected, the total number of young people living with HIV stands at 2.7 million. \r\nAhead of World AIDS Day on Thursday, UNICEF warned in its latest global snapshot on children, HIV and AIDS that progress in HIV prevention and treatment has nearly flatlined over the past three years, with many regions still not at pre-pandemic service coverage.  \r\nTweet URL\r\n“Though children have long lagged behind adults in the AIDS response, the stagnation seen in the last three years is unprecedented, putting too many young lives at risk of sickness and death,” said UNICEF Associate Chief of HIV/AIDS Anurita Bains.', '1669805095.jpg', 11, '2022-11-30 04:44:55', '2022-11-30 04:44:55'),
(21, 'Eliminate violence against women, most widespread, pervasive human rights violation', 'In a statement kicking off the “UNiTE! Activism to End Violence against Women and Girls campaign”, they reminded that an estimated one in three women experience gender-based violence during her lifetime.\r\nMoreover, that last year, nearly one in five 20- to 24-year-old women had been married before turning 18 and less than 40 per cent who experience violence seek help of any sort.  \r\nTweet URL\r\nViolent triggers\r\nAt the same time, global emergencies, crises, and conflict have further intensified VAWG and exacerbated the drivers and risk factors.\r\n“Since the start of COVID-19, 45 per cent of women reported that they or a woman they know has experienced a form of VAWG”, according to the statement.\r\nNatural disasters also aggravate all types of gender-based violence, as witnessed in 2005 during Hurricane Katrina, the 2010 earthquake in Haiti, in 2011’s tropical cyclones in Vanuatu, and from 2019 to 2022 during bush fires in Australia.\r\n\r\nMeanwhile, existing forms of gender-based violence have grown online as anti-rights movements have flourished.\r\n\r\nThese have resulted in “shrinking space for civil society, a backlash against women’s rights organizations, and a rise in attacks against women human rights defenders and activists”, the UN entities stated.\r\nCombatting the scourge\r\nWhile ending gender-based VAWG might seem unimaginable, the UN underscored that “it is not”.\r\n“Large-scale reductions in violence against women can be achieved through intensive feminist activism and advocacy coupled with evidence and practice-informed multisectoral action and investment”, the statement continued.\r\nCiting evidence suggesting that “strong and autonomous feminist movements” as being “the most critical factor” in ending VAWG, UN Women and its sister agencies are calling upon governments and partners to “act now to end violence against women and show their solidarity to women’s rights movements and activists”.', '1669805145.jpg', 11, '2022-11-30 04:45:45', '2022-11-30 04:45:45'),
(22, 'Nearly 40 million children susceptible to measles due to COVID-19 disruptions', 'Pandemic-related disruptions caused 25 million boys and girls to miss their first dose of the measles vaccine last year, while another 14.7 million did not get the second dose.\r\nThe record decline in measles vaccination coverage represents a significant setback in global progress to combat the disease.\r\nPandemic paradox\r\n“The paradox of the pandemic is that while vaccines against COVID-19 were developed in record time and deployed in the largest vaccination campaign in history, routine immunization programmes were badly disrupted, and millions of kids missed out on life-saving vaccinations against deadly diseases like measles,” said Tedros Adhanom Ghebreyesus, the WHO Director-General.\r\n “Getting immunization programmes back on track is absolutely critical. Behind every statistic in this report is a child at risk of a preventable disease,” he added.\r\nGlobally, there were an estimated nine million cases of measles in 2021, and 128,000 deaths.\r\nTwenty-two countries experienced large and disruptive outbreaks, some of which have continued into this year.\r\nImminent threat everywhere\r\nDeclines in vaccine coverage, weakened measles surveillance, as well as continued interruptions and delays in immunization due to the pandemic, have made measles an imminent threat to every region of the world.\r\nThe situation is grave, the report said, as measles is one of the most contagious human viruses, though it is almost entirely preventable through vaccination. \r\nCoverage of 95 per cent or greater of two vaccine doses is needed to create herd immunity that will protect communities.\r\nHowever, global coverage rates are at their lowest levels since 2008, though they vary by country.\r\nCurrently, only 81 per cent of children are receiving their first measles-containing vaccine dose, and 71 per cent are getting their second done', '1669805250.jpg', 11, '2022-11-30 04:47:30', '2022-11-30 04:47:30'),
(23, 'The SNP doesn’t have a serious plan for independence', 'The next UK general election will be a referendum on independence for Scotland. This is according to First Minister Nicola Sturgeon, after the ‘disappointing’ Supreme Court ruling last week found that her administration did not in fact have the power to unilaterally rewrite the UK’s constitution.\r\n\r\nWill the people of Scotland really accept that the ballot box outcome in 2024 will represent a ‘de facto’ referendum that could lead to them being removed from the UK? With no legal or historic precedent for such an undertaking, the arbitrariness of the proposition would be comical if it were not so serious.\r\n\r\nBut perhaps equally comical is the idea that Sturgeon’s team is developing a serious plan for implementing economic independence. Principally, how it will manage a sudden move outside the sterling currency zone without creating an economic crisis for the new state. The plan is to unofficially use sterling in a similar way to how Panama uses the dollar, or Montenegro the euro, but then move to a new Scottish currency. Does that sound credible?\r\nMany will have their doubts, especially as a newly-released freedom of information response has established that the Scottish government has done zero – I repeat, zero – modelling of the potential transaction costs that a new currency will inflict on businesses and consumers. The response to Sam Taylor, who heads up These Islands, reads: ‘The Scottish government does not have the information you have asked for because no modelling of increased currency transaction costs due to an independent Scotland having a different currency was commissioned or was underway between 6 May 2021 and 31 October 2022.’ It adds: ‘There was also no record of internal Scottish government discussion on this subject found in staff inboxes or saved documents over the time period specified.’', '1669810533-1306958875.webp', 16, '2022-11-30 06:15:33', '2022-11-30 06:15:33'),
(24, 'Brutality Beckons in Beijing, Poltroonery Prevails in Washington', 'KEvin McCarthy might not ultimately manage to become the Speaker of the House. He has some 20 members of the Republican caucus who are firm opponents of his ascension to succeed Nancy Pelosi, and McCarthy’s allies are howling that if those reticent Republicans don’t come around there will be Democrat votes that decide who the next speaker will be.\r\n\r\nThat’s a mess partly of McCarthy’s making, given that he’s resisting demands from the House Freedom Caucus to bring the body back to something akin to regular order and to institute some much-needed reforms, banning things like omnibus bills (most state legislatures have single-subject rules or a requirement that all parts of a bill be germane to its main thrust) or limiting how much insider stock trading members might engage in. If he doesn’t manage to get the job, it’s on him for failing to meet the standard a growing number of revivalist conservatives in his caucus are setting.', '1669810628-1180533258.png', 16, '2022-11-30 06:17:08', '2022-11-30 06:17:08'),
(25, 'Kim Kardashian and Kanye West Settle Their Divorce: Relive Kimye\'s 12-Year History', 'It\'s the end of the road for Kimye.\r\nNearly two years after Kim Kardashian filed for divorce, she and Kanye West have reached a settlement, agreeing on joint legal custody of their four kids, according to the court document obtained by E! News on Nov. 29.\r\nWhile neither will pay spousal support, Kanye will shell out $200,000 per month in child support to the reality star. \r\n\"Everything Kim did here was to benefit her kids,\" a source told E! News after the settlement was filed. \"She wants to be a good co-parent.\"\r\nThough the document still needs to be signed by a judge to be official, the agreement is 21 months in the making and marks a new chapter in their relationship—which has shifted to co-parenting since their split. \r\n\"He\'s the father of my kids, I\'ll always be protective,\" she said on The Ellen DeGeneres Show in March. \"I always want my kids to see the best of the best, so I just try to—as hard as it can be sometimes—I do try to ignore it and do whatever\'s best for the kids. Take the high road.\"', '1669811040-2057024630.webp', 16, '2022-11-30 06:24:00', '2022-11-30 06:24:00'),
(26, 'Edison Gets Second Chance as HVDC Transmission Grows', 'Many things that are basic knowledge to us today were not fully understood in the early days of electricity and power (in the late 1800s/early 1900s), but one thing was clear even then: Ohmic (resistive) losses in power-transmission lines were unavoidable. The only solution was to increase the line voltage used for power transmission, thus decreasing the line current by the same factor.\r\n\r\nBecause ohmic power losses are proportional to the square of the current (P = I2R), the savings are exponential and significant. Novice electrical engineers today quickly learn this basic lesson about the relative efficiency of higher voltages for power transmission early and often, starting with small-scale projects like PC boards and chassis ranging up the power scale.\r\n\r\nThe big issue in the early days was whether to use AC or DC power for generators and transmission lines. At that time, there was a highly publicized battle between Edison on one side, as a staunch DC proponent, and Tesla, Westinghouse, and others, who favored AC. Power transmission using AC could be easily stepped up/down via transformers as needed and thus support longer transmission-line distances, while DC was limited to shorter runs and needed many relatively local generators to serve neighborhoods (electricity was first adopted for dense urban areas, of course).\r\n\r\nFor these and other reasons, AC eventually won out, and we now have 50-/60-Hz power distribution and systems throughout the world. High-voltage AC (referred to as HVAC but not to be confused with heating, ventilation, and air conditioning systems) came to dominate, while high-voltage DC (HVDC) was relegated to a few niche situations.\r\n\r\nIn principle, the arrangement of an HVAC system is straightforward: Generate the power from an AC source; step it up via one or a series of passive transformers to tens or even hundreds of kilovolts for transmission; at the far end, step it down again via transformers to the 120/240 V needed for the end user. In contrast, the step-up/-down components needed for HVDC are active and more complicated (see Figure 1) and were not practical or cost-effective until a few decades ago.', '1669811202-368922355.webp', 13, '2022-11-30 06:26:42', '2022-11-30 06:26:42'),
(27, 'Self-Charging Cars to Become the EVs of the Future', 'Current electric vehicles (EVs) are not living up to their potential. We need a radical technology revolution, and self-charging cars that operate entirely on renewable energy could be the key.\r\n\r\nEVs have great potential to help solve the climate crisis, but EV technology still faces some significant challenges including short driving range; charging issues including long waits at a limited number of EV charging stations and long charge time; reliance on an insufficient electric grid that draws energy from nonrenewable sources; a high price tag; and performance questions.\r\n\r\nSelf-charging cars, however, may be the answer to a consumer’s EV charging nightmares.\r\n\r\nWhat is a self-charging car?\r\nOnboard a traditional EV, one can expect to find a battery along with some supporting conversion and charging circuitry. In this scheme, the vehicle must plug into an external charging source, receiving power from the grid in some capacity.\r\n\r\nA self-charging car, on the other hand, is a vehicle that has power generation onboard and can charge itself from its own generated power. Most self-charging cars feature onboard solar cells covering the exterior of the car so that the vehicle is continually generating energy and charging its own battery. The gold standard for a self-charging vehicle is to generate most of its electricity internally, as opposed to external charging from the grid.\r\n\r\nIn general, a self-charging car relies heavily on the designer’s ability to make the vehicle as efficient as possible to minimize the required energy per mile. For this reason, self-charging cars may look much different from a conventional EV: they may have only three wheels, for example, or irregular body shapes that improve aerodynamics.', '1669811297-1463825530.webp', 13, '2022-11-30 06:28:17', '2022-11-30 06:28:17'),
(28, 'Nvidia Shows Off Hopper MLPerf Training Benchmarks', 'The latest round of MLPerf training scores, as well as inference scores for tinyML hardware, are out.\r\n\r\nIn the MLPerf training round, Nvidia exhibited training benchmarks for its new H100 GPU for the first time. There were also strong results from Intel, Habana Labs, and MosaicML in this latest round, but nothing from Nvidia challengers Graphcore or Google.\r\n\r\nIn the tinyML benchmarks, GreenWaves Technologies’ multi-core RISC-V design swept the board for both latency and energy efficiency.\r\n\r\nNvidia H100\r\nNvidia debuted its H100 GPU, submitting scores across all training benchmarks.\r\n\r\nDave Salvator, director of AI, Benchmarking, and Cloud at Nvidia, presented H100’s results plotted against its previous generation, A100, from the A100’s MLPerf training debut two-and-a-half years ago. Acknowledging the huge role software plays in performance, Salvator argued that it’s fair to compare debut scores for the two parts; A100’s scores have improved 2.5× on average since its debut. Salvator’s comparison showed the H100 up to 6.7× higher performance compared to the A100 at debut.\r\n\r\n“We have a track record of extracting more and more performance over time both on existing workloads as well as novel workloads when they come to market,” Salvator told EE Times in an interview. “I can’t say we’ll get [another] 2.5× out of Hopper just from software like we did with Ampere… but we will get more performance out of Hopper.”', '1669811427-1404469881.webp', 13, '2022-11-30 06:30:27', '2022-11-30 06:30:27'),
(29, 'Stop Pronouncing ‘Turkey’ Wrong, Country Begs the Rest of the World', 'Support LyrArc\r\nWe took a different way to help millions around the world build educated informed mindsets that affects and shapes their lives. For a future that is open, global and digital, with everyone having access to high quality information. We believe in the renewal of America, renewal of Europe, the renewal of India, the rest of Asia, Latin America and Africa. The renewal of our supply chains, health, education, infrastructure, as we rebuild our countries after the pandemic. Literacy and knowledge we believe cannot thrive and grow in a world of web bots, web crawlers, or AI. This requires human curiosity, human learning, and human imagination. We take as inspiration the saying- “One has to be free, and as broad as sky. One has to have a mind that is crystal clear, only then can truth shine in it.” Every contribution whether big or small is precious- in this crisis and ahead.', '1669811571-273114246.jpeg', 12, '2022-11-30 06:32:51', '2022-11-30 06:32:51'),
(30, '‘I threw him a turd’: Di María credits Messi with polishing the unpolishable', 'We took a different way to help millions around the world build educated informed mindsets that affects and shapes their lives. For a future that is open, global and digital, with everyone having access to high quality information. We believe in the renewal of America, renewal of Europe, the renewal of India, the rest of Asia, Latin America and Africa. The renewal of our supply chains, health, education, infrastructure, as we rebuild our countries after the pandemic. Literacy and knowledge we believe cannot thrive and grow in a world of web bots, web crawlers, or AI. This requires human curiosity, human learning, and human imagination. We take as inspiration the saying- “One has to be free, and as broad as sky. One has to have a mind that is crystal clear, only then can truth shine in it.” Every contribution whether big or small is precious- in this crisis and ahead.', '1669811946-1780259923.webp', 12, '2022-11-30 06:39:06', '2022-11-30 06:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'thohed', 'thohed@gmail.com', NULL, '$2y$10$Y3C7ppX.Bg58glss5/C7z.n38c0UVsAB08shjwXWJByZKW5lA1Hhq', 'dINcgKAVyOae1OV4WvU5NhQUhb1glHjmGMo4PMZylXaAtkU0u8MdpmxqUuyH', '2022-11-29 22:40:47', '2022-11-29 22:40:47'),
(2, 'shamim', 'shamim@gmail.com', NULL, '$2y$10$D5hjrYoppqA11WHjeOfnIe3p8Nx5ngjf4XGe8Ja1fvgHSCnezHIqu', NULL, '2022-11-29 23:15:41', '2022-11-29 23:15:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
