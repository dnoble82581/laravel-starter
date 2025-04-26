# App\Http\Livewire\Auth

**What it is**  
PHP classes for your Livewire authentication components.

**When to use**  
- For interactive auth flows needing state, validation & lifecycle hooks.

**Example Files**  
- `Login.php` – handles credentials, validation, redirect on success.  
- `Register.php` – registers user, triggers `Registered` event.

**Example Class**
```php
namespace App\Http\Livewire\Auth;

use Livewire\Component;

class Login extends Component
{
    public string $email = '';
    public string $password = '';

    public function login()
    {
        $this->validate([ 'email' => 'required|email', 'password' => 'required' ]);
        auth()->attempt(['email' => $this->email, 'password' => $this->password]);
        return redirect()->intended();
    }

    public function render() { return view('livewire.auth.login'); }
}
