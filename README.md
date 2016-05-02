# Psychic

Psychic gets Dynamic HTML. Dynamic HTML are created by JavaScript.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'psychic'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install psychic

## Usage

### Get Dynamic HTML in Ruby

`Psychic.get` can get Dynamic HTML. `<script>` is evaluated, then HTML is created.

```ruby
response = Psychic.get 'http://example.com/'  # GET http://example.com/
response.body

# Psychic's response. The HTML p element is dynamicaly created.
# <!doctype html>
# <html>
# <head></head>
# <body>
#   <div id="main">
#     <p>Hello, World!</p>
#   </div>
#   <script>
#     var p = document.createElement("p");
#     var helloText = document.createTextNode("Hello, World!");
#     p.appendChild(helloText);
#     var main = document.getElementById("main");
#     main.appendChild(p);
#   </script>
# </body>

# Original response.
# <!doctype html>
# <html>
# <head></head>
# <body>
#   <div id="main"></div>
#   <script>
#     var p = document.createElement("p");
#     var helloText = document.createTextNode("Hello, World!");
#     p.appendChild(helloText);
#     var main = document.getElementById("main");
#     main.appendChild(p);
#   </script>
# </body>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/south37/psychic.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

