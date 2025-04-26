# Queries

**What it is**  
Query handler classes (for a CQRS-style read model).

**When to use**  
- You need complex read logic encapsulated separately from repositories or services.

**Example**
```php
namespace App\Queries;

class GetRecentPosts
{
    public function execute(int $limit = 10)
    {
        return Post::latest()->take($limit)->get();
    }
}
