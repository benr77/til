Auto-Register Custom Doctrine DBAL types
=====

If your third-party Symfony bundle provides a custom Doctrine DBAL type, it can be auto-configured instead 
of asking the user to manually add it to their `doctrine.yaml`.

Include this in your bundle class and it will automatically register the custom DBAL type.

```php
<?php
declare(strict_types=1);

namespace Acme\DemoBundle;

use Acme\DemoBundle\Doctrine\DBAL\Types\MyCustomType;
use Doctrine\DBAL\Types\Type;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Component\HttpKernel\Bundle\Bundle;

class AcmeDemoBundle extends Bundle
{
    public function boot(): void
    {
        if (!Type::hasType('my_type')) {
            Type::addType('my_type', MyCustomType::class);
        }

        /** @var ManagerRegistry $registry */
        $registry = $this->container->get('doctrine');

        foreach ($registry->getConnections() as $connection) {
            $connection->getDatabasePlatform()->registerDoctrineTypeMapping('my_type', 'my_type');
        }
    }
}
```
