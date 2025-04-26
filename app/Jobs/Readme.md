# Jobs

**What it is**  
Queueable jobs implementing `ShouldQueue`.

**When to use**  
- You need to defer tasks (emails, heavy imports, notifications).

**Example**
```php
namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;

class SendWelcomeEmail implements ShouldQueue
{
    use Queueable;

    public function __construct(public int $userId) {}

    public function handle() { /* … */ }
}
