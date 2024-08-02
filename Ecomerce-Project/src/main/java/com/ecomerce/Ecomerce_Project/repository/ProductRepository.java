package com.ecomerce.Ecomerce_Project.repository;

import com.ecomerce.Ecomerce_Project.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {
}
