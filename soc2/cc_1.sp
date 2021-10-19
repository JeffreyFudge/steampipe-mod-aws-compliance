locals {
  soc_2_cc_1_common_tags = merge(local.soc_2_common_tags, {
    soc_2_section_id = "cc1"
  })
}

benchmark "cc_1" {
  title       = "CC1.0 - Common Criteria Related to Control Environment"
  description = "The criteria relevant to how the entity demonstrates commitment to integrity and ethical values, exercises oversight responsibility, establishes structure, authority and responsibility, demonstrates commitment to competence, and enforces accountability. "

  children = [
    control.cc_1_1,
    control.cc_1_2,
    benchmark.cc_1_3,
    control.cc_1_4,
    control.cc_1_5
  ]

  tags = local.soc_2_cc_1_common_tags
}

control "cc_1_1" {
  title         = "CC1.1 COSO Principle 1: The entity demonstrates a commitment to integrity and ethical values"
  sql           = query.manual_control.sql
  documentation = file("./soc2/docs/cc_1_1.md")

  tags = merge(local.soc_2_cc_1_common_tags, {
    soc_2_item_id = "1.1"
    soc_2_type    = "manual"
  })
}

control "cc_1_2" {
  title         = "CC1.2 COSO Principle 2: The board of directors demonstrates independence from management and exercises oversight of the development and performance of internal control"
  sql           = query.manual_control.sql
  documentation = file("./soc2/docs/cc_1_2.md")

  tags = merge(local.soc_2_cc_1_common_tags, {
    soc_2_item_id = "1.2"
    soc_2_type    = "manual"
  })
}

benchmark "cc_1_3" {
  title       = "CC1.3 COSO Principle 3: Management establishes, with board oversight, structures, reporting lines, and appropriate authorities and responsibilities in the pursuit of objectives"
  documentation = file("./soc2/docs/cc_1_3.md")

  children = [
    control.iam_group_not_empty,
    control.iam_user_unused_credentials_90,
    control.iam_user_no_inline_attached_policies,
  ]

  tags = merge(local.soc_2_cc_1_common_tags, {
    soc_2_item_id = "1.3"
    soc_2_type    = "automated"
  })
}

control "cc_1_4" {
  title         = "CC1.4 COSO Principle 4: The entity demonstrates a commitment to attract, develop, and retain competent individuals in alignment with objectives"
  sql           = query.manual_control.sql
  documentation = file("./soc2/docs/cc_1_4.md")

  tags = merge(local.soc_2_cc_1_common_tags, {
    soc_2_item_id = "1.4"
    soc_2_type    = "manual"
  })
}

control "cc_1_5" {
  title         = "CC1.5 COSO Principle 5: The entity holds individuals accountable for their internal control responsibilities in the pursuit of objectives"
  sql           = query.manual_control.sql
  documentation = file("./soc2/docs/cc_1_5.md")

  tags = merge(local.soc_2_cc_1_common_tags, {
    soc_2_item_id = "1.5"
    soc_2_type    = "manual"
  })
}