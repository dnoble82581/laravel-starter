# Observers

**What it is**  
Model observers listening to lifecycle events (`creating`, `updated`, etc.).

**When to use**  
- You need to trigger logic whenever a model changes, without polluting the model class.

**Example**
```php
namespace App\Observers;

use App\Models\Order;

class OrderObserver
{
    public function created(Order $order)
    {
        // e.g. dispatch shipment job
    }
}
