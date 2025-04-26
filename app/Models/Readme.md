# Models

**What it is**  
Eloquent model classes representing database tables.

**When to use**  
- Any data that maps to your database schema.

**Example**
```php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $fillable = ['title', 'body', 'author_id'];
}
