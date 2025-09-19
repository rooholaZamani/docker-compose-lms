# GEMINI.md

This file provides guidance to Gemini when working with code in this repository.

## Project Overview

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

## Building and Running

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

## Development Conventions

### Backend Architecture

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

### Frontend Architecture

**Component Organization Strategy**
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

**State Management Pattern**
- **Vuex** for complex global state (user authentication, courses)
- **Pinia** for modern reactive state management
- Component-level state for UI interactions

### API Integration

- Frontend dev server proxies `/api/*` to `localhost:8080`
- All API calls use Axios with centralized error handling
- Real-time updates for chat and progress tracking
- Persian date/time formatting throughout the application

## Testing

```bash
# Test analytics endpoints
./test_analytics_endpoints.sh

# Simple data flow test
./test_data_flow_simple.sh

# Performance test
./performance_test.sh
```
