Splitting lists into batches
=====

Twig can split a list into subsets using the [batch](https://twig.symfony.com/doc/3.x/filters/batch.html) filter. This is useful, for example, to show a list of items in multiple columns.

From the Twig documentation:

<!-- {% raw %} -->
```twig
{% set items = ['a', 'b', 'c', 'd'] %}

<table>
    {% for row in items|batch(3, 'No item') %}
        <tr>
            {% for column in row %}
                <td>{{ column }}</td>
            {% endfor %}
        </tr>
    {% endfor %}
</table>
```
<!-- {% endraw %} -->

Will output:

```html
<table>
    <tr>
        <td>a</td>
        <td>b</td>
        <td>c</td>
    </tr>
    <tr>
        <td>d</td>
        <td>No item</td>
        <td>No item</td>
    </tr>
</table>
```
