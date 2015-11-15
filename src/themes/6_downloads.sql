CREATE TABLE app.downloads (
    created timestamp NOT NULL DEFAULT now(),
    email varchar(254) NOT NULL,
    purpose varchar(254) NOT NULL
);
