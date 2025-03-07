<?php
namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\Visit;
use Carbon\Carbon;
class TrackPageVisits
{
    public function handle(Request $request, Closure $next)
    {
        $specificDate = Carbon::now()->format('Y-m-d');
        if ($request->route()) {
            $url = $request->route()->getName() ?? $request->url();
        } else {
            $url = $request->url();
        }
        //$ipAddress = $request->ip();
        //$localIP = gethostbyname(trim(exec("hostname")));
        //dd($localIP);
        
        $host_addr= gethostname();
        $ipAddress = gethostbyname($host_addr);
        //dd($ipAddress);
        $userAgent = $request->header('User-Agent');
        $existingVisit = Visit::where('ip_address', $ipAddress)
                      ->whereRaw("DATE_FORMAT(visited_at, '%Y-%m-%d') = ?", [$specificDate])
                      ->exists();
        
        //$existingVisit = Visit::where('ip_address', $ipAddress)->exists();
        //dd($existingVisit);
        if (!$existingVisit) {
            Visit::create([
                'pagename' => $url,
                'ip_address' => $ipAddress,
                'user_agent_name' => $userAgent
            ]);
        }
        return $next($request);
    }

    
}

