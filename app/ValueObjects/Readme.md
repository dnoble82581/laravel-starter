# ValueObjects

**What it is**  
Immutable objects representing domain concepts (money, coordinates, identifiers).

**When to use**  
- You want type safety and domain invariants enforced in small classes.

**Example**
```php
namespace App\ValueObjects;

final class GeoLocation
{
    public function __construct(public float $lat, public float $lng) {}
    public function toArray(): array { return ['lat' => $this->lat, 'lng' => $this->lng]; }
}
