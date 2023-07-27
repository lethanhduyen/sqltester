CREATE TABLE `trainee` (
  `trainee_id` int DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` enum('male','famale','unknow') DEFAULT NULL,
  `et_iq` int DEFAULT NULL,
  `et_gmat` int DEFAULT NULL,
  `et_english` int DEFAULT NULL,
  `training_class` varchar(20) DEFAULT NULL,
  `evaluation_notes` text,
  `vti_account` varchar(20) DEFAULT NULL,
  CONSTRAINT `trainee_chk_1` CHECK (((`et_iq` < 20) and (`et_iq` > 0)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
