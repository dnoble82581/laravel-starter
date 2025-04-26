# Rules

**What it is**  
Custom validation rule classes (`Illuminate\Contracts\Validation\Rule`).

**When to use**  
- You need reusable, object-oriented validation checks.

**Example**
```php
namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class ValidUSPhone implements Rule
{
    public function passes($attribute, $value): bool { /* … */ }
    public function message(): string { return 'The :attribute is not a valid US phone.'; }
}
