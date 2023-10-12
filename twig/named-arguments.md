Using Named Arguments In Twig
=====

You can use named arguments just like in PHP 8. This can help increase the readability of the template code, or allow you to skip arguments with default values defined.

This only works with filters, functions and tests:

<!-- {% raw %} -->
```twig
{{ your_function(arg1=value1, arg2=value2) }}
```
<!-- {% endraw %} -->

Is the same as:

<!-- {% raw %} -->
```twig
{{ your_function(arg2=value2, arg1=value1) }}
```
<!-- {% endraw %} -->

And if an argument has a default value defined, it can be skipped completely:

<!-- {% raw %} -->
```twig
{{ your_function(arg2=value2) }}
```
<!-- {% endraw %} -->
