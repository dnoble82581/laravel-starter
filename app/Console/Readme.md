# Console

**What it is**  
Custom Artisan commands (classes extending `Illuminate\Console\Command`).

**When to use**  
- You need scheduled tasks or one-off CLI scripts (e.g. importing data, clearing caches).

**Example**
```php
namespace App\Console\Commands;

use Illuminate\Console\Command;

class ImportLeadsCommand extends Command
{
    protected $signature = 'leads:import {source}';
    protected $description = 'Import leads from external API';

    public function handle() { /* … */ }
}
