<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'categories';
    
    public function posts() {
        return $this->hasMany('App\Post');//Relación con la tabla post de uno a muchos
    }
}
