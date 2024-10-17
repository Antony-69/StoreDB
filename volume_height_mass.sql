select sum(width_mm*height_mm*length_mm) as volume, sum(height_mm) as total_height, sum(weight_g) as mass from products
