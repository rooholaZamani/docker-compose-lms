-- Comprehensive Test Data for LMS Analytics Testing
-- This script creates realistic data for testing student performance reports

-- First, let's clean existing data (except admin and roles)
DELETE FROM submission WHERE id > 0;
DELETE FROM assignment_submission WHERE id > 0;
DELETE FROM activity_log WHERE id > 0;
DELETE FROM progress WHERE id > 0;
DELETE FROM content WHERE id > 0;
DELETE FROM lesson WHERE id > 0;
DELETE FROM question WHERE id > 0;
DELETE FROM exam WHERE id > 0;
DELETE FROM assignment WHERE id > 0;
DELETE FROM course_students WHERE course_id > 0;
DELETE FROM course WHERE id > 0;
DELETE FROM user_roles WHERE user_id > 1;
DELETE FROM lms_user WHERE id > 1;

-- Create test teachers
INSERT INTO lms_user (id, username, password, first_name, last_name, email, national_id, phone_number, age) VALUES
(2, 'teacher1', '$2a$10$9Dq8q7UJ.nGr3.G4oT6G4OP.8q7UJ.nGr3.G4oT6G4OP.8q7UJ.nG', 'احمد', 'محمدی', 'teacher1@example.com', '1234567890', '09123456789', 35),
(3, 'teacher2', '$2a$10$9Dq8q7UJ.nGr3.G4oT6G4OP.8q7UJ.nGr3.G4oT6G4OP.8q7UJ.nG', 'فاطمه', 'احمدی', 'teacher2@example.com', '1234567891', '09123456788', 32);

-- Create test students with varying performance levels
INSERT INTO lms_user (id, username, password, first_name, last_name, email, national_id, phone_number, age) VALUES
-- High performers
(10, 'student1', '$2a$10$9Dq8q7UJ.nGr3.G4oT6G4OP.8q7UJ.nGr3.G4oT6G4OP.8q7UJ.nG', 'علی', 'رضایی', 'student1@example.com', '2234567890', '09123456780', 20),
(11, 'student2', '$2a$10$9Dq8q7UJ.nGr3.G4oT6G4OP.8q7UJ.nGr3.G4oT6G4OP.8q7UJ.nG', 'مریم', 'کریمی', 'student2@example.com', '2234567891', '09123456781', 19),
(12, 'student3', '$2a$10$9Dq8q7UJ.nGr3.G4oT6G4OP.8q7UJ.nGr3.G4oT6G4OP.8q7UJ.nG', 'حسن', 'موسوی', 'student3@example.com', '2234567892', '09123456782', 21),

-- Average performers  
(20, 'student10', '$2a$10$9Dq8q7UJ.nGr3.G4oT6G4OP.8q7UJ.nGr3.G4oT6G4OP.8q7UJ.nG', 'زهرا', 'حسینی', 'student10@example.com', '2234567900', '09123456790', 20),
(21, 'student11', '$2a$10$9Dq8q7UJ.nGr3.G4oT6G4OP.8q7UJ.nGr3.G4oT6G4OP.8q7UJ.nG', 'محمد', 'نوری', 'student11@example.com', '2234567901', '09123456791', 22),
(22, 'student12', '$2a$10$9Dq8q7UJ.nGr3.G4oT6G4OP.8q7UJ.nGr3.G4oT6G4OP.8q7UJ.nG', 'سارا', 'صادقی', 'student12@example.com', '2234567902', '09123456792', 19),

-- Low performers / at-risk students
(30, 'student20', '$2a$10$9Dq8q7UJ.nGr3.G4oT6G4OP.8q7UJ.nGr3.G4oT6G4OP.8q7UJ.nG', 'رضا', 'عباسی', 'student20@example.com', '2234567910', '09123456700', 23),
(31, 'student21', '$2a$10$9Dq8q7UJ.nGr3.G4oT6G4OP.8q7UJ.nGr3.G4oT6G4OP.8q7UJ.nG', 'فریده', 'جعفری', 'student21@example.com', '2234567911', '09123456701', 20),
(32, 'student22', '$2a$10$9Dq8q7UJ.nGr3.G4oT6G4OP.8q7UJ.nGr3.G4oT6G4OP.8q7UJ.nG', 'میلاد', 'رحیمی', 'student22@example.com', '2234567912', '09123456702', 21);

-- Assign roles
INSERT INTO user_roles (user_id, role_id) VALUES
(2, 2), -- teacher1 -> TEACHER
(3, 2), -- teacher2 -> TEACHER
(10, 1), (11, 1), (12, 1), -- students 1-3 -> STUDENT
(20, 1), (21, 1), (22, 1), -- students 10-12 -> STUDENT  
(30, 1), (31, 1), (32, 1); -- students 20-22 -> STUDENT

-- Create test courses
INSERT INTO course (id, title, description, teacher_id, active) VALUES
(1, 'ریاضی پایه', 'درس ریاضی برای دانشجویان سال اول', 2, true),
(2, 'فیزیک عمومی', 'مبانی فیزیک برای دانشجویان', 2, true),
(3, 'زبان انگلیسی', 'آموزش زبان انگلیسی سطح متوسط', 3, true);

-- Enroll students in courses
INSERT INTO course_students (course_id, student_id) VALUES
-- All students in Math course
(1, 10), (1, 11), (1, 12), (1, 20), (1, 21), (1, 22), (1, 30), (1, 31), (1, 32),
-- High and average performers in Physics  
(2, 10), (2, 11), (2, 12), (2, 20), (2, 21), (2, 22),
-- Only high performers in English
(3, 10), (3, 11), (3, 12);

-- Create lessons for each course
INSERT INTO lesson (id, title, description, course_id, order_index, duration) VALUES
-- Math course lessons
(1, 'جبر خطی', 'مقدمات جبر خطی و ماتریس‌ها', 1, 1, 90),
(2, 'حساب دیفرانسیل', 'مفاهیم پایه حساب دیفرانسیل', 1, 2, 120),
(3, 'حساب انتگرال', 'محاسبه انتگرال‌های ساده و پیشرفته', 1, 3, 135),
(4, 'معادلات دیفرانسیل', 'حل معادلات دیفرانسیل مرتبه اول و دوم', 1, 4, 150),

-- Physics course lessons  
(10, 'مکانیک کلاسیک', 'قوانین نیوتن و حرکت‌شناسی', 2, 1, 105),
(11, 'ترمودینامیک', 'قانون‌های ترمودینامیک', 2, 2, 120),
(12, 'الکترومغناطیس', 'میدان‌های الکتریکی و مغناطیسی', 2, 3, 140),

-- English course lessons
(20, 'Grammar Basics', 'پایه‌های گرامر انگلیسی', 3, 1, 60),
(21, 'Reading Comprehension', 'درک مطلب در زبان انگلیسی', 3, 2, 75),
(22, 'Writing Skills', 'مهارت‌های نوشتن', 3, 3, 90);

-- Create exams
INSERT INTO exam (id, title, description, time_limit, passing_score, total_possible_score, status, available_from, available_to) VALUES
(1, 'آزمون میان‌ترم ریاضی', 'آزمون میان‌ترم درس ریاضی پایه', 120, 60, 100, 'FINALIZED', '2024-10-01 08:00:00', '2024-12-31 23:59:59'),
(2, 'آزمون پایان‌ترم ریاضی', 'آزمون پایانی درس ریاضی پایه', 180, 60, 100, 'FINALIZED', '2024-11-15 08:00:00', '2024-12-31 23:59:59'),
(3, 'آزمون میان‌ترم فیزیک', 'آزمون میان‌ترم درس فیزیک عمومی', 120, 55, 100, 'FINALIZED', '2024-10-05 08:00:00', '2024-12-31 23:59:59'),
(4, 'آزمون زبان انگلیسی', 'آزمون جامع زبان انگلیسی', 90, 70, 100, 'FINALIZED', '2024-10-10 08:00:00', '2024-12-31 23:59:59');

-- Create realistic exam submissions with varying scores
INSERT INTO submission (id, exam_id, student_id, score, passed, submission_time, time_spent) VALUES
-- Math Midterm (exam_id=1) - All students
(1, 1, 10, 95, true, '2024-10-15 10:30:00', 7200), -- Excellent student
(2, 1, 11, 88, true, '2024-10-15 11:15:00', 6900), -- Very good 
(3, 1, 12, 92, true, '2024-10-15 09:45:00', 6300), -- Excellent
(4, 1, 20, 75, true, '2024-10-15 14:20:00', 7800), -- Average
(5, 1, 21, 68, true, '2024-10-15 13:30:00', 8100), -- Average
(6, 1, 22, 82, true, '2024-10-15 15:45:00', 7500), -- Good
(7, 1, 30, 45, false, '2024-10-15 16:30:00', 5400), -- Failed
(8, 1, 31, 52, false, '2024-10-15 12:15:00', 4800), -- Failed  
(9, 1, 32, 38, false, '2024-10-15 17:00:00', 4200), -- Failed

-- Math Final (exam_id=2) - All students, some improvement
(10, 2, 10, 97, true, '2024-11-20 09:15:00', 9600), -- Improved
(11, 2, 11, 91, true, '2024-11-20 10:30:00', 9000), -- Improved
(12, 2, 12, 94, true, '2024-11-20 11:45:00', 8700), -- Consistent
(13, 2, 20, 79, true, '2024-11-20 14:00:00', 10200), -- Improved
(14, 2, 21, 72, true, '2024-11-20 13:15:00', 9900), -- Improved
(15, 2, 22, 85, true, '2024-11-20 15:30:00', 9300), -- Improved
(16, 2, 30, 58, false, '2024-11-20 16:45:00', 7200), -- Slight improvement but still failed
(17, 2, 31, 64, true, '2024-11-20 12:00:00', 8400), -- Improved to pass
(18, 2, 32, 42, false, '2024-11-20 17:30:00', 6600), -- Still struggling

-- Physics Midterm (exam_id=3) - Only enrolled students
(20, 3, 10, 89, true, '2024-10-20 10:00:00', 6600),
(21, 3, 11, 85, true, '2024-10-20 11:30:00', 7200),
(22, 3, 12, 91, true, '2024-10-20 09:30:00', 6300),
(23, 3, 20, 72, true, '2024-10-20 14:45:00', 7800),
(24, 3, 21, 66, true, '2024-10-20 13:00:00', 8400),
(25, 3, 22, 78, true, '2024-10-20 15:15:00', 7500),

-- English Exam (exam_id=4) - Only enrolled students  
(30, 4, 10, 93, true, '2024-10-25 09:00:00', 4500),
(31, 4, 11, 87, true, '2024-10-25 10:15:00', 4800),
(32, 4, 12, 90, true, '2024-10-25 11:30:00', 4200);

-- Create student progress records
INSERT INTO progress (id, student_id, course_id, completion_percentage, total_lessons, completed_lesson_count, total_study_time, last_accessed, current_streak) VALUES
-- Math course progress
(1, 10, 1, 95.0, 4, 4, 28800, '2024-11-25 16:30:00', 15), -- 8 hours total
(2, 11, 1, 88.0, 4, 4, 25200, '2024-11-25 15:45:00', 12), -- 7 hours total
(3, 12, 1, 92.0, 4, 4, 27000, '2024-11-25 17:15:00', 18), -- 7.5 hours
(4, 20, 1, 75.0, 4, 3, 18000, '2024-11-23 14:20:00', 8),  -- 5 hours
(5, 21, 1, 68.0, 4, 3, 16200, '2024-11-22 13:30:00', 5),  -- 4.5 hours
(6, 22, 1, 82.0, 4, 3, 21600, '2024-11-24 12:15:00', 10), -- 6 hours
(7, 30, 1, 45.0, 4, 2, 10800, '2024-11-20 11:00:00', 2),  -- 3 hours - struggling
(8, 31, 1, 52.0, 4, 2, 12600, '2024-11-21 10:30:00', 3),  -- 3.5 hours
(9, 32, 1, 38.0, 4, 1, 7200,  '2024-11-18 09:45:00', 1),  -- 2 hours - at risk

-- Physics course progress  
(10, 10, 2, 89.0, 3, 3, 21600, '2024-11-25 14:00:00', 11), -- 6 hours
(11, 11, 2, 85.0, 3, 3, 19800, '2024-11-24 15:30:00', 9),  -- 5.5 hours
(12, 12, 2, 91.0, 3, 3, 23400, '2024-11-25 16:45:00', 14), -- 6.5 hours
(13, 20, 2, 72.0, 3, 2, 14400, '2024-11-22 13:15:00', 6),  -- 4 hours
(14, 21, 2, 66.0, 3, 2, 12600, '2024-11-21 12:00:00', 4),  -- 3.5 hours
(15, 22, 2, 78.0, 3, 2, 16200, '2024-11-23 14:45:00', 7),  -- 4.5 hours

-- English course progress
(20, 10, 3, 93.0, 3, 3, 10800, '2024-11-25 11:30:00', 16), -- 3 hours
(21, 11, 3, 87.0, 3, 3, 9900,  '2024-11-24 12:45:00', 13), -- 2.75 hours
(22, 12, 3, 90.0, 3, 3, 10800, '2024-11-25 13:15:00', 15); -- 3 hours

-- Create realistic activity logs for recent student activities
INSERT INTO activity_log (id, user_id, activity_type, timestamp, time_spent, related_entity_id) VALUES
-- Recent activities for high performers (last 30 days)
(1, 10, 'LOGIN', '2024-11-25 08:00:00', 0, NULL),
(2, 10, 'CONTENT_VIEW', '2024-11-25 08:15:00', 2700, 1), -- 45 min on lesson 1
(3, 10, 'LESSON_COMPLETION', '2024-11-25 09:00:00', 0, 4),
(4, 10, 'EXAM_SUBMISSION', '2024-11-25 09:30:00', 7200, 2),

(5, 11, 'LOGIN', '2024-11-24 09:30:00', 0, NULL),
(6, 11, 'CONTENT_VIEW', '2024-11-24 09:45:00', 3600, 2), -- 1 hour on lesson 2
(7, 11, 'LESSON_COMPLETION', '2024-11-24 10:45:00', 0, 3),

(8, 12, 'LOGIN', '2024-11-25 07:30:00', 0, NULL),
(9, 12, 'CONTENT_VIEW', '2024-11-25 07:45:00', 4500, 3), -- 1.25 hours on lesson 3
(10, 12, 'LESSON_COMPLETION', '2024-11-25 09:00:00', 0, 4),

-- Average performers - less frequent activity
(20, 20, 'LOGIN', '2024-11-23 14:00:00', 0, NULL),
(21, 20, 'CONTENT_VIEW', '2024-11-23 14:15:00', 1800, 1), -- 30 min
(22, 21, 'LOGIN', '2024-11-22 13:00:00', 0, NULL),
(23, 21, 'CONTENT_VIEW', '2024-11-22 13:15:00', 2400, 2), -- 40 min
(24, 22, 'LOGIN', '2024-11-24 12:00:00', 0, NULL),
(25, 22, 'CONTENT_VIEW', '2024-11-24 12:15:00', 3000, 2), -- 50 min

-- Low performers - infrequent activity, concerning patterns  
(30, 30, 'LOGIN', '2024-11-20 10:30:00', 0, NULL), -- Not logged in recently
(31, 30, 'CONTENT_VIEW', '2024-11-20 10:45:00', 900, 1),  -- Only 15 min
(32, 31, 'LOGIN', '2024-11-21 10:00:00', 0, NULL),
(33, 31, 'CONTENT_VIEW', '2024-11-21 10:15:00', 1200, 1), -- 20 min  
(34, 32, 'LOGIN', '2024-11-18 09:30:00', 0, NULL), -- Very infrequent
(35, 32, 'CONTENT_VIEW', '2024-11-18 09:45:00', 600, 1);   -- Only 10 min

-- Create sample questions for exams
INSERT INTO question (id, exam_id, text, question_type, points, difficulty, is_required) VALUES
(1, 1, 'حاصل ضرب دو ماتریس A و B را محاسبه کنید', 'MULTIPLE_CHOICE', 10, 0.6, true),
(2, 1, 'مشتق تابع f(x) = x^2 + 3x - 5 چیست؟', 'SHORT_ANSWER', 15, 0.4, true),
(3, 2, 'انتگرال تابع g(x) = 2x + 1 را محاسبه کنید', 'ESSAY', 20, 0.7, true),
(4, 3, 'قانون اول نیوتن را بیان کنید', 'ESSAY', 15, 0.3, true),
(5, 4, 'Complete the sentence: I _____ to school every day', 'FILL_IN_THE_BLANKS', 10, 0.2, true);

-- Create sample assignments
INSERT INTO assignment (id, title, description, lesson_id, teacher_id, due_date) VALUES
(1, 'تمرین جبر خطی', 'حل مسائل ماتریس‌ها و دترمینان', 1, 2, '2024-12-01 23:59:59'),
(2, 'پروژه فیزیک', 'آزمایش قانون‌های حرکت', 10, 2, '2024-12-15 23:59:59'),
(3, 'انشای انگلیسی', 'نوشتن مقاله کوتاه', 22, 3, '2024-11-30 23:59:59');

-- Create assignment submissions
INSERT INTO assignment_submission (id, assignment_id, student_id, submitted_at, score, graded) VALUES
(1, 1, 10, '2024-11-28 15:30:00', 95, true),
(2, 1, 11, '2024-11-29 10:15:00', 88, true),
(3, 1, 20, '2024-11-29 14:20:00', 75, true),
(4, 2, 10, '2024-12-10 16:45:00', 92, true),
(5, 3, 10, '2024-11-28 12:00:00', 90, true);

-- Create content for lessons
INSERT INTO content (id, lesson_id, title, type, text_content, order_index) VALUES
(1, 1, 'مقدمه ماتریس‌ها', 'TEXT', 'در این بخش با مفاهیم اولیه ماتریس‌ها آشنا می‌شوید...', 1),
(2, 1, 'عملیات روی ماتریس‌ها', 'TEXT', 'جمع، تفریق و ضرب ماتریس‌ها را یاد می‌گیریم...', 2),
(3, 10, 'قوانین نیوتن', 'VIDEO', NULL, 1),
(4, 20, 'Basic Grammar Rules', 'TEXT', 'English grammar fundamentals...', 1);

COMMIT;