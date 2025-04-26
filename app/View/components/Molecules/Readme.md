# App\View\Components\Molecules

**What it is**  
PHP classes for your molecule‐level Blade components.

**When to use**  
- When grouping atoms that need shared logic or defaults.

**Example Files**  
- `FormField.php` – merges label, input & error slots.  
- `CardHeader.php` – accepts `title` prop and optional `actions` slot.

**Example Class**
```php
namespace App\View\Components\Molecules;

use Illuminate\View\Component;

class FormField extends Component
{
    public function __construct(public string $name, public string $label) {}
    public function render() { return view('components.molecules.form-field'); }
}
