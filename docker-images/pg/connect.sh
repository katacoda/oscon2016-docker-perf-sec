# mysecretpassword
# https://wiki.postgresql.org/wiki/Pgbenchtesting

docker exec -it pg bash
pgbench --username=postgres -i test  # initialise pgbench
pgbench --username=postgres -t 2000 -c 8 -S test

pgbench --username=postgres -i -s 70 test
pgbench --username=postgres -c 4 -j 2 -T 15 test # Read-Write Test
pgbench --username=postgres -c 4 -j 2 -T 15 -S test # Read-Only Test
pgbench --username=postgres -c 4 -j 2 -T 15 -N test # Simple Write Test

pgbench --username=postgres -i -s 30 test
pgbench --username=postgres -c 64 -j 4 -T 15 test # Heavy Contention


docker run -it --link pg:pg benhall/oscon2016-pg bash
pgbench --host=pg --username=postgres -t 2000 -c 10 -S test
pgbench --host=pg --username=postgres -i -s 70 test
pgbench --host=pg --username=postgres -c 4 -j 2 -T 15 test # Read-Write Test
pgbench --host=pg --username=postgres -c 4 -j 2 -T 15 -S test # Read-Only Test
pgbench --host=pg --username=postgres -c 4 -j 2 -T 15 -N test # Simple Write Test

pgbench --host=pg --username=postgres -i -s 30 test
pgbench --host=pg --username=postgres -c 64 -j 4 -T 15 test # Heavy Contention
