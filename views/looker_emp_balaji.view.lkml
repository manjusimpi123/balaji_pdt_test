view: looker_emp_balaji {
  sql_table_name: "LOOKER"."LOOKER_EMP_BALAJI"
    ;;

  dimension: comm {
    type: number
    sql: ${TABLE}."COMM" ;;
  }

  dimension: DEPARTMENTNO {
    alias: [deptno]
    type: number
    sql: ${TABLE}."DEPTNO" ;;
  }

  dimension: empno {
    type: number
    sql: ${TABLE}."EMPNO" ;;
  }

  dimension: ename {
    type: string
    sql: ${TABLE}."ENAME" ;;
  }

  dimension_group: hiredate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."HIREDATE" ;;
  }

  dimension: job {
    type: string
    sql: ${TABLE}."JOB" ;;
  }

  dimension: mgr {
    type: number
    sql: ${TABLE}."MGR" ;;
  }

  dimension: sal {
    type: number
    sql: ${TABLE}."SAL" ;;
  }

  measure: sal_sum {
    type: sum
    sql: ${TABLE}."SAL" ;;
  }

  measure: count {
    type: count
    drill_fields: [ename]
  }
}
