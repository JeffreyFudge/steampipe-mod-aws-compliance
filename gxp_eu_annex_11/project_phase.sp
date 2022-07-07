benchmark "gxp_eu_annex_11_4_2" {
  title       = "4.2 Validation - Documentation Change Control"
  description = "Validation documentation should include change control records (if applicable) and reports on any deviations observed during the validation process."
  children = [
    control.cloudtrail_trail_enabled
  ]

  tags = merge(local.gxp_eu_annex_11_common_tags, {
    control_set = "project_phase"
  })
}

benchmark "gxp_eu_annex_11_4_5" {
  title       = "4.5 Validation - Development Quality"
  description = "The regulated user should take all reasonable steps, to ensure that the system has been developed in accordance with an appropriate quality management system. The supplier should be assessed appropriately."
  children = [
    control.config_enabled_all_regions
  ]

  tags = merge(local.gxp_eu_annex_11_common_tags, {
    control_set = "project_phase"
  })
}

benchmark "gxp_eu_annex_11_4_6" {
  title       = "4.6 Validation - Quality and Performance"
  description = "For the validation of bespoke or customised computerised systems there should be a process in place that ensures the formal assessment and reporting of quality and performance measures for all the life-cycle stages of the system."
  children = [
    control.config_enabled_all_regions
  ]

  tags = merge(local.gxp_eu_annex_11_common_tags, {
    control_set = "project_phase"
  })
}

benchmark "gxp_eu_annex_11_4_8" {
  title       = "4.8 Validation - Data Transfer"
  description = "If data are transferred to another data format or system, validation should include checks that data are not altered in value and/or meaning during this migration process."
  children = [
    control.rds_db_instance_backup_enabled,
    control.dynamodb_table_point_in_time_recovery_enabled,
    control.ec2_instance_ebs_optimized,
    control.elasticache_redis_cluster_automatic_backup_retention_15_days,
    control.s3_bucket_cross_region_replication_enabled,
    control.s3_bucket_versioning_enabled,
    control.dynamodb_table_in_backup_plan,
    control.ebs_volume_in_backup_plan,
    control.efs_file_system_in_backup_plan,
    control.redshift_cluster_automatic_snapshots_min_7_days,
    control.rds_db_instance_in_backup_plan,
    control.rds_db_instance_protected_by_backup_plan,
    control.dynamodb_table_protected_by_backup_plan,
    control.ec2_instance_protected_by_backup_plan,
    control.ebs_volume_protected_by_backup_plan,
    control.efs_file_system_protected_by_backup_plan,
    control.fsx_file_system_protected_by_backup_plan,
    control.rds_db_cluster_aurora_protected_by_backup_plan,
    control.backup_plan_min_retention_35_days,
    control.backup_recovery_point_manual_deletion_disabled,
    control.backup_recovery_point_min_retention_35_days,
    control.backup_recovery_point_encryption_enabled
  ]

  tags = merge(local.gxp_eu_annex_11_common_tags, {
    control_set = "project_phase"
  })
}