# Layouts

**What it is**  
Page-level templates or shells defining overall structure (header, footer, nav).

**When to use**  
- For wrapping your views with a consistent top‐level layout (authenticated vs. guest).

**Example Files**  
- `app.blade.php` – main application layout with sidebar + topbar.  
- `auth.blade.php` – centered card container for login/register.

**Usage**
```blade
{{-- in your view --}}
@extends('components.layouts.app')

@section('content')
  <h1>Dashboard</h1>
@endsection
