{% macro macro_rename_columns(column_name, new_name) %}
    {{ column_name }} as {{ new_name }}
{% endmacro %}