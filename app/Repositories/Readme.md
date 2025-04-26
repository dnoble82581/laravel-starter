# Repositories

**What it is**  
Data access layer. Defines methods for retrieving/persisting domain models without tying code to Eloquent or other ORMs.

**When to use**  
- You want to swap out underlying persistence (Eloquent, raw SQL, external service).  
- You need testable, interface-driven data access.

**Example**
```php
namespace App\Repositories;

use App\Models\User;

interface UserRepositoryInterface
{
    public function findByEmail(string $email): ?User;
    public function create(array $data): User;
}
