CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    age INT,
    city VARCHAR(255),
    country VARCHAR(255),
    status VARCHAR(50),
    phone VARCHAR(20)
);

CREATE TABLE countries (
    countryId INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    countryId INT,
    FOREIGN KEY (countryId) REFERENCES countries(countryId)
);

INSERT INTO user (name, email, age, city, country, status, phone) VALUES ('Tanaka Taro', 'tanaka@example.com', 30, 'Tokyo', 'Japan', 'active', '090-1234-5678');
INSERT INTO user (name, email, age, city, country, status, phone) VALUES ('Sato Hanako', 'sato@example.com', 28, 'Osaka', 'Japan', 'pending', '080-9876-5432');
INSERT INTO user (name, email, age, city, country, status, phone) VALUES ('Suzuki Ichiro', 'suzuki@example.com', 35, 'Fukuoka', 'Japan', 'active', '070-1111-2222');
INSERT INTO user (name, email, age, city, country, status, phone) VALUES ('Takahashi Yoko', 'takahashi@example.com', 26, 'Sapporo', 'Japan', 'active', '090-3333-4444');
INSERT INTO user (name, email, age, city, country, status, phone) VALUES ('Ito Yuko', 'ito@example.com', 40, 'Nagoya', 'Japan', 'pending', '080-5555-6666');
INSERT INTO user (name, email, age, city, country, status, phone) VALUES ('Yamamoto Kenta', 'yamamoto@example.com', 22, 'Sendai', 'Japan', 'active', '070-7777-8888');
INSERT INTO user (name, email, age, city, country, status, phone) VALUES ('Nakamura Jyunko', 'nakamura@example.com', 32, 'Hiroshima', 'Japan', 'pending', '090-9999-0000');
INSERT INTO user (name, email, age, city, country, status, phone) VALUES ('Kobayashi Ryunosuke', 'kobayashi@example.com', 29, 'Kobe', 'Japan', 'active', '080-1212-3434');
INSERT INTO user (name, email, age, city, country, status, phone) VALUES ('Kato Misaki', 'kato@example.com', 27, 'Fukui', 'Japan', 'active', '070-5656-7878');
INSERT INTO user (name, email, age, city, country, status, phone) VALUES ('Watanabe Ken', 'watanabe@example.com', 45, 'Kanazawa', 'Japan', 'pending', '090-9090-8080');
INSERT INTO user (name, email, age, city, country, status, phone) VALUES ('James', 'james@example.com', 38, 'New York', 'America', 'active', '090-1122-3344');
INSERT INTO user (name, email, age, city, country, status, phone) VALUES ('John', 'john@example.com', 19, 'Los Angeles', 'America', 'active', '080-5566-7788');
INSERT INTO user (name, email, age, city, country, status, phone) VALUES ('Robert', 'robert@example.com', 27, 'Chicago', 'America', 'pending', '070-9900-8877');
INSERT INTO user (name, email, age, city, country, status, phone) VALUES ('Mary', 'mary@example.com', 41, 'Houston', 'America', 'active', '090-6655-4433');
INSERT INTO user (name, email, age, city, country, status, phone) VALUES ('Patricia', 'patricia@example.com', 23, 'Phoenix', 'America', 'active', '080-2211-0000');
INSERT INTO user (name, email, age, city, country, status, phone) VALUES ('Jennifer', 'jennifer@example.com', 29, 'Philadelphia', 'America', 'pending', '070-1357-2468');

INSERT INTO countries (name) VALUES ('Japan');
INSERT INTO countries (name) VALUES ('America');
INSERT INTO countries (name) VALUES ('Koria');

INSERT INTO users (name, email, countryId) VALUES ('Tanaka Taro', 'tanaka@example.com', 1);
INSERT INTO users (name, email, countryId) VALUES ('Sato Hanako', 'sato@example.com', 1);
INSERT INTO users (name, email, countryId) VALUES ('Suzuki Ichiro', 'suzuki@example.com', 1);
INSERT INTO users (name, email, countryId) VALUES ('Takahashi Yoko', 'takahashi@example.com', 1);
INSERT INTO users (name, email, countryId) VALUES ('Ito Yuko', 'ito@example.com', 1);
INSERT INTO users (name, email, countryId) VALUES ('Yamamoto Kenta', 'yamamoto@example.com', 1);
INSERT INTO users (name, email, countryId) VALUES ('Nakamura Jyunko', 'nakamura@example.com', 1);
INSERT INTO users (name, email, countryId) VALUES ('Kobayashi Ryunosuke', 'kobayashi@example.com', 1);
INSERT INTO users (name, email, countryId) VALUES ('Kato Misaki', 'kato@example.com', 1);
INSERT INTO users (name, email, countryId) VALUES ('Watanabe Ken', 'watanabe@example.com', 1);
INSERT INTO users (name, email, countryId) VALUES ('James', 'james@example.com', 2);
INSERT INTO users (name, email, countryId) VALUES ('John', 'john@example.com', 2);
INSERT INTO users (name, email, countryId) VALUES ('Robert', 'robert@example.com', 2);
INSERT INTO users (name, email, countryId) VALUES ('Mary', 'mary@example.com', 2);
INSERT INTO users (name, email, countryId) VALUES ('Patricia', 'patricia@example.com', 2);
INSERT INTO users (name, email, countryId) VALUES ('Jennifer', 'jennifer@example.com', 2);
INSERT INTO users (name, email, countryId) VALUES ('Wang', 'wang@example.com', NULL);