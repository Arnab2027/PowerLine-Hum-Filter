# Simple Signal Processing: Powerline Hum Filtering

A MATLAB-based signal processing project demonstrating the design and implementation of a Butterworth filter to eliminate 50 Hz powerline hum noise from a multi-tone synthetic signal.

---

## Technical Overview

### Conceptual Overview
Powerline hum is low-frequency interference caused by AC electrical supply lines (typically operating at 50 Hz or 60 Hz). In signal processing and measurement systems, this interference corrupts low-amplitude target signals. Utilizing a frequency-selective filter, such as a Butterworth filter, allows us to attenuate the unwanted line noise while preserving desired signal frequencies.

### Formal Definition
A **Butterworth Filter** is a type of signal processing filter designed to have a maximally flat frequency response in the passband. The magnitude response of an $n$-th order Butterworth low-pass filter is expressed mathematically as:

$$\vert{}H(j\omega)\vert{} = \frac{1}{\sqrt{1 + \left(\frac{\omega}{\omega_c}\right)^{2n}}}$$

Where:
* $\omega_c$ is the cutoff frequency.
* $n$ is the filter order.

---

## Project Specifications

* **Sampling Frequency ($f_s$):** $1000\text{ Hz}$
* **Signal Components:** $3\text{ Hz}$ and $9\text{ Hz}$ sine waves
* **Noise Component:** $50\text{ Hz}$ sinusoidal powerline hum
* **Filter Type:** Bandpass / Bandstop Butterworth Filter

---

## Repository Structure

```text
├── src/
│   └── powerline_hum_filter.m
├── assets/
│   └── output_plots.png
└── README.md
