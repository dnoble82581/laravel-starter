# Organisms

**What it is**  
Larger, self-contained UI sections composed of multiple molecules/atoms.

**When to use**  
- For complex widgets or sections (modals, navigation bars, side panels).

**Example Files**  
- `modal.blade.php` – header, body slot, footer actions.  
- `navbar.blade.php` – logo, menu items, user menu.

**Usage**
```blade
<x-organisms-modal title="Confirm Delete">
  Are you sure?
  <x-slot name="footer">
    <x-atoms-button wire:click="delete()">Yes, delete</x-atoms-button>
    <x-atoms-button wire:click="$emit('close')">Cancel</x-atoms-button>
  </x-slot>
</x-organisms-modal>
