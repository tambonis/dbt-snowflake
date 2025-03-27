{% macro learning_logging() %}
-- first, delete dbt.log
    {# log("Call your mom", info=True) #}
{% endmacro %}

-- The main ideia is that you have this fuction that you can call in your code and the message will be showed in the screen.
-- You can check the message into dbt.log file
-- You can run this log function using dbt run-operation learn_logging (see that name is the same in call and function defition)

-- There are tow layers in dbt: base sql and top jinja. when you comment row 3 with "--" the instruction was not communicated to jinja
-- and the action will not work. to solve this, comment the jinja layer using ""