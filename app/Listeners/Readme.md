# Listeners

**What it is**  
Event listeners or subscribers reacting to events.

**When to use**  
- You want to separate side-effects from event dispatch logic.

**Example**
```php
namespace App\Listeners;

use App\Events\UserRegistered;

class SendWelcomeNotification
{
    public function handle(UserRegistered $event)
    {
        $event->user->notify(new WelcomeNotification());
    }
}
