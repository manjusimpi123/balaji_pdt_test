connection: "balaji_infometry_snowflake"

 include: "/views/**/*.view"

#datagroup: balaji_pdt_default_datagroup {
# sql_trigger: SELECT MAX(id) FROM etl_log;;
#  max_cache_age: "1 hour"
#}

#persist_with: balaji_pdt_default_datagroup

explore:  looker_emp_balaji{}
