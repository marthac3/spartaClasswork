# Variables Lab

## Timings

45 - 90 minutes

## Tasks

Create several different variables in the person.rb file that match the criteria we have will set for you.

We have written some code that will tell you what we expect from your variables and test them for you. You can easily see if you have them right by running the code.

## Setup 

From the starter code directory run the following command to install everything you need to run the tests:

```bash
gem install rspec
```

Now you can run the tests like this:

```bash
rspec spec

# output
rspec ./spec/person_spec.rb:11 # Person name should be a string
rspec ./spec/person_spec.rb:17 # Person age should be a number
rspec ./spec/person_spec.rb:24 # Person children should be an array
rspec ./spec/person_spec.rb:28 # Person children should have 4 children
rspec ./spec/person_spec.rb:35 # Person address should be a hash
...
```

Every time you create a variable properly the test will go from fail to pass.

## Bonus task

Make the password test pass. It's tricky!