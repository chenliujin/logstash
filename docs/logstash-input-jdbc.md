
- use_column_value: :sql_last_value 是否使用字段的值 
- tracking_column: :sql_last_value 使用哪个字段的值, SELECT 中需包含这个字段


# 时间转换
- convert_tz(datetime, '+08:00', '+00:00')：转换为 UTC时间

# 增量更新
- last_modified / last_updated / modified_at
- :sql_last_value 存储位置：~/.logstash_jdbc_last_run

```bash
input {
	jdbc {
		use_column_value	=> true
		tracking_column		=> last_modified
		statement 		=> "SELECT * FROM orders WHERE last_modified > :sql_last_value"
	}
}
```
