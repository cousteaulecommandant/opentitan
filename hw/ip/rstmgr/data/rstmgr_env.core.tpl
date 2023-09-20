CAPI=2:
# Copyright lowRISC contributors.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
${gen_core_comment}
name: "lowrisc:dv:rstmgr_env:0.1"
description: "RSTMGR DV UVM environment"
filesets:
  files_rtl:
    depend:
      - lowrisc:ip:rstmgr

  files_dv:
    depend:
      - lowrisc:dv:rstmgr_ral
      - lowrisc:dv:cip_lib
      - lowrisc:dv:rstmgr_common_env

    files:
      - rstmgr_env_pkg.sv
      - rstmgr_scoreboard.sv: {is_include_file: true}
    file_type: systemVerilogSource

targets:
  default:
    filesets:
      - files_dv
      - files_rtl
