<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Storage;

class ProductGallery extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'product_id',
        'url',
    ];

    // relation to product
    public function product()
    {
        return $this->belongsTo(Product::class, 'product_id', 'id');
    }

    // get the url of the gallery
    public function getUrlAttribute($value)
    {
        return config('app.url') . Storage::url($value);
    }

}
