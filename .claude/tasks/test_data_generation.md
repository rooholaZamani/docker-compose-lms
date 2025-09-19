# Test Data Generation Plan

## Database Schema Analysis

Based on analysis of the existing codebase:

### Key Entities
1. **User** (`lms_user` table):
   - id (auto-generated)
   - username (unique)
   - password (encrypted)
   - firstName, lastName
   - nationalId (unique)
   - phoneNumber
   - age
   - email (unique)
   - roles (many-to-many with Role)

2. **Course** (`course` table):
   - id (auto-generated)
   - title
   - description
   - prerequisite
   - active (boolean, default true)
   - teacher (User foreign key)
   - lessons (one-to-many)
   - enrolledStudents (many-to-many via `course_enrollments`)

3. **Progress** (`progress` table):
   - Uses granular activity tracking with collections:
   - completedLessons (Set<Long>)
   - viewedContent (Set<Long>)
   - completedContent (Set<Long>)
   - Performance metrics: completionPercentage, totalStudyTime, currentStreak

### Existing Test Users
- **st1**: Already exists with password 123456 (student)
- **teach**: Already exists with password 123456 (teacher)
- **admin**: Default admin user (Admin@123)

## Plan

### Phase 1: Generate Users (99 new students st2-st100)
- Create realistic Persian names
- Sequential usernames: st2, st3, ..., st100
- All with password: 123456 (encrypted)
- Diverse demographics (age 18-30)

### Phase 2: Generate Educational Content
- Create 12+ diverse courses covering:
  - STEM subjects (Math, Physics, Chemistry, CS)
  - Languages (English, Persian Literature)
  - Business (Marketing, Management)
  - Arts (History, Philosophy)
- Each course with 3-8 lessons
- Multiple content types per lesson (TEXT, VIDEO, PDF)

### Phase 3: Generate Assessment Content
- 2-4 exams per course with realistic difficulty distribution
- 1-3 assignments per course
- Varied question types (MULTIPLE_CHOICE, SHORT_ANSWER, ESSAY, etc.)

### Phase 4: Generate Realistic Enrollments
- High performers: Enrolled in 3-5 courses, high completion rates
- Average performers: Enrolled in 2-4 courses, moderate completion rates
- At-risk students: Enrolled in 1-3 courses, low completion rates

### Phase 5: Generate Progress Data
- Granular activity tracking using the new system
- Realistic study patterns and time spent
- Varying completion percentages for Performance Analysis testing
- Recent activity logs for engagement tracking

## Expected Outcomes
- 100 total students (including existing st1)
- 12+ courses with comprehensive content
- 30+ exams with varied difficulty
- 25+ assignments
- Realistic enrollment patterns
- Comprehensive progress data for analytics testing