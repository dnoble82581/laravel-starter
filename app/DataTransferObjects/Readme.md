# DataTransferObjects

**What it is**  
Immutable, typed objects for passing data between layers (DTOs).

**When to use**  
- You want to validate/transform input once and keep method signatures explicit.  
- You rely on value objects over arrays.

**Example**
```php
namespace App\DataTransferObjects;

use Spatie\DataTransferObject\DataTransferObject;

class CreatePostData extends DataTransferObject
{
    public string $title;
    public string $body;
    public ?int $author_id;
}
