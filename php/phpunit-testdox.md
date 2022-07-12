PHPUnit Testdox Output
-----

When running PHPUnit tests, add the `--testdox` option to create a more verbose output, with the name/description of each test on one line.

The advantage of this is that you can create readable documentation from your tests, which by definition will always be up to date with the latest code changes, unlike many other forms of documentation.

If doing TDD, this output also forms a specification of the software, and also a todo list of functionality not yet implemented.

```bash
Person Name (App\Domain\Model\PersonName)
 ✔ Short first name is rejected
 ✔ Short last name is rejected
 ✔ Long first name is rejected
 ✔ Long last name is rejected
 ✔ Well formed name is accepted

```

### Using the `@testdox` annotation

If you use the `@dataProvider` annotation to parameterize your test methods, you can also get these parameters into the testdox output, by using the `@testdox` annotation.

```php
/**
 * @dataProvider timeSlotDataProvider
 * @testdox Slot with start at $startTime is $expectedResult
 */
public function test_marking_slots_as_invalid(string $startTime, string $expectedResult): void
```

The above would lead to something like the following in the PHPUnit output:

```bash
SlotChecker (App\Domain\Service\SlotChecker)
 ✔ Slot with start at 12:30 is rejected
 ✔ Slot with start at 13:30 is rejected
 ✔ Slot with start at 14:30 is rejected
 ✔ Slot with start at 15:30 is accepted
 ✔ Slot with start at 16:30 is accepted

```
