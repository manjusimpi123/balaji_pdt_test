connection: "balaji_infometry_snowflake"

 include: "/views/**/*.view"
##
datagroup: balaji_pdt_datagroup {
sql_trigger: SELECT count(*) FROM looker_emp_balaji;;
 max_cache_age: "1 minute"
}
persist_with: balaji_pdt_datagroup

datagroup: balaji_pdt_datagroup1 {
  sql_trigger: SELECT count(*) FROM looker_emp_balaji;;
  max_cache_age: "3 minute"
}

#persist_with: balaji_pdt_default_datagroup



explore:  looker_emp_balaji{
  #persist_with: balaji_pdt_datagroup
  #persist_for: "1 minute"

}

explore: derived_table_1 {
  persist_with: balaji_pdt_datagroup

}

explore: derived_table_2 {
  persist_with: balaji_pdt_datagroup

}

explore:  looker_emp_balaji_2{
  from: looker_emp_balaji
 # persist_with: balaji_pdt_datagroup
}
