view: derived_table_1 {
  derived_table: {
    sql: SELECT
          looker_emp_balaji."ENAME"  AS "looker_emp_balaji.ename",
          looker_emp_balaji."EMPNO"  AS "looker_emp_balaji.empno",
          looker_emp_balaji."MGR"  AS "looker_emp_balaji.mgr",
          COALESCE(SUM(looker_emp_balaji."SAL" ), 0) AS "looker_emp_balaji.sal_sum"
      FROM "LOOKER"."LOOKER_EMP_BALAJI"
           AS looker_emp_balaji
      GROUP BY
          1,
          2,
          3
       ;;
    datagroup_trigger: balaji_pdt_datagroup
    #cluster_keys: ["EMPNO"]
  }

  measure: count {
    type: count
  #  drill_fields: [detail*]
  }

  dimension: looker_emp_balaji_ename {
    type: string
    sql: ${TABLE}."looker_emp_balaji.ename" ;;
  }

  dimension: looker_emp_balaji_empno {
    type: number
    sql: ${TABLE}."looker_emp_balaji.empno" ;;
  }

  dimension: looker_emp_balaji_mgr {
    type: number
    sql: ${TABLE}."looker_emp_balaji.mgr" ;;
  }

  dimension: looker_emp_balaji_sal_sum {
    type: number
    sql: ${TABLE}."looker_emp_balaji.sal_sum" ;;
  }



#  set: detail {
#    fields: [looker_emp_balaji_ename, looker_emp_balaji_empno, looker_emp_balaji_mgr, looker_emp_balaji_sal_sum]
#  }
}
