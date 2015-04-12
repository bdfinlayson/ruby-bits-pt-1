# ruby-bits-pt-1
My notes and solutions to exercises from Code School's Ruby Bits Part 1 course @ http://rubybits.codeschool.com/

Control Expressions
-------------------
`unless` statements have the following structure

`unless` your condition here
run some code here
`end`

You can also make single line unless statements with this structure

run some code here `unless` your condition here

About Nil
-----------
`if/else` statements by default interpret nil as false

Short-Circuit &&
-----------------
Uses the `&&` condition to short-circuit a controll expression with two or more conditional arguments. Eg:
`puts "Luke, I am your father" if son_arr.length > 0 && son_arr.include?("Luke")`



