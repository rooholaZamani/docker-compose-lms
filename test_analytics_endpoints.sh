#!/bin/bash

# Comprehensive Analytics API Testing Script
# Testing all student performance report endpoints

BASE_URL="http://localhost:8080/api"
ADMIN_AUTH="admin:Admin@123"

echo "=== LMS Analytics API Testing ==="
echo "Starting comprehensive test of analytics endpoints..."
echo

# Test 1: System Overview
echo "1. Testing System Overview..."
curl -u "$ADMIN_AUTH" -X GET "$BASE_URL/analytics/teacher/system-overview" \
  -H "Content-Type: application/json" -s | jq '.' || echo "FAILED"
echo

# Test 2: Student Performance (will fail without student auth, but test structure)
echo "2. Testing Student Performance endpoint structure..."
curl -u "$ADMIN_AUTH" -X GET "$BASE_URL/analytics/student/performance" \
  -H "Content-Type: application/json" -s | jq '.' || echo "Expected to fail - needs student role"
echo

# Test 3: Course Performance Analysis (with course ID 1)
echo "3. Testing Course Performance Analysis..."
curl -u "$ADMIN_AUTH" -X GET "$BASE_URL/analytics/teacher/course/1/performance" \
  -H "Content-Type: application/json" -s | jq '.' || echo "FAILED"
echo

# Test 4: Course Activity Stats
echo "4. Testing Course Activity Stats..."
curl -u "$ADMIN_AUTH" -X GET "$BASE_URL/analytics/course/1/activity-stats" \
  -H "Content-Type: application/json" -s | jq '.' || echo "FAILED"
echo

# Test 5: Course Exam Scores
echo "5. Testing Course Exam Scores..."
curl -u "$ADMIN_AUTH" -X GET "$BASE_URL/analytics/course/1/exam-scores" \
  -H "Content-Type: application/json" -s | jq '.' || echo "FAILED"
echo

# Test 6: Time Distribution Analysis
echo "6. Testing Time Distribution..."
curl -u "$ADMIN_AUTH" -X GET "$BASE_URL/analytics/course/1/time-distribution" \
  -H "Content-Type: application/json" -s | jq '.' || echo "FAILED"
echo

# Test 7: Lesson Progress Analysis
echo "7. Testing Lesson Progress..."
curl -u "$ADMIN_AUTH" -X GET "$BASE_URL/analytics/course/1/lesson-progress" \
  -H "Content-Type: application/json" -s | jq '.' || echo "FAILED"
echo

# Test 8: Challenging Questions
echo "8. Testing Challenging Questions..."
curl -u "$ADMIN_AUTH" -X GET "$BASE_URL/analytics/course/1/challenging-questions" \
  -H "Content-Type: application/json" -s | jq '.' || echo "FAILED"
echo

# Test 9: At-Risk Students
echo "9. Testing At-Risk Students..."
curl -u "$ADMIN_AUTH" -X GET "$BASE_URL/analytics/course/1/at-risk-students" \
  -H "Content-Type: application/json" -s | jq '.' || echo "FAILED"
echo

# Test 10: Trend Analysis
echo "10. Testing Trend Analysis..."
curl -u "$ADMIN_AUTH" -X GET "$BASE_URL/analytics/course/1/trend-analysis" \
  -H "Content-Type: application/json" -s | jq '.' || echo "FAILED"
echo

# Test 11: Students Progress Overview
echo "11. Testing Students Progress Overview..."
curl -u "$ADMIN_AUTH" -X GET "$BASE_URL/analytics/teacher/students-progress" \
  -H "Content-Type: application/json" -s | jq '.' || echo "FAILED"
echo

# Test 12: Course Students Summary
echo "12. Testing Course Students Summary..."
curl -u "$ADMIN_AUTH" -X GET "$BASE_URL/analytics/teacher/course/1/students-summary" \
  -H "Content-Type: application/json" -s | jq '.' || echo "FAILED"
echo

# Test 13: Engagement Trends
echo "13. Testing Engagement Trends..."
curl -u "$ADMIN_AUTH" -X GET "$BASE_URL/analytics/teacher/engagement-trends" \
  -H "Content-Type: application/json" -s | jq '.' || echo "FAILED"
echo

# Test 14: Time Analysis
echo "14. Testing Time Analysis..."
curl -u "$ADMIN_AUTH" -X GET "$BASE_URL/analytics/teacher/time-analysis" \
  -H "Content-Type: application/json" -s | jq '.' || echo "FAILED"
echo

# Test 15: Question Difficulty Analysis
echo "15. Testing Question Difficulty Analysis..."
curl -u "$ADMIN_AUTH" -X GET "$BASE_URL/analytics/teacher/question-difficulty" \
  -H "Content-Type: application/json" -s | jq '.' || echo "FAILED"
echo

echo "=== Analytics API Testing Complete ==="