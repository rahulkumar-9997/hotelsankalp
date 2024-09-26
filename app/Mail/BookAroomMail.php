<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class BookAroomMail extends Mailable
{
    use Queueable, SerializesModels;

    public $data;

    public function __construct($data)
    {
        $this->data = $data;
    }

    public function build()
    {
        return $this->view('frontend.mail.book-a-room-mail')
        ->from('sankalpbanaras@gmail.com', 'Hotelsankalp') // Sender's email and name
        ->subject('Hotelsankalp Book a Room Enquiry');
    }
}


