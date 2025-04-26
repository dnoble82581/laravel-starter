# Traits

**What it is**  
Reusable PHP traits for shared methods/properties across classes.

**When to use**  
- You have logic shared by multiple models, services, or controllers.

**Example**
```php
namespace App\Traits;

trait HasUuid
{
    protected static function bootHasUuid()
    {
        static::creating(fn($model) => $model->uuid = Str::uuid());
    }
}
