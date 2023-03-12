-- comment
-- the status table
CREATE TABLE status(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(128)
);
-- the task table
CREATE TABLE task(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    summary VARCHAR(255),
    description TEXT,
    status_id INTEGER,
    active BOOLEAN DEFAULT 1,
    FOREIGN KEY(status_id) REFERENCES status(id)
);

-- populate the status table
INSERT INTO status(name) VALUES('to do');
INSERT INTO status(name) VALUES('in progress');
INSERT INTO status(name) VALUES('done');

-- add fake data
INSERT INTO task(summary, description, status_id) VALUES('task 1', 'description 1', 1);
INSERT INTO task(summary, description, status_id) VALUES('task 2', 'description 2', 1);
INSERT INTO task(summary, description, status_id) VALUES('task 3', 'description 3', 1);