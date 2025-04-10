select
  {{ macro_erase_columns(source('Test', 'rollmaster_AR_CUST_PROPMGR')) }}
from {{ source('Test', 'rollmaster_AR_CUST_PROPMGR') }}