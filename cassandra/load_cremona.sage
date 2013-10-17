# This is a highly inefficient example of loading the basic info about
# curves up to conductor 240,000....

import cql

con = cql.connect('10.1.1.2', keyspace='ecdb', consistency_level="ONE",
                   cql_version='3.0.0', user='mrc', password=open('password').read())

cursor = con.cursor()

for E in cremona_curves([1001..240000]):
    weq = str(list(E.a_invariants())).replace(' ', '')
    t = cursor.execute("update curves set label=:label, conductor=:conductor where weq=:weq",
               {'weq':weq, 'conductor':E.conductor(), 'label':E.cremona_label()})
    print E.conductor(),
    sys.stdout.flush()
