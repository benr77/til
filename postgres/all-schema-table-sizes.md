Report table sizes across all schemas
=====

Replace `XXXX`, `YYYY`, and `ZZZZ` in the query below with your schema names, to report on table space usage across these same schemas.

```sql
select
  concat(quote_ident(table_schema), '.', quote_ident(table_name)) "table",
  pg_size_pretty(pg_total_relation_size(concat(quote_ident(table_schema), '.', quote_ident(table_name)))),
  pg_total_relation_size(concat(quote_ident(table_schema), '.', quote_ident(table_name)))
from information_schema.tables
where table_schema = any(array['XXXX', 'YYYY', 'ZZZZ'])
order by 3 desc;
```
