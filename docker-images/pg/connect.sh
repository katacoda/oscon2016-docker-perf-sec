# mysecretpassword

docker exec -it pg bash
pgbench --username=postgres -i test  # initialise pgbench
pgbench --username=postgres -t 2000 -c 8 -S test


docker run -it --link pg:pg benhall/oscon2016-pg bash
pgbench --host=pg --username=postgres -t 2000 -c 10 -S test  
