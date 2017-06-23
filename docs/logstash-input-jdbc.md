


# 时间转换
- mysql function: timestamp()


# 增量更新
- last_modified / modified_at

```bash
input {
	jdbc {
		statement 	=> "SELECT * FROM orders WHERE last_modified > :sql_last_value"
	}
}
```
