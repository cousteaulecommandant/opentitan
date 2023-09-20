CAPI=2:
# Copyright lowRISC contributors.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
${gen_core_comment}
name: "lowrisc:dv:rstmgr_sva:0.1"
description: "RSTMGR DV SVA components"
filesets:
  files_dv:
    depend:
      - lowrisc:dv:rstmgr_sva_ifs

    files:
      - rstmgr_bind.sv
    file_type: systemVerilogSource

targets:
  default: &default_target
    filesets:
      - files_dv
  formal:
    <<: *default_target
    filesets:
      - files_dv
    toplevel: rstmgr
