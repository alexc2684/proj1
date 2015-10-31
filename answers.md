# Q0: Why is this error being thrown?
There is no variable "Pokemon" in the database yet.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

# Question 2a: What does the following line in the help text do? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It captures the pokemon with that id in @pokemon and then passes it as a url parameter.

# Question 3: What would you name your own Pokemon?
MaChanp

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed the trainer_path with the trainer_id of the pokemon. Ruby calls the default format for url then applies the id url to that.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It shows that the pokemon name is already used.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
