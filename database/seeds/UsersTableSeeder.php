<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder {
	public function run()
	{
		DB::table('users')->truncate();
		DB::table('roles')->truncate();
		DB::table('role_users')->truncate();
		$role = [
			'name' => 'Administrator',
			'slug' => 'administrator',
			'permissions' => [
				'admin' => true,
			]
		];
		$adminRole = Sentinel::getRoleRepository()->createModel()->fill($role)->save();
		$subscribersRole = [
			'name' => 'Subscribers',
			'slug' => 'subscribers',
		];
		Sentinel::getRoleRepository()->createModel()->fill($subscribersRole)->save();
		$admin = [
			'email'    => 'admin@example123.com',
			'password' => 'admin123',
      'location' => 'Bandung',
      'first_name' => 'Admin',
      'last_name' => 'Sentinel',
		];
		$users = [
			[
				'email'    => 'user@example123.com',
				'password' => 'user123',
        'location' => 'Ciamis',
        'first_name' => 'User',
        'last_name' => 'Sentinel',
			],
		];
		$adminUser = Sentinel::registerAndActivate($admin);
		$adminUser->roles()->attach($adminRole);
		foreach ($users as $user)
		{
			Sentinel::registerAndActivate($user);
		}
	}
}
