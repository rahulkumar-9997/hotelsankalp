<?php
namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\Visit;
class TrackPageVisits
{
    public function handle(Request $request, Closure $next)
    {
        // Get the current route name
        // $url = $request->url();
        if ($request->route()) {
            $url = $request->route()->getName() ?? $request->url();
        } else {
            $url = $request->url();
        }
        $ipAddress = $request->ip();
        $userAgent = $request->header('User-Agent');
        //$existingVisit = Visit::where('ip_address', $ipAddress)->where('pagename', $url)->exists();
        $existingVisit = Visit::where('ip_address', $ipAddress)->exists();
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

