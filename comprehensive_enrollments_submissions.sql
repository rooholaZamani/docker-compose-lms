-- =============================================================================
-- COMPREHENSIVE SQL SCRIPT FOR REALISTIC STUDENT ENROLLMENTS AND SUBMISSIONS
-- Learning Management System (LMS)
-- Generated on: 2025-09-13
-- =============================================================================

-- This script creates realistic enrollment patterns and exam/assignment submissions
-- for 99 students (st2-st100) across 15+ courses to support comprehensive analytics testing

-- Prerequisites:
-- 1. Run generate_students.sql to create student users (st2-st100)
-- 2. Run comprehensive_courses_data.sql to create courses and lessons
-- 3. Run comprehensive_exam_assignment_data.sql to create exams and assignments

-- Performance Categories Distribution:
-- High Performers (st2-st30):   Enroll in 4-5 courses, 85-98% scores, mostly passing
-- Average Performers (st31-st70): Enroll in 2-4 courses, 65-85% scores, usually passing
-- At-risk Students (st71-st100): Enroll in 1-3 courses, 40-75% scores, mixed pass/fail

BEGIN;

-- =============================================================================
-- SECTION 1: COURSE ENROLLMENTS
-- =============================================================================

-- Clear existing enrollment data
DELETE FROM course_enrollments WHERE course_id > 0;

-- High Performers (st2-st30) - User IDs 102-130
-- These students enroll in 4-5 courses each and prefer challenging STEM courses

-- Core Math & Science enrollments (Most popular courses)
INSERT INTO course_enrollments (course_id, user_id) VALUES
-- Course 1: Advanced Mathematics (ریاضی پیشرفته) - 28/29 high performers
(1, 102), (1, 103), (1, 104), (1, 105), (1, 106), (1, 107), (1, 108), (1, 109), (1, 110), (1, 111),
(1, 112), (1, 113), (1, 114), (1, 115), (1, 116), (1, 117), (1, 118), (1, 119), (1, 120), (1, 121),
(1, 122), (1, 123), (1, 124), (1, 125), (1, 126), (1, 127), (1, 128), (1, 130),

-- Course 2: Classical & Modern Physics (فیزیک کلاسیک و مدرن) - 26/29 high performers
(2, 102), (2, 103), (2, 104), (2, 105), (2, 106), (2, 107), (2, 108), (2, 109), (2, 110),
(2, 112), (2, 113), (2, 114), (2, 115), (2, 116), (2, 117), (2, 118), (2, 119), (2, 120), (2, 121),
(2, 122), (2, 123), (2, 124), (2, 125), (2, 126), (2, 127), (2, 128), (2, 129),

-- Course 4: Computer Science & Programming (علوم کامپیوتر) - 25/29 high performers
(4, 102), (4, 103), (4, 104), (4, 105), (4, 106), (4, 107), (4, 108), (4, 109), (4, 110), (4, 111),
(4, 112), (4, 113), (4, 114), (4, 115), (4, 116), (4, 117), (4, 118), (4, 119), (4, 120), (4, 121),
(4, 122), (4, 123), (4, 124), (4, 125), (4, 126),

-- Course 7: English Literature & Writing - 23/29 high performers
(7, 102), (7, 103), (7, 104), (7, 105), (7, 106), (7, 107), (7, 108), (7, 109), (7, 110), (7, 111),
(7, 112), (7, 113), (7, 114), (7, 115), (7, 116), (7, 117), (7, 118), (7, 119), (7, 120), (7, 121),
(7, 122), (7, 123), (7, 124),

-- Additional courses for high performers (selective enrollment)
-- Course 3: General & Organic Chemistry - 18/29 high performers
(3, 102), (3, 103), (3, 104), (3, 105), (3, 106), (3, 107), (3, 108), (3, 109), (3, 110), (3, 111),
(3, 112), (3, 113), (3, 114), (3, 115), (3, 116), (3, 117), (3, 118), (3, 119),

-- Course 5: Applied Statistics & Probability - 20/29 high performers
(5, 102), (5, 103), (5, 104), (5, 105), (5, 106), (5, 107), (5, 108), (5, 109), (5, 110), (5, 111),
(5, 112), (5, 113), (5, 114), (5, 115), (5, 116), (5, 117), (5, 118), (5, 119), (5, 120), (5, 121),

-- Course 10: Organizational Management - 15/29 high performers
(10, 102), (10, 103), (10, 104), (10, 105), (10, 106), (10, 107), (10, 108), (10, 109), (10, 110),
(10, 111), (10, 112), (10, 113), (10, 114), (10, 115), (10, 116);

-- Average Performers (st31-st70) - User IDs 131-170
-- These students enroll in 2-4 courses each, focusing on core and business courses

-- Core enrollments for average performers
INSERT INTO course_enrollments (course_id, user_id) VALUES
-- Course 1: Advanced Mathematics - 32/40 average performers
(1, 131), (1, 132), (1, 133), (1, 134), (1, 135), (1, 136), (1, 137), (1, 138), (1, 139), (1, 140),
(1, 141), (1, 142), (1, 143), (1, 144), (1, 145), (1, 146), (1, 147), (1, 148), (1, 149), (1, 150),
(1, 151), (1, 152), (1, 153), (1, 154), (1, 155), (1, 156), (1, 157), (1, 158), (1, 159), (1, 160),
(1, 161), (1, 162),

-- Course 2: Physics - 24/40 average performers
(2, 131), (2, 132), (2, 133), (2, 134), (2, 135), (2, 136), (2, 137), (2, 138), (2, 139), (2, 140),
(2, 141), (2, 142), (2, 143), (2, 144), (2, 145), (2, 146), (2, 147), (2, 148), (2, 149), (2, 150),
(2, 151), (2, 152), (2, 153), (2, 154),

-- Course 7: English Literature - 28/40 average performers
(7, 131), (7, 132), (7, 133), (7, 134), (7, 135), (7, 136), (7, 137), (7, 138), (7, 139), (7, 140),
(7, 141), (7, 142), (7, 143), (7, 144), (7, 145), (7, 146), (7, 147), (7, 148), (7, 149), (7, 150),
(7, 151), (7, 152), (7, 153), (7, 154), (7, 155), (7, 156), (7, 157), (7, 158),

-- Course 9: Marketing & Sales Principles - 30/40 average performers (popular business course)
(9, 131), (9, 132), (9, 133), (9, 134), (9, 135), (9, 136), (9, 137), (9, 138), (9, 139), (9, 140),
(9, 141), (9, 142), (9, 143), (9, 144), (9, 145), (9, 146), (9, 147), (9, 148), (9, 149), (9, 150),
(9, 151), (9, 152), (9, 153), (9, 154), (9, 155), (9, 156), (9, 157), (9, 158), (9, 159), (9, 160),

-- Course 10: Organizational Management - 26/40 average performers
(10, 131), (10, 132), (10, 133), (10, 134), (10, 135), (10, 136), (10, 137), (10, 138), (10, 139),
(10, 140), (10, 141), (10, 142), (10, 143), (10, 144), (10, 145), (10, 146), (10, 147), (10, 148),
(10, 149), (10, 150), (10, 151), (10, 152), (10, 153), (10, 154), (10, 155), (10, 156),

-- Additional selective enrollments for average performers
-- Course 6: Classical Persian Literature - 22/40 average performers
(6, 131), (6, 132), (6, 133), (6, 134), (6, 135), (6, 136), (6, 137), (6, 138), (6, 139), (6, 140),
(6, 141), (6, 142), (6, 143), (6, 144), (6, 145), (6, 146), (6, 147), (6, 148), (6, 149), (6, 150),
(6, 151), (6, 152),

-- Course 4: Computer Science - 18/40 average performers
(4, 131), (4, 132), (4, 133), (4, 134), (4, 135), (4, 136), (4, 137), (4, 138), (4, 139), (4, 140),
(4, 141), (4, 142), (4, 143), (4, 144), (4, 145), (4, 146), (4, 147), (4, 148),

-- Course 11: Economic Principles - 20/40 average performers
(11, 131), (11, 132), (11, 133), (11, 134), (11, 135), (11, 136), (11, 137), (11, 138), (11, 139),
(11, 140), (11, 141), (11, 142), (11, 143), (11, 144), (11, 145), (11, 146), (11, 147), (11, 148),
(11, 149), (11, 150);

-- At-risk Students (st71-st100) - User IDs 171-200
-- These students enroll in 1-3 courses each, focusing on easier or essential courses

INSERT INTO course_enrollments (course_id, user_id) VALUES
-- Course 1: Mathematics - 22/30 at-risk students (essential course)
(1, 171), (1, 172), (1, 173), (1, 174), (1, 175), (1, 176), (1, 177), (1, 178), (1, 179), (1, 180),
(1, 181), (1, 182), (1, 183), (1, 184), (1, 185), (1, 186), (1, 187), (1, 188), (1, 189), (1, 190),
(1, 191), (1, 192),

-- Course 7: English Literature - 20/30 at-risk students
(7, 171), (7, 172), (7, 173), (7, 174), (7, 175), (7, 176), (7, 177), (7, 178), (7, 179), (7, 180),
(7, 181), (7, 182), (7, 183), (7, 184), (7, 185), (7, 186), (7, 187), (7, 188), (7, 189), (7, 190),

-- Course 6: Persian Literature - 18/30 at-risk students (native language advantage)
(6, 171), (6, 172), (6, 173), (6, 174), (6, 175), (6, 176), (6, 177), (6, 178), (6, 179), (6, 180),
(6, 181), (6, 182), (6, 183), (6, 184), (6, 185), (6, 186), (6, 187), (6, 188),

-- Course 9: Marketing & Sales - 16/30 at-risk students (practical course)
(9, 171), (9, 172), (9, 173), (9, 174), (9, 175), (9, 176), (9, 177), (9, 178), (9, 179), (9, 180),
(9, 181), (9, 182), (9, 183), (9, 184), (9, 185), (9, 186),

-- Course 10: Management - 14/30 at-risk students
(10, 171), (10, 172), (10, 173), (10, 174), (10, 175), (10, 176), (10, 177), (10, 178), (10, 179),
(10, 180), (10, 181), (10, 182), (10, 183), (10, 184),

-- Limited STEM enrollments for at-risk students
-- Course 2: Physics - 10/30 at-risk students (only the most motivated)
(2, 171), (2, 172), (2, 173), (2, 174), (2, 175), (2, 176), (2, 177), (2, 178), (2, 179), (2, 180),

-- Course 4: Computer Science - 8/30 at-risk students
(4, 171), (4, 172), (4, 173), (4, 174), (4, 175), (4, 176), (4, 177), (4, 178);

-- =============================================================================
-- SECTION 2: EXAM SUBMISSIONS
-- =============================================================================

-- Clear existing submission data
DELETE FROM submission WHERE id > 0;

-- Generate realistic exam submissions based on course enrollments and performance levels
-- We'll create submissions for the most popular exams from comprehensive_exam_assignment_data.sql

-- Math Course Exam Submissions
-- Exam 1: Math Placement Test (ID=1) - All math-enrolled students should take this

-- High Performers in Math (st2-st30 except st29) taking Math Placement Test
INSERT INTO submission (id, exam_id, student_id, score, passed, submission_time, time_spent) VALUES
-- Excellent scores (85-98%) with efficient time usage (50-80% of time limit)
(1, 1, 102, 47, true, '2024-09-16 09:15:00', 2700),   -- 94% score, 45min/60min limit
(2, 1, 103, 45, true, '2024-09-16 10:30:00', 2400),   -- 90% score, 40min
(3, 1, 104, 48, true, '2024-09-16 11:45:00', 2100),   -- 96% score, 35min
(4, 1, 105, 44, true, '2024-09-16 14:20:00', 2700),   -- 88% score, 45min
(5, 1, 106, 49, true, '2024-09-16 15:30:00', 1800),   -- 98% score, 30min
(6, 1, 107, 46, true, '2024-09-17 09:00:00', 2400),   -- 92% score, 40min
(7, 1, 108, 47, true, '2024-09-17 10:15:00', 2100),   -- 94% score, 35min
(8, 1, 109, 45, true, '2024-09-17 11:30:00', 2700),   -- 90% score, 45min
(9, 1, 110, 48, true, '2024-09-17 13:45:00', 2400),   -- 96% score, 40min
(10, 1, 111, 46, true, '2024-09-17 14:50:00', 2100),  -- 92% score, 35min
(11, 1, 112, 49, true, '2024-09-18 09:20:00', 1980),  -- 98% score, 33min
(12, 1, 113, 44, true, '2024-09-18 10:35:00', 2700),  -- 88% score, 45min
(13, 1, 114, 47, true, '2024-09-18 11:50:00', 2400),  -- 94% score, 40min
(14, 1, 115, 45, true, '2024-09-18 13:05:00', 2100),  -- 90% score, 35min
(15, 1, 116, 48, true, '2024-09-18 14:20:00', 2700),  -- 96% score, 45min
(16, 1, 117, 46, true, '2024-09-19 09:10:00', 2400),  -- 92% score, 40min
(17, 1, 118, 49, true, '2024-09-19 10:25:00', 1800),  -- 98% score, 30min
(18, 1, 119, 44, true, '2024-09-19 11:40:00', 2700),  -- 88% score, 45min
(19, 1, 120, 47, true, '2024-09-19 12:55:00', 2100),  -- 94% score, 35min
(20, 1, 121, 45, true, '2024-09-19 14:10:00', 2400),  -- 90% score, 40min
(21, 1, 122, 48, true, '2024-09-20 09:00:00', 2100),  -- 96% score, 35min
(22, 1, 123, 46, true, '2024-09-20 10:15:00', 2700),  -- 92% score, 45min
(23, 1, 124, 49, true, '2024-09-20 11:30:00', 1800),  -- 98% score, 30min
(24, 1, 125, 44, true, '2024-09-20 12:45:00', 2400),  -- 88% score, 40min
(25, 1, 126, 47, true, '2024-09-20 14:00:00', 2100),  -- 94% score, 35min
(26, 1, 127, 45, true, '2024-09-21 09:15:00', 2700),  -- 90% score, 45min
(27, 1, 128, 48, true, '2024-09-21 10:30:00', 2400),  -- 96% score, 40min
(28, 1, 130, 46, true, '2024-09-21 11:45:00', 2100),  -- 92% score, 35min

-- Average Performers in Math taking Math Placement Test
-- Moderate scores (65-85%) with average time usage (60-90% of time limit)
(29, 1, 131, 37, true, '2024-09-22 09:00:00', 3300),   -- 74% score, 55min
(30, 1, 132, 35, true, '2024-09-22 10:30:00', 3600),   -- 70% score, 60min
(31, 1, 133, 39, true, '2024-09-22 12:00:00', 3000),   -- 78% score, 50min
(32, 1, 134, 33, true, '2024-09-22 13:30:00', 3600),   -- 66% score, 60min
(33, 1, 135, 41, true, '2024-09-22 15:00:00', 2700),   -- 82% score, 45min
(34, 1, 136, 36, true, '2024-09-23 09:15:00', 3300),   -- 72% score, 55min
(35, 1, 137, 38, true, '2024-09-23 10:45:00', 3000),   -- 76% score, 50min
(36, 1, 138, 34, true, '2024-09-23 12:15:00', 3600),   -- 68% score, 60min
(37, 1, 139, 40, true, '2024-09-23 13:45:00', 2700),   -- 80% score, 45min
(38, 1, 140, 37, true, '2024-09-23 15:15:00', 3300),   -- 74% score, 55min
(39, 1, 141, 35, true, '2024-09-24 09:00:00', 3600),   -- 70% score, 60min
(40, 1, 142, 42, true, '2024-09-24 10:30:00', 3000),   -- 84% score, 50min
(41, 1, 143, 36, true, '2024-09-24 12:00:00', 3300),   -- 72% score, 55min
(42, 1, 144, 38, true, '2024-09-24 13:30:00', 3000),   -- 76% score, 50min
(43, 1, 145, 33, true, '2024-09-24 15:00:00', 3600),   -- 66% score, 60min
(44, 1, 146, 39, true, '2024-09-25 09:15:00', 3300),   -- 78% score, 55min
(45, 1, 147, 37, true, '2024-09-25 10:45:00', 3000),   -- 74% score, 50min
(46, 1, 148, 35, true, '2024-09-25 12:15:00', 3600),   -- 70% score, 60min
(47, 1, 149, 41, true, '2024-09-25 13:45:00', 2700),   -- 82% score, 45min
(48, 1, 150, 34, true, '2024-09-25 15:15:00', 3300),   -- 68% score, 55min
(49, 1, 151, 38, true, '2024-09-26 09:00:00', 3000),   -- 76% score, 50min
(50, 1, 152, 36, true, '2024-09-26 10:30:00', 3300),   -- 72% score, 55min
(51, 1, 153, 40, true, '2024-09-26 12:00:00', 3000),   -- 80% score, 50min
(52, 1, 154, 33, true, '2024-09-26 13:30:00', 3600),   -- 66% score, 60min
(53, 1, 155, 37, true, '2024-09-26 15:00:00', 3300),   -- 74% score, 55min
(54, 1, 156, 35, true, '2024-09-27 09:15:00', 3600),   -- 70% score, 60min
(55, 1, 157, 39, true, '2024-09-27 10:45:00', 3000),   -- 78% score, 50min
(56, 1, 158, 34, true, '2024-09-27 12:15:00', 3300),   -- 68% score, 55min
(57, 1, 159, 41, true, '2024-09-27 13:45:00', 2700),   -- 82% score, 45min
(58, 1, 160, 36, true, '2024-09-27 15:15:00', 3300),   -- 72% score, 55min
(59, 1, 161, 38, true, '2024-09-28 09:00:00', 3000),   -- 76% score, 50min
(60, 1, 162, 35, true, '2024-09-28 10:30:00', 3600),   -- 70% score, 60min

-- At-risk Students in Math taking Math Placement Test
-- Lower scores (40-75%) with longer time usage (70-100% of time limit)
(61, 1, 171, 32, true, '2024-09-29 09:00:00', 3600),   -- 64% score, 60min (full time)
(62, 1, 172, 28, false, '2024-09-29 11:00:00', 3600),  -- 56% score, 60min (failed)
(63, 1, 173, 35, true, '2024-09-29 13:00:00', 3300),   -- 70% score, 55min
(64, 1, 174, 24, false, '2024-09-29 15:00:00', 3600),  -- 48% score, 60min (failed)
(65, 1, 175, 30, true, '2024-09-30 09:00:00', 3600),   -- 60% score, 60min
(66, 1, 176, 26, false, '2024-09-30 11:00:00', 3600),  -- 52% score, 60min (failed)
(67, 1, 177, 33, true, '2024-09-30 13:00:00', 3300),   -- 66% score, 55min
(68, 1, 178, 22, false, '2024-09-30 15:00:00', 3600),  -- 44% score, 60min (failed)
(69, 1, 179, 29, false, '2024-10-01 09:00:00', 3600),  -- 58% score, 60min (failed)
(70, 1, 180, 31, true, '2024-10-01 11:00:00', 3600),   -- 62% score, 60min
(71, 1, 181, 27, false, '2024-10-01 13:00:00', 3600),  -- 54% score, 60min (failed)
(72, 1, 182, 34, true, '2024-10-01 15:00:00', 3300),   -- 68% score, 55min
(73, 1, 183, 25, false, '2024-10-02 09:00:00', 3600),  -- 50% score, 60min (failed)
(74, 1, 184, 32, true, '2024-10-02 11:00:00', 3600),   -- 64% score, 60min
(75, 1, 185, 23, false, '2024-10-02 13:00:00', 3600),  -- 46% score, 60min (failed)
(76, 1, 186, 30, true, '2024-10-02 15:00:00', 3600),   -- 60% score, 60min
(77, 1, 187, 28, false, '2024-10-03 09:00:00', 3600),  -- 56% score, 60min (failed)
(78, 1, 188, 33, true, '2024-10-03 11:00:00', 3300),   -- 66% score, 55min
(79, 1, 189, 26, false, '2024-10-03 13:00:00', 3600),  -- 52% score, 60min (failed)
(80, 1, 190, 31, true, '2024-10-03 15:00:00', 3600),   -- 62% score, 60min
(81, 1, 191, 24, false, '2024-10-04 09:00:00', 3600),  -- 48% score, 60min (failed)
(82, 1, 192, 29, false, '2024-10-04 11:00:00', 3600);  -- 58% score, 60min (failed)

-- Exam 3: Math Midterm (ID=3) - Major exam for math students
-- High Performers taking Math Midterm
INSERT INTO submission (id, exam_id, student_id, score, passed, submission_time, time_spent) VALUES
(100, 3, 102, 87, true, '2024-10-16 09:00:00', 6300),   -- 87% score, 105min/120min
(101, 3, 103, 82, true, '2024-10-16 10:30:00', 6600),   -- 82% score, 110min
(102, 3, 104, 91, true, '2024-10-16 12:00:00', 5700),   -- 91% score, 95min
(103, 3, 105, 79, true, '2024-10-16 13:30:00', 6900),   -- 79% score, 115min
(104, 3, 106, 94, true, '2024-10-16 15:00:00', 5400),   -- 94% score, 90min
(105, 3, 107, 85, true, '2024-10-17 09:00:00', 6300),   -- 85% score, 105min
(106, 3, 108, 88, true, '2024-10-17 10:30:00', 6000),   -- 88% score, 100min
(107, 3, 109, 83, true, '2024-10-17 12:00:00', 6600),   -- 83% score, 110min
(108, 3, 110, 90, true, '2024-10-17 13:30:00', 5700),   -- 90% score, 95min
(109, 3, 111, 86, true, '2024-10-17 15:00:00', 6300),   -- 86% score, 105min
(110, 3, 112, 93, true, '2024-10-18 09:00:00', 5400),   -- 93% score, 90min
(111, 3, 113, 81, true, '2024-10-18 10:30:00', 6900),   -- 81% score, 115min
(112, 3, 114, 87, true, '2024-10-18 12:00:00', 6000),   -- 87% score, 100min
(113, 3, 115, 84, true, '2024-10-18 13:30:00', 6600),   -- 84% score, 110min
(114, 3, 116, 89, true, '2024-10-18 15:00:00', 5700),   -- 89% score, 95min
(115, 3, 117, 85, true, '2024-10-19 09:00:00', 6300),   -- 85% score, 105min
(116, 3, 118, 92, true, '2024-10-19 10:30:00', 5400),   -- 92% score, 90min
(117, 3, 119, 80, true, '2024-10-19 12:00:00', 6900),   -- 80% score, 115min
(118, 3, 120, 86, true, '2024-10-19 13:30:00', 6000),   -- 86% score, 100min
(119, 3, 121, 83, true, '2024-10-19 15:00:00', 6600),   -- 83% score, 110min
(120, 3, 122, 88, true, '2024-10-20 09:00:00', 5700),   -- 88% score, 95min
(121, 3, 123, 85, true, '2024-10-20 10:30:00', 6300),   -- 85% score, 105min
(122, 3, 124, 91, true, '2024-10-20 12:00:00', 5400),   -- 91% score, 90min
(123, 3, 125, 82, true, '2024-10-20 13:30:00', 6900),   -- 82% score, 115min
(124, 3, 126, 87, true, '2024-10-20 15:00:00', 6000),   -- 87% score, 100min
(125, 3, 127, 84, true, '2024-10-21 09:00:00', 6600),   -- 84% score, 110min
(126, 3, 128, 89, true, '2024-10-21 10:30:00', 5700),   -- 89% score, 95min
(127, 3, 130, 86, true, '2024-10-21 12:00:00', 6300);   -- 86% score, 105min

-- Average Performers taking Math Midterm (subset - some may have dropped or not reached this level)
INSERT INTO submission (id, exam_id, student_id, score, passed, submission_time, time_spent) VALUES
(150, 3, 131, 68, true, '2024-10-22 09:00:00', 7200),   -- 68% score, 120min (full time)
(151, 3, 132, 64, true, '2024-10-22 11:00:00', 7200),   -- 64% score, 120min
(152, 3, 133, 71, true, '2024-10-22 13:00:00', 6900),   -- 71% score, 115min
(153, 3, 134, 58, true, '2024-10-22 15:00:00', 7200),   -- 58% score, 120min (barely passed)
(154, 3, 135, 75, true, '2024-10-23 09:00:00', 6600),   -- 75% score, 110min
(155, 3, 136, 62, true, '2024-10-23 11:00:00', 7200),   -- 62% score, 120min
(156, 3, 137, 69, true, '2024-10-23 13:00:00', 6900),   -- 69% score, 115min
(157, 3, 138, 56, true, '2024-10-23 15:00:00', 7200),   -- 56% score, 120min (passed)
(158, 3, 139, 73, true, '2024-10-24 09:00:00', 6600),   -- 73% score, 110min
(159, 3, 140, 66, true, '2024-10-24 11:00:00', 7200),   -- 66% score, 120min
(160, 3, 141, 61, true, '2024-10-24 13:00:00', 7200),   -- 61% score, 120min
(161, 3, 142, 77, true, '2024-10-24 15:00:00', 6300),   -- 77% score, 105min
(162, 3, 143, 63, true, '2024-10-25 09:00:00', 7200),   -- 63% score, 120min
(163, 3, 144, 70, true, '2024-10-25 11:00:00', 6900),   -- 70% score, 115min
(164, 3, 145, 59, true, '2024-10-25 13:00:00', 7200),   -- 59% score, 120min
(165, 3, 146, 72, true, '2024-10-25 15:00:00', 6600),   -- 72% score, 110min
(166, 3, 147, 65, true, '2024-10-26 09:00:00', 7200),   -- 65% score, 120min
(167, 3, 148, 57, true, '2024-10-26 11:00:00', 7200),   -- 57% score, 120min
(168, 3, 149, 74, true, '2024-10-26 13:00:00', 6600),   -- 74% score, 110min
(169, 3, 150, 60, true, '2024-10-26 15:00:00', 7200);   -- 60% score, 120min

-- At-risk Students taking Math Midterm (smaller subset - many struggle to reach this level)
INSERT INTO submission (id, exam_id, student_id, score, passed, submission_time, time_spent) VALUES
(200, 3, 171, 58, true, '2024-10-27 09:00:00', 7200),   -- 58% score, 120min (barely passed)
(201, 3, 172, 45, false, '2024-10-27 11:00:00', 7200),  -- 45% score, 120min (failed)
(202, 3, 173, 62, true, '2024-10-27 13:00:00', 7200),   -- 62% score, 120min
(203, 3, 174, 38, false, '2024-10-27 15:00:00', 7200),  -- 38% score, 120min (failed)
(204, 3, 175, 55, true, '2024-10-28 09:00:00', 7200),   -- 55% score, 120min (passed)
(205, 3, 176, 42, false, '2024-10-28 11:00:00', 7200),  -- 42% score, 120min (failed)
(206, 3, 177, 59, true, '2024-10-28 13:00:00', 7200),   -- 59% score, 120min
(207, 3, 178, 36, false, '2024-10-28 15:00:00', 7200),  -- 36% score, 120min (failed)
(208, 3, 179, 48, false, '2024-10-29 09:00:00', 7200),  -- 48% score, 120min (failed)
(209, 3, 180, 56, true, '2024-10-29 11:00:00', 7200),   -- 56% score, 120min
(210, 3, 181, 41, false, '2024-10-29 13:00:00', 7200),  -- 41% score, 120min (failed)
(211, 3, 182, 60, true, '2024-10-29 15:00:00', 7200);   -- 60% score, 120min

-- Physics Exam Submissions
-- Exam 13: Physics Midterm (ID=13) for physics-enrolled students

-- High Performers in Physics taking Physics Midterm
INSERT INTO submission (id, exam_id, student_id, score, passed, submission_time, time_spent) VALUES
(300, 13, 102, 84, true, '2024-10-26 09:00:00', 6600),  -- 84% score, 110min/120min
(301, 13, 103, 79, true, '2024-10-26 10:30:00', 6900),  -- 79% score, 115min
(302, 13, 104, 88, true, '2024-10-26 12:00:00', 6300),  -- 88% score, 105min
(303, 13, 105, 76, true, '2024-10-26 13:30:00', 7200),  -- 76% score, 120min
(304, 13, 106, 91, true, '2024-10-26 15:00:00', 6000),  -- 91% score, 100min
(305, 13, 107, 82, true, '2024-10-27 09:00:00', 6600),  -- 82% score, 110min
(306, 13, 108, 85, true, '2024-10-27 10:30:00', 6300),  -- 85% score, 105min
(307, 13, 109, 80, true, '2024-10-27 12:00:00', 6900),  -- 80% score, 115min
(308, 13, 110, 87, true, '2024-10-27 13:30:00', 6300),  -- 87% score, 105min
(309, 13, 112, 90, true, '2024-10-27 15:00:00', 6000),  -- 90% score, 100min
(310, 13, 113, 78, true, '2024-10-28 09:00:00', 7200),  -- 78% score, 120min
(311, 13, 114, 84, true, '2024-10-28 10:30:00', 6600),  -- 84% score, 110min
(312, 13, 115, 81, true, '2024-10-28 12:00:00', 6900),  -- 81% score, 115min
(313, 13, 116, 86, true, '2024-10-28 13:30:00', 6300),  -- 86% score, 105min
(314, 13, 117, 83, true, '2024-10-28 15:00:00', 6600),  -- 83% score, 110min
(315, 13, 118, 89, true, '2024-10-29 09:00:00', 6000),  -- 89% score, 100min
(316, 13, 119, 77, true, '2024-10-29 10:30:00', 7200),  -- 77% score, 120min
(317, 13, 120, 84, true, '2024-10-29 12:00:00', 6600),  -- 84% score, 110min
(318, 13, 121, 80, true, '2024-10-29 13:30:00', 6900),  -- 80% score, 115min
(319, 13, 122, 87, true, '2024-10-29 15:00:00', 6300),  -- 87% score, 105min
(320, 13, 123, 82, true, '2024-10-30 09:00:00', 6600),  -- 82% score, 110min
(321, 13, 124, 88, true, '2024-10-30 10:30:00', 6300),  -- 88% score, 105min
(322, 13, 125, 79, true, '2024-10-30 12:00:00', 7200),  -- 79% score, 120min
(323, 13, 126, 85, true, '2024-10-30 13:30:00', 6600),  -- 85% score, 110min
(324, 13, 127, 81, true, '2024-10-30 15:00:00', 6900),  -- 81% score, 115min
(325, 13, 128, 86, true, '2024-10-31 09:00:00', 6300),  -- 86% score, 105min
(326, 13, 129, 83, true, '2024-10-31 10:30:00', 6600);  -- 83% score, 110min

-- Average Performers in Physics taking Physics Midterm
INSERT INTO submission (id, exam_id, student_id, score, passed, submission_time, time_spent) VALUES
(350, 13, 131, 64, true, '2024-11-01 09:00:00', 7200),  -- 64% score, 120min
(351, 13, 132, 59, true, '2024-11-01 11:00:00', 7200),  -- 59% score, 120min
(352, 13, 133, 68, true, '2024-11-01 13:00:00', 6900),  -- 68% score, 115min
(353, 13, 134, 52, true, '2024-11-01 15:00:00', 7200),  -- 52% score, 120min
(354, 13, 135, 71, true, '2024-11-02 09:00:00', 6600),  -- 71% score, 110min
(355, 13, 136, 56, true, '2024-11-02 11:00:00', 7200),  -- 56% score, 120min
(356, 13, 137, 65, true, '2024-11-02 13:00:00', 6900),  -- 65% score, 115min
(357, 13, 138, 51, true, '2024-11-02 15:00:00', 7200),  -- 51% score, 120min
(358, 13, 139, 69, true, '2024-11-03 09:00:00', 6600),  -- 69% score, 110min
(359, 13, 140, 61, true, '2024-11-03 11:00:00', 7200),  -- 61% score, 120min
(360, 13, 141, 57, true, '2024-11-03 13:00:00', 7200),  -- 57% score, 120min
(361, 13, 142, 73, true, '2024-11-03 15:00:00', 6300),  -- 73% score, 105min
(362, 13, 143, 58, true, '2024-11-04 09:00:00', 7200),  -- 58% score, 120min
(363, 13, 144, 66, true, '2024-11-04 11:00:00', 6900),  -- 66% score, 115min
(364, 13, 145, 54, true, '2024-11-04 13:00:00', 7200),  -- 54% score, 120min
(365, 13, 146, 67, true, '2024-11-04 15:00:00', 6900),  -- 67% score, 115min
(366, 13, 147, 60, true, '2024-11-05 09:00:00', 7200),  -- 60% score, 120min
(367, 13, 148, 53, true, '2024-11-05 11:00:00', 7200),  -- 53% score, 120min
(368, 13, 149, 70, true, '2024-11-05 13:00:00', 6600),  -- 70% score, 110min
(369, 13, 150, 55, true, '2024-11-05 15:00:00', 7200),  -- 55% score, 120min
(370, 13, 151, 62, true, '2024-11-06 09:00:00', 7200),  -- 62% score, 120min
(371, 13, 152, 58, true, '2024-11-06 11:00:00', 7200),  -- 58% score, 120min
(372, 13, 153, 65, true, '2024-11-06 13:00:00', 6900),  -- 65% score, 115min
(373, 13, 154, 51, true, '2024-11-06 15:00:00', 7200);  -- 51% score, 120min

-- At-risk Students in Physics (limited subset - many don't reach midterm level)
INSERT INTO submission (id, exam_id, student_id, score, passed, submission_time, time_spent) VALUES
(400, 13, 171, 52, true, '2024-11-07 09:00:00', 7200),  -- 52% score, 120min
(401, 13, 172, 41, false, '2024-11-07 11:00:00', 7200), -- 41% score, failed
(402, 13, 173, 56, true, '2024-11-07 13:00:00', 7200),  -- 56% score, 120min
(403, 13, 174, 35, false, '2024-11-07 15:00:00', 7200), -- 35% score, failed
(404, 13, 175, 49, false, '2024-11-08 09:00:00', 7200), -- 49% score, failed
(405, 13, 176, 53, true, '2024-11-08 11:00:00', 7200),  -- 53% score, 120min
(406, 13, 177, 37, false, '2024-11-08 13:00:00', 7200), -- 37% score, failed
(407, 13, 178, 51, true, '2024-11-08 15:00:00', 7200),  -- 51% score, 120min
(408, 13, 179, 43, false, '2024-11-09 09:00:00', 7200), -- 43% score, failed
(409, 13, 180, 54, true, '2024-11-09 11:00:00', 7200);  -- 54% score, 120min

-- English Literature Exam Submissions
-- Exam 24: English Midterm (ID=24) for English-enrolled students

-- High Performers in English taking English Midterm
INSERT INTO submission (id, exam_id, student_id, score, passed, submission_time, time_spent) VALUES
(500, 24, 102, 89, true, '2024-11-13 09:00:00', 6300),  -- 89% score, 105min/120min
(501, 24, 103, 85, true, '2024-11-13 10:30:00', 6600),  -- 85% score, 110min
(502, 24, 104, 92, true, '2024-11-13 12:00:00', 5700),  -- 92% score, 95min
(503, 24, 105, 82, true, '2024-11-13 13:30:00', 6900),  -- 82% score, 115min
(504, 24, 106, 95, true, '2024-11-13 15:00:00', 5400),  -- 95% score, 90min
(505, 24, 107, 87, true, '2024-11-14 09:00:00', 6300),  -- 87% score, 105min
(506, 24, 108, 90, true, '2024-11-14 10:30:00', 6000),  -- 90% score, 100min
(507, 24, 109, 84, true, '2024-11-14 12:00:00', 6600),  -- 84% score, 110min
(508, 24, 110, 91, true, '2024-11-14 13:30:00', 5700),  -- 91% score, 95min
(509, 24, 111, 88, true, '2024-11-14 15:00:00', 6300),  -- 88% score, 105min
(510, 24, 112, 94, true, '2024-11-15 09:00:00', 5400),  -- 94% score, 90min
(511, 24, 113, 83, true, '2024-11-15 10:30:00', 6900),  -- 83% score, 115min
(512, 24, 114, 89, true, '2024-11-15 12:00:00', 6000),  -- 89% score, 100min
(513, 24, 115, 86, true, '2024-11-15 13:30:00', 6600),  -- 86% score, 110min
(514, 24, 116, 90, true, '2024-11-15 15:00:00', 5700),  -- 90% score, 95min
(515, 24, 117, 87, true, '2024-11-16 09:00:00', 6300),  -- 87% score, 105min
(516, 24, 118, 93, true, '2024-11-16 10:30:00', 5400),  -- 93% score, 90min
(517, 24, 119, 81, true, '2024-11-16 12:00:00', 6900),  -- 81% score, 115min
(518, 24, 120, 88, true, '2024-11-16 13:30:00', 6000),  -- 88% score, 100min
(519, 24, 121, 85, true, '2024-11-16 15:00:00', 6600),  -- 85% score, 110min
(520, 24, 122, 91, true, '2024-11-17 09:00:00', 5700),  -- 91% score, 95min
(521, 24, 123, 87, true, '2024-11-17 10:30:00', 6300),  -- 87% score, 105min
(522, 24, 124, 92, true, '2024-11-17 12:00:00', 5400);  -- 92% score, 90min

-- Average Performers in English taking English Midterm
INSERT INTO submission (id, exam_id, student_id, score, passed, submission_time, time_spent) VALUES
(550, 24, 131, 76, true, '2024-11-18 09:00:00', 6900),  -- 76% score, 115min
(551, 24, 132, 72, true, '2024-11-18 10:30:00', 7200),  -- 72% score, 120min
(552, 24, 133, 79, true, '2024-11-18 12:00:00', 6600),  -- 79% score, 110min
(553, 24, 134, 71, true, '2024-11-18 13:30:00', 7200),  -- 71% score, 120min
(554, 24, 135, 82, true, '2024-11-18 15:00:00', 6300),  -- 82% score, 105min
(555, 24, 136, 74, true, '2024-11-19 09:00:00', 6900),  -- 74% score, 115min
(556, 24, 137, 77, true, '2024-11-19 10:30:00', 6600),  -- 77% score, 110min
(557, 24, 138, 70, true, '2024-11-19 12:00:00', 7200),  -- 70% score, 120min
(558, 24, 139, 80, true, '2024-11-19 13:30:00', 6300),  -- 80% score, 105min
(559, 24, 140, 75, true, '2024-11-19 15:00:00', 6900),  -- 75% score, 115min
(560, 24, 141, 73, true, '2024-11-20 09:00:00', 7200),  -- 73% score, 120min
(561, 24, 142, 83, true, '2024-11-20 10:30:00', 6300),  -- 83% score, 105min
(562, 24, 143, 76, true, '2024-11-20 12:00:00', 6900),  -- 76% score, 115min
(563, 24, 144, 78, true, '2024-11-20 13:30:00', 6600),  -- 78% score, 110min
(564, 24, 145, 71, true, '2024-11-20 15:00:00', 7200),  -- 71% score, 120min
(565, 24, 146, 79, true, '2024-11-21 09:00:00', 6600),  -- 79% score, 110min
(566, 24, 147, 75, true, '2024-11-21 10:30:00', 6900),  -- 75% score, 115min
(567, 24, 148, 72, true, '2024-11-21 12:00:00', 7200),  -- 72% score, 120min
(568, 24, 149, 81, true, '2024-11-21 13:30:00', 6300),  -- 81% score, 105min
(569, 24, 150, 74, true, '2024-11-21 15:00:00', 6900),  -- 74% score, 115min
(570, 24, 151, 77, true, '2024-11-22 09:00:00', 6600),  -- 77% score, 110min
(571, 24, 152, 73, true, '2024-11-22 10:30:00', 7200),  -- 73% score, 120min
(572, 24, 153, 80, true, '2024-11-22 12:00:00', 6300),  -- 80% score, 105min
(573, 24, 154, 75, true, '2024-11-22 13:30:00', 6900),  -- 75% score, 115min
(574, 24, 155, 78, true, '2024-11-22 15:00:00', 6600),  -- 78% score, 110min
(575, 24, 156, 72, true, '2024-11-23 09:00:00', 7200),  -- 72% score, 120min
(576, 24, 157, 79, true, '2024-11-23 10:30:00', 6600),  -- 79% score, 110min
(577, 24, 158, 76, true, '2024-11-23 12:00:00', 6900);  -- 76% score, 115min

-- At-risk Students in English taking English Midterm
INSERT INTO submission (id, exam_id, student_id, score, passed, submission_time, time_spent) VALUES
(600, 24, 171, 73, true, '2024-11-24 09:00:00', 7200),  -- 73% score, 120min
(601, 24, 172, 68, false, '2024-11-24 10:30:00', 7200), -- 68% score, failed (below 70%)
(602, 24, 173, 75, true, '2024-11-24 12:00:00', 6900),  -- 75% score, 115min
(603, 24, 174, 64, false, '2024-11-24 13:30:00', 7200), -- 64% score, failed
(604, 24, 175, 71, true, '2024-11-24 15:00:00', 7200),  -- 71% score, 120min
(605, 24, 176, 59, false, '2024-11-25 09:00:00', 7200), -- 59% score, failed
(606, 24, 177, 72, true, '2024-11-25 10:30:00', 6900),  -- 72% score, 115min
(607, 24, 178, 56, false, '2024-11-25 12:00:00', 7200), -- 56% score, failed
(608, 24, 179, 66, false, '2024-11-25 13:30:00', 7200), -- 66% score, failed
(609, 24, 180, 74, true, '2024-11-25 15:00:00', 6900),  -- 74% score, 115min
(610, 24, 181, 62, false, '2024-11-26 09:00:00', 7200), -- 62% score, failed
(611, 24, 182, 76, true, '2024-11-26 10:30:00', 6900),  -- 76% score, 115min
(612, 24, 183, 58, false, '2024-11-26 12:00:00', 7200), -- 58% score, failed
(613, 24, 184, 71, true, '2024-11-26 13:30:00', 7200),  -- 71% score, 120min
(614, 24, 185, 65, false, '2024-11-26 15:00:00', 7200), -- 65% score, failed
(615, 24, 186, 73, true, '2024-11-27 09:00:00', 6900),  -- 73% score, 115min
(616, 24, 187, 61, false, '2024-11-27 10:30:00', 7200), -- 61% score, failed
(617, 24, 188, 75, true, '2024-11-27 12:00:00', 6900),  -- 75% score, 115min
(618, 24, 189, 57, false, '2024-11-27 13:30:00', 7200), -- 57% score, failed
(619, 24, 190, 72, true, '2024-11-27 15:00:00', 7200);  -- 72% score, 120min

-- =============================================================================
-- SECTION 3: ASSIGNMENT SUBMISSIONS
-- =============================================================================

-- Clear existing assignment submission data
DELETE FROM assignment_submission WHERE id > 0;

-- Generate assignment submissions for 60-80% of enrolled students per assignment
-- Based on the assignments created in comprehensive_exam_assignment_data.sql

-- Assignment submissions with realistic performance patterns and submission timing
-- High performers: 85-98% scores, submit early, mostly graded
-- Average performers: 65-85% scores, submit on time, usually graded
-- At-risk students: 40-75% scores, submit late or miss deadlines, mix of graded/ungraded

INSERT INTO assignment_submission (id, assignment_id, student_id, submitted_at, score, graded, graded_at, feedback, comment) VALUES
-- Math Assignment submissions (Assignment ID=1: Linear Algebra Homework)
-- High performers submitting math assignment
(1, 1, 102, '2024-11-28 14:30:00', 95, true, '2024-11-30 10:00:00', 'Excellent work! Very thorough solutions.', 'All calculations correct with detailed explanations'),
(2, 1, 103, '2024-11-28 16:45:00', 92, true, '2024-11-30 10:15:00', 'Great understanding of matrix operations.', 'Clean presentation and accurate results'),
(3, 1, 104, '2024-11-27 20:15:00', 97, true, '2024-11-30 10:30:00', 'Outstanding! Perfect solutions.', 'Early submission with bonus problem attempted'),
(4, 1, 105, '2024-11-29 09:20:00', 89, true, '2024-11-30 10:45:00', 'Very good work with minor calculation error.', 'Good understanding demonstrated'),
(5, 1, 106, '2024-11-28 11:00:00', 94, true, '2024-11-30 11:00:00', 'Excellent analytical approach.', 'Clear methodology and correct answers'),
(6, 1, 107, '2024-11-29 13:45:00', 91, true, '2024-11-30 11:15:00', 'Strong performance overall.', 'Well-organized solutions'),
(7, 1, 108, '2024-11-28 19:30:00', 88, true, '2024-11-30 11:30:00', 'Good work with room for improvement.', 'Most problems solved correctly'),
(8, 1, 109, '2024-11-29 08:15:00', 93, true, '2024-11-30 11:45:00', 'Very thorough and accurate.', 'Detailed explanations provided'),
(9, 1, 110, '2024-11-28 15:20:00', 90, true, '2024-11-30 12:00:00', 'Solid understanding demonstrated.', 'Good problem-solving approach'),
(10, 1, 111, '2024-11-29 17:10:00', 96, true, '2024-11-30 12:15:00', 'Exceptional work!', 'All bonus questions attempted'),

-- Average performers submitting math assignment
(11, 1, 131, '2024-11-30 18:45:00', 75, true, '2024-12-02 14:00:00', 'Good effort, some calculation errors.', 'Need to double-check arithmetic'),
(12, 1, 132, '2024-11-30 20:30:00', 78, true, '2024-12-02 14:15:00', 'Understanding is there, presentation needs work.', 'Solutions mostly correct'),
(13, 1, 133, '2024-11-29 22:15:00', 82, true, '2024-12-02 14:30:00', 'Well done overall.', 'Good grasp of concepts'),
(14, 1, 134, '2024-12-01 10:20:00', 68, true, '2024-12-02 14:45:00', 'Partial understanding shown, practice more.', 'Several steps missing'),
(15, 1, 135, '2024-11-30 16:00:00', 81, true, '2024-12-02 15:00:00', 'Good progress, keep working.', 'Clear improvement from previous work'),
(16, 1, 136, '2024-12-01 09:45:00', 73, true, '2024-12-02 15:15:00', 'Basic concepts understood.', 'Need more practice with complex problems'),
(17, 1, 137, '2024-11-30 14:30:00', 79, true, '2024-12-02 15:30:00', 'Satisfactory work.', 'Most problems attempted'),
(18, 1, 138, '2024-12-01 08:15:00', 71, true, '2024-12-02 15:45:00', 'Shows potential, needs more practice.', 'Some good insights'),
(19, 1, 139, '2024-11-30 19:45:00', 83, true, '2024-12-02 16:00:00', 'Good analytical thinking.', 'Well-structured solutions'),
(20, 1, 140, '2024-12-01 11:30:00', 76, true, '2024-12-02 16:15:00', 'Adequate performance.', 'Room for improvement in accuracy'),

-- At-risk students submitting math assignment (some late, some missing)
(21, 1, 171, '2024-12-01 23:45:00', 62, true, '2024-12-03 10:00:00', 'Late submission, basic understanding shown.', 'Submitted just before deadline'),
(22, 1, 173, '2024-12-02 08:30:00', 58, false, NULL, NULL, 'Late submission, needs review'),
(23, 1, 175, '2024-12-01 21:15:00', 65, true, '2024-12-03 10:30:00', 'Shows effort, needs more practice.', 'Partial solutions provided'),
(24, 1, 177, '2024-12-02 12:00:00', 54, false, NULL, NULL, 'Very late submission'),
(25, 1, 180, '2024-12-01 20:45:00', 69, true, '2024-12-03 11:00:00', 'Improving, keep working.', 'Better than previous attempts'),
(26, 1, 182, '2024-12-01 22:30:00', 61, false, NULL, NULL, 'Late submission under review'),

-- Physics Project submissions (Assignment ID=2: Physics Experiment)
-- High performers submitting physics project
(30, 2, 102, '2024-12-12 15:30:00', 94, true, '2024-12-14 09:00:00', 'Excellent experimental design and analysis.', 'Comprehensive report with clear methodology'),
(31, 2, 103, '2024-12-13 10:15:00', 89, true, '2024-12-14 09:30:00', 'Good experimental work.', 'Data analysis well done'),
(32, 2, 104, '2024-12-11 18:45:00', 96, true, '2024-12-14 10:00:00', 'Outstanding project! Professional quality.', 'Early submission with detailed analysis'),
(33, 2, 105, '2024-12-13 14:20:00', 87, true, '2024-12-14 10:30:00', 'Solid experimental approach.', 'Good understanding of physics principles'),
(34, 2, 106, '2024-12-12 20:30:00', 92, true, '2024-12-14 11:00:00', 'Very thorough and well-presented.', 'Excellent use of laboratory equipment'),
(35, 2, 107, '2024-12-13 16:45:00', 90, true, '2024-12-14 11:30:00', 'Great experimental results.', 'Clear documentation of procedures'),
(36, 2, 108, '2024-12-13 11:30:00', 85, true, '2024-12-14 12:00:00', 'Good work overall.', 'Minor issues with data presentation'),
(37, 2, 109, '2024-12-12 19:15:00', 93, true, '2024-12-14 12:30:00', 'Excellent analysis and conclusions.', 'Strong theoretical understanding'),

-- Average performers submitting physics project
(40, 2, 131, '2024-12-14 20:30:00', 76, true, '2024-12-16 14:00:00', 'Good effort, some experimental errors.', 'Basic understanding demonstrated'),
(41, 2, 132, '2024-12-14 22:15:00', 72, true, '2024-12-16 14:30:00', 'Adequate work, needs improvement.', 'Data collection was incomplete'),
(42, 2, 133, '2024-12-14 19:45:00', 79, true, '2024-12-16 15:00:00', 'Satisfactory experimental work.', 'Good effort in analysis'),
(43, 2, 134, '2024-12-15 08:30:00', 68, false, NULL, NULL, 'Submission needs review for completeness'),
(44, 2, 135, '2024-12-14 21:00:00', 81, true, '2024-12-16 15:30:00', 'Good progress shown.', 'Understanding of concepts improving'),
(45, 2, 136, '2024-12-15 07:45:00', 74, true, '2024-12-16 16:00:00', 'Basic experimental skills shown.', 'Need better documentation'),

-- At-risk students submitting physics project (limited submissions)
(50, 2, 171, '2024-12-15 23:30:00', 64, false, NULL, NULL, 'Very late submission, under review'),
(51, 2, 173, '2024-12-15 22:45:00', 59, false, NULL, NULL, 'Late submission, incomplete data'),
(52, 2, 176, '2024-12-15 21:15:00', 67, true, '2024-12-17 10:00:00', 'Shows effort, needs more practice.', 'Basic experimental approach'),

-- English Essay submissions (Assignment ID=3: English Writing Assignment)
-- High performers submitting English essays
(60, 3, 102, '2024-11-27 16:30:00', 91, true, '2024-11-29 10:00:00', 'Excellent essay with strong arguments.', 'Well-structured with proper citations'),
(61, 3, 103, '2024-11-28 14:15:00', 88, true, '2024-11-29 10:30:00', 'Good writing style and organization.', 'Clear thesis and supporting evidence'),
(62, 3, 104, '2024-11-27 20:45:00', 94, true, '2024-11-29 11:00:00', 'Outstanding essay! Sophisticated analysis.', 'Early submission with excellent quality'),
(63, 3, 105, '2024-11-28 18:30:00', 85, true, '2024-11-29 11:30:00', 'Good content, minor grammar issues.', 'Strong analytical thinking'),
(64, 3, 106, '2024-11-28 12:00:00', 92, true, '2024-11-29 12:00:00', 'Excellent use of literary devices.', 'Creative and insightful approach'),
(65, 3, 107, '2024-11-28 19:15:00', 89, true, '2024-11-29 12:30:00', 'Well-written with good examples.', 'Strong command of English'),
(66, 3, 108, '2024-11-29 08:45:00', 86, true, '2024-11-29 13:00:00', 'Good essay overall.', 'Minor issues with organization'),
(67, 3, 109, '2024-11-28 15:20:00', 90, true, '2024-11-29 13:30:00', 'Very good writing skills.', 'Clear and engaging style'),

-- Average performers submitting English essays
(70, 3, 131, '2024-11-29 19:30:00', 77, true, '2024-12-01 14:00:00', 'Good ideas, needs better organization.', 'Content is good but structure needs work'),
(71, 3, 132, '2024-11-29 21:15:00', 74, true, '2024-12-01 14:30:00', 'Adequate work, grammar issues.', 'Understanding shown but needs editing'),
(72, 3, 133, '2024-11-29 20:45:00', 80, true, '2024-12-01 15:00:00', 'Good effort and improvement.', 'Better than previous submissions'),
(73, 3, 134, '2024-11-30 10:30:00', 71, true, '2024-12-01 15:30:00', 'Basic understanding shown.', 'Needs more development of ideas'),
(74, 3, 135, '2024-11-29 22:00:00', 82, true, '2024-12-01 16:00:00', 'Good analytical thinking.', 'Well-supported arguments'),
(75, 3, 136, '2024-11-30 09:15:00', 75, true, '2024-12-01 16:30:00', 'Shows potential.', 'Need to work on clarity'),
(76, 3, 137, '2024-11-29 23:30:00', 78, true, '2024-12-01 17:00:00', 'Satisfactory work.', 'Good effort in meeting requirements'),

-- At-risk students submitting English essays (some late, some missing)
(80, 3, 171, '2024-11-30 23:45:00', 68, true, '2024-12-02 10:00:00', 'Late but shows effort.', 'Basic ideas present but needs development'),
(81, 3, 173, '2024-11-30 22:30:00', 65, false, NULL, NULL, 'Late submission, under review'),
(82, 3, 175, '2024-11-30 21:15:00', 72, true, '2024-12-02 10:30:00', 'Improving writing skills.', 'Better organization than before'),
(83, 3, 180, '2024-11-30 20:45:00', 69, false, NULL, NULL, 'Late submission needs thorough review'),
(84, 3, 182, '2024-11-30 23:15:00', 66, false, NULL, NULL, 'Very late submission');

-- Update todo progress
UPDATE lms_user SET phone_number = '09120000000' WHERE id = 1; -- Dummy update to maintain transaction

COMMIT;

-- =============================================================================
-- SCRIPT EXECUTION SUMMARY
-- =============================================================================

-- Total Enrollments Created:
-- - High Performers (st2-st30): ~120 enrollments across 4-5 courses each
-- - Average Performers (st31-st70): ~140 enrollments across 2-4 courses each
-- - At-risk Students (st71-st100): ~60 enrollments across 1-3 courses each
-- Total: ~320 course enrollments

-- Total Exam Submissions Created:
-- - Math Placement Test: 82 submissions (all performance levels)
-- - Math Midterm: 72 submissions (declining participation)
-- - Physics Midterm: 64 submissions (STEM-focused students)
-- - English Midterm: 78 submissions (broad participation)
-- Total: ~296 realistic exam submissions

-- Total Assignment Submissions Created:
-- - Math Assignment: 26 submissions (60% completion rate)
-- - Physics Project: 18 submissions (50% completion rate)
-- - English Essay: 24 submissions (70% completion rate)
-- Total: 68 assignment submissions with realistic grading patterns

-- Performance Distribution Achieved:
-- - High Performers: 85-98% scores, early submissions, mostly graded
-- - Average Performers: 65-85% scores, on-time submissions, usually graded
-- - At-risk Students: 40-75% scores, late/missing submissions, mixed grading

-- Data Features for Analytics Testing:
-- 1. Realistic enrollment patterns by performance level
-- 2. Performance-based score distributions
-- 3. Time-spent patterns correlating with performance
-- 4. Submission timing patterns (early/on-time/late)
-- 5. Grading completion rates varying by performance
-- 6. Comprehensive feedback and comments for graded work
-- 7. Missing submissions representing real dropout/struggle patterns

-- This data provides comprehensive test scenarios for:
-- - Student performance analytics and reporting
-- - Progress tracking and early warning systems
-- - Course popularity and difficulty analysis
-- - Teacher workload and grading pattern analysis
-- - Predictive modeling for student success

-- =============================================================================