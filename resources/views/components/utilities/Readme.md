# Utilities

**What it is**  
Small helper components or one‐off UI bits (spinners, tooltips, skeleton loaders).

**When to use**  
- For generic helpers that don’t fit atoms/molecules but get reused across the UI.

**Example Files**  
- `spinner.blade.php` – SVG or CSS-based loading spinner.  
- `tooltip.blade.php` – wrapper that shows a small popup on hover.

**Usage**
```blade
<x-utilities-spinner size="lg" />
<x-utilities-tooltip text="This is important">
  <x-atoms-icon name="info" />
</x-utilities-tooltip>
