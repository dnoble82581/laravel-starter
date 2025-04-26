# Policies

**What it is**  
Authorization policy classes (`Illuminate\Auth\Access\HandlesAuthorization`).

**When to use**  
- You want method-based authorization (e.g. `update(User $user, Post $post)`).

**Example**
```php
namespace App\Policies;

use App\Models\Post;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class PostPolicy
{
    use HandlesAuthorization;

    public function update(User $user, Post $post): bool
    {
        return $user->id === $post->author_id;
    }
}
