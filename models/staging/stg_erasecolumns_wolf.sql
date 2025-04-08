select
  {{ macro_erase_columns(source('Test', 'wolf')) }}
from {{ source('Test', 'wolf') }}