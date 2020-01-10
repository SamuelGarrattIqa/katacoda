Ruby provides a lot of flexibility but is also easy to pick up bad practices, especially when learning.
One tool that can help with that is `rubocop`. It performs static analysis on code according to a set of [cops](https://rubocop.readthedocs.io/en/latest/cops/)

You already installed the `rubocop` gem in the previous step so run `rubocop`{{execute}} to run checks on all
ruby files in your current directory. 

It will show a list of offenses. For simple rules, rubocop can automatically correct them for you with the ` --auto-correct` or `-a`. 

Run `rubocop -a`{{execute}} to fix auto-correctable offenses automatically. 

