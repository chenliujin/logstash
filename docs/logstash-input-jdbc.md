


# 时间转换
- convert_tz(datetime, '+08:00', '+00:00')：转换为 UTC时间

# 增量更新
- last_modified / modified_at

```bash
input {
	jdbc {
		statement 	=> "SELECT * FROM orders WHERE last_modified > :sql_last_value"
	}
}
```
