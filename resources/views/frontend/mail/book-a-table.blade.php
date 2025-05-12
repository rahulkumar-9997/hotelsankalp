<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:o="urn:schemas-microsoft-com:office:office">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="x-apple-disable-message-reformatting">
    <title>Booking Confirmation</title>
</head>

<body style="margin:0;padding:0;font-family:Arial,sans-serif;font-weight:500;color:rgba(0,0,0,.4);line-height:1.8;font-size:15px;">
    <div style="margin:0;padding:0!important;">
        <center style="width:100%;background-color:#f1f1f1;">
            <div style="max-width:600px;margin:0 auto;" class="email-container">
                <table align="center" role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%" style="margin:auto;">
                    <tr>
                        <td style="padding:1em 2.5em;text-align:center;background-color:#0e1029;">
                            <img src="https://www.hotelsankalp.com/public/fronted/hotelsankalp-img/logo/logo-new.png" style="width:45%;max-width:200px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:center;background-color:#ecd592;">
                            <h2 style="color:#000000;font-size:20px;margin-bottom:5px;margin-top:5px;font-family:oswald,sans-serif;">
                                Table Booking Confirmation
                            </h2>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding:20px;width:100%;background:#ffffff;text-align:left;">
                            <table width="100%" style="border-collapse:collapse;">
                                <tr>
                                    <th style="text-align:left;padding:8px;background-color:#f2f2f2;border:1px solid #ddd;">Name</th>
                                    <td style="text-align:left;padding:8px;border:1px solid #ddd;">{{ $name }}</td>
                                </tr>
                                <tr style="background-color:#f9f9f9;">
                                    <th style="text-align:left;padding:8px;background-color:#f2f2f2;border:1px solid #ddd;">Date & Time</th>
                                    <td style="text-align:left;padding:8px;border:1px solid #ddd;">{{ \Carbon\Carbon::parse($date_time)->format('l, F j, Y \a\t g:i A') }}</td>
                                </tr>
                                <tr>
                                    <th style="text-align:left;padding:8px;background-color:#f2f2f2;border:1px solid #ddd;">Number of Guests</th>
                                    <td style="text-align:left;padding:8px;border:1px solid #ddd;">{{ $no_of_guest }}</td>
                                </tr>
                                @if(isset($occasion_type))
                                <tr style="background-color:#f9f9f9;">
                                    <th style="text-align:left;padding:8px;background-color:#f2f2f2;border:1px solid #ddd;">Occasion Type</th>
                                    <td style="text-align:left;padding:8px;border:1px solid #ddd;">{{ $occasion_type }}</td>
                                </tr>
                                @endif
                                <tr>
                                    <th style="text-align:left;padding:8px;background-color:#f2f2f2;border:1px solid #ddd;">Contact Email</th>
                                    <td style="text-align:left;padding:8px;border:1px solid #ddd;">{{ $email }}</td>
                                </tr>
                                <tr style="background-color:#f9f9f9;">
                                    <th style="text-align:left;padding:8px;background-color:#f2f2f2;border:1px solid #ddd;">Phone Number</th>
                                    <td style="text-align:left;padding:8px;border:1px solid #ddd;">{{ $mobile_number }}</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table align="center" role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%" style="margin:auto;">
                    <tr>
                        <td valign="middle" style="background-color:#0e1029;color:#fff;padding:1.1em;">
                            <table role="presentation" cellspacing="0" cellpadding="0" border="0" width="100%">
                                <tr>
                                    <td style="text-align:center;padding-right:10px;font-family:oswald,sans-serif;">
                                        <p><strong style="font-size:20px;color:#fff;line-height:30px;">Contact Details </strong></p>
                                        Email :  
                                        <a style="color:#557e00;text-decoration:none;" href="mailto:info@sankalpbanaras.com" target="_blank" rel="noreferrer">sankalpbanaras@gmail.com, 
                                        info@sankalpbanaras.com</a>
                                        <br>
                                        Contact :  +91-9005050196, 
                                        +91-9005050197 </p>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
        </center>
    </div>
</body>

</html>