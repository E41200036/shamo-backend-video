<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => $this->faker->sentence(1, true),
            'price' => $this->faker->randomFloat(2, 0, 100),
            'description' => $this->faker->sentence,
            'tags' => $this->faker->sentence,
            'category_id' => $this->faker->randomElement([1,2,3,4,5,6,7]),
        ];
    }
}
