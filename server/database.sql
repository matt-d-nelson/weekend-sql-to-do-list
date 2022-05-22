CREATE TABLE tasks (
	"id" serial PRIMARY KEY,
	"title" varchar(40),
	"description" varchar(280),
	"due_date" date, --format YYYY-MM-DD
	"priority" integer,
    "completed" boolean DEFAULT false,
    "time_completed" timestamp --format YYYY-MM-DD HH:MI:SS
);


DROP TABLE tasks;

INSERT INTO tasks (title, description, due_date, priority) VALUES ('get groceries', 'apples, oranges, tuna, bread, starfruit', '2022-05-23', 2);

SELECT * FROM tasks ORDER BY id ASC;

DELETE FROM tasks WHERE id = 1;

UPDATE tasks SET completed = NOT completed WHERE id = 12;