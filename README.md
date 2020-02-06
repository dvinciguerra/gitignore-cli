# gitignore-cli

[![Gem Version](https://badge.fury.io/rb/gitignore-cli.svg)](https://badge.fury.io/rb/gitignore-cli)

Provides a simple CLI that uses the fantastic `gitignore.io` tool to generate `.gitignore` files for your project.

## Installation

You will need to have `ruby >= 2.3`, or running on Docker.

```ruby
    $ gem install gitignore-cli

## Usage

You can use the following commands:

#### list

The command `list` will return all available environments.

**Example:**

```shellscript
    $ gitignore list
```



#### generate

Generates the .gitignore output to stdout using all environments that you choose.

```shellscript
    $ gitignore generate ruby vim node > .gitignore
```

## Author

Daniel Vinciguerra <daniel.vinciguerra@bivee.com.br>


### Special Thanks

* [Joe Blau](https://github.com/joeblau) for [gitignore.io](https://gitignore.io).
* [Tejas Kumar](https://github.com/TejasQ) for the inspiration, [at TejasQ/add-gitignore](https://github.com/TejasQ/add-gitignore)


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
