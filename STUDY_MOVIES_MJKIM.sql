CREATE TABLE `REVIEW` (
	`INFORMATION_ID`	VARCHAR(50)	NOT NULL,
	`REVIEW`	VARCHAR(255)	NULL,
	`DAY`	DATETIME	NULL,
	`STAR`	INT(255)	NULL
);

CREATE TABLE `MOVIE_NAME` (
	`MOVIE_NAME_ID`	VARCHAR(50)	NOT NULL,
	`MOVIE_NAME`	VARCHAR(255)	NULL
);

CREATE TABLE `NAME` (
	`NAME_ID`	VARCHAR(50)	NOT NULL,
	`NAME`	VARCHAR(255)	NULL
);

CREATE TABLE `REVIEW_TITLE` (
	`REVIEW_TITLE_ID`	VARCHAR(50)	NOT NULL,
	`MOVIE_NAME_ID`	VARCHAR(50)	NOT NULL,
	`NAME_ID2`	VARCHAR(50)	NOT NULL,
	`INFORMATION_ID`	VARCHAR(50)	NOT NULL
);

ALTER TABLE `REVIEW` ADD CONSTRAINT `PK_REVIEW` PRIMARY KEY (
	`INFORMATION_ID`
);

ALTER TABLE `MOVIE_NAME` ADD CONSTRAINT `PK_MOVIE_NAME` PRIMARY KEY (
	`MOVIE_NAME_ID`
);

ALTER TABLE `NAME` ADD CONSTRAINT `PK_NAME` PRIMARY KEY (
	`NAME_ID`
);

ALTER TABLE `REVIEW_TITLE` ADD CONSTRAINT `PK_REVIEW_TITLE` PRIMARY KEY (
	`REVIEW_TITLE_ID`,
	`MOVIE_NAME_ID`,
	`NAME_ID2`,
	`INFORMATION_ID`
);

ALTER TABLE `REVIEW_TITLE` ADD CONSTRAINT `FK_MOVIE_NAME_TO_REVIEW_TITLE_1` FOREIGN KEY (
	`MOVIE_NAME_ID`
)
REFERENCES `MOVIE_NAME` (
	`MOVIE_NAME_ID`
);

ALTER TABLE `REVIEW_TITLE` ADD CONSTRAINT `FK_NAME_TO_REVIEW_TITLE_1` FOREIGN KEY (
	`NAME_ID2`
)
REFERENCES `NAME` (
	`NAME_ID`
);

ALTER TABLE `REVIEW_TITLE` ADD CONSTRAINT `FK_REVIEW_TO_REVIEW_TITLE_1` FOREIGN KEY (
	`INFORMATION_ID`
)
REFERENCES `REVIEW` (
	`INFORMATION_ID`
);

