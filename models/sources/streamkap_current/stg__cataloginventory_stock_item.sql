{{config(
    materialized='incremental',
    unique_key='item_id'
)}}

{{streamkap_incremental_on_source_to_current(source_name='cataloginventory_stock_item', id_field='item_id')}}