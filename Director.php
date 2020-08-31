<?php

namespace App\Http\Middleware;
use Auth;
use Closure;

class Director
{
    /** 
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(Auth::user()->type != "director"){    
            abort(404);
        }

        return $next($request);
    }
}
