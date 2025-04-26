# App\View\Components\Atoms

**What it is**  
PHP classes for your atom‐level Blade components.

**When to use**  
- When your atom needs logic (attributes processing, defaults).

**Example Files**  
- `Button.php` – adds default classes & type enforcement.  
- `Icon.php` – resolves SVG paths based on a `name` prop.

**Example Class**
```php
namespace App\View\Components\Atoms;

use Illuminate\View\Component;

class Button extends Component
{
    public function __construct(public string $type = 'button') {}
    public function render() { return view('components.atoms.button'); }
}
