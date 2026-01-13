-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2024 at 08:26 PM
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
-- Database: `generic_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '356a192b7913b04c54574d18c28d46e6395428ab'),
(3, 'tejas', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(28, 0, 0, 'sonata LR', 347, 1, '108.jpg'),
(29, 0, 0, 'vinblastin sulfate injection', 29, 1, '114.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `medican`
--

CREATE TABLE `medican` (
  `id` int(255) NOT NULL,
  `Generic_name` mediumtext NOT NULL,
  `Brand_name` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medican`
--

INSERT INTO `medican` (`id`, `Generic_name`, `Brand_name`) VALUES
(1, 'alendronate tablet', 'Fosamax'),
(2, 'acyclovir capsule', 'Zovirax'),
(3, 'acyclovir tablet', 'Zovirax'),
(4, 'albuterol inhalation solution', 'Albuterol Inhalation Solution'),
(5, 'albuterol sulfate', 'ProAir RespiClick Powder Inhaler'),
(6, 'alclometasone dipropionate cream', 'Aclovate'),
(7, 'alfuzosin hcl', 'Uroxatral'),
(8, 'alitretinoin', 'Panretin gel'),
(9, 'allopurinol tablet', 'Zyloprim'),
(10, 'alprazolam', 'Xanax'),
(11, 'altretamine', 'Hexalen capsules'),
(12, 'amiodarone tablet', 'Cordarone'),
(13, 'amitriptyline tablet', 'Elavil'),
(14, 'amlodipine and valsartan', 'Exforge'),
(15, 'amlodipine besylate', 'Norvasc'),
(16, 'amlodipine, valsartan, hydrochlorothiazide', 'Exforge HCT'),
(17, 'Amlodipine/Benazepril capsule', 'Lotrel'),
(18, 'amoxapine tablet', 'Amoxapine tablet'),
(19, 'anastrazole', 'Arimidex'),
(20, 'antihypertensive combinations', 'Hyzaar'),
(21, 'Arsenic Trioxide', 'Arsenic Trioxide'),
(22, 'artificial tears 1.4% drops (OTC)', 'Artificial Tears 1.4% drops (OTC)'),
(23, 'aspirin EC tablet (OTC)', 'Aspirin EC Tablet (OTC)'),
(24, 'atenolol tablet', 'Tenormin'),
(25, 'atenolol/chlorthalidone tablet', 'Tenoretic'),
(26, 'atorvastatin calcium', 'Lipitor'),
(27, 'augmented betamethasone dipropionate', 'Diprolene Cream'),
(28, 'azathioprine', 'Imuran'),
(29, 'azelastine', 'Astepro'),
(30, 'Azelastine nasal', 'spray	Astelin'),
(31, 'baclofen tablet', 'Lioresal'),
(32, 'Belladonna Alkaloids with Phenobarbital', 'Donnatal Tablet'),
(33, 'benazepril HCTZ tablet', 'Lotensin HCT'),
(34, 'benazepril tablet', 'Lotensin'),
(35, 'benzonatate', 'Tessalon Capsule'),
(36, 'benzonatate capsule', 'Benzonatate capsule'),
(37, 'benztropine tablet', 'Benztropine tablet'),
(38, 'bethanechol tablet', 'Urecholine'),
(39, 'bicalutamide', 'Casodex'),
(40, 'bisoprolol/HCTZ tablet', 'Ziac'),
(40, 'Bleomycin', 'Bleomycin'),
(41, 'Bortezomib', 'Bortezomib'),
(42, 'brimonidine tartrate', 'Brimonidine Tartrate 0.2% Solution'),
(43, 'bromocriptine tablet', 'Bromocriptine tablet'),
(44, 'budesonide inhalation suspension', 'Pulmicort Respules'),
(45, 'bupropion hcl', 'Wellbutrin SR'),
(46, 'bupropion hcl', 'Wellbutrin XL'),
(47, 'bupropion HCL tablet', 'Wellbutrin'),
(48, 'buspirone tablet', 'Buspar'),
(49, 'Calcitonin-salmon (rDNA origin)', 'Fortical Nasal Spray'),
(50, 'calcitriol capsule', 'Rocaltrol'),
(51, 'calcium acetate', 'PhosLo gelcaps'),
(52, 'candesartan cilexetil-hydrochlorothiazide', 'Atacand HCT'),
(53, 'candesartan cilextil', 'Atacand'),
(54, 'capsaicin cream, 0.035% (OTC)', 'Capsaicin Cream, 0.035% (OTC)'),
(56, 'captopril tablet', 'Capoten'),
(57, 'carbamazepine tablet', 'Tegretol'),
(58, 'carbidopa/levo SR tablet', 'Sinemet CR'),
(59, 'carbidopa/levo tablet', 'Sinemet'),
(60, 'carvedilol', 'Coreg tablets'),
(61, 'cetirizine HCl tablet - OTC', 'Zyrtec OTC'),
(62, 'cevimeline HCl', 'Evoxac'),
(63, 'chlordiazepoxide capsule', 'Chlordiazepoxide capsule'),
(64, 'chlorpromazine HCL', 'Chlorpromazine HCL'),
(65, 'chlorthalidone tablet', 'Chlorthalidone tablet'),
(66, 'cholestyramine', 'Prevalite Powder'),
(67, 'cilostazol tablet', 'Pletal'),
(68, 'citalopram tablet', 'Celexa'),
(69, 'Cladribine', 'Cladribine'),
(70, 'clindamycin phosphate', 'Cleocin'),
(71, 'Clofarabine', 'Clofarabine'),
(72, 'clomipramine hcl', 'Anafranil'),
(71, 'clonazepam tablet', 'Klonopin'),
(72, 'clonidine HCL tablets', 'Catapres'),
(73, 'clonidine patch', 'Catapres TTS -3'),
(74, 'clopidogrel bisulfate tablets', 'Plavix'),
(75, 'clotrimazole/betamethasone cream', 'Lotrisone Cream'),
(76, 'colestipol hcl', 'Colestid'),
(77, 'cyclosporine', 'Cyclosporine capsules'),
(78, 'cyclosporine', 'Cyclosporine Oral Solution'),
(79, 'Cytarabine', 'Cytarabine'),
(80, 'decitabine', 'Dacogen'),
(81, 'Dexmethylphenidate HCl tablet', 'Focalin'),
(82, 'dextroamphetamine sulfate ER capsule', 'Dextroamphetamine sulfate ER capsule'),
(83, 'dextroamphetamine-amphetamine ER capsule', 'Adderall XR'),
(84, 'dextroamphetamine-amphetamine tablet', 'Dextroamphetamine-Amphetamine tablet'),
(85, 'diazepam tablet', 'Valium'),
(86, 'diclofenac EC tablet', 'Voltaren'),
(87, 'diclofenac ER tablet', 'Voltaren XR'),
(88, 'dicyclomine capsule', 'Bentyl'),
(89, 'dicyclomine tablet', 'Bentyl'),
(90, 'digoxin tablets', 'Lanoxin'),
(91, 'diltiazem ER capsule', 'Dilacor XR'),
(92, 'diltiazem hcl cd', 'Cardizem CD'),
(93, 'diphenoxylate hydrochloride/atropine sulfate', 'Lomotil'),
(94, 'diphenoxylate/atropine tablet', 'Lonox'),
(95, 'Divalproex DR tablet', 'Depakote'),
(96, 'donepezil HCI', 'Aricept'),
(97, 'dorzolamide HCL', 'Trusopt'),
(98, 'doxazosin mesylate', 'Cardura'),
(99, 'doxepin capsule', 'Doxepin capsule'),
(100, 'enalapril maleate tablet', 'Vasotec'),
(101, 'enalapril maleate-hydrochlorothiazide tablets', 'Vaseretic'),
(102, 'epinephrine auto injector', 'Epinephrine Auto Injector .3mg'),
(103, 'eplerenone tablet', 'Eplerenone tablet'),
(104, 'escitalopram oxalate', 'Lexapro'),
(105, 'escitalopram oxalate', 'Lexapro 20mg'),
(106, 'escitalopram oxalate', 'Lexapro 5mg'),
(107, 'esomeprazole DR capsule', 'Nexium'),
(108, 'estradiol tablet', 'Estrace'),
(109, 'estropipate tablet', 'Ogen'),
(110, 'eszopiclone', 'Lunesta'),
(111, 'etodolac capsule', 'Lodine'),
(112, 'etodolac tablet', 'Lodine tablet'),
(113, 'Etoposide', 'Etoposide'),
(114, 'famotidine tablet', 'Pepcid'),
(115, 'felodipine ER tablet', 'Plendil ER'),
(116, 'fenofibrate', 'Tricor'),
(117, 'fenofibrate, micronized capsule', 'Lofibra'),
(118, 'fenofibric acid DR capsule', 'Trilipix'),
(119, 'ferrous sulfate EC tablet', 'Ferrous Sulfate EC tablet'),
(120, 'finasteride tablet', 'Proscar'),
(121, 'flecainide acetate tablet', 'Flecainide Acetate tablet'),
(122, 'fluconazole', 'Diflucan'),
(123, 'Fludarabine Phosphate', 'Fludarabine Phosphate'),
(124, 'luoxetine capsule', 'Prozac'),
(125, 'fluticasone nasal spray (50 mcg)', 'Flonase (50 mcg)'),
(126, 'fluvoxamine maleate tablet', 'Fluvoxamine Maleate tablet'),
(127, 'folic acid 2.2 tablet', 'Folic Acid 2.2 tablet'),
(128, 'folic acid tablet', 'Folic Acid'),
(129, 'Fulvestrant', 'Fulvestrant'),
(130, 'furosemide tablet', 'Lasix'),
(131, 'gabapentin', 'Neurontin'),
(132, 'gemfibrozil', 'Lopid'),
(133, 'glimepiride', 'Amaryl'),
(134, 'glipizide', 'Glucotrol'),
(135, 'glipizide extended release', 'Glucotrol XL'),
(136, 'glyburide tablet', 'Micronase'),
(137, 'glyburide/Metformin tablet', 'Glucovance'),
(138, 'guanfacine	Intuniv', 'Extended Release Tablets'),
(139, 'halobetasol prop ointment, 0.05%', 'Ultravate'),
(140, 'haloperidol tablet', 'Haloperidol tablet'),
(141, 'hydralazine tablet', 'Hydralazine tablet'),
(142, 'hydrochlorothiazide capsule	', 'Microzide'),
(145, 'hydrochlorothiazide tablet', 'hydrochlorothiazide tablet'),
(146, 'hydrocortisone tablet', 'Hydrocortisone tablet'),
(147, 'hydroxychloroquine tablet', 'Plaquenil'),
(148, 'hydroxyurea capsule', 'Hydrea'),
(149, 'hydroxyzine HCL tablet', 'Hydroxyzine HCL tablet'),
(150, 'hydroxyzine pamoate', 'Vistaril'),
(151, 'ibuprofen tablet', 'Motrin'),
(152, 'indapamide tablet', 'Indapamide tablet'),
(153, 'Ipratropium/Albuterol', 'Inhalation Solution	DuoNeb'),
(154, 'irbesartan', 'Avapro'),
(156, 'irbesartan-hydrochlorothiazide', 'Avalide'),
(157, 'isoniazid ', 'Isoniazid/INH'),
(158, 'isosorbide mononitrate', 'Imdur'),
(159, 'isosorbide mononitrate (10mg,20mg)', 'Ismo'),
(160, 'isosorbide mononitrate (10mg,20mg)', 'Monoket'),
(161, 'ketotifen fumerate OTC solution', 'Alaway OTC'),
(162, 'labetalol HCL tablet', 'Trandate'),
(163, 'lactulose oral solution', 'Enulose'),
(164, 'lamotrigine', 'Lamictal'),
(165, 'lansoprazole DR capsule	', 'Prevacid'),
(166, 'latanoprost solution', 'Xalatan'),
(167, 'letrozole', 'Femara'),
(168, 'Leucovorin Calcium', 'Leucovorin Calcium'),
(169, 'levalbuterol hcl', 'Xopenex'),
(170, 'levetiracetam ER', 'Keppra XR tablets'),
(171, 'levetiracetam tablet', 'Keppra'),
(172, 'levocetirizine dihydrochloride', 'Xyzal tablets'),
(173, 'levothyroxine', 'Levoxyl'),
(174, 'Vlevothyroxine', 'Synthroid'),
(175, 'lidocaine 2% viscous solution', 'Lidocaine 2% viscous solution'),
(176, 'lidocaine patch 5%', 'Lidoderm'),
(177, 'liothyronine sodium', 'Cytomel'),
(178, 'lisinopril tablet', 'Prinivil'),
(179, 'lisinopril tablet', 'Zestril'),
(180, 'lisinopril/HCTZ tablet', 'Prinzide'),
(181, 'lisinopril/HCTZ tablet', 'Zestoretic'),
(182, 'Lithium Carbonate capsule', 'Lithium Carbonate'),
(183, 'loperamide capsule', 'Loperamide capsule'),
(184, 'loratadine OTC tablet', 'Claritin OTC'),
(185, 'lorazepam tablet', 'Ativan'),
(186, 'losartan potassium', 'Cozaar'),
(187, 'lovastatin tablet', 'Mevacor'),
(188, 'loxapine capsule', 'Loxapine capsule'),
(189, 'magnesium oxide tablet (OTC)', 'Magnesium Oxide tablet (OTC)'),
(190, 'meclizine HCI', 'Antivert'),
(191, 'medroxyprogesterone acetate', 'Provera'),
(192, 'meloxicam', 'Mobic'),
(193, 'Melphalan HCL', 'Melphalan HCL'),
(194, 'memantine hcl', 'Namenda'),
(195, 'Mesna', 'Mesna'),
(196, 'metformin', 'Glucophage'),
(197, 'metformin hcl, extended release', 'Glucophage XR'),
(198, 'methimazole tablets', 'Tapazole'),
(199, 'methocarbamol tablet', 'Robaxin'),
(200, 'methotrexate', 'Methotrexate'),
(201, 'methylphenidate CD capsule', 'Metadate CD'),
(202, 'methylphenidate hcl', 'Ritalin LA'),
(203, 'methylphenidate tablet', 'Ritalin'),
(204, 'metoclopramide HCL tablet', 'Reglan'),
(205, 'metolazone tablet', 'Zaroxolyn'),
(206, 'metoprolol succinate/hctz', 'Dutoprol Tablet'),
(207, 'metoprolol tartrate tablet', 'Lopressor'),
(207, 'micronized glyburide', 'Glynase PresTab'),
(208, 'midodrine HCl tablet', 'Midodrine HCl tablet'),
(209, 'minocycline capsule', 'Minocin'),
(210, 'minocycline HCL capsule', 'Dynacin'),
(211, 'mirtazapine tablet', 'Remeron'),
(212, 'Mitoxantrone Inj, USP', 'Mitoxantrone Inj, USP'),
(213, 'mometasone furoate', 'Elocon Cream'),
(214, 'mometasone furoate', 'Elocon '),
(215, 'montelukast sodium', 'Singulair'),
(216, 'mycophenolate mofetil', 'CellCept'),
(217, 'nabumetone tablet', 'Nabumetone tablet'),
(218, 'naproxen sodium tablet', 'Anaprox DS'),
(219, 'naproxen tablet', 'Naprosyn'),
(220, 'niacin', 'Niacin'),
(221, 'niacin extented-release tablets', 'Niaspan ER'),
(222, 'niacin SA capsule (OTC)', 'Niacin SA capsule (OTC)'),
(223, 'nifedipine capsule', 'Nifedipine capsule'),
(224, 'nifedipine CR tablet', 'Adalat cc'),
(225, 'nilutamide', 'Nilandron tablet'),
(226, 'nitroglycerin SA capsule', 'Nitroglycerin SA capsule'),
(227, 'norethindrone tablet', 'Ortho Micronor'),
(228, 'norethindrone/ethinyl estradiol tablet', 'Ovcon 35'),
(229, 'nortriptyline HCL capsule', 'Pamelor'),
(230, 'nyamyc topical powder', 'Nystatin powder'),
(231, 'nystatin tablet', 'Nystatin tablet'),
(232, 'Octreotide Acetate', 'Octreotide Acetate'),
(233, 'olanzapine', 'Zyprexa'),
(234, 'omega-3-acid ethyl esters', 'Lovaza'),
(235, 'omeprazole capsule', 'Prilosec'),
(236, 'ondansetron ODT tablet', 'Zofran ODT'),
(237, 'ondansetron tablet', 'Zofran'),
(238, 'oxandrolone tablet', 'Oxandrin'),
(239, 'oxybutynin tablet', 'Ditropan'),
(240, 'pantoprazole sodium', 'Protonix'),
(241, 'paroxetine HCL tablet', 'Paxil'),
(242, 'pentoxifylline ER tablet', 'Trental'),
(243, 'perphenazine tablet', 'Perphenazine tablet'),
(244, 'Phenobarbital, Hyoscyamine Sulfate, Atropine Sulfate, Scopolamine Hydrobromide', 'Donnatal Elixir'),
(245, 'phenoxybenzamine', 'Dibenzyline capsule'),
(246, 'phenytoin sodium capsule', 'Dilantin'),
(247, 'pilocarpine', 'Salagen Tablet'),
(248, 'pioglitazone hydrochloride', 'Actos'),
(249, 'PNV Prenatal Multivitamin Plus Iron', 'PNV Prenatal Multivitamin Plus Iron'),
(250, 'potassium chloride ER tablet', 'K-Dur 20MEQ'),
(251, 'potassium chloride ER tablet', 'Klor-Con 10mEQ'),
(252, 'potassium chloride ER tablet', 'Klor-Con M20'),
(253, 'potassium Iodide', 'SSKI oral solution'),
(254, 'pramipexole dihydrochloride tablets', 'Mirapex tablets'),
(255, 'pravastatin tablet', 'Pravachol'),
(256, 'prazosin capsule', 'prazosin capsule'),
(257, 'prednisone tablet', 'Prednisone tablet'),
(258, 'primidone', 'Mysoline'),
(259, 'prochlorperazine tablet', 'Prochlorperazine tablet'),
(260, 'progesterone capsule', 'Progesterone capsule'),
(261, 'propafenone hydrochloride', 'Rythmol'),
(262, 'propranolol HCL ER', 'Inderal LA Capsules'),
(263, 'propranolol tablet', 'Inderal'),
(267, 'propylthiouracil tablet', 'Propylthiouracil tablet'),
(268, 'pyridostigmine bromide', 'Mestinon'),
(269, 'quetiapine fumarate', 'Seroquel'),
(270, 'quinapril HCI', 'Accupril'),
(271, 'quinapril/HCTZ tablet', 'Accuretic'),
(272, 'rabeprazole sodium', 'Aciphex'),
(273, 'raloxifene tablet', 'Evista'),
(274, 'ramipril', 'Altace'),
(275, 'ranolazine extended-release tablets', 'Ranexa'),
(276, 'rasagiline tablets', 'Azilect'),
(277, 'repaglinide tablet', 'Prandin'),
(278, 'risedronate sodium tablet', 'Actonel'),
(279, 'risperidone', 'Risperdal'),
(280, 'rivastigmine tartrate capsule', 'Exelon'),
(281, 'Romidepsin', 'Romidepsin'),
(282, 'ropinirole hydrochloride', 'Requip tablets'),
(283, 'rosuvastatin calcium', 'Crestor'),
(284, 'rufinamide', 'Banzel'),
(285, 'rufinamide', 'Banzel Oral Suspension 40mg/ml'),
(286, 'sertraline HCI', 'Zoloft'),
(287, 'sildenafil citrate tablet', 'Revatio'),
(288, 'sildenefil citrate', 'Viagra'),
(289, 'simvastatin tablets', 'Zocor'),
(290, 'spironolactone', 'Aldactone'),
(291, 'spironolactone and hydrochlorothiazide', 'Aldactazide'),
(292, 'sprintec tablet', 'Ortho-Cyclen'),
(293, 'SSKI oral solution', 'Potassium Iodide'),
(294, 'sucralfate', 'Carafate'),
(295, 'sulfamethoxazole/trimethoprim DS tablet', 'Bactrim DS'),
(296, 'sulfamethoxazole/trimethoprim DS tablet', 'Septra DS'),
(297, 'sulfasalazine', 'Azulfidine'),
(298, 'sulfasalazine, USP', 'Azulfidine EN-Tabs'),
(299, 'sumatriptan succinate', 'Imitrex (Tablets)'),
(300, 'tacrolimus capsule', 'Prograf'),
(301, 'tamoxifen citrate tablet', 'Tamoxifen citrate tablet'),
(302, 'tamsulosin hydrochloride', 'Flomax'),
(303, 'telmisartan', 'Micardis'),
(304, 'temazepam	', 'Restoril'),
(305, 'temazepam capsule', 'Restoril'),
(306, 'Temsirolimus', 'Temsirolimus'),
(307, 'terazosin capsule', 'Hytrin'),
(308, 'testosterone cypionate', 'Depo-Testosterone'),
(309, 'estosterone gel', 'AndroGel'),
(310, 'testosterone gel packet', 'Vogelxo gel packet'),
(311, 'testosterone gel pump', 'Vogelxo gel pump'),
(312, 'testosterone gel tube', 'Vogelxo gel tube'),
(313, 'Tizanidine 4mg tab', 'Zanaflex'),
(314, 'tolterodine tartrate tablet', 'Detrol'),
(315, 'topiramate', 'Topamax tablets'),
(316, 'topiramate ER', 'Qudexy XR capsule'),
(317, 'Topotecan HCl', 'Topotecan HCl'),
(318, 'tramadol hydrochloride/acetaminophen tablets', 'Ultracet'),
(319, 'tramadol tablet', 'Ultram'),
(320, 'trandolapril tablet', 'Mavik'),
(321, 'tranylcypromine', 'Parnate 10mg tablets'),
(322, 'trazodone tablet', 'Desyrel'),
(323, 'tri-previfem tablet', 'Ortho-Tri-Cyclen'),
(324, 'tri-sprintec tablet', 'Ortho-Tri-Cyclen'),
(325, 'triamcinolone cream, 0.1%', 'Triamcinolone cream, 0.1%'),
(326, 'triamcinolone ointment, 0.1%', 'Triamcinolone ointment, 0.1%'),
(327, 'triamterene', 'Dyrenium capsule'),
(328, 'triamterene/HCTZ capsule', 'Dyazide'),
(329, 'triamterene/HCTZ tablet', 'Maxzide'),
(330, 'trifluoperazine HCl tablet', 'Trifluoperazine HCl tablet'),
(331, 'trospium chloride tablet', 'Trospium Chloride tablet'),
(332, 'valacyclovir HCL tablet', 'Valtrex tablet'),
(333, 'valproic acid', 'Depakene'),
(334, 'valsartan hydrochloride', 'Diovan'),
(335, 'valsartan hydrochlorothiazide', 'Diovan HCT'),
(336, 'venlafaxine tablet', 'Effexor'),
(337, 'verapamil HCl', 'Calan'),
(338, 'verapamil SR tablet', 'Calan-SR'),
(339, 'verapamil SR tablet', 'Isoptin-SR'),
(340, 'VinBLAStine Sulfate', 'VinBLAStine Sulfate'),
(341, 'Vitamin B Complex capsule (OTC)', 'Vitamin B Complex capsule (OTC)'),
(342, 'Vitamin B-6 tablet (OTC)', 'Vitamin B-6 tablet (OTC)'),
(343, 'Vitamin D3 capsule (OTC)', 'Vitamin D3 capsule (OTC)'),
(344, 'Vitamin D3 tablet (OTC)', 'Vitamin D3 tablet (OTC)'),
(345, 'warfarin sodium', 'Jantoven'),
(346, 'zafirlukast', 'Accolate'),
(347, 'zaleplon', 'Sonata'),
(348, 'zidovudine tablet', 'Zidovudine tablet'),
(349, 'Zoledronic Acid	', 'Zoledronic Acid'),
(350, 'Zolpidem', 'Ambien');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `number`, `message`) VALUES
(1, 'tejas', 'tejasdhole50@gmail.com', '07578945698', 'aD'),
(2, 'tejas', 'tejasdhole50@gmail.com', '07578945698', 'ASD'),
(3, 'tejas', 'tejasdhole50@gmail.com', '07578945698', 'AASDas'),
(4, 'tejas', 'tejasdhole50@gmail.com', '07578945698', 'asFDDHJ'),
(5, 'tejas', 'tejasdhole50@gmail.com', '07578945698', 'sad'),
(6, 'tejas', 'tejasdhole50@gmail.com', '07578945698', 'sanju'),
(7, 'tejas', 'tejasdhole50@gmail.com', '07578945698', 'asdasd'),
(8, 'tejas', 'tejasdhole50@gmail.com', '7578945698', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `flat` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `pin_code` varchar(20) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `number`, `email`, `method`, `flat`, `street`, `city`, `state`, `country`, `pin_code`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(3, 'tejas', '0757894569', 'tejasdhole50@gmail.com', 'cash on delivery', 'asDzfghjk', 'tesdgf', 'sadfxgchj', 'szdxfghj', 'India', '895566', '', 'zovirax (1) , sonata LR (1) ', 476, '2024-03-05', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
(13, 'zovirax', 'used to treat infections caused by certain viruses', 129, 'product-1.jpg'),
(14, 'sonata LR', 'used for the short-term treatment of insomnia.', 347, '108.jpg'),
(15, 'vitamin D3', 'used to increase vitamin d3 in body', 80, '111.jpg'),
(16, 'vitamin B6', 'used when body has insufficient B6 vitamin', 420, '112.jpg'),
(17, 'vitamin B', 'used when body has insufficient B vitamin', 164, '113.jpg'),
(18, 'vinblastin sulfate injection', 'used in the treatment of various types of cancer', 29, '114.jpg'),
(19, 'isoptin sr', 'used in the management of certain cardiovascular', 349, '115.jpg'),
(20, 'effexor', 'Effexor is primarily used to treat major depressive disorder and panic disorder.\r\n\r\n\r\n\r\n\r\n', 166, '117.jpg'),
(21, 'depakene', 'used as a mood stabilizer in the management of bipolar disorder.', 180, '119.jpg'),
(22, 'valtrex', 'used to prevent recurrent outbreaks of genital herpes .', 667, '120.jpg'),
(23, 'trospium chloride', 'It helps to relax the muscles in the bladder, reducing the frequency.', 120, '121.jpg'),
(24, 'maxzide', 'Maxzide is primarily used to treat hypertension and edema.', 250, '123.jpg'),
(27, 'triamcinolane acetonide', ' primarily used as a corticosteroid medication to reduce inflammation and relieve symptoms', 1000, '126.jpg'),
(28, 'tri-cyclen', 'Tri-Cyclen is primarily used as an oral contraceptive, commonly known as a birth control pill.', 89, '127.jpg'),
(29, 'desyrel 100mg', 'Desyrel is primarily used as an antidepressant medication to treat major depressive disorder.', 130, '128.jpg'),
(30, 'parnate', 'used to treat depression, particularly major depressive disorder.', 167, '129.jpg'),
(31, 'mavik', 'Mavik is primarily used to treat hypertension (high blood pressure).', 350, '130.jpg'),
(33, 'ultracet', 'Ultracet is primarily used to relieve moderate to moderately severe pain.', 560, '132.jpg'),
(34, 'hycamitin 1mg', ' used for treatment of types of cancer, ovarian cancer, small cell lung cancer', 600, '133.jpg'),
(38, 'voglexo', 'used for replacement therapy in adult males for conditions ', 427, '137.jpg'),
(39, 'Voglexo creme', 'used for replacement therapy in adult males for conditions ', 746, '138.jpg'),
(40, 'androgel', 'used for male sexual development and functions.', 640, '139.jpg'),
(41, 'depo-testosterone', 'used in hormone replacement therapy for males ', 500, '140.jpg'),
(42, 'albuterol sulfate', 'Albuterol sulfate is a medication primarily used to treat asthma', 212, 'category-1.jpg'),
(43, 'attorex-asp75', 'used to prevent heart attack and stroke.', 320, 'product-2.jpg'),
(44, 'proair respiclick', 'used to treatment of asthma ', 81, 'product-3.jpg'),
(45, 'aclovet ointment 0.05%', 'used to treat HSV virus infections', 720, 'product-4.jpg'),
(46, 'uroxatral', 'used to treat the symptoms of benign prostatic hyperplasia', 999, 'product-5.jpg'),
(47, 'Zyloprim', 'used to treat conditions caused by excess uric acid in the body', 88, 'product-7.jpg'),
(49, 'Hexalen', ' used in the treatment of ovarian cancer that has recurred ', 100, 'product-9.jpg'),
(50, 'Amiodarone tablets', 'Amiodarone is a medication primarily used to treat certain types of irregular heartbeats ', 400, 'product-10.jpg'),
(51, 'Elavil-10', 'used to treat various mental health conditions, including depression, and certain types of neuropathic pain.', 350, 'product-11.jpg'),
(52, 'Exforge', 'It is primarily used to treat high blood pressure (hypertension) which work by relaxing the blood vessels.', 240, 'product-12.jpg'),
(53, 'Lotrel ', 'It is primarily used to treat high blood pressure (hypertension).', 100, 't11.jpg'),
(54, 'Amoxapine Tablets', ' used to treat anxiety disorders, bipolar disorder, and psychotic depression.', 33, 't12.jpg'),
(55, 'Arimidex', 'Arimidex is used in the treatment of hormone receptor-positive breast cancer', 90, 't13.jpg'),
(56, 'hyzaar', ' It is primarily used to treat high blood pressure .', 50, 't14.jpg'),
(57, 'Arsenic Trioxide ', ' used in the treatment of acute promyelocytic leukemia (APL).', 637, 't15.jpg'),
(58, 'Artificial Tears Solution', 'used to relieve dryness and discomfort in the eyes.', 42, 't16.jpg'),
(59, 'Atenolol tablets', 'Atenolol is a medication primarily used to treat high blood pressure and certain types of heart conditions', 41, 't18.jpg'),
(60, 'Tenoretic table', 'It is primarily used to treat high blood pressure reducing blood volume and lowering blood pressure.', 39, 't19.jpg'),
(61, 'Lipitor Tablet', 'used to lower cholesterol levels and reduce the risk of cardiovascular events such as heart attacks and strokes', 188, 't20.jpg'),
(62, 'Diprolene Ointment', ' used topically to reduce inflammation and itching associated with various skin conditions.', 95, 't21.jpg'),
(63, 'Imuran', 'used to prevent rejection of organ transplants (such as kidney transplants) and to treat certain autoimmune diseases.', 200, 't22.jpg'),
(64, 'AsterPRO ALLERGY', 'reduces the effects of natural chemical histamine in the body, used to prevent sneezing, runny nose.', 205, 't23.jpg'),
(65, 'Astelin ', 'used to treat symptoms of allergic rhinitis.', 30, 't24.jpg'),
(66, 'Baclofen Tablets', 'used to treat muscle spasms, tightness', 25, 't25.jpg'),
(67, 'Donnatal', 'It is primarily used to treat gastrointestinal', 54, 't26.jpg'),
(68, 'Tessalon', ' used to relieve coughing due to minor throat and bronchial irritation as may occur with the common cold or inhaled irritants.', 320, 't28.jpg'),
(69, 'Benzonate Capsules USP', 'used to relieve coughing due to minor throat and bronchial irritation, such as that caused by common cold.', 86, 't29.jpg'),
(70, 'Benztropine', 'used to treat symptoms of Parkinson&#39;s disease and drug-induced EPS, which can occur as side effects ', 600, 't30.jpg'),
(71, 'Urecholine 50mg', 'It is primarily used to treat urinary retention (inability to empty the bladder completely)', 21, 't31.jpg'),
(72, 'Casadex 50mg', 'used in the treatment of prostate cancer, particularly in combination with other medications or treatments.', 28, 't32.jpg'),
(73, 'Ziac 2.5mg/0.25mg', 'Ziac provides dual mechanisms of action to effectively lower blood pressure. that why it is used to reduce blood pressure.', 178, 't33.jpg'),
(74, 'Bleomycin Injection', 'Bleomycin is a medication primarily used in the treatment of certain types of cancer', 47, 't34.jpg'),
(75, 'Botezomib Injection', 'Bortezomib is a medication used in the treatment of multiple myeloma.', 35, 't35.jpg'),
(76, 'Brimonidine Tartrate Ophthamlmic Solution', 'used to treat open-angle glaucoma or ocular hypertension.', 87, 't36.jpg'),
(77, 'Bromocriptine Mesylate Tablets IP', 'used to treat disorders related to high levels of the hormone prolactin in the blood ', 565, 't37.jpg'),
(78, 'pulmicort Respules', ' It is a corticosteroid medication used in the long-term maintenance treatment of asthma', 124, 't38.jpg'),
(79, 'Wellbutrin XL 150mg', 'It is primarily used to treat major depressive disorder and seasonal affective disorder (SAD).', 30, 't39.jpg'),
(80, 'Buspar SB', ' used to treat anxiety disorders, including generalized anxiety disorder (GAD).', 106, 't40.jpg'),
(81, 'Fortical 220010/ml', 'used to treat osteoporosis in postmenopausal women.', 42, 't41.jpg'),
(82, 'Rocaltrol', 'used to treat conditions associated with low levels of calcium.', 27, 't41.jpg'),
(83, 'Phoslo', ' used to control high phosphate levels in patients with chronic kidney disease (CKD)', 200, 't43.jpg'),
(84, 'Atacand HCT', 'It is primarily used to treat high blood pressure (hypertension).', 32, 't44.jpg'),
(85, 'Capsaicin Cream, 0.025%', ' used to relieve pain associated with conditions such as postherpetic neuralgia.', 70, 't45.jpg'),
(86, 'Capoten', ' used to treat high blood pressure (hypertension), heart failure, and certain kidney disorders.', 43, 't46.jpg'),
(87, 'Tegretol 200', 'used to treat epilepsy (seizures) and certain types of nerve pain, such as trigeminal neuralgia.', 62, 't47.jpg'),
(88, 'Sinemet CR', ' used  for epilepsy and certain types of nerve pain, such as trigeminal neuralgia and diabetic neuropathy.', 46, 't48.jpg'),
(89, 'Coreg', 'primarily used to treat high blood pressure, heart failure, and certain types of heart disease.', 38, 't49.jpg'),
(90, 'Zyrtec allergy', 'It is primarily used to relieve symptoms of allergic conditions such as hay fever, seasonal allergies, and chronic hives.', 78, 't50.jpg'),
(91, 'Evoxac', 'It is primarily used to treat symptoms of dry mouth caused by Sjögren&#39;s syndrome, a chronic autoimmune disorder.', 18, 't51.jpg'),
(92, 'Chlordiazepoxide Hydrochloride', ' primarily used to treat anxiety and alcohol withdrawal symptoms. It belongs to a class of drugs known as benzodiazepines.', 129, 't52.jpg'),
(93, 'chlorpromazine hydrochloride', 'used primarily to treat various psychiatric conditions, including schizophrenia, bipolar disorder, and severe behavioral problems.', 35, 't53.jpg'),
(94, 'Chlorthalidone Table ', 'used for high blood pressure and to reduce excess fluid retention associated with various conditions such as heart failure.', 164, 't54.jpg'),
(95, 'Prevalite powder', ' used to lower high levels of cholesterol in the blood and to improve symptoms of itching associated with liver disease.', 15, 't55.jpg'),
(96, 'Spletal 100mg tablet', 'used to improve the symptoms of intermittent claudication, a condition characterized by pain, cramping.', 26, 't56.jpg'),
(97, 'Celexa', 'used for major depressive disorder and certain such as generalized anxiety disorder, social anxiety disorder.', 90, 't57.jpg'),
(98, 'cldribine injection', ' used in the treatment of certain types of cancer, particularly hairy cell leukemia, a rare form of blood cancer.', 143, 't58.jpg'),
(99, 'cleocin', 'used for various bacterial infections, including infections of the skin, respiratory tract, and female reproductive organs.\r\n\r\n', 348, 't59.jpg'),
(100, 'Clofarabine Injection', 'used for types of leukemia, including acute lymphoblastic leukemia and acute myeloid leukemia, particularly in pediatric patients.', 88, 't60.jpg'),
(101, 'Anafranil 10', 'used for depression, especially when other antidepressants have not been successful. also treat panic attacks and associated symptoms.', 425, 't61.jpg'),
(102, 'Klonopin', 'used to manage symptoms of generalized anxiety disorder, and social anxiety disorder. also used as an anticonvulsant medication.', 167, 't62.jpg'),
(103, 'catapres clonidine hcl', 'used to treat high blood pressure, attention deficit hyperactivity disorder, and certain withdrawal symptoms associated with opioid or nicotine dependence.', 31, 't63.jpg'),
(104, 'Plavix 75mg', 'used to prevent blood clots in individuals with various cardiovascular conditions.', 350, 't64.jpg'),
(105, 'fougera', 'used for fungal infections of the skin, such as athlete&#39;s foot, and ringworm.', 170, 't65.jpg'),
(106, 'colestid', 'used primarily to lower high levels of cholesterol in the blood.', 181, 't66.jpg'),
(107, 'Psorid 100', 'used in the treatment of severe psoriasis, a chronic autoimmune skin condition.', 180, 't67.jpg'),
(108, 'Cytosar 100mg', 'used in the treatment of various types of cancer.', 670, 't68.jpg'),
(109, 'Dacogen 50mg', 'used for treatment of types of cancer, particularly myelodysplastic syndromes', 125, 't69.jpg'),
(110, 'Focalin', ' used in the treatment of attention deficit hyperactivity disorder and narcolepsy.', 240, 't70.jpg'),
(111, 'Dextroamphetamine Sulfate', ' used primarily for treatment of attention deficit hyperactivity disorder.', 55, 't71.jpg'),
(112, 'Adderall XR', 'Adderall XR  used to treat attention deficit hyperactivity disorder and narcolepsy.', 50, 't72.jpg'),
(113, 'Valium Diazepam 10mg', 'used to treat anxiety disorders, muscle spasms, seizures, and symptoms of alcohol withdrawal.', 976, 't73.jpg'),
(114, 'Valtaren', 'used to reduce pain, inflammation caused by various conditions such as acute musculoskeletal injuries.', 85, 't74.jpg'),
(115, 'Bentyl 20mg/2ml', 'used to treat irritable bowel syndrome and symptoms associated with gastrointestinal disorders', 130, 't75.jpg'),
(116, 'Digoxin Tablets IP', 'Digoxin is a medication commonly used to treat various heart conditions, including heart failure.', 171, 't76.jpg'),
(117, 'Diltiazem Hydrochloride Capsules', 'used to treat high blood pressure (hypertension), chest pain (angina), and certain heart rhythm ', 342, 't77.jpg'),
(118, 'Cardizem CD', 'used to treat high blood pressure (hypertension), chest pain (angina), and certain heart rhythm disorders', 463, 't78.jpg'),
(119, 'Lomotil Tablets', ' used to treat diarrhea, particularly in cases of acute diarrhea or diarrhea associated with certain gastrointestinal', 560, 't79.jpg'),
(120, 'LONOX', ' tablets are a combination medication used to treat diarrhea. It contains two active diphenoxylate and atropine sulfate', 600, 't80.jpg'),
(121, 'Depakote 500', 'It contains the active ingredient valproic acid. Depakote is primarily used to treat epilepsy, bipolar disorder, and migraines.', 127, 't81.jpg'),
(122, 'Aricept 10mg', 'used in the treatment of Alzheimer&#39;s disease, a progressive neurodegenerative disorder.', 57, 't82.jpg'),
(123, 'Trusopt', ' It is a carbonic anhydrase inhibitor used in the treatment of high pressure ', 89, 't83.jpg'),
(124, 'Cardura XL', 'used to treat high blood pressure and symptoms of benign prostatic hyperplasia.', 130, 't84.jpg'),
(125, 'Doxepin', 'it is used in the treatment of depression, anxiety disorders, and certain types of sleep disorders, such as insomnia.', 427, 't85.jpg'),
(126, 'Vasotec', ' It is primarily used in the treatment of high blood pressure, heart failure, and certain types of kidney disease.', 212, 't86.jpg'),
(127, 'Vaserettic', ' Vaseretic 10-25 is a combination medicine used to treat hypertension (high blood pressure).', 427, 't87.jpg'),
(128, 'Epipen', 'Used to reduce itching, redness, and inflammation associated with skin conditions such as eczema, dermatitis, and insect bites.', 320, 't88.jpg'),
(129, 'Epnone 25', 'sed to treat high blood pressure (hypertension) and reduce the risk of cardiovascular events in individuals with heart failure', 100, 't89.jpg'),
(130, 'Lexapro 10mg', 'Lexapro 10mg is used to treat major depressive disorder (MDD) and generalized anxiety disorder (GAD).', 39, 't90.jpg'),
(131, 'Nexium 40mg', ' It is primarily used in the treatment of conditions related to excessive stomach acid production, such as gastroesophageal reflux disease', 63, 't91.jpg'),
(132, 'Estrace cream', 'used to treat symptoms of menopause, such as vaginal itching, and burning, as well as to help prevent osteoporosis in postmenopausal women', 54, 't92.jpg'),
(133, 'Lunestar 2mg', 'Lunesta is primarily used to treat insomnia. Lunesta causes relaxation to help you fall asleep and stay asleep. ', 91, 't93.jpg'),
(134, 'Lodine 5', 'used to relieve pain and reduce inflammation caused by conditions such as arthritis.', 39, 't94.jpg'),
(135, 'Etoposide', '', 178, 't95.jpg'),
(136, 'Pepcid', '', 49, 't96.jpg'),
(137, 'Plendil 5mg', '', 10, 't97.jpg'),
(138, 'TriCor', '', 29, 't98.jpg'),
(139, 'Lofibra', '', 76, 't99.jpg'),
(140, 'TriLipix', '', 746, 't100.jpg'),
(141, 'Ferrous Sulfate Tablets', '', 325, 't101.jpg'),
(142, 'Proscar', '', 93, 't102.jpg'),
(143, 'Flecarite 100', '', 108, 't103.jpg'),
(144, 'Diflucan', '', 17, 't104.jpg'),
(145, 'Amben 10mg', '', 125, 't105.jpg'),
(146, 'Zoledronic acid', '', 726, 't106.jpg'),
(147, 'Duovir', '', 61, 't107.jpg'),
(148, 'Jantoven', '', 148, 't110.jpg'),
(149, 'Norvasc 5mg', '', 610, 'team9.jpg'),
(150, 'Klor-Con M20', '', 78, 'a.jpg'),
(151, 'SSKI oral solution', '', 111, 'b.jpg'),
(153, ' Mirapex ER', '', 75, 'c.jpg'),
(154, 'Pravachol ', '', 80, 'd.jpg'),
(155, 'Prazosin Hydrochloride Capsules', '', 58, 'e.jpg'),
(156, 'Prednisone', '', 95, 'f.jpg'),
(157, 'Mysoline ', '', 250, 'g.jpg'),
(158, 'Cadista', '', 19, 'h.jpg'),
(159, 'Progesterone Capsules 100mg', '', 766, 'i.jpg'),
(160, 'K-tab', '', 150, 'j.jpg'),
(161, 'Rythmol', '', 178, 'k.jpg'),
(162, 'Inderal LA', '', 40, 'l.jpg'),
(163, 'Propylthiouracil Tablets', '', 40, 'm.jpg'),
(164, 'Mestinon-SR', '', 180, 'n.jpg'),
(165, 'Aclovex ', '', 49, 'o.jpg'),
(166, 'ultram', '', 460, 'Untitled design.jpg'),
(169, 'qudexy xr', '', 126, '134.jpg'),
(171, 'detrol', '', 56, '135.png'),
(172, 'zanaflex', '', 890, '136.jpg'),
(173, 'dayzide', '', 51, '124.jpg'),
(174, 'dyrenium', '', 48, '125 (1).jpg'),
(175, 'xanax', '', 55, 'product-8.jpg'),
(179, 'epipen', 'Used to reduce itching, redness, and inflammation associated with skin conditions such as eczema, dermatitis, and insect bites.', 25, 't88.jpg'),
(180, 'eplerenone tablet', 'sed to treat high blood pressure (hypertension) and reduce the risk of cardiovascular events in individuals with heart failure', 40, 't89.jpg'),
(181, 'lexapro 10mg', 'used to treat major depressive disorder (MDD) and generalized anxiety disorder (GAD).', 79, 't90.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `full_name` varchar(500) NOT NULL,
  `mobile` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL,
  `image` varchar(450) NOT NULL,
  `otp` int(6) NOT NULL DEFAULT 0,
  `token` varchar(255) DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `full_name`, `mobile`, `email`, `password`, `image`, `otp`, `token`, `reset_token`) VALUES
(27, 'manu sopan ', 987654321, 'k@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'uploaded_img/125 (1).jpg', 0, NULL, NULL),
(28, 'mohit', 123456789, 'abc@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'uploaded_img/self.jpeg', 0, NULL, NULL),
(29, 'harshal', 1234567890, 'i@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'uploaded_img/self.jpeg', 0, NULL, NULL),
(38, 'Tejas Dhole', 2147483647, 'tejasdhole501@gmail.com', 'af35daab0ef6f01413bbd39b16d64eb95c32c3ee', 'uploaded_img/pic-2.png', 708600, NULL, NULL),
(39, 'Tejas Dhole', 1234567890, 'tejas2@gmail.com', 'f9f6d7af74cc03327ea44ffb9314eab98a557a90', 'uploaded_img/pic-2.png', 0, NULL, NULL),
(42, 'Tejas Dhole ', 2147483647, 'tejasdhole50@gmail.com', '8db4cf9f12f52dd2718934e257dcddb777359baa', 'pic-2.png', 0, NULL, NULL),
(43, 'tejas', 2147483647, 'tee@gmail.com', '8db4cf9f12f52dd2718934e257dcddb777359baa', '', 0, NULL, NULL),
(44, 'tejas', 2147483647, 'te@gmail.com', '8db4cf9f12f52dd2718934e257dcddb777359baa', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
