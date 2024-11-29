-- Insert sample users
INSERT INTO User (user_id, first_name, last_name, email, password, phone_number, user_type) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', 'hashed_password_1', '123-456-7890', 'host'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 'hashed_password_2', '987-654-3210', 'guest'),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', 'hashed_password_3', '555-666-7777', 'guest'),
(4, 'Bob', 'Williams', 'bob.williams@example.com', 'hashed_password_4', '222-333-4444', 'host');

