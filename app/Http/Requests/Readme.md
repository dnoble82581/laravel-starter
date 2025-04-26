# Http/Requests

**What it is**  
Form-request validation classes extending `Illuminate\Foundation\Http\FormRequest`.

**When to use**  
- You want centralized validation and authorization per request.

**Example**
```php
namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RegisterRequest extends FormRequest
{
    public function rules(): array
    {
        return [
            'email' => 'required|email|unique:users',
            'password' => 'required|min:8',
        ];
    }
}
