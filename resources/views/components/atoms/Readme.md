# Atoms

**What it is**  
The smallest, most basic UI elements—single-purpose, highly reusable pieces.

**When to use**
- For standalone controls or indicators (buttons, icons, badges, form inputs).
- When you need a building block that will be composed into larger components.

**Example Files**
- `button.blade.php` – `<button {{ $attributes->merge(['class' => 'btn']) }}>{{ $slot }}</button>`
- `icon.blade.php` – `<svg>…</svg>` with dynamic `stroke` or `fill` attributes.

**Usage**
```blade
<x-atoms-button type="submit">Save</x-atoms-button>
<x-atoms-icon name="check" class="w-4 h-4" />
