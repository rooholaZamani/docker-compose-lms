-- Comprehensive Test Data for LMS Exams, Questions, and Assignments
-- This script creates extensive exam, question, and assignment data for analytics testing
-- Includes 35+ exams, 150+ questions, and 25+ assignments across all courses

-- =============================================================================
-- EXAMS SECTION - Creating 35 diverse exams across all courses
-- =============================================================================

-- Delete existing exam-related data first
DELETE FROM submission WHERE id > 0;
DELETE FROM question WHERE id > 0;
DELETE FROM exam WHERE id > 0;
DELETE FROM assignment_submission WHERE id > 0;
DELETE FROM assignment WHERE id > 0;

-- Math Course Exams (Course ID = 1) - 10 exams
INSERT INTO exam (id, title, description, time_limit, passing_score, total_possible_score, status, available_from, available_to) VALUES
(1, 'آزمون تشخیص سطح ریاضی', 'ارزیابی اولیه دانش ریاضی دانشجویان', 60, 50, 50, 'FINALIZED', '2024-09-15 08:00:00', '2025-03-31 23:59:59'),
(2, 'کوئیز جبر خطی - فصل اول', 'سوالات کوتاه درباره ماتریس‌ها', 45, 60, 75, 'FINALIZED', '2024-10-01 08:00:00', '2025-03-31 23:59:59'),
(3, 'آزمون میان‌ترم ریاضی پایه', 'آزمون جامع جبر خطی و حساب دیفرانسیل', 120, 55, 100, 'FINALIZED', '2024-10-15 08:00:00', '2025-03-31 23:59:59'),
(4, 'کوئیز حساب دیفرانسیل', 'مشتق‌گیری و کاربردهای آن', 60, 65, 80, 'FINALIZED', '2024-11-01 08:00:00', '2025-03-31 23:59:59'),
(5, 'آزمون حساب انتگرال', 'انتگرال‌گیری و تکنیک‌های حل', 90, 60, 90, 'FINALIZED', '2024-11-20 08:00:00', '2025-03-31 23:59:59'),
(6, 'کوئیز معادلات دیفرانسیل', 'حل معادلات مرتبه اول و دوم', 75, 50, 70, 'FINALIZED', '2024-12-01 08:00:00', '2025-03-31 23:59:59'),
(7, 'آزمون جامع پایان‌ترم ریاضی', 'آزمون نهایی تمام فصول', 180, 55, 120, 'FINALIZED', '2024-12-20 08:00:00', '2025-03-31 23:59:59'),
(8, 'آزمون تکمیلی ریاضی', 'فرصت دوم برای دانشجویان ناکام', 150, 50, 100, 'FINALIZED', '2025-01-15 08:00:00', '2025-03-31 23:59:59'),
(9, 'کوئیز کاربردهای ریاضی', 'مسائل کاربردی ریاضی در علوم', 50, 70, 60, 'FINALIZED', '2024-11-10 08:00:00', '2025-03-31 23:59:59'),
(10, 'آزمون تحلیل عملکرد ریاضی', 'ارزیابی پیشرفت دانشجویان', 90, 65, 85, 'FINALIZED', '2024-12-10 08:00:00', '2025-03-31 23:59:59');

-- Physics Course Exams (Course ID = 2) - 10 exams
INSERT INTO exam (id, title, description, time_limit, passing_score, total_possible_score, status, available_from, available_to) VALUES
(11, 'آزمون پیش‌نیاز فیزیک', 'بررسی آمادگی برای درس فیزیک', 60, 55, 60, 'FINALIZED', '2024-09-20 08:00:00', '2025-03-31 23:59:59'),
(12, 'کوئیز مکانیک کلاسیک', 'قوانین نیوتن و حرکت‌شناسی', 50, 60, 75, 'FINALIZED', '2024-10-05 08:00:00', '2025-03-31 23:59:59'),
(13, 'آزمون میان‌ترم فیزیک عمومی', 'مکانیک و ترمودینامیک', 120, 50, 100, 'FINALIZED', '2024-10-25 08:00:00', '2025-03-31 23:59:59'),
(14, 'کوئیز ترمودینامیک', 'قانون‌های اول و دوم ترمودینامیک', 45, 65, 70, 'FINALIZED', '2024-11-08 08:00:00', '2025-03-31 23:59:59'),
(15, 'آزمون الکترومغناطیس', 'میدان‌های الکتریکی و مغناطیسی', 90, 55, 85, 'FINALIZED', '2024-11-25 08:00:00', '2025-03-31 23:59:59'),
(16, 'کوئیز نوسانات و امواج', 'حرکت نوسانی و انتشار امواج', 60, 70, 80, 'FINALIZED', '2024-12-05 08:00:00', '2025-03-31 23:59:59'),
(17, 'آزمون نهایی فیزیک عمومی', 'جامع تمام فصول فیزیک', 150, 50, 110, 'FINALIZED', '2024-12-22 08:00:00', '2025-03-31 23:59:59'),
(18, 'آزمون عملی فیزیک', 'آزمایش‌های عملی و تحلیل داده', 75, 60, 75, 'FINALIZED', '2024-12-15 08:00:00', '2025-03-31 23:59:59'),
(19, 'کوئیز مرور فیزیک', 'مرور کلی مفاهیم فیزیک', 40, 65, 55, 'FINALIZED', '2024-11-15 08:00:00', '2025-03-31 23:59:59'),
(20, 'آزمون تکمیلی فیزیک', 'فرصت جبران برای دانشجویان', 120, 55, 95, 'FINALIZED', '2025-01-20 08:00:00', '2025-03-31 23:59:59');

-- English Course Exams (Course ID = 3) - 8 exams
INSERT INTO exam (id, title, description, time_limit, passing_score, total_possible_score, status, available_from, available_to) VALUES
(21, 'English Placement Test', 'تعیین سطح زبان انگلیسی', 90, 70, 100, 'FINALIZED', '2024-09-25 08:00:00', '2025-03-31 23:59:59'),
(22, 'Grammar Quiz 1', 'تست گرامر پایه', 30, 75, 50, 'FINALIZED', '2024-10-10 08:00:00', '2025-03-31 23:59:59'),
(23, 'Reading Comprehension Test', 'درک مطلب انگلیسی', 60, 65, 80, 'FINALIZED', '2024-10-30 08:00:00', '2025-03-31 23:59:59'),
(24, 'Midterm English Exam', 'آزمون میان‌ترم زبان انگلیسی', 120, 70, 100, 'FINALIZED', '2024-11-12 08:00:00', '2025-03-31 23:59:59'),
(25, 'Vocabulary Quiz', 'آزمون واژگان انگلیسی', 45, 60, 70, 'FINALIZED', '2024-11-22 08:00:00', '2025-03-31 23:59:59'),
(26, 'Writing Skills Test', 'ارزیابی مهارت نوشتن', 90, 65, 85, 'FINALIZED', '2024-12-08 08:00:00', '2025-03-31 23:59:59'),
(27, 'Final English Exam', 'آزمون نهایی زبان انگلیسی', 150, 70, 120, 'FINALIZED', '2024-12-25 08:00:00', '2025-03-31 23:59:59'),
(28, 'Speaking Assessment', 'ارزیابی مهارت گفتاری', 60, 75, 90, 'FINALIZED', '2024-12-18 08:00:00', '2025-03-31 23:59:59');

-- Additional challenging exams for advanced analytics
INSERT INTO exam (id, title, description, time_limit, passing_score, total_possible_score, status, available_from, available_to) VALUES
(29, 'آزمون جامع ریاضی-فیزیک', 'آزمون ترکیبی ریاضی و فیزیک', 180, 55, 150, 'FINALIZED', '2024-12-30 08:00:00', '2025-03-31 23:59:59'),
(30, 'کوئیز سریع عمومی', 'ارزیابی سریع دانش کلی', 20, 80, 40, 'FINALIZED', '2024-11-05 08:00:00', '2025-03-31 23:59:59'),
(31, 'آزمون چالش ریاضی', 'سوالات پیشرفته ریاضی', 150, 45, 100, 'FINALIZED', '2024-12-05 08:00:00', '2025-03-31 23:59:59'),
(32, 'تست استاندارد فیزیک', 'آزمون استاندارد بین‌المللی', 120, 60, 120, 'FINALIZED', '2024-12-12 08:00:00', '2025-03-31 23:59:59'),
(33, 'English Proficiency Test', 'آزمون تسلط زبان انگلیسی', 180, 75, 140, 'FINALIZED', '2024-12-28 08:00:00', '2025-03-31 23:59:59'),
(34, 'آزمون ارزیابی نهایی', 'ارزیابی کلی عملکرد دانشجویان', 120, 50, 100, 'FINALIZED', '2025-01-10 08:00:00', '2025-03-31 23:59:59'),
(35, 'کوئیز تکرار مطالب', 'مرور سریع مطالب گذشته', 35, 70, 50, 'FINALIZED', '2024-11-28 08:00:00', '2025-03-31 23:59:59');

-- =============================================================================
-- QUESTIONS SECTION - Creating 150+ questions across all exams
-- =============================================================================

-- Questions for Math Exams (Exam IDs 1-10)
INSERT INTO question (id, exam_id, text, question_type, points, difficulty, is_required) VALUES
-- Exam 1 - Math Placement Test (5 questions)
(1, 1, 'حاصل ضرب ماتریس A = [1 2; 3 4] و B = [2 0; 1 3] کدام است؟', 'MULTIPLE_CHOICE', 10, 0.4, true),
(2, 1, 'مشتق تابع f(x) = 3x² + 2x - 1 چیست؟', 'SHORT_ANSWER', 8, 0.3, true),
(3, 1, 'معادله خط عبوری از نقاط (1,2) و (3,6) را بنویسید', 'FILL_IN_THE_BLANKS', 7, 0.5, true),
(4, 1, 'آیا تابع f(x) = |x| در x=0 مشتق‌پذیر است؟ دلیل خود را شرح دهید', 'ESSAY', 15, 0.6, true),
(5, 1, 'مقدار دترمینان ماتریس [[2,1],[4,3]] برابر _______ است', 'FILL_IN_THE_BLANKS', 10, 0.3, true),

-- Exam 2 - Linear Algebra Quiz (6 questions)
(6, 2, 'کدام یک از گزارات زیر درباره ماتریس معکوس صحیح است؟', 'MULTIPLE_CHOICE', 12, 0.4, true),
(7, 2, 'فضای ستونی ماتریس A را تعریف کنید', 'SHORT_ANSWER', 10, 0.5, true),
(8, 2, 'رتبه ماتریس [[1,2,3],[2,4,6]] کدام است؟', 'MULTIPLE_CHOICE', 8, 0.3, true),
(9, 2, 'ماتریس A = [[1,0],[0,1]] نوع خاصی از ماتریس است. نام آن _______ است', 'FILL_IN_THE_BLANKS', 10, 0.2, true),
(10, 2, 'برای محاسبه ماتریس معکوس از چه روش‌هایی استفاده می‌شود؟', 'ESSAY', 15, 0.6, true),
(11, 2, 'آیا گزاره "هر ماتریس مربعی معکوس‌پذیر است" درست یا غلط است؟', 'TRUE_FALSE', 10, 0.4, true),

-- Exam 3 - Math Midterm (8 questions)
(12, 3, 'انتگرال ∫(2x + 3)dx را محاسبه کنید', 'SHORT_ANSWER', 15, 0.4, true),
(13, 3, 'حد lim(x→0) sin(x)/x برابر کدام است؟', 'MULTIPLE_CHOICE', 12, 0.5, true),
(14, 3, 'مشتق تابع ترکیبی f(g(x)) چگونه محاسبه می‌شود؟', 'ESSAY', 20, 0.6, true),
(15, 3, 'نقاط بحرانی تابع f(x) = x³ - 3x² + 2 را پیدا کنید', 'SHORT_ANSWER', 18, 0.7, true),
(16, 3, 'قانون _______ برای مشتق ضرب دو تابع استفاده می‌شود', 'FILL_IN_THE_BLANKS', 8, 0.3, true),
(17, 3, 'آیا تابع f(x) = x² همواره صعودی است؟', 'TRUE_FALSE', 7, 0.2, true),
(18, 3, 'کاربرد مشتق در بهینه‌سازی را شرح دهید', 'ESSAY', 15, 0.8, true),
(19, 3, 'مشتق دوم تابع f(x) = e^x برابر _______ است', 'FILL_IN_THE_BLANKS', 5, 0.3, true),

-- Exam 4 - Calculus Quiz (5 questions)
(20, 4, 'مشتق تابع f(x) = ln(x) کدام است؟', 'MULTIPLE_CHOICE', 12, 0.3, true),
(21, 4, 'قاعده زنجیره‌ای را برای f(g(x)) بنویسید', 'SHORT_ANSWER', 15, 0.5, true),
(22, 4, 'مشتق تابع sin(2x) برابر _______ است', 'FILL_IN_THE_BLANKS', 10, 0.4, true),
(23, 4, 'کاربردهای مشتق در فیزیک را نام ببرید', 'ESSAY', 18, 0.6, true),
(24, 4, 'نمودار تابع f(x) = x³ چه نوع تقارنی دارد؟', 'MULTIPLE_CHOICE', 10, 0.4, true),

-- Exam 5 - Integration Test (6 questions)
(25, 5, 'انتگرال ∫x²dx را محاسبه کنید', 'SHORT_ANSWER', 12, 0.3, true),
(26, 5, 'روش انتگرال‌گیری جزء به جزء را شرح دهید', 'ESSAY', 20, 0.7, true),
(27, 5, 'انتگرال ∫e^x dx برابر _______ است', 'FILL_IN_THE_BLANKS', 8, 0.2, true),
(28, 5, 'کدام روش برای انتگرال ∫sin(x)cos(x)dx مناسب است؟', 'MULTIPLE_CHOICE', 15, 0.6, true),
(29, 5, 'مساحت زیر منحنی y=x² از x=0 تا x=2 کدام است؟', 'SHORT_ANSWER', 18, 0.5, true),
(30, 5, 'انتگرال معین و نامعین چه تفاوتی دارند؟', 'ESSAY', 17, 0.4, true),

-- Additional Math Questions for remaining exams (6-10)
(31, 6, 'معادله دیفرانسیل y\' + 2y = 0 را حل کنید', 'SHORT_ANSWER', 15, 0.6, true),
(32, 6, 'نوع معادله دیفرانسیل y\'\' - 4y = 0 چیست؟', 'MULTIPLE_CHOICE', 10, 0.4, true),
(33, 6, 'شرایط اولیه در معادلات دیفرانسیل چه نقشی دارند؟', 'ESSAY', 20, 0.7, true),
(34, 6, 'جواب کلی معادله y\' = ky برابر _______ است', 'FILL_IN_THE_BLANKS', 12, 0.5, true),

(35, 7, 'تعریف حد تابع در یک نقطه را بیان کنید', 'ESSAY', 25, 0.6, true),
(36, 7, 'ماتریس قطری چیست و چه خواصی دارد؟', 'SHORT_ANSWER', 20, 0.5, true),
(37, 7, 'انتگرال ∫1/x dx برابر _______ است', 'FILL_IN_THE_BLANKS', 15, 0.4, true),
(38, 7, 'قضیه اساسی حساب دیفرانسیل و انتگرال را شرح دهید', 'ESSAY', 30, 0.8, true),
(39, 7, 'کدام تابع در تمام نقاط پیوسته اما در هیچ نقطه مشتق‌پذیر نیست؟', 'MULTIPLE_CHOICE', 15, 0.7, true),
(40, 7, 'مشتق جزئی و مشتق کلی چه تفاوتی دارند؟', 'SHORT_ANSWER', 15, 0.6, true),

(41, 8, 'بردار ویژه و مقدار ویژه را تعریف کنید', 'SHORT_ANSWER', 18, 0.7, true),
(42, 8, 'انتگرال دوگانه ∬f(x,y)dxdy در چه مواردی استفاده می‌شود؟', 'ESSAY', 22, 0.8, true),
(43, 8, 'سری تیلور تابع e^x حول x=0 چیست؟', 'MULTIPLE_CHOICE', 20, 0.8, true),
(44, 8, 'معادله صفحه عبوری از سه نقطه را چگونه پیدا می‌کنیم؟', 'SHORT_ANSWER', 15, 0.6, true),

(45, 9, 'کاربرد ماتریس‌ها در گرافیک کامپیوتری', 'ESSAY', 12, 0.5, true),
(46, 9, 'مدل‌سازی رشد جمعیت با معادلات دیفرانسیل', 'SHORT_ANSWER', 15, 0.6, true),
(47, 9, 'محاسبه حجم با انتگرال سه‌گانه', 'MULTIPLE_CHOICE', 8, 0.4, true),

(48, 10, 'نرخ تغییر لحظه‌ای چیست؟', 'SHORT_ANSWER', 15, 0.4, true),
(49, 10, 'تفسیر هندسی انتگرال معین را شرح دهید', 'ESSAY', 20, 0.6, true),
(50, 10, 'ماتریس همانی در ضرب ماتریس‌ها نقش _______ را دارد', 'FILL_IN_THE_BLANKS', 10, 0.3, true);

-- Questions for Physics Exams (Exam IDs 11-20)
INSERT INTO question (id, exam_id, text, question_type, points, difficulty, is_required) VALUES
-- Exam 11 - Physics Prerequisites (4 questions)
(51, 11, 'واحد اندازه‌گیری نیرو در سیستم SI چیست؟', 'MULTIPLE_CHOICE', 10, 0.2, true),
(52, 11, 'قانون اول نیوتن را بیان کنید', 'SHORT_ANSWER', 15, 0.3, true),
(53, 11, 'سرعت و تندی چه تفاوتی دارند؟', 'ESSAY', 20, 0.4, true),
(54, 11, 'شتاب ثقل زمین تقریباً _______ متر بر مجذور ثانیه است', 'FILL_IN_THE_BLANKS', 15, 0.2, true),

-- Exam 12 - Classical Mechanics Quiz (5 questions)
(55, 12, 'قانون دوم نیوتن را فرمول‌نویسی کنید', 'SHORT_ANSWER', 12, 0.3, true),
(56, 12, 'نیروی اصطکاک چه عواملی بستگی دارد؟', 'MULTIPLE_CHOICE', 15, 0.4, true),
(57, 12, 'ممان اینرسی برای اجسام مختلف چگونه محاسبه می‌شود؟', 'ESSAY', 25, 0.7, true),
(58, 12, 'واحد کار و انرژی _______ است', 'FILL_IN_THE_BLANKS', 8, 0.2, true),
(59, 12, 'در حرکت دایره‌ای منتظم، سرعت خطی و زاویه‌ای چه رابطه‌ای دارند؟', 'SHORT_ANSWER', 15, 0.5, true),

-- Exam 13 - Physics Midterm (7 questions)
(60, 13, 'قانون بقای انرژی در مکانیک را شرح دهید', 'ESSAY', 20, 0.6, true),
(61, 13, 'تکانه خطی چیست و چه قانونی بر آن حاکم است؟', 'SHORT_ANSWER', 15, 0.5, true),
(62, 13, 'ضریب بازگشت در برخورد کشسان برابر _______ است', 'FILL_IN_THE_BLANKS', 10, 0.4, true),
(63, 13, 'کدام نوع انرژی در فنر فشرده ذخیره می‌شود؟', 'MULTIPLE_CHOICE', 12, 0.3, true),
(64, 13, 'حرکت هارمونیک ساده را تعریف و معادله آن را بنویسید', 'ESSAY', 25, 0.7, true),
(65, 13, 'آیا در حرکت دایره‌ای منتظم شتاب وجود دارد؟', 'TRUE_FALSE', 8, 0.4, true),
(66, 13, 'نیروی گرانشی بین دو جرم به چه عواملی بستگی دارد؟', 'SHORT_ANSWER', 10, 0.5, true),

-- Exam 14 - Thermodynamics Quiz (4 questions)
(67, 14, 'قانون اول ترمودینامیک را بیان کنید', 'ESSAY', 18, 0.5, true),
(68, 14, 'دما و گرما چه تفاوتی دارند؟', 'SHORT_ANSWER', 12, 0.3, true),
(69, 14, 'در فرآیند ایزوترمیک دما _______ است', 'FILL_IN_THE_BLANKS', 10, 0.2, true),
(70, 14, 'کدام قانون ترمودینامیک با آنتروپی سروکار دارد؟', 'MULTIPLE_CHOICE', 15, 0.6, true),

-- Exam 15 - Electromagnetism (6 questions)
(71, 15, 'قانون کولن را بیان و فرمول‌نویسی کنید', 'SHORT_ANSWER', 15, 0.4, true),
(72, 15, 'میدان الکتریکی و پتانسیل الکتریکی چه رابطه‌ای دارند؟', 'ESSAY', 20, 0.6, true),
(73, 15, 'واحد میدان مغناطیسی _______ است', 'FILL_IN_THE_BLANKS', 8, 0.3, true),
(74, 15, 'قانون القای الکترومغناطیسی فارادی چیست؟', 'MULTIPLE_CHOICE', 18, 0.7, true),
(75, 15, 'نیروی لورنتس بر ذره باردار را تعریف کنید', 'SHORT_ANSWER', 14, 0.5, true),
(76, 15, 'آیا خطوط میدان الکتریکی می‌توانند یکدیگر را قطع کنند؟', 'TRUE_FALSE', 10, 0.4, true),

-- Additional Physics Questions for exams 16-20
(77, 16, 'فرکانس و پریود در حرکت نوسانی چه رابطه‌ای دارند؟', 'SHORT_ANSWER', 12, 0.3, true),
(78, 16, 'انواع امواج و خصوصیات آنها را شرح دهید', 'ESSAY', 25, 0.6, true),
(79, 16, 'سرعت صوت در هوا تقریباً _______ متر بر ثانیه است', 'FILL_IN_THE_BLANKS', 10, 0.2, true),
(80, 16, 'پدیده تداخل در امواج چگونه رخ می‌دهد؟', 'MULTIPLE_CHOICE', 15, 0.5, true),
(81, 16, 'اثر داپلر چیست و چه کاربردهایی دارد؟', 'SHORT_ANSWER', 18, 0.7, true),

(82, 17, 'انرژی جنبشی و انرژی پتانسیل گرانشی را تعریف کنید', 'ESSAY', 22, 0.5, true),
(83, 17, 'قوانین کپلر برای حرکت سیارات را بیان کنید', 'SHORT_ANSWER', 20, 0.7, true),
(84, 17, 'ضریب اصطکاک استاتیکی همیشه از ضریب اصطکاک جنبشی _______ است', 'FILL_IN_THE_BLANKS', 10, 0.4, true),
(85, 17, 'کدام کمیت در برخورد کشسان حفظ می‌شود؟', 'MULTIPLE_CHOICE', 15, 0.4, true),
(86, 17, 'مرکز جرم سیستم ذرات چگونه تعریف می‌شود؟', 'SHORT_ANSWER', 18, 0.6, true),
(87, 17, 'آیا در فضای خالی اصطکاک وجود دارد؟', 'TRUE_FALSE', 8, 0.2, true),

(88, 18, 'نحوه اندازه‌گیری شتاب ثقل را شرح دهید', 'ESSAY', 15, 0.5, true),
(89, 18, 'منابع خطا در آزمایش‌های فیزیک کدامند؟', 'SHORT_ANSWER', 12, 0.4, true),
(90, 18, 'عدم قطعیت اندازه‌گیری چگونه محاسبه می‌شود؟', 'MULTIPLE_CHOICE', 18, 0.6, true),

(91, 19, 'کاربردهای قوانین نیوتن در زندگی روزمره', 'SHORT_ANSWER', 10, 0.3, true),
(92, 19, 'اصل پایستگی در فیزیک چیست؟', 'ESSAY', 15, 0.5, true),
(93, 19, 'انرژی _______ قابلیت انجام کار را نشان می‌دهد', 'FILL_IN_THE_BLANKS', 8, 0.2, true),

(94, 20, 'تفاوت جرم و وزن را توضیح دهید', 'SHORT_ANSWER', 15, 0.3, true),
(95, 20, 'نیروهای غیرمحافظه‌کار چگونه بر انرژی سیستم تاثیر می‌گذارند؟', 'ESSAY', 20, 0.7, true),
(96, 20, 'در سیستم SI واحد توان _______ است', 'FILL_IN_THE_BLANKS', 10, 0.2, true),
(97, 20, 'کدام نوع حرکت دارای شتاب ثابت است؟', 'MULTIPLE_CHOICE', 15, 0.4, true);

-- Questions for English Exams (Exam IDs 21-28)
INSERT INTO question (id, exam_id, text, question_type, points, difficulty, is_required) VALUES
-- Exam 21 - English Placement Test (6 questions)
(98, 21, 'Choose the correct form: He _____ to school every day.', 'MULTIPLE_CHOICE', 10, 0.2, true),
(99, 21, 'What is the past participle of "write"?', 'SHORT_ANSWER', 8, 0.3, true),
(100, 21, 'Explain the difference between "affect" and "effect"', 'ESSAY', 20, 0.6, true),
(101, 21, 'Complete: I have _____ living here for five years.', 'FILL_IN_THE_BLANKS', 12, 0.4, true),
(102, 21, 'Which sentence is grammatically correct?', 'MULTIPLE_CHOICE', 15, 0.5, true),
(103, 21, 'Write a short paragraph about your hobbies (50-80 words)', 'ESSAY', 35, 0.7, true),

-- Exam 22 - Grammar Quiz 1 (4 questions)
(104, 22, 'Identify the subject in: "The cat sat on the mat"', 'SHORT_ANSWER', 8, 0.2, true),
(105, 22, 'She _____ her homework before going out.', 'FILL_IN_THE_BLANKS', 12, 0.3, true),
(106, 22, 'What are the main parts of speech in English?', 'ESSAY', 20, 0.4, true),
(107, 22, 'Choose the correct preposition: He is good _____ mathematics.', 'MULTIPLE_CHOICE', 10, 0.3, true),

-- Exam 23 - Reading Comprehension (5 questions)
(108, 23, 'Based on the passage, what was the main cause of the problem?', 'MULTIPLE_CHOICE', 15, 0.5, true),
(109, 23, 'Summarize the main idea of paragraph 2 in your own words', 'SHORT_ANSWER', 18, 0.6, true),
(110, 23, 'The word "significant" in line 5 most closely means _______', 'FILL_IN_THE_BLANKS', 12, 0.4, true),
(111, 23, 'Analyze the author\'s tone and purpose in this text', 'ESSAY', 25, 0.7, true),
(112, 23, 'True or False: The passage suggests that technology always improves education', 'TRUE_FALSE', 10, 0.5, true),

-- Exam 24 - English Midterm (7 questions)
(113, 24, 'Convert to passive voice: "The teacher explained the lesson"', 'SHORT_ANSWER', 12, 0.4, true),
(114, 24, 'Write an essay about the importance of learning English (150-200 words)', 'ESSAY', 30, 0.6, true),
(115, 24, 'If I _____ rich, I would travel around the world.', 'FILL_IN_THE_BLANKS', 10, 0.5, true),
(116, 24, 'What is the difference between simple past and present perfect?', 'SHORT_ANSWER', 15, 0.5, true),
(117, 24, 'Choose the sentence with correct word order', 'MULTIPLE_CHOICE', 8, 0.3, true),
(118, 24, 'Define and give examples of: adjective, adverb, conjunction', 'ESSAY', 20, 0.6, true),
(119, 24, 'The meeting was cancelled _____ the bad weather.', 'FILL_IN_THE_BLANKS', 5, 0.3, true),

-- Additional English Questions for exams 25-28
(120, 25, 'What does "procrastinate" mean?', 'MULTIPLE_CHOICE', 8, 0.3, true),
(121, 25, 'Use "ubiquitous" in a sentence', 'SHORT_ANSWER', 12, 0.6, true),
(122, 25, 'The opposite of "ephemeral" is _______', 'FILL_IN_THE_BLANKS', 10, 0.5, true),
(123, 25, 'Explain the concept of synonyms and antonyms with examples', 'ESSAY', 25, 0.4, true),
(124, 25, 'Which word is spelled correctly?', 'MULTIPLE_CHOICE', 10, 0.4, true),

(125, 26, 'Write a formal letter of complaint (100-150 words)', 'ESSAY', 25, 0.6, true),
(126, 26, 'What is the difference between formal and informal writing?', 'SHORT_ANSWER', 15, 0.4, true),
(127, 26, 'A thesis statement should be _______ and _______', 'FILL_IN_THE_BLANKS', 10, 0.5, true),
(128, 26, 'Identify the writing techniques used in the given paragraph', 'MULTIPLE_CHOICE', 20, 0.7, true),
(129, 26, 'How do you structure a five-paragraph essay?', 'ESSAY', 15, 0.5, true),

(130, 27, 'Transform into reported speech: "I am studying English," she said.', 'SHORT_ANSWER', 12, 0.5, true),
(131, 27, 'Write a story using past perfect and past simple tenses (100 words)', 'ESSAY', 35, 0.7, true),
(132, 27, 'Neither John _____ Mary came to the party.', 'FILL_IN_THE_BLANKS', 8, 0.4, true),
(133, 27, 'Explain the use of modal verbs with examples', 'SHORT_ANSWER', 20, 0.6, true),
(134, 27, 'Which sentence uses the subjunctive mood correctly?', 'MULTIPLE_CHOICE', 15, 0.7, true),
(135, 27, 'Compare British and American English spelling differences', 'ESSAY', 20, 0.5, true),

(136, 28, 'Describe your future plans and goals (speaking assessment)', 'ESSAY', 25, 0.5, true),
(137, 28, 'Role-play: You are ordering food at a restaurant', 'SHORT_ANSWER', 20, 0.4, true),
(138, 28, 'Pronunciation practice: minimal pairs /θ/ and /s/', 'MULTIPLE_CHOICE', 15, 0.6, true),
(139, 28, 'Express your opinion about online learning', 'ESSAY', 30, 0.6, true);

-- Questions for Additional Challenge Exams (29-35)
INSERT INTO question (id, exam_id, text, question_type, points, difficulty, is_required) VALUES
-- Exam 29 - Combined Math-Physics
(140, 29, 'A projectile is fired with initial velocity v₀. Derive the equation for maximum height using calculus.', 'ESSAY', 25, 0.8, true),
(141, 29, 'The position vector r(t) = [3t², 2t, t³]. Find velocity and acceleration vectors.', 'SHORT_ANSWER', 20, 0.7, true),
(142, 29, 'Solve the differential equation: F = ma where F = -kx (simple harmonic motion)', 'ESSAY', 30, 0.8, true),
(143, 29, 'Calculate the work done by a variable force F(x) = 2x² from x=0 to x=3', 'SHORT_ANSWER', 25, 0.6, true),
(144, 29, 'The electric field E is the _______ of electric potential V', 'FILL_IN_THE_BLANKS', 15, 0.5, true),
(145, 29, 'Which mathematical tool is most useful for analyzing wave functions?', 'MULTIPLE_CHOICE', 20, 0.7, true),
(146, 29, 'Derive the formula for centripetal acceleration using vector calculus', 'ESSAY', 35, 0.9, true),

-- Quick Quiz Questions (30, 35)
(147, 30, '2 + 2 = ?', 'MULTIPLE_CHOICE', 5, 0.1, true),
(148, 30, 'What is the capital of France?', 'SHORT_ANSWER', 5, 0.1, true),
(149, 30, 'The sun rises in the _______', 'FILL_IN_THE_BLANKS', 5, 0.1, true),
(150, 30, 'Water boils at 100°C at sea level. True or False?', 'TRUE_FALSE', 5, 0.1, true),
(151, 30, 'Name three primary colors', 'SHORT_ANSWER', 10, 0.2, true),
(152, 30, 'Which planet is closest to the Sun?', 'MULTIPLE_CHOICE', 5, 0.1, true),
(153, 30, 'Complete: Roses are red, violets are _______', 'FILL_IN_THE_BLANKS', 5, 0.1, true),

(154, 35, 'Review: What is a derivative?', 'SHORT_ANSWER', 8, 0.3, true),
(155, 35, 'Review: State Newton\'s first law', 'SHORT_ANSWER', 10, 0.3, true),
(156, 35, 'Review: What is the past tense of "go"?', 'MULTIPLE_CHOICE', 6, 0.2, true),
(157, 35, 'Review: 5 × 7 = ?', 'FILL_IN_THE_BLANKS', 4, 0.1, true),
(158, 35, 'Review: Name the three states of matter', 'SHORT_ANSWER', 12, 0.2, true),

-- Advanced/Challenge Questions for exams 31-34
(159, 31, 'Prove that the sum of angles in any triangle is 180°', 'ESSAY', 25, 0.8, true),
(160, 31, 'Find the eigenvalues of matrix A = [[3,1],[0,2]]', 'SHORT_ANSWER', 20, 0.8, true),
(161, 31, 'Solve the system using Cramer\'s rule: 2x+3y=7, x-y=1', 'SHORT_ANSWER', 15, 0.6, true),
(162, 31, 'The curl of a vector field measures its _______', 'FILL_IN_THE_BLANKS', 10, 0.7, true),
(163, 31, 'Which test determines convergence of an infinite series?', 'MULTIPLE_CHOICE', 20, 0.8, true),
(164, 31, 'Explain L\'Hôpital\'s rule and when it applies', 'ESSAY', 25, 0.8, true),

(165, 32, 'Derive the wave equation from Maxwell\'s equations', 'ESSAY', 30, 0.9, true),
(166, 32, 'Calculate the magnetic field inside a solenoid with n turns per unit length', 'SHORT_ANSWER', 25, 0.7, true),
(167, 32, 'The speed of light in vacuum is _______ m/s', 'FILL_IN_THE_BLANKS', 10, 0.3, true),
(168, 32, 'Which experiment provided evidence for wave-particle duality of light?', 'MULTIPLE_CHOICE', 20, 0.8, true),
(169, 32, 'Explain the concept of electric flux and Gauss\'s law', 'ESSAY', 25, 0.7, true),
(170, 32, 'The electric field inside a conductor is always _______', 'FILL_IN_THE_BLANKS', 10, 0.4, true),

(171, 33, 'Write a critical analysis of a given text (300 words)', 'ESSAY', 40, 0.8, true),
(172, 33, 'Identify and correct the grammatical errors in this paragraph', 'SHORT_ANSWER', 25, 0.7, true),
(173, 33, 'The phrase "break the ice" is an example of _______', 'FILL_IN_THE_BLANKS', 15, 0.5, true),
(174, 33, 'Which literary device is used in "The stars danced in the sky"?', 'MULTIPLE_CHOICE', 20, 0.6, true),
(175, 33, 'Compare and contrast deductive and inductive reasoning', 'ESSAY', 30, 0.8, true),
(176, 33, 'Demonstrate advanced vocabulary by using these words in sentences: ubiquitous, ephemeral, sanguine', 'SHORT_ANSWER', 25, 0.8, true),

(177, 34, 'Evaluate your overall learning progress and set future goals', 'ESSAY', 25, 0.5, true),
(178, 34, 'What study strategies have been most effective for you?', 'SHORT_ANSWER', 20, 0.4, true),
(179, 34, 'Self-assessment is important because _______', 'FILL_IN_THE_BLANKS', 15, 0.3, true),
(180, 34, 'Which subject has challenged you the most this semester?', 'MULTIPLE_CHOICE', 15, 0.3, true),
(181, 34, 'Reflect on your academic growth and areas for improvement', 'ESSAY', 25, 0.6, true);

-- =============================================================================
-- ASSIGNMENTS SECTION - Creating 25+ assignments across all courses
-- =============================================================================

-- Get current lesson IDs from the existing data
-- Math Lessons: 1-4, Physics Lessons: 10-12, English Lessons: 20-22

INSERT INTO assignment (id, title, description, lesson_id, teacher_id, due_date, created_at) VALUES
-- Math Course Assignments (Lessons 1-4)
(1, 'تمرین جبر خطی - فصل اول', 'حل مسائل ماتریس‌ها، دترمینان و سیستم معادلات خطی. شامل 15 مسئله با درجه دشواری متفاوت.', 1, 2, '2024-12-01 23:59:59', '2024-10-15 10:00:00'),
(2, 'پروژه کاربردی ماتریس‌ها', 'پیاده‌سازی عملیات ماتریس در زبان برنامه‌نویسی دلخواه و ارائه گزارش کامل.', 1, 2, '2024-12-10 23:59:59', '2024-10-20 14:00:00'),
(3, 'تمرین حساب دیفرانسیل', 'محاسبه مشتق توابع مختلف و کاربردهای آن در مسائل بهینه‌سازی.', 2, 2, '2024-11-15 23:59:59', '2024-10-25 09:00:00'),
(4, 'مسائل کاربردی مشتق', 'حل مسائل واقعی شامل نرخ تغییر، بیشینه و کمینه، و تحلیل نمودار.', 2, 2, '2024-11-25 23:59:59', '2024-11-05 11:00:00'),
(5, 'تمرین حساب انتگرال', 'محاسبه انتگرال توابع مختلف با روش‌های متنوع و کاربردهای هندسی.', 3, 2, '2024-12-05 23:59:59', '2024-11-10 13:00:00'),
(6, 'پروژه محاسبه مساحت', 'استفاده از انتگرال معین برای محاسبه مساحت اشکال پیچیده.', 3, 2, '2024-12-15 23:59:59', '2024-11-20 15:00:00'),
(7, 'تمرین معادلات دیفرانسیل', 'حل انواع معادلات دیفرانسیل مرتبه اول و دوم با شرایط اولیه.', 4, 2, '2024-12-20 23:59:59', '2024-11-25 12:00:00'),
(8, 'مدل‌سازی با معادلات دیفرانسیل', 'پیاده‌سازی مدل‌های ریاضی برای پدیده‌های طبیعی مانند رشد جمعیت.', 4, 2, '2025-01-05 23:59:59', '2024-12-01 10:00:00'),

-- Physics Course Assignments (Lessons 10-12)
(9, 'آزمایش قوانین نیوتن', 'طراحی و اجرای آزمایش برای تأیید قانون دوم نیوتن با گزارش کامل.', 10, 2, '2024-11-30 23:59:59', '2024-10-18 14:00:00'),
(10, 'پروژه تحلیل حرکت', 'تحلیل حرکت پرتابه با در نظر گیری مقاومت هوا و ارائه نمودارهای مربوطه.', 10, 2, '2024-12-08 23:59:59', '2024-10-28 16:00:00'),
(11, 'محاسبه ممان اینرسی', 'محاسبه ممان اینرسی اجسام مختلف به صورت نظری و عملی.', 10, 2, '2024-12-12 23:59:59', '2024-11-08 11:00:00'),
(12, 'آزمایش ترمودینامیک', 'بررسی قانون اول ترمودینامیک از طریق آزمایش کالریمتری.', 11, 2, '2024-12-18 23:59:59', '2024-11-15 09:00:00'),
(13, 'پروژه موتور حرارتی', 'طراحی و ساخت مدل ساده موتور حرارتی و محاسبه راندمان آن.', 11, 2, '2025-01-10 23:59:59', '2024-11-22 13:00:00'),
(14, 'تمرین الکترومغناطیس', 'حل مسائل میدان الکتریکی و مغناطیسی با استفاده از قانون گاوس.', 12, 2, '2024-12-25 23:59:59', '2024-12-05 15:00:00'),
(15, 'آزمایش القا الکترومغناطیسی', 'بررسی عملی قانون فارادی و لنز با طراحی آزمایش مناسب.', 12, 2, '2025-01-08 23:59:59', '2024-12-10 12:00:00'),
(16, 'پروژه کاربرد الکترومغناطیس', 'تحقیق و ارائه درباره کاربردهای الکترومغناطیس در تکنولوژی مدرن.', 12, 2, '2025-01-15 23:59:59', '2024-12-15 14:00:00'),

-- English Course Assignments (Lessons 20-22)
(17, 'Grammar Exercise Set 1', 'Complete grammar exercises covering tenses, articles, and prepositions with detailed explanations.', 20, 3, '2024-11-20 23:59:59', '2024-10-22 10:00:00'),
(18, 'Writing Portfolio', 'Create a portfolio including: formal letter, informal email, descriptive paragraph, and argumentative essay.', 20, 3, '2024-12-03 23:59:59', '2024-11-01 11:00:00'),
(19, 'Reading Comprehension Project', 'Read assigned text and prepare comprehensive analysis including summary, themes, and critical evaluation.', 21, 3, '2024-11-28 23:59:59', '2024-11-05 09:00:00'),
(20, 'Vocabulary Building Assignment', 'Learn 100 new vocabulary words, create sentences, and prepare for quiz with synonyms and antonyms.', 21, 3, '2024-12-05 23:59:59', '2024-11-10 14:00:00'),
(21, 'Creative Writing Task', 'Write a short story (500-750 words) demonstrating proper use of narrative techniques and literary devices.', 22, 3, '2024-12-10 23:59:59', '2024-11-18 13:00:00'),
(22, 'Presentation Assignment', 'Prepare and deliver 10-minute presentation on chosen topic with visual aids and Q&A session.', 22, 3, '2024-12-15 23:59:59', '2024-11-25 15:00:00'),
(23, 'English Research Paper', 'Write research paper (1000 words) on impact of technology on language learning with proper citations.', 22, 3, '2025-01-05 23:59:59', '2024-12-01 12:00:00'),

-- Additional Cross-Curricular and Advanced Assignments
(24, 'تحقیق بین‌رشته‌ای: ریاضی در فیزیک', 'تحقیق و نگارش مقاله درباره کاربردهای ریاضی در مسائل فیزیک با مثال‌های عملی.', 1, 2, '2025-01-20 23:59:59', '2024-12-08 16:00:00'),
(25, 'English-Math Integration Project', 'Write mathematical explanations and solutions in English, focusing on technical vocabulary and clear communication.', 20, 3, '2025-01-12 23:59:59', '2024-12-12 11:00:00'),
(26, 'پروژه نهایی ترم - ریاضی', 'پروژه جامع شامل تمام مباحث ترم: جبر خطی، حساب دیفرانسیل، انتگرال و معادلات دیفرانسیل.', 4, 2, '2025-01-25 23:59:59', '2024-12-20 09:00:00'),
(27, 'Final Physics Laboratory Report', 'Comprehensive lab report covering all experiments conducted during the semester with data analysis and conclusions.', 12, 2, '2025-01-22 23:59:59', '2024-12-18 13:00:00'),
(28, 'English Proficiency Portfolio', 'Complete portfolio demonstrating progress in all four skills: reading, writing, listening, and speaking.', 22, 3, '2025-01-28 23:59:59', '2024-12-22 10:00:00');

-- =============================================================================
-- DATA VALIDATION AND SUMMARY
-- =============================================================================

-- Display summary of created data
SELECT 'EXAMS CREATED' as Data_Type, COUNT(*) as Count FROM exam;
SELECT 'QUESTIONS CREATED' as Data_Type, COUNT(*) as Count FROM question;
SELECT 'ASSIGNMENTS CREATED' as Data_Type, COUNT(*) as Count FROM assignment;

-- Display exam distribution by course (through lessons)
SELECT
    c.title as Course,
    COUNT(DISTINCT e.id) as Exam_Count
FROM course c
LEFT JOIN lesson l ON c.id = l.course_id
LEFT JOIN exam e ON e.lesson_id = l.id OR e.id IN (
    -- Direct course mapping based on exam ranges
    CASE
        WHEN c.id = 1 THEN (SELECT COUNT(*) FROM exam WHERE id BETWEEN 1 AND 10)
        WHEN c.id = 2 THEN (SELECT COUNT(*) FROM exam WHERE id BETWEEN 11 AND 20)
        WHEN c.id = 3 THEN (SELECT COUNT(*) FROM exam WHERE id BETWEEN 21 AND 28)
    END
)
GROUP BY c.id, c.title;

-- Display question distribution by exam
SELECT
    e.title as Exam_Title,
    COUNT(q.id) as Question_Count,
    AVG(q.points) as Avg_Points,
    AVG(q.difficulty) as Avg_Difficulty
FROM exam e
LEFT JOIN question q ON e.id = q.exam_id
GROUP BY e.id, e.title
HAVING COUNT(q.id) > 0
ORDER BY e.id;

-- Display assignment distribution by course
SELECT
    c.title as Course,
    COUNT(a.id) as Assignment_Count
FROM course c
LEFT JOIN lesson l ON c.id = l.course_id
LEFT JOIN assignment a ON l.id = a.lesson_id
GROUP BY c.id, c.title
ORDER BY c.id;

COMMIT;

-- =============================================================================
-- SCRIPT COMPLETION SUMMARY
-- =============================================================================
--
-- ✓ Created 35 comprehensive exams across all courses:
--   - Math: 10 exams (placement, quizzes, midterm, final, remedial)
--   - Physics: 10 exams (prerequisites, mechanics, thermodynamics, electromagnetism)
--   - English: 8 exams (placement, grammar, reading, writing, speaking)
--   - Advanced: 7 multi-disciplinary and challenge exams
--
-- ✓ Created 181 diverse questions across all question types:
--   - MULTIPLE_CHOICE: Quick assessment and concept checking
--   - SHORT_ANSWER: Factual recall and brief explanations
--   - ESSAY: In-depth analysis and comprehensive understanding
--   - FILL_IN_THE_BLANKS: Specific knowledge gaps testing
--   - TRUE_FALSE: Concept verification
--
-- ✓ Created 28 comprehensive assignments:
--   - Math: 8 assignments (theory, practical applications, projects)
--   - Physics: 8 assignments (experiments, analysis, modeling)
--   - English: 7 assignments (grammar, writing, reading, speaking)
--   - Cross-curricular: 5 advanced integration projects
--
-- ✓ All data includes:
--   - Realistic Persian/English content matching course subjects
--   - Varied difficulty levels (0.1 to 0.9)
--   - Different time limits and passing scores
--   - Past and future due dates for comprehensive testing
--   - Proper FINALIZED status for all exams
--   - Appropriate point distributions (5-40 points per question)
--
-- This comprehensive dataset enables thorough testing of:
-- - Student performance analytics
-- - Progress tracking across different assessment types
-- - Difficulty analysis and grade distribution
-- - Time management and deadline tracking
-- - Multi-language content handling
-- - Cross-curricular performance evaluation
-- =============================================================================