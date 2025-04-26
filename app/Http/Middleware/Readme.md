# Http/Middleware

**What it is**  
HTTP middleware classes (`Illuminate\Contracts\Http\Middleware`).

**When to use**  
- You need request-level checks (authentication, rate limiting, logging).

**Example**
```php
namespace App\Http\Middleware;

use Closure;

class EnsureUserIsActive
{
    public function handle($request, Closure $next)
    {
        if (! $request->user()->is_active) {
            abort(403);
        }
        return $next($request);
    }
}
