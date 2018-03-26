<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
         $this->call(lop::class);
    }
}
class UsersTableSeeder extends Seeder
{
	
    public function run()
    {
        DB::table('users')->insert([
		['name'=>'luuhuy','email'=>'nhathaibinh2010@gmail.com','password'=>bcrypt('123456')],
		['name'=>'luuduc=huy','email'=>'nhathaibinh2012@gmail.com','password'=>bcrypt('123456')]
		]);
    }
}