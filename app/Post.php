<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $table = 'posts';
    
    protected $fillable = [
        'title','content' ,'category_id', 'image'
    ];
    
    //Relación de uno a muchos inversa (Muchos a uno). Muchos post pueden ser creados por un usuario
    public function user(){
        return $this->belongsTo('App\User', 'user_id');
    }
    
    public function category() {
       return $this->belongsTo('App\Category', 'category_id');
    }  
}
