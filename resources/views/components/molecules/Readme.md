# Molecules

**What it is**  
Combinations of atoms into slightly more complex, reusable chunks.

**When to use**  
- To group related atoms (form fields with label + input, button groups, card headers).

**Example Files**  
- `form-field.blade.php` – wraps a label, input, and error message.  
- `card-header.blade.php` – title + optional actions slot.

**Usage**
```blade
<x-molecules-form-field name="email" label="Email Address">
  <x-atoms-input type="email" name="email" />
</x-molecules-form-field>

<x-molecules-card-header title="Profile">
  <x-atoms-button>Edit</x-atoms-button>
</x-molecules-card-header>
