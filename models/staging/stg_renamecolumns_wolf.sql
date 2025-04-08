select * except(_airbyte_raw_id, _airbyte_extracted_at, _airbyte_meta, _airbyte_generation_id),
{{macro_rename_columns('_airbyte_raw_id','pipe_xyz_id')}},
{{macro_rename_columns('_airbyte_extracted_at','pipe_xyz_extracted_at')}},
{{macro_rename_columns('_airbyte_meta','pipe_xyz_meta')}},
{{macro_rename_columns('_airbyte_generation_id','pipe_xyz_generation_id')}}
from {{source('Test','wolf') }}