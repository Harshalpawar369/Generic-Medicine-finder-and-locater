-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2024 at 12:59 PM
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
-- Database: `major`
--

-- --------------------------------------------------------

--
-- Table structure for table `medican`
--

CREATE TABLE `medican` (
  `id` int(255) NOT NULL,
  `Generic_name` mediumtext NOT NULL,
  `Brand_name` mediumtext NOT NULL,
  `info` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medican`
--

INSERT INTO `medican` (`id`, `Generic_name`, `Brand_name`, `info`) VALUES
(1, 'alendronate tablet', 'Fosamax', 'used to treat and prevent osteoporosis, a condition characterized by weakening of the bones'),

(2, 'acyclovir capsule', 'Zovirax', 'used to treat infections caused by certain viruses'),

(3, 'acyclovir tablet', 'Zovirax', 'used to treat infections caused by certain viruses'),

(4, 'albuterol inhalation solution', 'Albuterol Inhalation Solution','Albuterol inhalation solution is a medication primarily used to treat breathing difficulties associated with conditions such as asthma and chronic obstructive pulmonary disease (COPD). It works by relaxing the muscles in the airways, thereby opening up the air passages and making it easier to breathe.'),

(5, 'albuterol sulfate','ProAir RespiClick Powder Inhaler','used to treat bronchospasm associated with conditions such as asthma, chronic obstructive pulmonary disease (COPD), and other respiratory conditions.'),

(6, 'alclometasone dipropionate cream','Aclovate',' used to treat inflammatory and itchy skin conditions, such as eczema, dermatitis, psoriasis, and allergic reactions.'),

(7, 'alfuzosin hcl','Uroxatral','used to treat symptoms of benign prostatic hyperplasia (BPH)'),

(8, 'alitretinoin','Panretin gel',' used for the treatment of severe chronic hand eczema'),

(9, 'allopurinol tablet','Zyloprim','Allopurinol is a medication commonly prescribed to treat gout and certain types of kidney stones.'),

(10, 'alprazolam','Xanax','reat anxiety disorders, panic disorders, and sometimes other conditions such as insomnia and certain types of seizures'),

(11, 'altretamine','Hexalen capsules','Altretamine is a medication used in the treatment of certain types of cancer, particularly ovarian cancer.'),

(12, 'amiodarone tablet','Cordarone','Amiodarone is a medication primarily used to treat and prevent certain types of irregular heartbeats (arrhythmias)'),

(13, 'amitriptyline tablet','Elavil','Amitriptyline is a medication primarily used to treat various conditions, including depression, anxiety disorders, and certain types of chronic pain.'),

(14, 'amlodipine and valsartan','Exforge','Amlodipine and valsartan are two medications that are often prescribed together to treat high blood pressure (hypertension) or certain types of heart failure.'),

(15, 'amlodipine besylate','Norvasc','Amlodipine besylate is a medication used to treat high blood pressure (hypertension) and certain types of chest pain called angina'),

(16, 'amlodipine, valsartan, hydrochlorothiazide','Exforge HCT','The combination of amlodipine, valsartan, and hydrochlorothiazide is used to treat high blood pressure (hypertension) in adults.'),

(17, 'Amlodipine/Benazepril capsule','Lotrel','Amlodipine/benazepril capsules are primarily used to treat hypertension (high blood pressure) in adults. This medication is a combination of two active ingredients: amlodipine and benazepril. Amlodipine is a calcium channel blocker, while benazepril is an angiotensin-converting enzyme (ACE) inhibitor. '),

(18, 'amoxapine tablet','Amoxapine tablet','Amoxapine is a medication primarily used to treat depression, particularly when other antidepressant medications have not been effective. It belongs to a class of drugs known as tricyclic antidepressants (TCAs).'),

(19, 'anastrazole','Arimidex','Anastrozole is used to treat hormone receptor-positive breast cancer, typically in postmenopausal women. It works by reducing the production of estrogen in the body, which can slow or stop the growth of cancer cells that require estrogen to grow. This medication is often prescribed as adjuvant therapy following primary treatment to reduce the risk of cancer recurrence. Anastrozole is usually taken orally once a day.'),

(21, 'Arsenic Trioxide','Arsenic Trioxide','Arsenic trioxide is a medication primarily used in the treatment of a type of blood cancer called acute promyelocytic leukemia (APL), a subtype of acute myeloid leukemia (AML). It works by inducing apoptosis, or programmed cell death, in leukemia cells. Arsenic trioxide is often used in combination with other chemotherapy agents, such as all-trans retinoic acid (ATRA), to effectively treat APL. '),

(22, 'artificial tears 1.4% drops (OTC)','Artificial Tears 1.4% drops (OTC)','Artificial Tears 1.4% drops (OTC) are lubricating eye drops commonly used to relieve dryness and irritation of the eyes. They contain a sterile solution that mimics the natural tears produced by the eyes, helping to moisturize the surface of the eye and alleviate discomfort associated with dry eye syndrome. '),

(23, 'aspirin EC tablet (OTC)','Aspirin EC Tablet (OTC)',' This enteric coating helps to protect the stomach lining from irritation and reduces the risk of gastrointestinal side effects, such as stomach ulcers and bleeding, commonly associated with regular aspirin use. Aspirin EC tablets are commonly used to relieve pain, reduce inflammation, and lower fever, and they are also used in low doses as a preventative measure against heart attacks and strokes.'),

(24, 'atenolol tablet','Tenormin','Atenolol is a medication belonging to the class of beta-blockers, primarily used to treat high blood pressure (hypertension) and certain heart conditions like angina (chest pain) and heart rhythm disorders. It works by blocking the action of certain natural substances in the body, such as adrenaline, which can raise blood pressure and heart rate.'),

(25, 'atenolol/chlorthalidone tablet','Tenoretic','Atenolol/chlorthalidone tablet is used to treat hypertension (high blood pressure). This combination medication works by lowering blood pressure through two mechanisms: atenolol is a beta-blocker that reduces the heart rate and cardiac output, while chlorthalidone is a diuretic that helps the kidneys eliminate excess sodium and water from the body, reducing blood volume and pressure.'),

(26, 'atorvastatin calcium','Lipitor','Atorvastatin calcium is a medication primarily used to lower levels of "bad" cholesterol (low-density lipoprotein cholesterol, or LDL) and triglycerides in the blood, while simultaneously increasing levels of "good" cholesterol (high-density lipoprotein cholesterol, or HDL). It belongs to a class of drugs known as statins, which work by inhibiting an enzyme involved in the production of cholesterol in the liver. '),

(27, 'augmented betamethasone dipropionate','Diprolene Cream','Augmented betamethasone dipropionate is a potent corticosteroid medication used to treat various inflammatory skin conditions. It is applied topically (on the skin) and works by reducing inflammation, itching, and redness associated with conditions such as eczema, psoriasis, dermatitis, and allergic reactions. '),

(28,'azathioprine','Imuran','Azathioprine is an immunosuppressive medication used primarily to prevent organ rejection in transplant recipients and to treat autoimmune diseases such as rheumatoid arthritis, systemic lupus erythematosus (SLE), inflammatory bowel disease (Crohns disease and ulcerative colitis), and autoimmune hepatitis.'),

(29,'azelastine','Astepro','Azelastine is an antihistamine medication used to relieve symptoms associated with seasonal allergic rhinitis (hay fever) and perennial allergic rhinitis (year-round allergies), such as sneezing, itching, runny or stuffy nose, and itchy or watery eyes. It is available in nasal spray form for intranasal administration.'),

(30,'Azelastine nasal','spray	Astelin','Azelastine nasal spray is a medication used to treat symptoms of allergic rhinitis, including sneezing, itching, runny or stuffy nose, and itchy or watery eyes. It is applied directly into the nostrils.'),

(31,'baclofen tablet','Lioresal','Baclofen is a medication primarily used to treat muscle spasticity, which can occur due to conditions such as multiple sclerosis, spinal cord injuries, cerebral palsy, or other neurological disorders. '),

(32,'Belladonna Alkaloids with Phenobarbital','Donnatal Tablet','Belladonna Alkaloids with Phenobarbital is a medication used to relieve symptoms associated with gastrointestinal disorders, particularly irritable bowel syndrome (IBS).'),

(33,'benazepril HCTZ tablet','Lotensin HCT','The combination of benazepril and HCTZ is used to treat hypertension (high blood pressure) in individuals who require both medications to achieve adequate blood pressure control. By combining an ACE inhibitor with a diuretic, this medication can effectively lower blood pressure through complementary mechanisms.'), 

(34,'benazepril tablet','Lotensin',' It is primarily used to treat high blood pressure (hypertension) and heart failure. Benazepril works by relaxing blood vessels, which helps to lower blood pressure and improve blood flow.'),

(35,'benzonatate','Tessalon Capsule','Benzonatate is a medication used to relieve cough caused by conditions such as the common cold, bronchitis, or other respiratory tract infections. It is classified as a non-narcotic antitussive, meaning it works to suppress coughing by numbing the throat and lungs'),

(36,'benzonatate capsule','Benzonatate capsule','Benzonatate is a medication used to relieve cough caused by conditions such as the common cold, bronchitis, or other respiratory tract infections. It is classified as a non-narcotic antitussive, meaning it works to suppress coughing by numbing the throat and lungs'),

(37,'benztropine tablet','Benztropine tablet','Benztropine is a medication primarily used to treat symptoms of Parkinsons disease and certain side effects caused by antipsychotic medications.'),

(38,'bethanechol tablet','Urecholine','Bethanechol is a medication used to treat urinary retention, a condition in which the bladder does not empty completely. It belongs to a class of drugs known as cholinergic agonists, which work by stimulating certain receptors in the bladder to increase muscle tone and contractions, thereby helping to empty the bladder.'),

(39,'bicalutamide','Casodex','Bicalutamide is a medication used primarily in the treatment of prostate cancer. Prostate cancer cells often depend on androgens to grow and spread. By inhibiting the effects of androgens, bicalutamide helps to slow down the growth and progression of prostate cancer.'),

(40,'bisoprolol/HCTZ tablet','Ziac','bisoprolol and HCTZ is used to treat hypertension (high blood pressure) in individuals who require both medications to achieve adequate blood pressure control. By combining a beta-blocker with a diuretic, this medication can effectively lower blood pressure through complementary mechanisms.'),

(40,'Bleomycin','Bleomycin','Bleomycin is a medication used primarily in the treatment of certain types of cancer, including Hodgkins lymphoma, non-Hodgkins lymphoma, testicular cancer, and squamous cell carcinomas of the head and neck. It belongs to a class of drugs known as antineoplastic antibiotics.'),

(41,'Bortezomib','Bortezomib','Bortezomib, marketed under the brand name Velcade among others, is a medication primarily used to treat multiple myeloma and mantle cell lymphoma. It belongs to a class of drugs known as proteasome inhibitors.'),

(42,'brimonidine tartrate','Brimonidine Tartrate 0.2% Solution','Zolpidem is indicated for the short-term treatment of insomnia in adults who have difficulty falling asleep or staying asleep.'),

(43,'bromocriptine tablet','Bromocriptine tablet','brimonidine works by reducing the production of aqueous humor (the fluid inside the eye) and increasing its outflow, thereby lowering the pressure inside the eye. By reducing intraocular pressure, brimonidine helps to prevent damage to the optic nerve and preserve vision in patients with glaucoma or ocular hypertension.'),

(44,'budesonide inhalation suspension','Pulmicort Respules','Budesonide inhalation suspension is a medication used primarily in the treatment of asthma, particularly in children and infants. '),
(45,'bupropion hcl','Wellbutrin SR','bupropion works by inhibiting the reuptake of the neurotransmitters norepinephrine and dopamine in the brain. This helps to increase the levels of these neurotransmitters, which are associated with mood regulation and pleasure. It is often prescribed for individuals with major depressive disorder or seasonal affective disorder.'),

(46,'bupropion hcl','Wellbutrin XL','bupropion works by inhibiting the reuptake of the neurotransmitters norepinephrine and dopamine in the brain. This helps to increase the levels of these neurotransmitters, which are associated with mood regulation and pleasure. It is often prescribed for individuals with major depressive disorder or seasonal affective disorder.'),

(47,'bupropion HCL tablet','Wellbutrin','bupropion works by inhibiting the reuptake of the neurotransmitters norepinephrine and dopamine in the brain. This helps to increase the levels of these neurotransmitters, which are associated with mood regulation and pleasure. It is often prescribed for individuals with major depressive disorder or seasonal affective disorder.'),

(48,'buspirone tablet','Buspar','bupropion works by inhibiting the reuptake of the neurotransmitters norepinephrine and dopamine in the brain. This helps to increase the levels of these neurotransmitters, which are associated with mood regulation and pleasure. It is often prescribed for individuals with major depressive disorder or seasonal affective disorder'),

(49,'Calcitonin-salmon (rDNA origin)','Fortical Nasal Spray','Calcitonin-salmon (rDNA origin) is a medication used primarily in the treatment of osteoporosis and Pagets disease of bone. It is a synthetic form of calcitonin, a hormone that is naturally produced in the thyroid gland.'),

(50,'calcitriol capsule','Rocaltrol','Calcitriol is a synthetic form of vitamin D, also known as vitamin D3. It is used primarily to treat conditions related to calcium metabolism and bone health, such as hypocalcemia (low blood calcium levels), hypoparathyroidism (underactive parathyroid glands), and osteoporosis (thinning and weakening of bones).'),

(51,'calcium acetate','PhosLo gelcaps','Calcium acetate is a medication used to control high phosphate levels in the blood, a condition known as hyperphosphatemia. It is primarily prescribed for patients with chronic kidney disease (CKD) who are on dialysis.'),
(52,'candesartan cilexetil-hydrochlorothiazide','Atacand HCT','Candesartan cilexetil-hydrochlorothiazide is a combination medication used to treat high blood pressure (hypertension).'),

(53,'candesartan cilextil','Atacand','Candesartan cilexetil is a medication used to treat high blood pressure (hypertension) and heart failure. It belongs to a class of drugs known as angiotensin II receptor blockers (ARBs).'),

(54,'capsaicin cream, 0.035% (OTC)','Capsaicin Cream, 0.035% (OTC)','Capsaicin cream, available over the counter (OTC), contains the active ingredient capsaicin, which is derived from chili peppers. It is commonly used as a topical treatment for certain types of pain, particularly neuropathic pain (nerve pain) and musculoskeletal pain.'),

(56,'captopril tablet','Capoten','Captopril is a medication used primarily to treat high blood pressure (hypertension) and heart failure'),

(57,'carbamazepine tablet','Tegretol','Carbamazepine is a medication primarily used to treat epilepsy and certain types of seizures.'),

(58,'carbidopa/levo SR tablet','Sinemet CR','Carbidopa/levodopa extended-release (ER) tablets are a combination medication used primarily in the treatment of Parkinsons disease and Parkinsons-like symptoms'),

(59,'carbidopa/levo tablet','Sinemet','Carbidopa/levodopa extended-release (ER) tablets are a combination medication used primarily in the treatment of Parkinsons disease and Parkinsons-like symptoms'),

(60,'carvedilol','Coreg tablets','Carvedilol is a medication used primarily to treat high blood pressure (hypertension), heart failure, and certain heart conditions such as left ventricular dysfunction following a heart attack. '),

(61,'cetirizine HCl tablet - OTC','Zyrtec OTC','Cetirizine HCl is an over-the-counter (OTC) medication commonly used to relieve symptoms of allergies, such as hay fever, seasonal allergies, and allergic rhinitis'),

(62,'cevimeline HCl','Evoxac','Cevimeline hydrochloride (HCl) is a medication primarily used to treat symptoms of dry mouth (xerostomia) caused by Sjögrens syndrome, a chronic autoimmune disorder.'),

(63,'chlordiazepoxide capsule','Chlordiazepoxide capsule','Chlordiazepoxide is a medication belonging to the benzodiazepine class, primarily used for the treatment of anxiety disorders and alcohol withdrawal symptoms. It is also sometimes used in combination with other medications to treat certain gastrointestinal conditions such as irritable bowel syndrome.'),

(64,'chlorpromazine HCL','Chlorpromazine HCL','Chlorpromazine hydrochloride (HCl) is a medication belonging to the class of drugs known as phenothiazine antipsychotics. It is primarily used to treat various mental health conditions, including schizophrenia, bipolar disorder, and severe agitation.'),

(65,'chlorthalidone tablet','Chlorthalidone tablet','Chlorthalidone is a medication classified as a thiazide diuretic, often prescribed to treat high blood pressure (hypertension) and edema (fluid retention) associated with heart failure or other conditions.'),

(66,'cholestyramine','Prevalite Powder','Cholestyramine, also known as colestyramine, is a medication used primarily to lower high levels of cholesterol in the blood, particularly low-density lipoprotein (LDL) cholesterol, often referred to as "bad" cholesterol. '),

(67,'cilostazol tablet','Pletal','Cilostazol is a medication primarily used to improve the symptoms of intermittent claudication, a condition characterized by pain or cramping in the legs during physical activity due to poor blood circulation. It belongs to a class of drugs known as phosphodiesterase inhibitors.'),

(68,'citalopram tablet','Celexa',' commonly prescribed to treat depression and certain anxiety disorders. It works by increasing the levels of serotonin, a neurotransmitter in the brain that helps regulate mood, emotions, and behavior.'),

(69,'Cladribine','Cladribine','Cladribine is a medication used in the treatment of certain types of cancer, particularly hairy cell leukemia (HCL), a rare type of blood cancer. It belongs to a class of drugs known as purine analogues.'),

(70,'clindamycin phosphate','Cleocin','Clindamycin phosphate is a medication commonly used to treat bacterial infections. It belongs to a class of antibiotics called lincosamides. Clindamycin works by inhibiting the growth of bacteria and stopping their reproduction.'),
(71,'Clofarabine','Clofarabine','Clofarabine is a medication used in the treatment of certain types of cancer, particularly acute lymphoblastic leukemia (ALL) and acute myeloid leukemia (AML) in children and young adults. It is a type of chemotherapy drug known as a purine nucleoside analog.'),

(72,'clomipramine hcl','Anafranil','Clomipramine hydrochloride (HCl) is a medication primarily used to treat obsessive-compulsive disorder (OCD), a mental health condition characterized by recurring, unwanted thoughts (obsessions) and repetitive behaviors or mental acts (compulsions). '),

(71,'clonazepam tablet','Klonopin','Clonazepam is a medication classified as a benzodiazepine, commonly prescribed to treat certain seizure disorders, panic disorder, and anxiety disorders. It works by enhancing the activity of gamma-aminobutyric acid (GABA), a neurotransmitter in the brain that helps to calm excessive electrical activity and reduce feelings of anxiety.'),

(72,'clonidine HCL tablets','Catapres','clonidine may also be used to manage certain conditions such as attention deficit hyperactivity disorder (ADHD), menopausal symptoms (such as hot flashes), opioid withdrawal symptoms, or anxiety disorders.'),

(73,'clonidine patch','Catapres TTS -3','Clonidine patches are transdermal patches that deliver the medication clonidine through the skin and into the bloodstream over a prolonged period. '),

(74,'clopidogrel bisulfate tablets','Plavix','Clopidogrel bisulfate is a medication primarily used to prevent blood clots and reduce the risk of stroke, heart attack, and other cardiovascular events. It belongs to a class of drugs known as antiplatelet agents.'),

(75,'clotrimazole/betamethasone cream','Lotrisone Cream','Clotrimazole/betamethasone cream is a combination medication used to treat various skin conditions, particularly those caused by fungal infections and associated inflammation. Clotrimazole is an antifungal medication that works by inhibiting the growth of fungi responsible for infections such as athletes foot, ringworm, jock itch, and yeast infections.'),

(76,'colestipol hcl','Colestid','Colestipol hydrochloride (HCl) is a medication primarily used to lower cholesterol levels in the blood. It belongs to a class of drugs known as bile acid sequestrants or bile acid-binding resins.'),

(77,'cyclosporine','Cyclosporine capsules','Cyclosporine is a medication classified as an immunosuppressant. It is commonly used to prevent organ rejection in transplant recipients and to treat various autoimmune conditions.'),

(78,'cyclosporine','Cyclosporine Oral Solution','Cyclosporine is a medication classified as an immunosuppressant. It is commonly used to prevent organ rejection in transplant recipients and to treat various autoimmune conditions.'),

(79,'Cytarabine','Cytarabine','Cytarabine, also known as cytosine arabinoside or Ara-C, is a chemotherapy medication used primarily to treat certain types of leukemia, including acute myeloid leukemia (AML) and acute lymphoblastic leukemia (ALL). '),

(80,'decitabine','Dacogen','Decitabine is a medication used in the treatment of certain types of cancer, particularly myelodysplastic syndromes (MDS), a group of disorders characterized by abnormal blood cell production in the bone marrow. It is also used to treat acute myeloid leukemia (AML).'),

(81,'Dexmethylphenidate HCl tablet','Focalin','Dexmethylphenidate hydrochloride (HCl) is a medication used to treat attention deficit hyperactivity disorder (ADHD) in children, adolescents, and adults. It belongs to a class of drugs known as central nervous system (CNS) stimulants.'),

(82,'dextroamphetamine sulfate ER capsule','Dextroamphetamine sulfate ER capsule','Dexmethylphenidate works by increasing the levels of certain neurotransmitters, such as dopamine and norepinephrine, in the brain. These neurotransmitters play a role in regulating attention, focus, and impulse control. By enhancing their activity, dexmethylphenidate helps to improve ADHD symptoms, such as inattention, hyperactivity, and impulsivity.'),

(83,'dextroamphetamine-amphetamine ER capsule','Adderall XR','Dextroamphetamine-amphetamine extended-release (ER) capsules are a medication used to treat attention deficit hyperactivity disorder (ADHD) and narcolepsy'),

(84,'dextroamphetamine-amphetamine tablet','Dextroamphetamine-Amphetamine tablet','Dextroamphetamine-amphetamine extended-release (ER) capsules are a medication used to treat attention deficit hyperactivity disorder (ADHD) and narcolepsy'),

(85,'diazepam tablet','Valium','Diazepam is a medication belonging to the benzodiazepine class, commonly prescribed to treat a variety of conditions, including anxiety disorders, muscle spasms, alcohol withdrawal symptoms, seizures, and as a premedication for certain medical procedures.'),

(86,'diclofenac EC tablet','Voltaren','Diclofenac EC tablet refers to a formulation of diclofenac that is enteric-coated. Diclofenac is a nonsteroidal anti-inflammatory drug (NSAID) commonly used to reduce pain, inflammation, and swelling associated with various conditions such as arthritis, gout, sprains, strains, and menstrual cramps.'),

(87,'diclofenac ER tablet','Voltaren XR','Diclofenac EC tablet refers to a formulation of diclofenac that is enteric-coated. Diclofenac is a nonsteroidal anti-inflammatory drug (NSAID) commonly used to reduce pain, inflammation, and swelling associated with various conditions such as arthritis, gout, sprains, strains, and menstrual cramps.'),

(88,'dicyclomine capsule','Bentyl','Dicyclomine is a medication primarily used to treat irritable bowel syndrome (IBS) and other gastrointestinal (GI) conditions characterized by symptoms such as abdominal cramps, spasms, and discomfort. It belongs to a class of drugs known as anticholinergics or antispasmodics.'),

(89,'dicyclomine tablet','Bentyl','Dicyclomine is a medication primarily used to treat irritable bowel syndrome (IBS) and other gastrointestinal (GI) conditions characterized by symptoms such as abdominal cramps, spasms, and discomfort. It belongs to a class of drugs known as anticholinergics or antispasmodics.'),


(90,'digoxin tablets','Lanoxin','Digoxin is a medication commonly used to treat various heart conditions, including heart failure and certain types of irregular heartbeats (arrhythmias), such as atrial fibrillation and atrial flutter. It belongs to a class of drugs known as cardiac glycosides.'),

(91,'diltiazem ER capsule','Dilacor XR','Diltiazem ER (extended-release) capsules are a medication used to treat various heart conditions, including high blood pressure (hypertension), chest pain (angina), and certain types of irregular heart rhythms (arrhythmias), such as atrial fibrillation or atrial flutter.'),

(92,'diltiazem hcl cd','Cardizem CD','Diltiazem hydrochloride (HCl) CD (controlled delivery) refers to a formulation of diltiazem that is designed to release the medication gradually over an extended period. Diltiazem is a medication belonging to the class of drugs known as calcium channel blockers.'),

(93,'diphenoxylate hydrochloride/atropine sulfate','Lomotil','Diphenoxylate hydrochloride/atropine sulfate is a combination medication used to treat diarrhea.'),

(94,'diphenoxylate/atropine tablet','Lonox','Diphenoxylate hydrochloride/atropine sulfate is a combination medication used to treat diarrhea.'),

(95,'Divalproex DR tablet','Depakote','Divalproex DR (delayed-release) tablet is a medication primarily used to treat epilepsy and bipolar disorder. It contains divalproex sodium, which is a compound that dissociates to valproic acid in the gastrointestinal tract. Valproic acid is the active ingredient responsible for the therapeutic effects of divalproex.'),

(96,'donepezil HCI','Aricept','Donepezil hydrochloride (HCl) is a medication used to treat symptoms of dementia associated with Alzheimers disease.'),

(97,'dorzolamide HCL','Trusopt','Dorzolamide hydrochloride (HCl) is a medication used to lower intraocular pressure in individuals with open-angle glaucoma or ocular hypertension. It belongs to a class of drugs known as carbonic anhydrase inhibitors.'),

(98,'doxazosin mesylate','Cardura','Doxazosin mesylate is a medication primarily used to treat high blood pressure (hypertension) and symptoms of benign prostatic hyperplasia (BPH), a non-cancerous enlargement of the prostate gland.'),

(99,'doxepin capsule','Doxepin capsule','Doxepin is a medication primarily used to treat depression and anxiety disorders. It belongs to a class of drugs known as tricyclic antidepressants (TCAs). Additionally, doxepin is sometimes used in lower doses to treat insomnia.'),
(100,'enalapril maleate tablet','Vasotec','Enalapril maleate is a medication commonly used to treat high blood pressure (hypertension) and heart failure. It belongs to a class of drugs called angiotensin-converting enzyme (ACE) inhibitors. ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
