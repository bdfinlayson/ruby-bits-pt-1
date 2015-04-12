# ruby-bits-pt-1
My notes and solutions to exercises from Code School's Ruby Bits Part 1 course @ http://rubybits.codeschool.com/

Control Expressions
-------------------
unless statements have the following structure

    unless your condition here

    run some code here

    end

You can also make single line unless statements with this structure

run some code here unless your condition here

About Nil
-----------
if/else statements by default interpret nil as false

Short-Circuit &&
-----------------
Uses the && condition to short-circuit a controll expression with two or more conditional arguments. Eg:
    puts "Luke, I am your father" if son_arr.length > 0 && son_arr.include?("Luke")

Conditional Assignment Operator ||=
----------------------
The conditional assignment operator gives a variable a value *if* it does not *yet* have a value, otherwise it will do nothing. Eg:

    x ||= 1 #=> 1

    x ||= 99 #=> 1

However, this rule does not hold true with booleans:

    y ||= false     #=> false

    y ||= true      #=> true

What ||= really is. It's just a shorthand for a longer expression. It works like the+=, *= and -= operators:

    a  += b         same as        a = a + b

    a  -= b         same as        a = a - b

    a  *= b         same as        a = a * b

    a ||= b         same as        a = a || b

But the || isn't an arithmetic operator, it works a bit differently:

    a equals:                  (a||b) equals:

    –––––––––––––––––––––––––––––––––––––––––

    false                          b

    nil                            b

    (anything else)                a


So if the left-hand variable a is nil, or false, or not even defined, then after a ||= x it will have the value of x. Otherwise, it'll remain unchanged.

Conditional Return
------------------
Conditional return is a pretty awesome way to avoid setting the same variable in multiple times in a block of code inside a conditional expression. For example, the following bit of code can be cleaned up as such:
#### Old
    if y.empty?

        x = "Y is empty"

    else

        x = "Y is not empty"

    end

    puts x

### New (with conditional return included)
    puts x == if y.empty?


        "Y is empty"

    else

        "Y is not empty"

    end

In a method, the conditional return might be written this way:

    def myMethod

      some code here

      if something

        do this

      else

        do this other thing

      end

    end


Short Circuit Evaluation
------------------------
Use short circuit evaluation to clean up your code. For example, this:

    def search_index(games, search_term)

     search_index = games.find_index(search_term)

    def search_index(games, search_term)

     search_index = games.find_index(search_term)

     if search_index

       search_index

     else

       "Not Found"

     end

    end

can be shortened to this:

    def search_index(games, search_term)

      search_index = games.find_index(search_term) || "Not Found"

    end


Optional Arguments
------------------
Arguments can be made optional (you don't have to pass them in if you don't want to) by setting them with default values. For example, change the `year` and `system` below from this:

    def new_game(name, year, system)
      {
        name: name,
        year: year,
        system: system
      }
    end
    game = new_game("Street Figher II", nil, nil)

To this:

    def new_game(name, year=nil, system=nil)
      {
        name: name,
        year: year,
        system: system
      }
    end
    game = new_game("Street Figher II")

Setting the optional arguments to `nil` is not the best way to do this, so try using a Hash instead:

    def new_game(name, options={})
      {
        name: name,
        year: options[:year],
        system: options[:system]
      }
    end
    game = new_game("Street Figher II", year: 1992, system: "Playstation")

Note the array syntax in the code block that is used to access the `option` keys. Because you're using the Hash, the optional arguments can be passed in in any order (order does not matter).

Raise Exception
----------------
You can raise exceptions in your methods if certain conditions are not met. For example, if a name is `nil`, you may raise an exception. You can even create a custom exception. First, create a custom exception, like so:

    class InvalidGameError < StandardError; end

Then add a `raise` exception to your method:

    def new_game(name, options={})
      raise InvalidGameError if name.nil?
    {
      name: name,
      year: options[:year],
      system: options[:system]
    }
    end

Splat Arguments
----------------
Splat arguments are identified by the `*` symbol. They tell ruby to expect an array of items. Using a splat argument can make your code a bit more consise. One of the more noticeable aspects of the splat argument is that you don't actually have to pass an array in as an argument: ruby is smart enough to convert the items into an array once they're passed in. The splat argument changes this code from this:

    def describe_favorites(games)
      for game in games
        puts "Favorite Game: #{game}"
      end
    end
    describe_favorites(['Mario', 'Contra', 'Metroid']) #notice how there is an array here?

To this:

    def describe_favorites(*games)
      for game in games
        puts "Favorite Game: #{game}"
      end
    end
    describe_favorites('Mario', 'Contra', 'Metroid') #notice how there is no explicit array here?

Initializing Classes
-------------------
Classes can be initialized with multiple arguments, even optional ones, for example:

    class Game
      def initialize(name, options={})
        @name = name
        @year = options[:year]
        @system = options[:system]
      end
    end


attr_accessor and attr_reader
----------------------------
attr_accessor allows you to `get` data from a class instance without having to define `set` and `get` methods. The `attr_accessor` does that for you automatically. For example, this:

    class Game
      def initialize(name)
        @name = name
      end
      def name
       @name = name
      end
    end

Is shortened to this:

    class Game
      attr_accessor :name
      def initialize(name)
        @name = name
      end
    end

The `attr_reader` is similar to `attr_accessor` in that it ensures you can access class instance data later, but `attr_reader` prevents you from setting the class instance data from outside the object by creating only a `get` and not a `set` method:

    class Game
      attr_accessor :name, :year, :system
      attr_reader :created_at

      def initialize(name, options={})
        @name = name
        @year = options[:year]
        @system = options[:system]
        @created_at = Time.now #notice how created_at can only be set when the class is instantiated?
      end
    end


