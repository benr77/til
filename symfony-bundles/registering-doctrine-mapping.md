Registering Doctrine mappings from your bundle
=====

If your bundle contains additional Doctrine mapping information, such as a custom entity, it can be auto-registered by the bundle configuration.

```php
<?php
declare(strict_types=1);

namespace Acme\DemoBundle;

use Doctrine\Bundle\DoctrineBundle\DependencyInjection\Compiler\DoctrineOrmMappingsPass;
use Symfony\Component\DependencyInjection\ContainerBuilder;
use Symfony\Component\HttpKernel\Bundle\Bundle;

class AcmeDemoBundle extends Bundle
{
    public function build(ContainerBuilder $container)
    {
        parent::build($container);

        $mappingFileLocation = '/Doctrine/Mapping';
        
        $modelDir = realpath(__DIR__ . $mappingFileLocation);
        $mappings = [
            $modelDir => 'Demo',
        ];

        if (class_exists(DoctrineOrmMappingsPass::class)) {
            $container->addCompilerPass(
                DoctrineOrmMappingsPass::createXmlMappingDriver(
                    $mappings,
                    ['doctrine.orm.entity_manager'],
                    false
                )
            );
        }
    }
}
```
