# PRAT

PRAT is a **P**rotocol **R**epresentation and **A**nalysis **T**oolkit developed at Northeastern University and Worcester Polytechnic Institute. In its current form, it assists an analyst in determining lines of code associated with build-time features. The goal is to debloat network protocol implementations (such as Mosquitto and OpenDDS) and other IoT-related software, by removing features that are not deemed necessary for a particular application.

For a description of what PRAT does, find the paper at: https://web.cs.wpi.edu/~ldecarli/docs/papers/tosem21-debloat.pdf (to appear in the ACM Transactions on Software Engineering and Methodology).

# Credits

Developed by Ryan Williams (Northeastern) and Tongwei Ren (WPI) under the supervision of Long Lu (Northeastern) and Lorenzo De Carli (WPI).

# Instructions

PRAT is a proof-of-concept provided in the form of a Docker container. The container includes PRAT source code and software artifacts to test PRAT's functioning.

To build the container for PRAT, just run the following command under `PRAT/` directory.
```
sudo docker build -t prat/prat .
```
# Acknowledgments

PRAT's development was generously funded by the Office of Naval Research under grant N00014-18-1-2660 "Automated Protocol Specialization and Diversification for Individualized Defense".
