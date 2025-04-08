select * except(tipo),
{{macro_rename_column('tipo','type')}}
from {{ref('stg_erasecolumns_wolf') }}