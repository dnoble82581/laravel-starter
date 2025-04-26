# Http/Resources

**What it is**  
API resource classes for transforming models into JSON (`JsonResource`).

**When to use**  
- You need consistent response shapes and conditional attributes.

**Example**
```php
namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    public function toArray($request): array
    {
        return [
            'id'    => $this->id,
            'email' => $this->email,
        ];
    }
}
