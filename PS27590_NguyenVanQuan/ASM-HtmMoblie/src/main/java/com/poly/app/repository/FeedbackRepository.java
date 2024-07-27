package com.poly.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.app.enity.Feedback;

public interface FeedbackRepository extends JpaRepository<Feedback, Integer> {

}
