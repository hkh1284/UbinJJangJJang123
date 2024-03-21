DROP TABLE IF EXISTS users;
CREATE TABLE users
(
    id       INT PRIMARY KEY AUTO_INCREMENT,
    loginId  VARCHAR(100) NOT NULL,
    nickname VARCHAR(100) NOT NULL,
    email    VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS plans;
CREATE TABLE plans
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    userId      INT          NOT NULL,
    title       VARCHAR(100) NOT NULL,
    description VARCHAR(100) NOT NULL,

    CONSTRAINT FOREIGN KEY (userId) REFERENCES users (id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS place;
CREATE TABLE place
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    planId      INT          NOT NULL,
    kakaoId     VARCHAR(100) NOT NULL,
    placeName   VARCHAR(100) NOT NULL,
    latitude    DOUBLE       NOT NULL,
    longitude   DOUBLE       NOT NULL,
    roadAddress VARCHAR(150) NOT NULL,

    CONSTRAINT FOREIGN KEY (planId) REFERENCES plans (id) ON DELETE CASCADE
)