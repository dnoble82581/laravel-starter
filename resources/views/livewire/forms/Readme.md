# Livewire/Forms

**What it is**  
Views for complex or multi‐step Livewire forms.

**When to use**  
- For wizards, dynamic field groups, file uploads, etc.

**Example Files**  
- `wizard-step-one.blade.php` – initial step with “Next” button.  
- `address-form.blade.php` – dynamically adds/removes address blocks.

**Usage**
```blade
<livewire:forms.wizard :steps="['Personal', 'Address', 'Review']" />
