# App\View\Components\Organisms

**What it is**  
PHP classes for your organism‐level Blade components.

**When to use**  
- When building larger wrappers that need configuration (e.g. modals, navbars).

**Example Files**  
- `Modal.php` – handles `title`, `size`, and emits close events.  
- `Navbar.php` – injects menu items based on authenticated user.

**Example Class**
```php
namespace App\View\Components\Organisms;

use Illuminate\View\Component;

class Modal extends Component
{
    public function __construct(public string $title, public string $size = 'md') {}
    public function render() { return view('components.organisms.modal'); }
}
