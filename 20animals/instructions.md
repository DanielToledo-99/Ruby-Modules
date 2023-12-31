# You are an Animal

- When you are created, you could be given a `species` and a `name` but if no
  info is given your name and species are `"Unknown"`
- When you are asked for `species` you will return your specie
- When you are asked for `name` you will return your name
- When you are called using `puts` you will return "My name is [name] and I'm a
  [specie]"

```ruby
animal = Animal.new
puts animal
# => "My name is Unknown and I'm a Unknown"
```

# You are a Horse

- You are a special kind of animal. When created you only are given a `name`.
  Your species by default is `"caballus"`
- When you are asked to `run` you will be given a `time` and you will `puts` "I
  have run [distance] kilometers". Distance is the result of time multiplied by
  the average velocity of your species, but you don't know which is that
  velocity (more of this later)

```ruby
horse = Horse.new
horse.run(3)
# => "I have run 120 kilometers"
```

# You are a Tiger

- You are a special kind of animal. When created you only are given a `name`.
  Your species by default is `"tigris"`
- When you are asked to `run` you will be given a `time` and you will `puts` "I
  have run [distance] kilometers". Distance is the result of time multiplied by
  the average velocity of your species, but you don't know which is that
  velocity (more of this later)

```ruby
tiger = Tiger.new
tiger.run(3)
# => "I have run 105 kilometers"
```

# The Runner Module

- The Runner module store the average velocity of each species in a constant
  variable. The average velocity of "caballus" is 40 and "tigris" is 35.
- The Runner module has the method `run` that receives a `time`. This method
  finds the average velocity of the Animal who is calling the method and `puts`
  "I have run [distance] kilometers" where distance is `time` * `velocity`
