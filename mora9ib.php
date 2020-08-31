<?php

namespace App\Http\Middleware;

use Closure;
use Auth;
class mora9ib
{/**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
       
        if(Auth::user()->type != "mora9ib"){    
            abort(404);
        }

        return $next($request);
    }
}
