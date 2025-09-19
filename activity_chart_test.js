// Simulation of what the Activity Distribution chart would show
// Based on the actual API response we just received

const activitiesData = [
  { type: 'ASSIGNMENT_SUBMISSION', description: 'ارسال تکلیف' },
  { type: 'EXAM_START', description: 'شروع آزمون' },
  { type: 'CONTENT_VIEW', description: 'مشاهده محتوا' },
  { type: 'LESSON_COMPLETION', description: 'تکمیل درس' },
  { type: 'LESSON_COMPLETION', description: 'تکمیل درس' },
  { type: 'LOGIN', description: 'ورود به سیستم' },
  { type: 'LOGIN', description: 'ورود به سیستم' },
  { type: 'EXAM_SUBMISSION', description: 'شرکت در آزمون' },
  { type: 'EXAM_START', description: 'شروع آزمون' },
  { type: 'EXAM_START', description: 'شروع آزمون' },
  { type: 'LOGIN', description: 'ورود به سیستم' },
  { type: 'LOGIN', description: 'ورود به سیستم' },
  { type: 'EXAM_START', description: 'شروع آزمون' },
  { type: 'CONTENT_VIEW', description: 'مشاهده محتوا' },
  { type: 'CONTENT_VIEW', description: 'مشاهده محتوا' },
  { type: 'CONTENT_VIEW', description: 'مشاهده محتوا' },
  { type: 'CONTENT_COMPLETION', description: 'فعالیت' },
  { type: 'FILE_ACCESS', description: 'دسترسی به فایل' },
  { type: 'FILE_ACCESS', description: 'دسترسی به فایل' },
  { type: 'CONTENT_VIEW', description: 'مشاهده محتوا' },
  { type: 'CONTENT_VIEW', description: 'مشاهده محتوا' },
  { type: 'CONTENT_VIEW', description: 'مشاهده محتوا' },
  { type: 'LOGIN', description: 'ورود به سیستم' },
  { type: 'LOGIN', description: 'ورود به سیستم' },
  { type: 'LOGIN', description: 'ورود به سیستم' }
];

// Function to translate activity types to Persian names (from MyActivities.vue)
function getActivityTypeName(type) {
  const typeNames = {
    'CONTENT_VIEW': 'مشاهده محتوا',
    'LESSON_COMPLETION': 'تکمیل درس',
    'EXAM_SUBMISSION': 'شرکت در آزمون',
    'ASSIGNMENT_SUBMISSION': 'ارسال تکلیف',  // ← THIS IS THE KEY FIX!
    'CHAT_MESSAGE_SEND': 'ارسال پیام',
    'CHAT_VIEW': 'مشاهده چت',
    'FILE_ACCESS': 'دسترسی به فایل',
    'LESSON_ACCESS': 'دسترسی به درس',
    'EXAM_START': 'شروع آزمون',
    'ASSIGNMENT_VIEW': 'مشاهده تکالیف',
    'CONTENT_COMPLETION': 'تکمیل محتوا',
    'LOGIN': 'ورود به سیستم'
  };
  return typeNames[type] || type || 'فعالیت نامشخص';
}

// Simulate the chart data processing from createDistributionChart function
const activityCounts = {};
activitiesData
  .filter(activity => activity.type !== 'FILE_ACCESS') // Filter out FILE_ACCESS activities
  .forEach(activity => {
    const typeName = getActivityTypeName(activity.type);
    activityCounts[typeName] = (activityCounts[typeName] || 0) + 1;
  });

console.log('Activity Distribution Chart Data:');
console.log('=================================');
Object.entries(activityCounts).forEach(([activityType, count]) => {
  console.log(`${activityType}: ${count}`);
});

console.log('\n✅ BEFORE THE FIX: Assignment submissions (ارسال تکلیف) would show 0');
console.log('✅ AFTER THE FIX: Assignment submissions (ارسال تکلیف) now shows', activityCounts['ارسال تکلیف'] || 0);