# DIGITAL-FILTER-DESIGN

*COMPANY*: CODTECH IT SLOUTIONS

*NAME*: MALLAMPALLY JAYANTHA SIVA SRINIVAS

*INTERN ID*: CTIS7516

*DOMAIN*: VLSI

*DURATION*: 4 WEEKS

*MENTOR*: NEELA SANTOSH

## Task 4 — FIR Low Pass Filter Design

Language: MATLAB
--
Tool: MATLAB
--
Method: Window Method (Fourier Series Approach)
--
## Description

A Finite Impulse Response (FIR) filter is one of the two fundamental types of digital filters used in Digital Signal Processing. FIR filters are inherently stable (all poles at the origin of the z-plane), unconditionally bounded in their output, and can be designed to have exactly linear phase response — meaning all frequency components of a signal experience the same time delay, preventing phase distortion. These properties make them the preferred choice in audio processing, communications, and biomedical signal applications.

This task involved the complete design, mathematical derivation, MATLAB implementation, and comparative frequency response analysis of a 15th-order FIR Low Pass Filter (LPF) using four different window functions. The filter was designed using the windowing (Fourier Series) method, where the ideal infinite-duration impulse response of a Low Pass Filter is truncated and shaped using a window function to produce a practical, causal FIR filter.

## Design Specifications:

<img width="666" height="294" alt="image" src="https://github.com/user-attachments/assets/108052ad-a672-46c0-9380-ab4d4f7f33c2" />

The MATLAB program computes the ideal sinc-based impulse response for the LPF cutoff frequency, applies each of the four window functions, and plots the resulting magnitude frequency responses |H(e^jω)| in a 2×2 subplot arrangement for direct visual comparison.

## Window Function Comparison:

<img width="1074" height="246" alt="image" src="https://github.com/user-attachments/assets/f6538c07-8905-4592-97ba-995cee2e4888" />

All four designs maintain perfectly symmetric coefficients about the centre tap M = 7 (i.e., h(n) = h(N−1−n)), guaranteeing exactly linear phase (Type I FIR filter). The centre tap value h(7) = ωc/π = 0.4799 is consistent across all four windows, since every standard window function evaluates to 1.0 at the centre index. All filters are unconditionally stable since FIR filters have no feedback — all poles are at the origin of the z-plane.

## Key Results

Hamming window achieved the best stopband attenuation at 53 dB with a side lobe level of −41 dB.
Rectangular window provided the sharpest transition band but exhibited severe Gibbs phenomenon ripple (only 21 dB attenuation).
Kaiser window is the most flexible, allowing stopband attenuation to be tuned via the β parameter.
Hanning window offers a good compromise (44 dB attenuation) and naturally tapers to zero, minimising spectral leakage.
Coefficient symmetry (linear phase) confirmed for all four designs.
Filter stability confirmed — unconditionally stable (FIR, no feedback).

## FUTURE EXTENSIONS

FIR Filter: Design band-pass, high-pass, and band-stop variants; increase filter order for sharper roll-off; deploy on DSP hardware (TMS320C6713) for real-time processing.

## OUTPUT

<img width="1556" height="630" alt="Image" src="https://github.com/user-attachments/assets/7f810d6f-31a0-4bde-b85d-2c0510f21cb2" />






