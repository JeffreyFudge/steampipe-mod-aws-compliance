benchmark "gxp_eu_annex_11_1" {
  title       = "1 Risk Management"
  description = "Risk management should be applied throughout the lifecycle of the computerised system taking into account patient safety, data integrity and product quality. As part of a risk management system, decisions on the extent of validation and data integrity controls should be based on a justified and documented risk assessment of the computerised system."
  children = [
    control.cloudtrail_trail_enabled,
    control.securityhub_enabled
  ]

  tags = merge(local.gxp_eu_annex_11_common_tags, {
    control_set = "general"
  })
}