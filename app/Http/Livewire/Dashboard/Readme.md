# App\Http\Livewire\Dashboard

**What it is**  
PHP classes for your Livewire dashboard widgets.

**When to use**  
- For data‐driven cards, charts, or interactive overviews.

**Example Files**  
- `ProfileCard.php` – loads user data, exposes computed properties.  
- `StatsOverview.php` – queries metrics and updates in real time.

**Example Class**
```php
namespace App\Http\Livewire\Dashboard;

use Livewire\Component;

class ProfileCard extends Component
{
    public $user;

    public function mount($user) { $this->user = $user; }

    public function render() { return view('livewire.dashboard.profile-card'); }
}
