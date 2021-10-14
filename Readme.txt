----------------------------------------------------------------
Quiz Application Project
-Project is tested on Windows 10 and written with Java/MySQL.
-First download XAMPP Server and open PHP admin panel then create 
 new database named "quizappjava" then import database file givin in 
 database folder.
-While you are connected to MySQL server you can run this program.
 Otherwise it is going to give errors.Because this program is database
 driven as most of this type of programs are. 

-To take an exam first you need to register by clicking Student Register
 button. But Student ID : 6 , Student Name : Mike is a valid student.
-----------------------------------------------------------------
DB Tables
To keep program as short as possible I just used Categories,Questions,Students
and examresults tables.

"Questions" table stores question's texts,options,correct answers and this table
has foreign keys like "test_no","q_cat" to relate a specific question
to a specific test and category.

"examresults" table stores the students' results along with the Test category and
 exam date.

"categories" table just stores available categories  those could be like Mathematics,
 Football,Gambling,Books etc...
---------------------------------------------------------------
Frames inside Program 


Category.java : used to insert new category name into database.

AddQuestion.java: You can create questions with this frame.
                  First select Category then type "test no"
                  if that Test No is used before it will be generated
                  the last question number + 1.If not,then it will be
                  generated number 1 as Question no.From this point on,
                  Save button becomes enabled.Type your questions
                  ,options and correct answer then click Save button.

EditQuestion.java: This frame lists all the questions in a table on the right side
                   of frame based ON the Category selected from combobox. 
                   Once table is shown just select any row from table and
                   program fills fields on the left with its data.
                   You can change any field and Click Edit button to update
                   the question OR click delete to delete that question.

Exam.java : To be able to take an exam first you must register with clicking
            Student Register button in the main frame.
            The oppening frame also lists the existing students as well and you can Edit
            their data.

            Once you registered,then click "Start Exam" and provide your Student ID
            and Student Name.Then select Exam Category from combobox and its available
            tests will be listed in Test No combobox.Select any test from here 
            then click "Start Exam" button. 

            Next/Prev buttons are just used to navigate through questions.To save
            Your answer click "Save" button.You can still change your answer 
            unless you finish the exam.

            Once you are done with the exam click "Finish Exam" button and then
            your results will be shown on a new window along with wrong answered
            questions.For example 3(A) means  correct answer for the 3th question
            was "A".Don't close your result window and use prev/next buttons to
            compare your answers with the correct answers.             


Thanks for reading ...
////////////////////////////////////END///////////////////////////////////////                   

                   
                   




 



  