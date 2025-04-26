# Events

**What it is**  
Domain-level or system events (classes implementing `Illuminate\Foundation\Events\Dispatchable`).

**When to use**  
- You want to decouple side-effects (e.g. sending mail) from the triggering logic.  
- You follow event-driven design.

**Example**
```php
namespace App\Events;

use App\Models\User;
use Illuminate\Foundation\Events\Dispatchable;

class UserRegistered
{
    use Dispatchable;

    public function __construct(public User $user) {}
}
