Variable Interpolation In Twig
=====

The Twig documentation shows that you can concatenate strings using the tilde character:

<!-- {% raw %} -->
```twig
{{ "Hello " ~ name ~ " and good morning" }}
```
<!-- {% endraw %} -->

However, there is a lesser known syntax, whereby you can directly interpolate your variables:

<!-- {% raw %} -->
```twig
{{ "Hello #{name} and good morning" }}
```
<!-- {% endraw %} -->

The string must use double-quotes, not single quotes, just like in PHP itself.
