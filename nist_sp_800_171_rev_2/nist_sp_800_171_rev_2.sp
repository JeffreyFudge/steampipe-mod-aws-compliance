locals {
  nist_sp_800_171_rev_2_common_tags = merge(local.aws_compliance_common_tags, {
    nist_sp_800_171_rev_2 = "true"
    type                  = "Benchmark"
  })
}

benchmark "nist_sp_800_171_rev_2" {
  title         = "NIST SP 800-171 Rev. 2"
  description   = "NIST SP 800-171 focuses on protecting the confidentiality of Controlled Unclassified Information (CUI) in nonfederal systems and organizations, and recommends specific security requirements to achieve that objective. NIST 800-171 is a publication that outlines the required security standards and practices for non-federal organizations that handle CUI on their networks."
  documentation = file("./nist_sp_800_171_rev_2/docs/nist_sp_800_171_rev_2_overview.md")

  children = [
    benchmark.nist_sp_800_171_rev_2_3_1,
    benchmark.nist_sp_800_171_rev_2_3_3,
    benchmark.nist_sp_800_171_rev_2_3_4,
    benchmark.nist_sp_800_171_rev_2_3_5,
    benchmark.nist_sp_800_171_rev_2_3_6,
    benchmark.nist_sp_800_171_rev_2_3_11,
    benchmark.nist_sp_800_171_rev_2_3_13,
    benchmark.nist_sp_800_171_rev_2_3_14
  ]

  tags = local.nist_sp_800_171_rev_2_common_tags
}