
CREATE USER mrcsafe WITH PASSWORD 'mrcsafe';
// CREATE USER mrc WITH PASSWORD '';

CREATE KEYSPACE "ecdb" WITH REPLICATION = {'class' : 'NetworkTopologyStrategy', 'DC0':2, 'DC1':2};

GRANT ALL ON KEYSPACE ecdb TO mrc;

GRANT SELECT ON KEYSPACE ecdb TO mrcsafe;


CREATE TABLE curves (
    weq       varchar PRIMARY KEY,  // minimal weierstrass equation '[a1,a2,a3,a4,a6]'
    conductor bigint,
    label     varchar
);

// ALTER TABLE curves add label varchar;