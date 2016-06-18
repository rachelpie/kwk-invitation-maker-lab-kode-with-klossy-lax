

## Met Gala Invitation Maker



<img src="https://s3.amazonaws.com/upperline/curriculum-assets/metGala.png" align="left" hspace="10">

<br>

The Met Gala is rapidly approaching and that means invitations have to go out as soon as possible! Celebrities are eagerly waiting to see if they'll get the invite - who will be on the guest list for this year's hottest event?

Currently, each invitation is being painstakingly created by hand. How can you automate this task? There are a few ways we can do this...

#### gsub
The `.gsub` method is a handy Ruby tool that allows you to `globally substitute` a word or letter for another word or letter within a string. That means *every time the word or letter appears in the string, it will be substituted out.* Let's take a look at how that works.

We have a fact about Karlie assigned to a variable `wrong_fact`:

```ruby
wrong_fact = "Karlie was born in Kansas City, Missouri"
```
But wait, Karlie is from St. Louis, not Kansas City! Let's swap out the words "Kansas City" for "St. Louis" using the gsub method. `gsub` takes two `parameters`. *The first one is the word you want to replace, and the second one is the word you want to replace it with*:

```ruby
right_fact = wrong_fact.gsub("Kansas City", "St. Louis")

=>  "Karlie was born in St. Louis, Missouri"
```

The `return value` (aka what this action produces after it's called) will be "Karlie was born in St. Louis, Missouri" Then, if we type `right_fact` into our console, we'll see the fact correctly printed.

### Chaining gsubs

What if you have a sentence that you want to substitute more than one word in? We can do that by calling `gsub` more than once on the same line, through a process called `method chaining` in which you *call one method right after another*. Take a look:

```ruby
wrong_fact = "Karlie has 5 brothers."
true_fact = wrong_fact.gsub("brothers", "sisters").gsub("5", "3")

=> "Karlie has 3 siblings"
```
### String Interpolation

There's another way to do this substitution called `string interpolation`. `String interpolation` allows us to *set a placeholder inside a string where Ruby code can be run*. We wrap whatever we want to interpolate #{inside this notation}. Oftentimes, we'll be interpolating variable names within strings.

Let's say you have this string about Karlie's recent TV appearance:

"In May, Karlie was on #{name_of_show} with #{show_host}!"

Then you make `name_of_show` a variable, and assign it to the string to be put in:

```ruby
name_of_show = "The Tonight Show"
show_host = "Jimmy Fallon"
puts "In May, Karlie was on #{name_of_show} with #{show_host}!"

=> "In May, Karlie was on The Tonight Show with Jimmy Fallon!"

```

Note that here we're declaring the variables `name_of_show` and `show_host` **before** we call `puts`. We need to do it in this order because the computer reads our program sequentially. When our computer gets to `#{name_of_show}`, it won't know what that is if `name_of_show` isn't declared yet.

Some Rubyists write this another way (we call this string concatenation):

```ruby
name_of_show = "The Tonight Show"
show_host = "Jimmy Fallon"

puts "In May, Karlie was on " + name_of_show + " with " + show_host +"!"
```
But personally, we think the first way looks nicer and is easier for your fellow programmers to read.

### Challenge 1 (using gsub):
Open the file called `invitation.rb` in your text editor.

**NOTE:** This lab does not have tests, so the learn command won't work. Instead, just write your code and test it out manually by running `ruby invitation.rb` in the command line. If the output looks like it's intended to, you're good to go and can use `learn submit` to submit your work!

Copy the variable definition below, which is the  invitation that was used for the Museum of Modern Art's fundraiser last year, and paste it into `invitation.rb`. 

```ruby
gala_invitation = "The Museum of Modern Art invites you to their annual gala on Sunday the 22nd of May 2015. Festivities will be held at the MoMA at 11 W 53rd St, New York, NY 10019
. See you then!"
```

The Met plans to use this invitation but update it to the correct data. Instead of the Museum of Modern art, the gala takes place at **The Metropolitan Museum**. The gala will take place on Saturday May 13th, 2017. In `invitation.rb` use `.gsub`s to customize the original invitation. Remember to use `puts` to output your solution to the screen.

### Challenge 2 (using string interpolation):

<img src="https://s3.amazonaws.com/upperline/curriculum-assets/invitations.png" width="150" align="left" hspace="10">

Next year, and every year after that, we want to update our invitation in a very efficient manner. Instead of using gsub, let's use string interpolation to change the content of the invitation. In your text editor, open the file called `metgala_invitation.rb`. You'll code your solution in that file.

<br> 

```ruby
gala_invitation = "The Museum of Modern Art invites you to their annual gala on Sunday the 22nd of May 2015. Festivities will be held at the MoMA at 11 W 53rd St, New York, NY 10019. See you then!"
```

Now that you know what string interpolation is, assign the following content from the invitation to variables in `metgala_invitation.rb`:

1. the day, 'Sunday'
2. the date, '22nd'
3. the year, '2015'

This may seem like it's added work, to separate our content into these 3 variables then interpolate them using #{}, but in a short moment you will see how this extra work in the beginning will save us time updating our invitation for future galas.  

Now that we have the parts of the invitation that change seperated into variables, it's time to change the value of these variables to reflect next year's info. The 2017 Met Gala is being planned for May 26th, 2017 (Friday).

Use string interpolation and the variables you just created to customize the old invitation for the new 2017 invitation. As in Challenge 1, you'll want to use puts to print out your solution to the screen.

### S-T-R-E-T-C-H Challenges!
If you've made this far, here are some additional challenges for you to complete:

1.  What if the Met wants the day of the week to be IN ALL CAPS in order to emphasize that in 2017 the gala will be held on FRIDAY instead of Saturday.  How can you do this? (Avoid just typing FRIDAY in replace of Friday, use a built in Ruby Method.)
2.  Now that the day is in all caps, the Met decides they don't like it and only want you to capitalize the first letter.  How can you do this?
3. Using the `gets` command, create an interactive invitation maker that prompts the user for the information about the event that they are putting on and then returns the text of the invitation.
