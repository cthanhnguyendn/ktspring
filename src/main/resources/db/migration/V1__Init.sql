CREATE TABLE users
(
    id   VARCHAR(255)                            NOT NULL,
    email VARCHAR(255)                            NOT NULL,
    password VARCHAR(255)                         NOT NULL,
    CONSTRAINT PK_CLIENT PRIMARY KEY (id)
);

CREATE TABLE role
(
    id        VARCHAR(255)                            NOT NULL,
    role_name      VARCHAR(255)                            NOT NULL,
    description     VARCHAR(255)                            NOT NULL,
    CONSTRAINT PK_CONTACT PRIMARY KEY (id)
);

CREATE TABLE user_role
(
    user_id        VARCHAR(255),
    role_id      VARCHAR(255)
);

ALTER TABLE users
    ADD CONSTRAINT UC_USER_EMAIL UNIQUE (email);

ALTER TABLE user_role
    ADD CONSTRAINT FK_USER_ROLE_USER_ID FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE user_role
    ADD CONSTRAINT FK_USER_ROLE_ROLE_ID FOREIGN KEY (role_id) REFERENCES role (id);