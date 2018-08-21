# Module 2 Code Challenge Practice

1. Use `rails g model ... (with column names/types)` to create an `appointment` model and table, which will be the join table between `doctors` and `patients`. The `appointment` table will have three columns: `doctor_id`, `patient_id`, and `description`.

2. Set up the appropriate relationships in your models. This is a many-to-many- relationship, with `appointment` as the `through` model.

3. Run `rails db:migrate` and `rails db:seed` to make sure you did #1 correctly.

4. I should be able to fill out a form to create a new `appointment`. In this form, I should be able to select a doctor, select a patient, and enter a description. Upon submitting this form, I should be redirected to the selected patient's `show` page, which should display the patient's name and the number of appointments the patient has.

## Solution

There is a branch called `solution` where you can view the finished code. You can type `git checkout solution` to go to the solution code locally, or you can go to https://github.com/michaelcheng924/mod-2-cc-practice/pull/1/files to see the specific additions/changes that were made in the solution.