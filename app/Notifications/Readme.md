# Notifications

**What it is**  
Notification classes (`Illuminate\Notifications\Notification`) for mail, Slack, SMS, etc.

**When to use**  
- You need to push messages across multiple channels.

**Example**
```php
namespace App\Notifications;

use Illuminate\Notifications\Notification;
use Illuminate\Notifications\Messages\MailMessage;

class PasswordReset extends Notification
{
    public function toMail($notifiable)
    {
        return (new MailMessage)
            ->subject('Reset your password')
            ->line('Click the button to reset.')
            ->action('Reset Password', url('/reset'));
    }
}
