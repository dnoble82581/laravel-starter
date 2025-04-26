# View/Components

**What it is**  
Blade (or Livewire) components for reusable UI pieces.

**When to use**  
- You need self-contained view logic & templates (e.g. alert banners, data tables).

**Example**
```php
namespace App\View\Components;

use Illuminate\View\Component;

class Alert extends Component
{
    public function __construct(public string $type = 'info') {}
    public function render() { return view('components.alert'); }
}
