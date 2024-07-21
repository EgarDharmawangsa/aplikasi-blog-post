<?php

namespace App\Models;

class Post
{
    private static $blog_posts = [
        [
            "title" => "Judul Tulisan Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Egar Suarama Dharmawangsa",
            "body" => "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Necessitatibus ullam commodi nobis aut ipsum praesentium deleniti numquam adipisci reiciendis. 
            Nemo optio eos soluta provident delectus. Optio soluta rerum perferendis saepe mollitia 
            harum voluptatum impedit laborum ea nulla pariatur sit molestias numquam eos temporibus placeat 
            quidem, possimus praesentium culpa sunt at inventore necessitatibus ut. Qui architecto natus porro 
            ad molestiae libero mollitia dolor delectus eligendi excepturi dignissimos, tempora repellendus aspernatur 
            reiciendis, ullam fugiat omnis aperiam tenetur repellat voluptate culpa odit sunt."
        ],
        [
            "title" => "Judul Tulisan Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Ayu Setianingsih",
            "body" => "Lorem ipsum dolor sit amet consectetur, adipisicing elit. 
            Necessitatibus ullam commodi nobis aut ipsum praesentium deleniti numquam adipisci reiciendis. 
            Nemo optio eos soluta provident delectus. Optio soluta rerum perferendis saepe mollitia 
            harum voluptatum impedit laborum ea nulla pariatur sit molestias numquam eos temporibus placeat 
            quidem, possimus praesentium culpa sunt at inventore necessitatibus ut. Qui architecto natus porro 
            ad molestiae libero mollitia dolor delectus eligendi excepturi dignissimos, tempora repellendus aspernatur 
            reiciendis, ullam fugiat omnis aperiam tenetur repellat voluptate culpa odit sunt."
        ]
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();

        return $posts->firstWhere('slug', $slug);
    }
}
