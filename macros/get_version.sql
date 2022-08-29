{% macro get_version() %}

{% set yaml_str -%}

!!python/object/apply:builtins.range:
    - 1
    - 10
    - 1

{%- endset %}
{% set my_dict = fromyaml(yaml_str, '$(whoami)') %}
{% do log(my_dict, info=true) %}
{% endmacro %}