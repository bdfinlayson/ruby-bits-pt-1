# ruby-bits-pt-1
My notes and solutions to exercises from Code School's Ruby Bits Part 1 course @ http://rubybits.codeschool.com/

Control Expressions
-------------------
`unless` statements have the following structure

    unless your condition here

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

Conditional Assignment Operator ||=
----------------------
The conditional assignment operator gives a variable a value *if* it does not *yet* have a value, otherwise it will do nothing. Eg:

    `x ||= 1 #=> 1`

    `x ||= 99 #=> 1`

However, this rule does not hold true with booleans:

    `y ||= false     #=> false`

    `y ||= true      #=> true`

What ||= really is. It's just a shorthand for a longer expression. It works like the+=, *= and -= operators:

    `a  += b`         same as        `a = a + b`

    `a  -= b`         same as        `a = a - b`

    `a  *= b`         same as        `a = a * b`

    `a ||= b`         same as        `a = a || b`

But the || isn't an arithmetic operator, it works a bit differently:

a equals:                  (a||b) equals:

–––––––––––––––––––––––––––––––––––––––––

false                          b

nil                            b

(anything else)             a


So if the left-hand variable a is nil, or false, or not even defined, then after a ||= x it will have the value of x. Otherwise, it'll remain unchanged.

Conditional Return
------------------
Conditional return is a pretty awesome way to avoid setting the same variable in multiple times in a block of code inside a conditional expression. For example, the following bit of code can be cleaned up as such:
#### Old
    `if y.empty?`

      `  x = "Y is empty"`

    `else`

  `      x = "Y is not empty"`

    `end    `

    `puts x`

### New (with conditional return included)
    `puts x == if y.empty?`


      `  "Y is empty"`

    `else`

      `  "Y is not empty"`

    `end`

In a method, the conditional return might be written this way:

    `def myMethod`

      some code here

      `if something`

        do this

      `else`

        do this other thing

      `end`

    `end`


Short Circuit Evaluation
------------------------
Use short circuit evaluation to clean up your code. For example, this:

    def search_index(games, search_term)
    
     search_index = games.find_index(search_term)
    
    def search_index(games, search_term)`
    
     `search_index = games.find_index(search_term)`
    
     `if search_index`
    
       `search_index`
    
     `else`
    
       `"Not Found"`
    
     `end`
    
    `end`

can be shortened to this:

    `def search_index(games, search_term)`

      `search_index = games.find_index(search_term) || "Not Found"`

    `end` 
