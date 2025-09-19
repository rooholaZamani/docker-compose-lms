-- ========================================================================
-- Comprehensive SQL Script to Generate 99 Student Users (st2 through st100)
-- Learning Management System (LMS)
-- Generated on: 2025-09-13
-- ========================================================================

-- This script creates 99 new student users with realistic Persian names
-- organized into three performance categories based on age groups

-- Performance Categories:
-- High Performers (st2-st30):   Ages 18-22 (29 students)
-- Average Performers (st31-st70): Ages 20-26 (40 students)
-- At-risk Students (st71-st100): Ages 22-30 (30 students)

-- Password for all students: 123456
-- BCrypt Hash: $2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi

BEGIN;

-- ========================================================================
-- HIGH PERFORMERS (st2-st30): Younger students (18-22 years)
-- ========================================================================

INSERT INTO lms_user (id, username, password, first_name, last_name, email, national_id, phone_number, age) VALUES
-- st2-st16: Age 18-19
(102, 'st2', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'علی', 'احمدی', 'st2@student.lms.com', '2000000001', '09120000001', 18),
(103, 'st3', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'مریم', 'رضایی', 'st3@student.lms.com', '2000000002', '09120000002', 18),
(104, 'st4', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'حسن', 'موسوی', 'st4@student.lms.com', '2000000003', '09120000003', 18),
(105, 'st5', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'فاطمه', 'کریمی', 'st5@student.lms.com', '2000000004', '09120000004', 19),
(106, 'st6', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'محمد', 'حسینی', 'st6@student.lms.com', '2000000005', '09120000005', 19),
(107, 'st7', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'زهرا', 'نوری', 'st7@student.lms.com', '2000000006', '09120000006', 19),
(108, 'st8', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'امیر', 'صادقی', 'st8@student.lms.com', '2000000007', '09120000007', 18),
(109, 'st9', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'سارا', 'محمدی', 'st9@student.lms.com', '2000000008', '09120000008', 19),
(110, 'st10', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'رضا', 'علوی', 'st10@student.lms.com', '2000000009', '09120000009', 18),
(111, 'st11', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'آیدا', 'خانی', 'st11@student.lms.com', '2000000010', '09120000010', 19),
(112, 'st12', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'حامد', 'فراهانی', 'st12@student.lms.com', '2000000011', '09120000011', 18),
(113, 'st13', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'نازنین', 'تاجیک', 'st13@student.lms.com', '2000000012', '09120000012', 19),
(114, 'st14', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'داود', 'رستمی', 'st14@student.lms.com', '2000000013', '09120000013', 18),
(115, 'st15', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'شیما', 'اصفهانی', 'st15@student.lms.com', '2000000014', '09120000014', 19),
(116, 'st16', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'پویا', 'قاسمی', 'st16@student.lms.com', '2000000015', '09120000015', 18),

-- st17-st30: Age 20-22
(117, 'st17', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'نیلوفر', 'شیرازی', 'st17@student.lms.com', '2000000016', '09120000016', 20),
(118, 'st18', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'بهرام', 'مشهدی', 'st18@student.lms.com', '2000000017', '09120000017', 20),
(119, 'st19', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'لیلا', 'تبریزی', 'st19@student.lms.com', '2000000018', '09120000018', 21),
(120, 'st20', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'کاوه', 'یزدی', 'st20@student.lms.com', '2000000019', '09120000019', 21),
(121, 'st21', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'گلناز', 'کرمانی', 'st21@student.lms.com', '2000000020', '09120000020', 22),
(122, 'st22', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'سینا', 'گیلانی', 'st22@student.lms.com', '2000000021', '09120000021', 22),
(123, 'st23', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'پرنیان', 'خراسانی', 'st23@student.lms.com', '2000000022', '09120000022', 20),
(124, 'st24', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'آرمین', 'بلوچی', 'st24@student.lms.com', '2000000023', '09120000023', 21),
(125, 'st25', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ترانه', 'لرستانی', 'st25@student.lms.com', '2000000024', '09120000024', 20),
(126, 'st26', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'فرهاد', 'کردستانی', 'st26@student.lms.com', '2000000025', '09120000025', 22),
(127, 'st27', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ملیکا', 'همدانی', 'st27@student.lms.com', '2000000026', '09120000026', 21),
(128, 'st28', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'کیوان', 'اردبیلی', 'st28@student.lms.com', '2000000027', '09120000027', 20),
(129, 'st29', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'یسمن', 'زنجانی', 'st29@student.lms.com', '2000000028', '09120000028', 22),
(130, 'st30', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'آریا', 'سمنانی', 'st30@student.lms.com', '2000000029', '09120000029', 21);

-- ========================================================================
-- AVERAGE PERFORMERS (st31-st70): Mixed ages (20-26 years)
-- ========================================================================

INSERT INTO lms_user (id, username, password, first_name, last_name, email, national_id, phone_number, age) VALUES
-- st31-st50: Age 20-23
(131, 'st31', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'سحر', 'قزوینی', 'st31@student.lms.com', '2000000030', '09120000030', 20),
(132, 'st32', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'مسعود', 'مازندرانی', 'st32@student.lms.com', '2000000031', '09120000031', 21),
(133, 'st33', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'رویا', 'گلستانی', 'st33@student.lms.com', '2000000032', '09120000032', 22),
(134, 'st34', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'امیرحسین', 'خوزستانی', 'st34@student.lms.com', '2000000033', '09120000033', 23),
(135, 'st35', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'نگار', 'بوشهری', 'st35@student.lms.com', '2000000034', '09120000034', 20),
(136, 'st36', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'مجید', 'فارسی', 'st36@student.lms.com', '2000000035', '09120000035', 21),
(137, 'st37', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'کیمیا', 'کهگیلویه', 'st37@student.lms.com', '2000000036', '09120000036', 22),
(138, 'st38', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'بابک', 'چهارمحالی', 'st38@student.lms.com', '2000000037', '09120000037', 23),
(139, 'st39', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'دریا', 'یاسوجی', 'st39@student.lms.com', '2000000038', '09120000038', 20),
(140, 'st40', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'شهاب', 'ایلامی', 'st40@student.lms.com', '2000000039', '09120000039', 21),
(141, 'st41', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'آرزو', 'دزفولی', 'st41@student.lms.com', '2000000040', '09120000040', 22),
(142, 'st42', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'فربد', 'اهوازی', 'st42@student.lms.com', '2000000041', '09120000041', 23),
(143, 'st43', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'شادی', 'عبادانی', 'st43@student.lms.com', '2000000042', '09120000042', 20),
(144, 'st44', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'علیرضا', 'خرمشهری', 'st44@student.lms.com', '2000000043', '09120000043', 21),
(145, 'st45', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ندا', 'اندیمشکی', 'st45@student.lms.com', '2000000044', '09120000044', 22),
(146, 'st46', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'پژمان', 'بندرعباسی', 'st46@student.lms.com', '2000000045', '09120000045', 23),
(147, 'st47', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'بهناز', 'میناب', 'st47@student.lms.com', '2000000046', '09120000046', 20),
(148, 'st48', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'صابر', 'قشمی', 'st48@student.lms.com', '2000000047', '09120000047', 21),
(149, 'st49', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'راحله', 'کیشی', 'st49@student.lms.com', '2000000048', '09120000048', 22),
(150, 'st50', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'احسان', 'جاسکی', 'st50@student.lms.com', '2000000049', '09120000049', 23),

-- st51-st70: Age 24-26
(151, 'st51', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'طاهره', 'زاهدانی', 'st51@student.lms.com', '2000000050', '09120000050', 24),
(152, 'st52', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'جواد', 'ایرانشهری', 'st52@student.lms.com', '2000000051', '09120000051', 24),
(153, 'st53', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'عسل', 'چابهاری', 'st53@student.lms.com', '2000000052', '09120000052', 25),
(154, 'st54', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'فرزاد', 'سراوانی', 'st54@student.lms.com', '2000000053', '09120000053', 25),
(155, 'st55', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'مژگان', 'نیکشهری', 'st55@student.lms.com', '2000000054', '09120000054', 26),
(156, 'st56', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'مصطفی', 'کنارکی', 'st56@student.lms.com', '2000000055', '09120000055', 26),
(157, 'st57', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'نفیسه', 'بیرجندی', 'st57@student.lms.com', '2000000056', '09120000056', 24),
(158, 'st58', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'حسام', 'فردوسی', 'st58@student.lms.com', '2000000057', '09120000057', 24),
(159, 'st59', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'سمیه', 'طبسی', 'st59@student.lms.com', '2000000058', '09120000058', 25),
(160, 'st60', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'وحید', 'قاینی', 'st60@student.lms.com', '2000000059', '09120000059', 25),
(161, 'st61', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'لاله', 'نهبندانی', 'st61@student.lms.com', '2000000060', '09120000060', 26),
(162, 'st62', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'سجاد', 'دره‌گزی', 'st62@student.lms.com', '2000000061', '09120000061', 26),
(163, 'st63', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'پریسا', 'کاشماری', 'st63@student.lms.com', '2000000062', '09120000062', 24),
(164, 'st64', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'فرشاد', 'گناباد', 'st64@student.lms.com', '2000000063', '09120000063', 24),
(165, 'st65', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'آناهیتا', 'تربت حیدریه', 'st65@student.lms.com', '2000000064', '09120000064', 25),
(166, 'st66', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'هادی', 'تربت جام', 'st66@student.lms.com', '2000000065', '09120000065', 25),
(167, 'st67', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'مینا', 'خوافی', 'st67@student.lms.com', '2000000066', '09120000066', 26),
(168, 'st68', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'میثم', 'نیشابوری', 'st68@student.lms.com', '2000000067', '09120000067', 26),
(169, 'st69', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'غزل', 'سبزواری', 'st69@student.lms.com', '2000000068', '09120000068', 24),
(170, 'st70', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'امین', 'جوینی', 'st70@student.lms.com', '2000000069', '09120000069', 25);

-- ========================================================================
-- AT-RISK STUDENTS (st71-st100): Older students (22-30 years)
-- ========================================================================

INSERT INTO lms_user (id, username, password, first_name, last_name, email, national_id, phone_number, age) VALUES
-- st71-st85: Age 22-26
(171, 'st71', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'مهدیه', 'رفسنجانی', 'st71@student.lms.com', '2000000070', '09120000070', 22),
(172, 'st72', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ابراهیم', 'سیرجانی', 'st72@student.lms.com', '2000000071', '09120000071', 23),
(173, 'st73', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'شیرین', 'بافتی', 'st73@student.lms.com', '2000000072', '09120000072', 24),
(174, 'st74', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'مرتضی', 'جیرفتی', 'st74@student.lms.com', '2000000073', '09120000073', 25),
(175, 'st75', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'فرانک', 'کهنوجی', 'st75@student.lms.com', '2000000074', '09120000074', 26),
(176, 'st76', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'رامین', 'شهربابکی', 'st76@student.lms.com', '2000000075', '09120000075', 22),
(177, 'st77', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ویدا', 'زرندی', 'st77@student.lms.com', '2000000076', '09120000076', 23),
(178, 'st78', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'کامران', 'انارکی', 'st78@student.lms.com', '2000000077', '09120000077', 24),
(179, 'st79', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'جمیله', 'ریگانی', 'st79@student.lms.com', '2000000078', '09120000078', 25),
(180, 'st80', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'داریوش', 'منوجان', 'st80@student.lms.com', '2000000079', '09120000079', 26),
(181, 'st81', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'کامیلا', 'قلعه‌گنجی', 'st81@student.lms.com', '2000000080', '09120000080', 22),
(182, 'st82', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'سعید', 'عنبرآبادی', 'st82@student.lms.com', '2000000081', '09120000081', 23),
(183, 'st83', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'صدف', 'اناری', 'st83@student.lms.com', '2000000082', '09120000082', 24),
(184, 'st84', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'فرزان', 'بردسیری', 'st84@student.lms.com', '2000000083', '09120000083', 25),
(185, 'st85', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'هنگامه', 'فهرجی', 'st85@student.lms.com', '2000000084', '09120000084', 26),

-- st86-st100: Age 27-30
(186, 'st86', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'بهداد', 'ساوجی', 'st86@student.lms.com', '2000000085', '09120000085', 27),
(187, 'st87', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'بهار', 'قاضی', 'st87@student.lms.com', '2000000086', '09120000086', 27),
(188, 'st88', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'سامان', 'طالقانی', 'st88@student.lms.com', '2000000087', '09120000087', 28),
(189, 'st89', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ربابه', 'دماوندی', 'st89@student.lms.com', '2000000088', '09120000088', 28),
(190, 'st90', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'امیرعلی', 'فیروزکوهی', 'st90@student.lms.com', '2000000089', '09120000089', 29),
(191, 'st91', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'هانیه', 'پردیسی', 'st91@student.lms.com', '2000000090', '09120000090', 29),
(192, 'st92', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'مجتبی', 'ورامینی', 'st92@student.lms.com', '2000000091', '09120000091', 30),
(193, 'st93', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'نازنین', 'اسلامشهری', 'st93@student.lms.com', '2000000092', '09120000092', 30),
(194, 'st94', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'فریدون', 'پاکدشتی', 'st94@student.lms.com', '2000000093', '09120000093', 27),
(195, 'st95', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'زینب', 'ملاردی', 'st95@student.lms.com', '2000000094', '09120000094', 27),
(196, 'st96', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'مسیح', 'باقری', 'st96@student.lms.com', '2000000095', '09120000095', 28),
(197, 'st97', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'مائده', 'شهریاری', 'st97@student.lms.com', '2000000096', '09120000096', 28),
(198, 'st98', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'رسول', 'رباط کریمی', 'st98@student.lms.com', '2000000097', '09120000097', 29),
(199, 'st99', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'نغمه', 'قدسی', 'st99@student.lms.com', '2000000098', '09120000098', 29),
(200, 'st100', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'حمزه', 'شمیرانی', 'st100@student.lms.com', '2000000099', '09120000099', 30);

-- ========================================================================
-- USER ROLES ASSIGNMENTS
-- ========================================================================
-- Assign STUDENT role (role_id = 1) to all newly created users

INSERT INTO user_roles (user_id, role_id) VALUES
-- High Performers (st2-st30)
(102, 1), (103, 1), (104, 1), (105, 1), (106, 1), (107, 1), (108, 1), (109, 1), (110, 1), (111, 1),
(112, 1), (113, 1), (114, 1), (115, 1), (116, 1), (117, 1), (118, 1), (119, 1), (120, 1), (121, 1),
(122, 1), (123, 1), (124, 1), (125, 1), (126, 1), (127, 1), (128, 1), (129, 1), (130, 1),

-- Average Performers (st31-st70)
(131, 1), (132, 1), (133, 1), (134, 1), (135, 1), (136, 1), (137, 1), (138, 1), (139, 1), (140, 1),
(141, 1), (142, 1), (143, 1), (144, 1), (145, 1), (146, 1), (147, 1), (148, 1), (149, 1), (150, 1),
(151, 1), (152, 1), (153, 1), (154, 1), (155, 1), (156, 1), (157, 1), (158, 1), (159, 1), (160, 1),
(161, 1), (162, 1), (163, 1), (164, 1), (165, 1), (166, 1), (167, 1), (168, 1), (169, 1), (170, 1),

-- At-risk Students (st71-st100)
(171, 1), (172, 1), (173, 1), (174, 1), (175, 1), (176, 1), (177, 1), (178, 1), (179, 1), (180, 1),
(181, 1), (182, 1), (183, 1), (184, 1), (185, 1), (186, 1), (187, 1), (188, 1), (189, 1), (190, 1),
(191, 1), (192, 1), (193, 1), (194, 1), (195, 1), (196, 1), (197, 1), (198, 1), (199, 1), (200, 1);

COMMIT;

-- ========================================================================
-- SCRIPT EXECUTION SUMMARY
-- ========================================================================

-- Total users created: 99 students (st2 through st100)
-- Password for all users: 123456 (BCrypt hash provided)
-- Role assignments: All assigned STUDENT role (role_id = 1)
--
-- Performance Categories Distribution:
-- - High Performers: 29 students (ages 18-22)
-- - Average Performers: 40 students (ages 20-26)
-- - At-risk Students: 30 students (ages 22-30)
--
-- National ID range: 2000000001 - 2000000099
-- Phone number range: 09120000001 - 09120000099
-- Email format: st{number}@student.lms.com
--
-- All users are ready for course enrollment and LMS testing.
-- ========================================================================