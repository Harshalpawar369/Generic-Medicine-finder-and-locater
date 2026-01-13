-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2024 at 03:46 PM
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
(3, 0, 0, 'zovirax', 129, 1, 'product-1.jpg'),
(4, 0, 0, 'sonata LR', 347, 1, '108.jpg');

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
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(13, 'zovirax', '', 129, 'product-1.jpg'),
(14, 'sonata LR', '', 347, '108.jpg'),
(15, 'vitamin D3', '', 80, '111.jpg'),
(16, 'vitamin B6', '', 420, '112.jpg'),
(17, 'vitamin B', '', 164, '113.jpg'),
(18, 'vinblastin sulfate injection', '', 29, '114.jpg'),
(19, 'isoptin sr', '', 349, '115.jpg'),
(20, 'effexor', '', 166, '117.jpg'),
(21, 'depakene', '', 180, '119.jpg'),
(22, 'valtrex', '', 667, '120.jpg'),
(23, 'trospium chloride', '', 120, '121.jpg'),
(24, 'maxzide', '', 250, '123.jpg'),
(27, 'triamcinolane acetonide', '', 1000, '126.jpg'),
(28, 'tri-cyclen', '', 89, '127.jpg'),
(29, 'desyrel 100mg', '', 130, '128.jpg'),
(30, 'parnate', '', 167, '129.jpg'),
(31, 'mavik', '', 350, '130.jpg'),
(33, 'ultracet', '', 560, '132.jpg'),
(34, 'hycamitin 1mg', '', 600, '133.jpg'),
(38, 'voglexo', '', 427, '137.jpg'),
(39, 'Voglexo creme', '', 746, '138.jpg'),
(40, 'antrogel', '', 640, '139.jpg'),
(41, 'depo-testosterone', '', 500, '140.jpg'),
(42, 'albuterol sulfate', '', 212, 'category-1.jpg'),
(43, 'attorex-asp75', '', 320, 'product-2.jpg'),
(44, 'proair respiclick', '', 81, 'product-3.jpg'),
(45, 'aclovet ointment 0.05%', '', 720, 'product-4.jpg'),
(46, 'uroxatral', '', 999, 'product-5.jpg'),
(47, 'Zyloprim', '', 88, 'product-7.jpg'),
(49, 'Hexalen', '', 100, 'product-9.jpg'),
(50, 'Amiodarone tablets', '', 400, 'product-10.jpg'),
(51, 'Elavil-10', '', 350, 'product-11.jpg'),
(52, 'Exforge', '', 240, 'product-12.jpg'),
(53, 'Lotrel ', '', 100, 't11.jpg'),
(54, 'Amoxapine Tablets', '', 33, 't12.jpg'),
(55, 'Arimidex', '', 90, 't13.jpg'),
(56, 'hyzaar', '', 50, 't14.jpg'),
(57, 'Arsenic Trioxide ', '', 637, 't15.jpg'),
(58, 'Artificial Tears Solution', '', 42, 't16.jpg'),
(59, 'Atenolol tablets', '', 41, 't18.jpg'),
(60, 'Tenoretic table', '', 39, 't19.jpg'),
(61, 'Lipitor Tablet', '', 188, 't20.jpg'),
(62, 'Diprolene Ointment', '', 95, 't21.jpg'),
(63, 'Imuran', '', 200, 't22.jpg'),
(64, 'AsterPRO ALLERGY', '', 205, 't23.jpg'),
(65, 'Astelin ', '', 30, 't24.jpg'),
(66, 'Baclofen Tablets', '', 25, 't25.jpg'),
(67, 'Donnatal', '', 54, 't26.jpg'),
(68, 'Tessalon', '', 320, 't28.jpg'),
(69, 'Benzonate Capsules USP', '', 86, 't29.jpg'),
(70, 'Benztropine', '', 600, 't30.jpg'),
(71, 'Urecholine 50mg', '', 21, 't31.jpg'),
(72, 'Casadex 50mg', '', 28, 't32.jpg'),
(73, 'Ziac 2.5mg/0.25mg', '', 178, 't33.jpg'),
(74, 'Bleomycin Injection', '', 47, 't34.jpg'),
(75, 'Botezomib Injection', '', 35, 't35.jpg'),
(76, 'Brimonidine Tartrate Ophthamlmic Solution', '', 87, 't36.jpg'),
(77, 'Bromocriptine Mesylate Tablets IP', '', 565, 't37.jpg'),
(78, 'pulmicort Respules', '', 124, 't38.jpg'),
(79, 'Wellbutrin XL 150mg', '', 30, 't39.jpg'),
(80, 'Buspar SB', '', 106, 't40.jpg'),
(81, 'Fortical 220010/ml', '', 42, 't41.jpg'),
(82, 'Rocaltrol', '', 27, 't41.jpg'),
(83, 'Phoslo', '', 200, 't43.jpg'),
(84, 'Atacand HCT', '', 32, 't44.jpg'),
(85, 'Capsaicin Cream, 0.025%', '', 70, 't45.jpg'),
(86, 'Capoten', '', 43, 't46.jpg'),
(87, 'Tegretol 200', '', 62, 't47.jpg'),
(88, 'Sinemet CR', '', 46, 't48.jpg'),
(89, 'Coreg', '', 38, 't49.jpg'),
(90, 'Zyrtec allergy', '', 78, 't50.jpg'),
(91, 'Evoxac', '', 18, 't51.jpg'),
(92, 'Chlordiazepoxide Hydrochloride', '', 129, 't52.jpg'),
(93, 'chlorpromazine hydrochloride', '', 35, 't53.jpg'),
(94, 'Chlorthalidone Table ', '', 164, 't54.jpg'),
(95, 'Prevalite powder', '', 15, 't55.jpg'),
(96, 'Spletal 100mg tablet', '', 26, 't56.jpg'),
(97, 'Celexa', '', 90, 't57.jpg'),
(98, 'cldribine injection', '', 143, 't58.jpg'),
(99, 'cleocin', '', 348, 't59.jpg'),
(100, 'Clofarabine Injection', '', 88, 't60.jpg'),
(101, 'Anafranil 10', '', 425, 't61.jpg'),
(102, 'Klonopin', '', 167, 't62.jpg'),
(103, 'catapres clonidine hcl', '', 31, 't63.jpg'),
(104, 'Plavix 75mg', '', 350, 't64.jpg'),
(105, 'fougera', '', 170, 't65.jpg'),
(106, 'colestid', '', 181, 't66.jpg'),
(107, 'Psorid 100', '', 180, 't67.jpg'),
(108, 'Cytosar 100mg', '', 670, 't68.jpg'),
(109, 'Dacogen 50mg', '', 125, 't69.jpg'),
(110, 'Focalin', '', 240, 't70.jpg'),
(111, 'Dextroamphetamine Sulfate', '', 55, 't71.jpg'),
(112, 'Adderall XR', '', 50, 't72.jpg'),
(113, 'Valium Diazepam 10mg', '', 976, 't73.jpg'),
(114, 'Valtaren', '', 85, 't74.jpg'),
(115, 'Bentyl 20mg/2ml', '', 130, 't75.jpg'),
(116, 'Digoxin Tablets IP', '', 171, 't76.jpg'),
(117, 'Diltiazem Hydrochloride Capsules', '', 342, 't77.jpg'),
(118, 'Cardizem CD', '', 463, 't78.jpg'),
(119, 'Lomotil Tablets', '', 560, 't79.jpg'),
(120, 'LONOX', '', 600, 't80.jpg'),
(121, 'Depakote 500', '', 127, 't81.jpg'),
(122, 'Aricept 10mg', '', 57, 't82.jpg'),
(123, 'Trusopt', '', 89, 't83.jpg'),
(124, 'Cardura XL', '', 130, 't84.jpg'),
(125, 'Doxepin', '', 427, 't85.jpg'),
(126, 'Vasotec', '', 212, 't86.jpg'),
(127, 'Vaserettic', '', 427, 't87.jpg'),
(128, 'Epipen', '', 320, 't88.jpg'),
(129, 'Epnone 25', '', 100, 't89.jpg'),
(130, 'Lexapro 10mg', '', 39, 't90.jpg'),
(131, 'Nexium 40mg', '', 637, 't91.jpg'),
(132, 'Estrace cream', '', 54, 't92.jpg'),
(133, 'Lunestar 2mg', '', 91, 't93.jpg'),
(134, 'Lodine 5', '', 939, 't94.jpg'),
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
(175, 'xanax', '', 55, 'product-8.jpg');

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
  `image` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `full_name`, `mobile`, `email`, `password`, `image`) VALUES
(27, 'manu sopan ', 987654321, 'k@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'uploaded_img/125 (1).jpg'),
(28, 'mohit', 123456789, 'abc@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'uploaded_img/self.jpeg'),
(29, 'harshal', 1234567890, 'i@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'uploaded_img/self.jpeg'),
(38, 'Tejas Dhole', 2147483647, 'tejasdhole501@gmail.com', 'f9f6d7af74cc03327ea44ffb9314eab98a557a90', 'uploaded_img/pic-2.png'),
(39, 'Tejas Dhole', 1234567890, 'tejas2@gmail.com', 'f9f6d7af74cc03327ea44ffb9314eab98a557a90', 'uploaded_img/pic-2.png'),
(40, 'tejas', 2147483647, 'tejasdhole50@gmail.com', '8db4cf9f12f52dd2718934e257dcddb777359baa', 'uploaded_img/about-img-2.png');

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
