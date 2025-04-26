# Livewire/Dashboard

**What it is**  
Views for dashboard widgets and overview panels.

**When to use**  
- To compose cards, charts, and summary stats in Livewire.

**Example Files**  
- `profile-card.blade.php` – shows avatar, name, status.  
- `stats-overview.blade.php` – summary boxes with key metrics.

**Usage**
```blade
<livewire:dashboard.profile-card :user="$user" />
<livewire:dashboard.stats-overview :metrics="$metrics" />
