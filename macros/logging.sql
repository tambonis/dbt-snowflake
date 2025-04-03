{% macro learning_logging() %}
-- first, delete dbt.log
    {{ log("Call Tiago, he can helps you") }}
{% endmacro %}