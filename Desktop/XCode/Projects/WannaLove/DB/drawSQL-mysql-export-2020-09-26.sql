CREATE TABLE `user`(
    `user_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `mail` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) NULL,
    `created_at` TIMESTAMP NOT NULL,
    `isConfirmed` TINYINT(1) NOT NULL,
    `isActive` TINYINT(1) NOT NULL,
    `isBanned` TINYINT(1) NOT NULL,
    `isAllowNotification` TINYINT(1) NOT NULL,
    `isAllowSound` TINYINT(1) NOT NULL,
    `registeredWith` CHAR(255) NOT NULL,
    `registeredToken` LONGTEXT NOT NULL
);
ALTER TABLE
    `user` ADD PRIMARY KEY `user_user_id_primary`(`user_id`);
CREATE TABLE `contact_connections`(
    `connection_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INT NOT NULL,
    `connected_user_id` INT NOT NULL,
    `isAccepted` TINYINT(1) NOT NULL,
    `sentGestures` INT NULL,
    `retrievedGestures` INT NULL
);
ALTER TABLE
    `contact_connections` ADD PRIMARY KEY `contact_connections_connection_id_primary`(`connection_id`);
ALTER TABLE
    `contact_connections` ADD CONSTRAINT `contact_connections_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `user`(`user_id`);
ALTER TABLE
    `contact_connections` ADD CONSTRAINT `contact_connections_connected_user_id_foreign` FOREIGN KEY(`connected_user_id`) REFERENCES `user`(`user_id`);