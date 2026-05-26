# Grid-Connected Renewable Energy Farm Transients & Fault Study

## 📌 Project Overview
This project models a **10 MW Solar PV Farm equivalent network** connected to a distribution utility grid using **MATLAB & Simulink (Simscape Foundation Library)**. The study evaluates the transient voltage sags and short-circuit overcurrent profiles that occur during a severe grid fault event.

## 🛠️ Tech Stack & Workflow
- **Software:** MATLAB / Simulink (Simscape)
- **Environment:** Cloud-optimized repository configuration
- **Version Control:** GitHub Tree-Style Workflow

## 📐 Circuit Topology & Parameters
The single-phase equivalent model consists of:
1. **Renewable Generation Source:** $260\text{ V AC}$ output representing the inverted solar farm block.
2. **Transmission/Distribution Line:** Modeled accurately using lumped parameter Resistor ($R$) and Inductor ($L$) elements.
3. **Transient Fault Switch:** A timed physical switch that connects the network directly to an Electrical Reference ground at $t = 0.4\text{ s}$, creating a catastrophic short-circuit condition.
4. **Utility Grid Source:** A high-voltage $110\text{ kV AC}$ infinite bus equivalent system.

## 📊 Transient Simulation Results
- **Pre-Fault State ($0.0\text{s} - 0.4\text{s}$):** System operates in steady-state nominal conditions.
- **Fault Injection ($t = 0.4\text{s}$):** The fault switch closes, triggering an instantaneous drop in voltage amplitude (voltage sag) and an intensive current spike reaching a transient peak magnitude near $10^7\text{ A}$.
- **Data Logging:** Physical system data is systematically monitored via Simscape Voltage and Current sensors, parsed through a `PS-Simulink Converter`, and streamed directly to the MATLAB workspace as high-fidelity `Timeseries` logs.

## 🚀 How to Execute the Project
1. Clone or download this repository to your active workspace directory.
2. Run `scripts/setup_params.m` to instantly load all electrical variables ($V_{low}, V_{high}, T_s, F_{grid}$) into memory.
3. Open and execute the Simulink model file located at `model/pv_grid_transient_model.slx`.
4. Run `scripts/plot_results.m` to compile and generate the transient waveform figures.
