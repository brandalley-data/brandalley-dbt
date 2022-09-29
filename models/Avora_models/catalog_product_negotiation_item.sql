SELECT
    negotiation_item_id,
    negotiation_id,
    updated_at,
    product_id,
    product_parent_id,
    sku,
    parrent_sku,
    REFERENCE,
    NAME,
    SIZE,
    brand,
    commodity_code,
    pack_size,
    cost,
    cost_gbp,
    rrp,
    price,
    tax_rate,
    tax_code,
    qty,
    ordered,
    to_order,
    qty_exported
FROM
    {{ ref(
        'stg__catalog_product_negotiation_item'
    ) }}
