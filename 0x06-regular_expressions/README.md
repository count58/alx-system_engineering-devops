0x06. Regular expression

Regular expressions, often abbreviated as "regex" or "regexp", are sequences of characters that define a search pattern. They're a powerful tool used in many programming languages and utilities for string matching and manipulation.

Here are some basics:

- `.` : Matches any single character (except for a newline character).
- `*` : Matches 0 or more repetitions of the preceding character or group.
- `+` : Matches 1 or more repetitions of the preceding character or group.
- `?` : Matches 0 or 1 repetition of the preceding character or group.
- `^` : Matches the start of a string.
- `$` : Matches the end of a string.
- `\d` : Matches any decimal digit. Equivalent to `[0-9]`.
- `\D` : Matches any non-digit character.
- `\w` : Matches any alphanumeric character or underscore. Equivalent to `[a-zA-Z0-9_]`.
- `\W` : Matches any non-alphanumeric character.
- `\s` : Matches any whitespace character (spaces, tabs, line breaks).
- `\S` : Matches any non-whitespace character.
- `[...]` : Matches any one of the characters inside the square brackets.
- `[^...]` : Matches any character NOT inside the square brackets.

Groups and Lookaround:

- `( ... )` : Groups several characters as a single unit. Can be used to capture substrings.
- `(?i)` : Case-insensitive mode.
- `(?= ... )` : Positive lookahead.
- `(?! ... )` : Negative lookahead.
- `(?<= ... )` : Positive lookbehind.
- `(?<! ... )` : Negative lookbehind.

Quantifiers:

- `{n}` : Matches exactly n occurrences of the preceding character or group.
- `{n,}` : Matches n or more occurrences.
- `{n,m}` : Matches between n and m occurrences.

Examples:

1. `^abc` : Matches any string that starts with "abc".
2. `abc$` : Matches any string that ends with "abc".
3. `^abc$` : Matches the string "abc" exactly.
4. `a.b` : Matches any string containing "a", any character, then "b" (like "acb", "a7b", "a*b").
5. `\d{3}-\d{2}-\d{4}` : Matches US Social Security numbers like "123-45-6789".

Regular expressions are a deep topic with a lot to explore. Many programming languages have their own nuances and specific implementations, but the core concepts remain the same. If you have a specific question about regular expressions or need help crafting one for a specific purpose, feel free to ask!


Background Context
For this project, you have to build your regular expression using Oniguruma, a regular expression library that which is used by Ruby by default. Note that other regular expression libraries sometimes have different properties.

Because the focus of this exercise is to play with regular expressions (regex), here is the Ruby code that you should use, just replace the regexp part, meaning the code in between the //:

sylvain@ubuntu$ cat example.rb
#!/usr/bin/env ruby
puts ARGV[0].scan(/127.0.0.[0-9]/).join
sylvain@ubuntu$
sylvain@ubuntu$ ./example.rb 127.0.0.2
127.0.0.2
sylvain@ubuntu$ ./example.rb 127.0.0.1
127.0.0.1
sylvain@ubuntu$ ./example.rb 127.0.0.a
Resources
Read or watch:

Regular expressions - basics
Regular expressions - advanced
Rubular is your best friend
Use a regular expression against a problem: now you have 2 problems
Learn Regular Expressions with simple, interactive exercises
Requirements
General
Allowed editors: vi, vim, emacs
All your files will be interpreted on Ubuntu 20.04 LTS
All your files should end with a new line
A README.md file, at the root of the folder of the project, is mandatory
All your Bash script files must be executable
The first line of all your Bash scripts should be exactly #!/usr/bin/env ruby
All your regex must be built for the Oniguruma library
