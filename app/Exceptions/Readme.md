# Exceptions

**What it is**  
Custom exception classes for domain errors or HTTP error mapping.

**When to use**  
- You need to throw and catch meaningful exceptions (`DomainException`, `InvalidOrderException`).  
- You map exceptions to responses in your exception handler.

**Example**
```php
namespace App\Exceptions;

use RuntimeException;

class PaymentFailedException extends RuntimeException
{
    public function report() { /* e.g. notify Sentry */ }
}
