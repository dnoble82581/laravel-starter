# App\View\Components\Layouts

**What it is**  
PHP classes for layout‐level Blade components.

**When to use**  
- When your layout needs to accept dynamic props (e.g. page title, sidebar items).

**Example Files**  
- `AppLayout.php` – defines main wrapper with a `$header` slot.  
- `AuthLayout.php` – simple centered container for unauthenticated pages.

**Example Class**
```php
namespace App\View\Components\Layouts;

use Illuminate\View\Component;

class AppLayout extends Component
{
    public function __construct(public string $header = '') {}
    public function render() { return view('components.layouts.app'); }
}
