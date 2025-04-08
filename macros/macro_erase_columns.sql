{% macro macro_erase_columns(relation, skip=4) %}
  {% set all_columns = adapter.get_columns_in_relation(relation) %}
  {% set cleaned_columns = all_columns[skip:] %}
  {% for col in cleaned_columns %}
    {{ col.name }}{% if not loop.last %}, {% endif %}
  {% endfor %}
{% endmacro %}