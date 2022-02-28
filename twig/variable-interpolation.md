Variable Interpolation
=====

The Twig documentation shows that you can concatenate strings using the tilde character:

```twig
{{ "Hello " ~ name ~ " and good morning" }}
```

However, there is a lesser known syntax, whereby you can directly interpolate your variables:

```twig
{{ "Hello #{name} and good morning" }}
```

The string must use double-quotes, not single quotes, just like in PHP itself.
