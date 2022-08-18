create database insta;
use insta;
show tables;
CREATE TABLE `users` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `created_at` timestamp,
  `updated_at` timestamp,
  `username` varchar(20),
  `bio` varchar(400),
  `profile_img` varchar(200),
  `phone` varchar(25),
  `email` varchar(20),
  `password` varchar(50),
  `status` varchar(15)
);

CREATE TABLE `posts` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `created_at` timestamp,
  `updated_at` timestamp,
  `user_id` INT,
  `url` varcharacter(50),
  `caption` varcharacter(240),
  `lat` real,
  `lng` real
);

CREATE TABLE `comments` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `created_at` timestamp,
  `updated_at` timestamp,
  `user_id` int,
  `post_id` int,
  `contents` varcharacter(200)
);

CREATE TABLE `likes` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `created_at` timestamp,
  `user_id` INT,
  `post_id` INT,
  `comment_id` INT
);

CREATE TABLE `photo_tags` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `created_at` timestamp,
  `user_id` INT,
  `post_id` INT,
  `x` INT,
  `y` INT
);

CREATE TABLE `caption_tags` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `created_at` timestamp,
  `user_id` INT,
  `post_id` INT
);

CREATE TABLE `hashtags` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `created_at` timestamp,
  `title` varcharacter(20)
);

CREATE TABLE `hashtags_post` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `created_at` timestamp,
  `hasttag_id` INT,
  `post_id` INT
);

CREATE TABLE `followers` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `created_at` timestamp,
  `leader_id` INT,
  `follower_id` INT
);

CREATE TABLE `share` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `created_at` timestamp,
  `user_id` INT,
  `post_id` INT
);

ALTER TABLE `posts` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `comments` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `comments` ADD FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

ALTER TABLE `likes` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `likes` ADD FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

ALTER TABLE `likes` ADD FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`);

ALTER TABLE `photo_tags` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `photo_tags` ADD FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

ALTER TABLE `caption_tags` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `caption_tags` ADD FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

ALTER TABLE `hashtags_post` ADD FOREIGN KEY (`hasttag_id`) REFERENCES `hashtags` (`id`);

ALTER TABLE `hashtags_post` ADD FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

ALTER TABLE `followers` ADD FOREIGN KEY (`leader_id`) REFERENCES `users` (`id`);

ALTER TABLE `followers` ADD FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`);

ALTER TABLE `share` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `share` ADD FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

