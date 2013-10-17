# The MRC Cassandra Database

## Software

Python packages:

    pip install --user cqlsh
    pip install --user pycassa

And do "sage -sh" and the same as above again.

Add this to ~/.bashrc:

    export PATH=$HOME/.local/bin:$HOME/cassandra:$PATH

## Keyspace

It is called "ecdb"

## Accounts

### Full read/write: mrc

The login is "mrc" and the password is in the file called password here.
This is an account that has full read/write access to the database.

### Read only access: mrcsafe

The login is "mrcsafe" and the password is also "mrcsafe".
This account can read tables, but not change anything.


