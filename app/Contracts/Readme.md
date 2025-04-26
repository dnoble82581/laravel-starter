# Contracts

**What it is**  
Interfaces for Services, Repositories, Gateways, etc., to decouple implementations from usage.

**When to use**  
- You want to bind implementations in a service provider without hard dependencies.  
- You need clear contracts for teams or modules.

**Example**
```php
namespace App\Contracts;

interface PaymentGatewayInterface
{
    public function charge(float $amount, string $currency): bool;
}
