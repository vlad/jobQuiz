# Welcome to jobQuiz!#

![jobQuiz image](http://i.imgur.com/8fp3res.png)

## How to install ##

    bundle install
    rake db:create && rake db:migrate
    rails server

1. Sign up at http://localhost:3000 and visit /admin to create, edit, (or import!) questions.
2. Visit http://localhost:3000 to view your application stage and start the quiz.
3. While you are taking the quiz, you will redirect to the quiz (in case your browser crashes and you're confused, etc.)

## What is it? ##

jobQuiz is an example Rails 4 app demonstrating a **job application workflow** using a finite stage machine.  **Applicants are shown the steps and time required** to "join the team", even before they sign up.

Each page is **mobile friendly** (applicant's dashboard, actual quiz, session pages, and admin functionality).

Admins can **import questions from JSON** (an example is provided in the UI, and can use the questions JSON provided by the challenge.)  They can also add, edit, and delete questions as expected from a CRUD application.

Applicants can **start a quiz when they're ready**, and are allowed one quiz per 60 days.  Once they do, admins can see Applicants with their gravatar image, score, and email.

With every user answer, **each response is saved and graded right away** using a "correct" field for each response.  Questions or answers deleted later?  You still **know if the user's response was correct**.

Questions are **randomized for every quiz**, and will choose less than 21 questions depending on how many available questions there are in the database.  For that reason, the admin panel shows the number of questions correct out of the total number.

You can **change questions or quizzes without affecting existing results**.  Users can also take multiple quizzes, and each history is saved.

## Roadmap ##

- Admins should have a (mobile-friendly) dropdown to advance the applicant to a different stage (phone_interview, local_interview, active, inactive, or rejected).

- Similarly, it would be nice to edit the steps required for an interview via the admin panel.

- Users should be able to upload a photo on the desktop or choose an existing one from their camera roll on a mobile device, rather than url.

- When building new questions, admins could provide one correct answer and then randomly generate three wrong answers from the existing database.

- Applicants should get an email whenever an admin changes their stage, and what to do next.

- The admin panel should show applicants who "recently changed state", so that they do not fall through the cracks.  For example, applicants who just finished a quiz, as well as applicants who have been in the phone_interview or local_interview stage for more than a day or two.

## About ##

Follow Vlad Yazhbin [@vla](http://twitter.com/vla) on twitter.