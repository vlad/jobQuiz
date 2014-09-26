# Welcome to jobQuiz!#

![jobQuiz](http://i.imgur.com/8fp3res.png)

## What is it? ##

jobQuiz is an example Rails 4 app of a job application workflow using a finite stage machine.  Applicants are shown the steps required to "join the team" and the amount of time each step will take before they even sign up.

Each section is mobile friendly (applicant's dashboard, actual quiz, session pages, and admin functionality).

Admins can import questions from JSON (an example is provided in the UI, and can use the questions JSON provided by the challenge.)  They can also add, edit, and delete questions as expected from a CRUD application.

Users can take a quiz once they are ready, and are allowed one quiz per 60 days.  Once they do, they are shown in the admin "Applicants" section with their gravatar image, score, and email.

With every user answer, the response is saved and graded right away using a "correct" field for each response.  If the questions or answers are deleted later, we still remember whether the user's response was correct or not.

Questions are randomized for every quiz, and will choose less than 21 questions depending on how many available questions there are in the database.  For that reason, the admin panel shows the number of questions correct out of the total number.

You could therefore vary the number of questions for future quizzes without affecting results you already collected.  And, each user can take a quiz multiple times, saving history for each quiz.

## Roadmap ##

- Admins should have a (mobile-friendly) dropdown to advance the applicant to a different stage (phone_interview, local_interview, active, inactive, or rejected).

- Similarly, it would be nice to edit the steps required for an interview via the admin panel.

- Users should be able to upload a photo on the desktop or choose an existing one from their camera roll on a mobile device, rather than url.

- When building new questions, admins could provide one correct answer and then randomly generate three wrong answers from the existing database.

- Applicants should get an email whenever an admin changes their stage, and what to do next.

- The admin panel should show applicants who "recently changed state", so that they do not fall through the cracks.  For example, applicants who just finished a quiz, as well as applicants who have been in the phone_interview or local_interview stage for more than a day or two.

## About ##

Follow Vlad Yazhbin [@vla](http://twitter.com/vla) on twitter.