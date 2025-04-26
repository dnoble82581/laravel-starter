# Providers

**What it is**  
Service provider classes bootstrapping container bindings, events, middleware, etc.

**When to use**  
- You need to register or configure packages, bind interfaces to implementations.

**Example**
```php
namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Contracts\UserRepositoryInterface;
use App\Repositories\DbUserRepository;

class AppServiceProvider extends ServiceProvider
{
    public function register()
    {
        $this->app->bind(UserRepositoryInterface::class, DbUserRepository::class);
    }
}
