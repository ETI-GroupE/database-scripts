-- Drop Tables
DROP TABLE IF EXISTS feedback;

-- Create Tables
CREATE TABLE feedback (
    feedback_id int auto_increment,
    created_at_date DATE DEFAULT (CURRENT_DATE),
    user_id int,
    product_id int,
    rating int CHECK(rating >= 1 AND rating <= 5),
    description text,
    PRIMARY KEY(feedback_id)
);

INSERT INTO feedback(user_id, product_id, rating, description) VALUES
(1, 1, 5, 'Good'),
(2, 1, 5, 'Good product'),
(3, 1, 3, 'Good product but not worth the price'),
(1, 2, 1, 'Product is broken and customer service is bad');