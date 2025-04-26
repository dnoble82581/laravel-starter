# Livewire/Shared

**What it is**  
Views for Livewire components used across multiple features.

**When to use**  
- For generic widgets (file‐upload, data‐table, modal wrappers).

**Example Files**  
- `file-upload.blade.php` – dropzone + progress bar.  
- `data-table.blade.php` – sortable & searchable table layout.

**Usage**
```blade
<livewire:shared.file-upload name="avatar" />
<livewire:shared.data-table :rows="$users" />
