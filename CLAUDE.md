# CLAUDE.md

you are a skeptical and paranoid software developer  
This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Architecture

This is a Learning Management System (LMS) built with a modern tech stack:

**Backend**: Spring Boot 3.4.5 application using:
- Java 17
- Spring Security for authentication
- Spring Data JPA with H2 database
- SpringDoc OpenAPI for API documentation
- Maven for build management
- Lombok for reducing boilerplate code
- Apache POI for Excel operations

**Frontend**: Vue 3 application using:
- Vite for build tooling
- Vue Router 4 for routing
- Pinia/Vuex for state management
- Bootstrap 5 for UI components
- Chart.js for data visualization
- Axios for HTTP requests
- Persian/RTL support with Vazirmatn font

**Deployment**: Docker-based with separate containers for frontend and backend

## Development Commands

### Backend (Maven/Spring Boot)
```bash
# Run the backend server
cd backend
./mvnw spring-boot:run

# Build the project
./mvnw clean package

# Run tests
./mvnw test

# Build Docker image
docker build -t lms-backend .

# Clean compile for testing changes
./mvnw clean compile
```

### Frontend (Vue/Vite)
```bash
# Install dependencies
cd frontend
npm install

# Run development server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview

# Build Docker image
docker build -t lms-frontend .
```

### Quick Start (Windows)
```bash
# Reset and start both backend and frontend
./reset-and-run.bat

# Start backend only
./run-backend.bat

# Start frontend only
./run-frontend.bat
```

### Docker Compose
```bash
# Run entire application stack
cd lms-compose
docker-compose up -d

# View logs
docker-compose logs -f

# Stop services
docker-compose down
```

### Testing & Analytics
```bash
# Test analytics endpoints
./test_analytics_endpoints.sh

# Simple data flow test
./test_data_flow_simple.sh

# Performance test
./performance_test.sh
```

## Backend Architecture Deep Dive

### Core Service Layer Pattern
The backend follows a sophisticated service-oriented architecture with specialized services:

**Data Services:**
- `CourseService` - Course CRUD and student enrollment management
- `ProgressService` - **Granular activity tracking** (content views, exam submissions, assignments)
- `AnalyticsService` - Performance metrics and reporting
- `ActivityTrackingService` - Real-time user activity logging

**Content Services:**
- `ContentService` - Lesson content management (VIDEO, PDF, TEXT types)
- `LessonCompletionService` - Auto-completion logic based on content/exam/assignment completion
- `FileStorageService` - File upload and metadata management
- `ExamService` - Quiz/exam creation and grading

**Communication Services:**
- `ChatService` - Real-time messaging
- `DTOMapperService` - Entity-to-DTO conversions with consistent progress calculations

### Critical Progress Calculation Architecture
**Note:** The progress calculation system was recently redesigned (Sep 2025) to be **granular activity-based**:

- **Old System**: Simple lesson completion percentage
- **New System**: Based on individual activities (content views + exam submissions + assignment submissions)

All services (`ProgressService`, `LessonCompletionService`, `DTOMapperService`, `CourseService`) now use identical `calculateProgressFromActivities()` methods that provide accurate, fine-grained progress tracking.

### Database Entity Relationships
Key JPA entities with complex relationships:
- `User` ↔ `Course` (many-to-many via enrollment)
- `Course` → `Lesson` → `Content` (one-to-many cascaded)
- `Progress` tracks granular activities via `Set<Long>` collections for viewed/completed content
- `Submission` and `AssignmentSubmission` track student activities

## Frontend Architecture Deep Dive

### Component Organization Strategy
```
components/
├── analytics/          # Performance charts and reports
├── assignments/        # Assignment creation/grading/submission
├── charts/            # Reusable Chart.js components
├── common/            # Shared UI components (modals, alerts, etc.)
├── courses/           # Course management and display
├── dashboard/         # Role-specific dashboards
├── exams/             # Quiz/exam system
├── layout/            # Navigation and layout components
├── student/           # Student-specific features
└── views/             # Main page components
```

### State Management Pattern
- **Vuex** for complex global state (user authentication, courses)
- **Pinia** for modern reactive state management
- Component-level state for UI interactions

### Routing & Authentication
- Route guards enforce role-based access (`requiresAuth`, `requiresTeacher`)
- Persian language support with RTL text direction
- Dynamic imports for code splitting

## API Integration Patterns

### Backend-Frontend Communication
- Frontend dev server proxies `/api/*` to `localhost:8080`
- All API calls use Axios with centralized error handling
- Real-time updates for chat and progress tracking
- Persian date/time formatting throughout the application

### File Upload Architecture
- Backend handles files in `/uploads` directory
- `FileMetadata` entity tracks file information
- Support for educational content (videos, PDFs, documents)
- Download URLs generated via `/api/files/{id}` endpoints

## Database Schema Highlights

### Progress Tracking Schema
```sql
-- Progress entity with granular activity tracking
progress (
  id, student_id, course_id, 
  completion_percentage,    -- Calculated real-time
  total_study_time,
  last_accessed
)

-- Granular activity collections
viewed_content (progress_id, content_id)
completed_content (progress_id, content_id)
completed_lessons (progress_id, lesson_id)
```

### Content & Assessment Schema
- `Content` supports VIDEO, PDF, TEXT types with order indexing
- `Exam` with multiple question types and automatic grading
- `Assignment` with file attachments and manual grading capabilities

## Key Business Logic Patterns

### Role-Based Access Control
Three primary roles with distinct capabilities:
- **Student**: Course enrollment, content consumption, exam taking, assignment submission
- **Teacher**: Course creation, content management, grading, student progress monitoring
- **Admin**: System-wide management, user administration, analytics access

### Analytics & Reporting System
Comprehensive reporting including:
- Student progress tracking with granular activity metrics
- Course performance analytics
- Real-time activity monitoring
- Export capabilities for gradebooks and progress reports

## Testing Infrastructure

The system includes comprehensive testing tools:
- Performance testing scripts for concurrent user scenarios
- Analytics endpoint validation
- Chart visualization testing with sample data
- Data flow verification across the full stack

## Plan & Review Workflow

### Before starting work
- Always use plan mode to create implementation plans
- Write detailed plans to `.claude/tasks/TASK_NAME.md`
- Include reasoning and task breakdown
- Research latest knowledge for external dependencies
- Focus on MVP approach
- Get plan approval before proceeding

### While implementing
- Update plans with detailed change descriptions
- Maintain granular progress tracking
- Document architectural decisions for future engineers

## Important Note on Progress Calculation

When working with student progress features, always use the **granular activity-based calculation** implemented across all services. The system tracks three types of activities:
1. **Content Activities**: Viewed or completed content pieces
2. **Exam Activities**: Any exam submission (regardless of pass/fail)
3. **Assignment Activities**: Any assignment submission

This ensures accurate progress percentages rather than misleading lesson-based calculations.
- student user:st1 passrord:123456\
teacher user:teach password:123456