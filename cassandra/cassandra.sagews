︠3f843c01-bc76-4bce-8df1-1ba7b286e920︠
# trying using good 'ol cql.  The new python driver here may be much better: https://github.com/datastax/python-driver
# And there are many other python/cassandra drivers to try...

import cql
con = cql.connect('10.1.1.2', keyspace='ecdb', consistency_level="ONE",
                   cql_version='3.0.0', user='mrc', password=open('password').read())
︡5b6c643c-2f0f-484c-9b2b-dcb6e5782330︡
︠d7297551-35f9-47ae-aa87-5e5973fb8ab2︠
cursor = con.cursor()
︡e7b800aa-8523-43bc-a7af-5bb1576b52b0︡
︠f14fd939-61af-457f-ba63-8dae56563bb6︠
for E in cremona_curves([11..1000]):
    weq = str(list(E.a_invariants())).replace(' ', '')
    t = cursor.execute("update curves set label=:label, conductor=:conductor where weq=:weq",
               {'weq':weq, 'conductor':E.conductor(), 'label':E.cremona_label()})
    print E.conductor(),
    sys.stdout.flush()
︠1fc5480d-a688-4d8b-928f-0bedb23cddfa︠
len(list(cremona_curves([11..1000])))
︡bb6d2a43-004a-4cd5-8ee6-ec9efc3bc965︡{"stdout":"5113"}︡{"stdout":"\n"}︡
︠3f04643d-d891-41eb-824f-f0f212f252ef︠
str(list(EllipticCurve('389a').a_invariants())).replace(' ','')
︡c4d15920-3ead-4f75-ac0f-f38b11be0787︡{"stdout":"'[0,1,1,-2,0]'\n"}︡
︠c037be7c-bcf2-4840-bde9-604372117e98︠









