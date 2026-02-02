# 🧠 Systolic_array  
### High-Performance Systolic Array Accelerator on Sky130 🚀

![Status](https://img.shields.io/badge/Status-Tapeout_Ready-success)
![PDK](https://img.shields.io/badge/PDK-Sky130-blue)
![Flow](https://img.shields.io/badge/Flow-OpenLane-orange)
![Frequency](https://img.shields.io/badge/Frequency-136.89MHz-brightgreen)

---

## 📌 Overview

![Final GDS View](./docs/images/gds_cover.png)

*Final GDSII snapshot showing three SRAM macros and standard-cell logic routed across M1–M5.*



**Systolic_array** is a hardened systolic array accelerator designed for matrix multiplication workloads, implemented using the **OpenLane RTL-to-GDS flow** on **SkyWater 130nm**.

This project started on **Dec 21st** with the explicit goal of pushing **open-source Physical Design tools** (Yosys, OpenROAD, OpenLane, KLayout) to their practical limits under **real hardware constraints**.

Rather than optimizing for a quick win, the intent was to expose **real-world PD challenges**—congestion collapse, timing failures, PDN instability, LVS mismatches, and tool scalability limits—and resolve them through architectural and physical reasoning.

The design evolved from a **macro-less architecture (~11 mm²)** that was physically infeasible to a **macro-driven, timing-closed ASIC (1.24 mm² @ 136.89 MHz)**.

---

## ⚡ Key Specifications

| Metric | Value |
|------|------|
| Technology | SkyWater 130nm |
| Flow | OpenLane / OpenROAD |
| Core Area | **1.24 mm²** |
| Gate Count | **~3.16M** |
| SRAM Macros | **3 × 32×256** |
| Clock Frequency | **136.89 MHz** |
| Supply Voltage | 1.8 V |
| Utilization | ~80% |
| IR Drop Target | 5% VDD |
| DRC | Clean |
| LVS | Clean |
| Antenna | Clean |

---

## 🧭 Project Evolution

This project mirrors how real silicon designs mature—starting from an ambitious architecture, hitting physical limits, and then being reshaped by layout, routing, timing, and power realities.

---

## Phase 1: Macro-less Architecture (Intentional Stress Test)

The initial implementation avoided SRAM macros entirely, storing all intermediate data using flip-flops. This was an intentional stress test to expose Physical Design bottlenecks early.

### Routing & Congestion Failure
![Routing failure without macros](./docs/images/Rotuing_failure_without_macros.png)

**Fig:** Severe congestion caused by forcing thousands of registers through limited routing resources.

### Observations
- Severe register explosion
- Synthesis runtime increased to hours
- DRC consumed **42+ GB RAM**
- Timing closure impossible

### Outcome
- Core area expanded to **~11 mm²**

This phase proved that **architecture decisions dominate physical feasibility**.

---

## Phase 2: Macro-Based Redesign

To address scalability, the RTL was redesigned around **three SRAM macros**:
- Macro A & B: Input storage
- Macro C: Output accumulation

### Impact
- Area reduced to **~1.49 mm²**
- Congestion significantly reduced
- Timing became feasible

New challenges emerged:
- Macro pin accessibility
- Narrow routing channels
- Placement-driven setup/hold violations

---

## 🧱 Floorplanning & Macro Placement

Macro placement dominated routability, congestion, and timing.

### Floorplan Snapshot
![Macro + Std Cell Floorplan](./docs/images/floorplan_u_shape.png)

**Fig:** Final macro-aware floorplan showing U-shaped macro placement along the periphery, creating a wide central routing channel.

### Techniques Applied
- Flyline-driven macro positioning
- Flipping and 180° macro rotations
- Pin-order alignment with routing direction
- Keep-out margin and halo tuning

This phase reduced macro-adjacent congestion and stabilized setup/hold behavior.

---

## ⏱️ Timing Closure

Timing closure was achieved through **constraint discipline and physical reasoning**, not brute-force buffering.

### Clock Sweep
- 9.0 ns → 8.0 ns → 7.5 ns → 7.3 ns → **7.305 ns**

### Key Learnings
- Over-tight **max_transition** and **fanout** constraints caused excessive buffer insertion
- Relaxing these constraints reduced critical-path delay
- Input transition violations were fixed by correctly modeling a **strong external driver** in the SDC

### CTS View
![CTS Highlight](./docs/images/cts_highlight.png)

**Fig:** Clock Tree Synthesis with balanced insertion delay and clean skew across macro and standard-cell regions.

Final frequency achieved: **136.89 MHz**

---

## ⚡ Power Distribution Network (PDN)

Macro dimensions were not integer multiples of standard-cell row height, leading to uneven tap-cell placement and early PDN failures.

### PDN Challenges
- Trimmed power stripes
- Misaligned macro power pins
- IR-drop uncertainty

### Resolution
- Custom PDN configuration using `pdn_cfg.tcl`
- Explicit IR-drop analysis using VSRC modeling
- Targeted **≤5% VDD**
- Dense **Metal-5** straps, freeing lower metals for signal routing

This ensured stable power delivery without sacrificing routability.

---

## 🧪 Signoff Status

### DRC Debugging

**Before Fix**  
![DRC Violated](./docs/images/DRC_violated.png)

**After Fix**  
![DRC Clean](./docs/images/DRC_clean.png)

### Final Checks
- ✅ Setup & Hold clean
- ✅ DRC clean
- ✅ LVS clean
- ✅ IR & EM verified

---

## 🚀 Final Takeaway

This project was not about running OpenLane—it was about **owning the Physical Design problem** end to end.

> Understanding *why* things break matters more than knowing *which command to run*.

All RTL, scripts, reports, and GDS are fully open-sourced in this repository.

---

## 👤 Author

**Ajay H R**  
Physical Design Engineer | RTL-to-GDS | OpenLane | Sky130

