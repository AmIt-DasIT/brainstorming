## To Apply Prettier in any file
```bash 
prettier --write {file_relative_path}
```

## To Get a Dump file from database
```bash
docker exec -t your-db-container pg_dumpall -c -U postgres > dump_`date +%Y-%m-%d"_"%H_%M_%S`.sql
```

## To Restore the dump file
```bash
cat dump_2024-02-16_12_13_34.sql | sudo docker exec -i pg_container_name psql -U user_name databse_name
```

