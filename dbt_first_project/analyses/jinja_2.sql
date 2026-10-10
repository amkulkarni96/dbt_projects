{%- set apples = ["Gala", "Fuji", "Honeycrisp", "Granny Smith", "McIntosh"] -%}

{% for apple in apples %}
    
    {% if apple != "Honeycrisp"%}
    {{apple}} is a great apple!
    {% else %}
    {{apple}} is my favorite apple!
    {% endif %}

{% endfor %}