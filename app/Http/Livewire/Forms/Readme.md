# App\Http\Livewire\Forms

**What it is**  
PHP classes for complex or multi‐step Livewire forms.

**When to use**  
- For wizards, dynamic lists, repeating fields, file uploads.

**Example Files**  
- `Wizard.php` – tracks current step, validation per step.  
- `AddressForm.php` – adds/removes address items dynamically.

**Example Class**
```php
namespace App\Http\Livewire\Forms;

use Livewire\Component;

class Wizard extends Component
{
    public array $steps;
    public int $currentStep = 0;

    public function next() { $this->currentStep++; }
    public function render() { return view('livewire.forms.wizard'); }
}
