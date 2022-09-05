select sha1(concat(ifnull(cce.entity_id, '_'), ifnull(cce.parent_id, '_'), ifnull(ccei.entity_id, '_'))) as U_UNIQUE_ID, cce.entity_id category_id, cce.parent_id parent_category_id, 
ccev.value category_name, ccev_parent.value parent_category_name,IF(ccei.value = 0, 'No', 'Yes') active, cce.path as path, cce.level as level, cce.updated_at from streamkap.catalog_category_entity cce 
left join streamkap.catalog_category_entity_varchar ccev on cce.entity_id = ccev.entity_id and ccev.value is not null and ccev.attribute_id = 41 and ccev.store_id = 0 
left join streamkap.catalog_category_entity_varchar ccev_parent on cce.parent_id = ccev_parent.entity_id and ccev_parent.attribute_id = 41 and ccev_parent.store_id = 0 
left join streamkap.catalog_category_entity_int ccei on ccei.entity_id = cce.entity_id and ccei.attribute_id = 42 and ccei.store_id = 0