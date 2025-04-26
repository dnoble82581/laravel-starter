# App\Http\Livewire\Shared

**What it is**  
PHP classes for reusable Livewire components shared across features.

**When to use**  
- For file‐uploaders, data tables, modals that many screens need.

**Example Files**  
- `FileUpload.php` – handles chunked uploads, progress.  
- `DataTable.php` – server‐side sorting, pagination, filtering.

**Example Class**
```php
namespace App\Http\Livewire\Shared;

use Livewire\Component;
use Livewire\WithFileUploads;

class FileUpload extends Component
{
    use WithFileUploads;
    public $file;

    public function upload()
    {
        $this->validate(['file' => 'required|file|max:1024']);
        $path = $this->file->store('uploads');
        $this->emit('uploaded', $path);
    }

    public function render() { return view('livewire.shared.file-upload'); }
}
