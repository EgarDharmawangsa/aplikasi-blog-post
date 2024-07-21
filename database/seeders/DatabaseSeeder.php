<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Post;
use App\Models\Category;
use App\Models\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        User::factory(5)->create();

        User::create([
            'name' => 'admin',
            'username' => 'admin',
            'email' => 'admin@gmail.com',
            'password' => bcrypt('admin')
        ]);

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum pertama',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia omnis quidem laudantium sit numquam ea ducimus facere cumque perspiciatis similique inventore qui provident eaque expedita beatae quasi adipisci aliquam iste odit.</p><p>deserunt quaerat eum. Rem quasi fugiat ipsa alias voluptate dolore officia culpa repellendus, impedit similique tenetur quia, provident nostrum accusantium ad! Deserunt omnis expedita corporis voluptates ut tempore similique dicta delectus magnam, dolore mollitia quae ducimus maiores quisquam culpa quam repellat esse.</p><p>vitae sapiente unde non, voluptatibus voluptate. Earum laudantium suscipit doloribus facilis laborum ut voluptatibus, aliquam illum illo. Fuga aperiam omnis repellat animi eius, quo delectus minima nisi?</p>',
        //     'category_id' => 1,
        //     'user_id' => 1,
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Dua',
        //     'slug' => 'judul-ke-dua',
        //     'excerpt' => 'Lorem ipsum kedua',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia omnis quidem laudantium sit numquam ea ducimus facere cumque perspiciatis similique inventore qui provident eaque expedita beatae quasi adipisci aliquam iste odit.</p><p>deserunt quaerat eum. Rem quasi fugiat ipsa alias voluptate dolore officia culpa repellendus, impedit similique tenetur quia, provident nostrum accusantium ad! Deserunt omnis expedita corporis voluptates ut tempore similique dicta delectus magnam, dolore mollitia quae ducimus maiores quisquam culpa quam repellat esse.</p><p>vitae sapiente unde non, voluptatibus voluptate. Earum laudantium suscipit doloribus facilis laborum ut voluptatibus, aliquam illum illo. Fuga aperiam omnis repellat animi eius, quo delectus minima nisi?</p>',
        //     'category_id' => 1,
        //     'user_id' => 1,
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Tiga',
        //     'slug' => 'judul-ke-tiga',
        //     'excerpt' => 'Lorem ipsum ketiga',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia omnis quidem laudantium sit numquam ea ducimus facere cumque perspiciatis similique inventore qui provident eaque expedita beatae quasi adipisci aliquam iste odit.</p><p>deserunt quaerat eum. Rem quasi fugiat ipsa alias voluptate dolore officia culpa repellendus, impedit similique tenetur quia, provident nostrum accusantium ad! Deserunt omnis expedita corporis voluptates ut tempore similique dicta delectus magnam, dolore mollitia quae ducimus maiores quisquam culpa quam repellat esse.</p><p>vitae sapiente unde non, voluptatibus voluptate. Earum laudantium suscipit doloribus facilis laborum ut voluptatibus, aliquam illum illo. Fuga aperiam omnis repellat animi eius, quo delectus minima nisi?</p>',
        //     'category_id' => 2,
        //     'user_id' => 1,
        // ]);
    }
}
