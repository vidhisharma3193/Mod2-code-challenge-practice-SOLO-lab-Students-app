# Rails Code Challenge Practice - Students App

For this practice lab, you'll be working with Student-Instructor domain.

In this repo, there is a Rails application with some features built out. Your job is to extend this code to add the functionality described in the deliverables below.

## Topics

- MVC
- REST
- Request-Response Cycle
- Forms and Form Helpers
- ActiveRecord
- Validations

## Setup

Before you begin coding your solution, fork and clone this repo and then `cd` into it. Then run `bundle install`, `rails db:migrate`, and `rails db:seed` to install dependencies and set up the database, and run `rails s` to start the server.

## The Domain

The application keeps track of the students.

There are two models in the domain: Student and Instructor.

Instructor has many students and student belongs to an instructor.

## What You Already Have

The starter code includes migrations, models, and seed data for Students and Instructors. There are also routes, controller actions, and views to support listing the students and instructors.

After running the setup instructions above, visiting `'/students'` will display all of the students, and visiting `'/instructors'` will display all of the instructors.

***Schema***

Instructors

| Column | Type |
| ------------- | ------------- |
| name  | String  |
| created_at  | DateTime  |
| updated_at  | DateTime  |

Students

| Column | Type |
| ------------- | ------------- |
| name  | String  |
| major  | String  |
| age  | Integer  |
| instructor_id  | Integer  |
| created_at  | DateTime  |
| updated_at  | DateTime  |

### Model Methods and Validations

- None

### Routes, Controllers and Views

- Students index
- Instrucor index

## Instructions

Update the code of the application to meet the following deliverables. Follow RESTful naming conventions and the MVC pattern to divide responsibility.

***Read through these deliverables carefully to understand the requirements for this code challenge practice. Tackle them one by one, as they build on each other sequentially.***


### 1. New Student Form

A user can fill out a form to create a new Student. They can:

- Enter a name
- Enter a major
- Choose an existing instructor from a select dropdown
- Enter a numeric age
- Submit the form

After submitting the form, the user should be redirected to the selected instructor's show page.

### 2. Instructor Show Page

On the instructor show page, a user should see:

- Instructor's name
- A list of the students who belongs to this instructor
- Each student's name should link to the Student Show page

### 3. Student Show Page Instructor links

On the student's show page,

- Student's name
- Instrcutor's name for that student
- Instrcutor's name should link to the Instrcutor Show page

### 4. Student Age Validation

- Add a validation to ensure that the student's age is greater than 18.
- Add handling for this error to the Student create action.
- The validation error should be shown on the Student creation form when a user attempts to save a student with an invalid age.

### 5. Advanced: Student Edit Form

A user can fill out a form to update an existing Student. They can:

- Change a name
- Change a major
- Change an existing instructor from a select dropdown
- Change an age
- Submit the form

After submitting the form, the user should be redirected to the student's show page.

### 6. Advanced: Student Average Age

On the Instrcutor's show page, show the average age of the students for the instrcutor.

### 7. Advanced: Instructor Show Page Student Ordering

On the Instructor show page, display the Students name in alphabetical order.

## Rubric for the Code Challenge

You can find the rubric for the Code Challenge [here](https://docs.google.com/document/d/1ttJQ1j4Gj2R6Q-Cu3eoseqXjqz1E1indMlIa9kejL4g/edit#heading=h.yi3uaat3he4a).