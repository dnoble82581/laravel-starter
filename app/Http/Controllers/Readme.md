# Http/Controllers

**What it is**  
Controller classes handling web or API requests.

**When to use**  
- You need to group request handling, middleware assignment, and response logic.

**Example**
```php
namespace App\Http\Controllers;

use App\Services\RegisterUserService;
use App\Http\Requests\RegisterRequest;

class AuthController extends Controller
{
    public function register(RegisterRequest $request, RegisterUserService $service)
    {
        $user = $service->execute($request->validated());
        return response()->json($user, 201);
    }
}
