# 🧠 CBEM Project 4: A 3-Layer Neural Network (MATLAB)

This repository contains the MATLAB implementation of a simple 3-layer neural network as part of the CBEM lab project supervised by Dr. Claudia Weis.

## 📚 Objective

The goal is to:
- Implement a basic feedforward neural network with **784 input nodes**, **100 hidden nodes**, and **10 output nodes** (corresponding to digits 0–9).
- Train it using **MNIST** digit data (in `.csv` format).
- Evaluate its accuracy across multiple runs.
- Visualize and analyze prediction quality per digit.
- Optionally test with self-created handwritten digits.

## 🧠 Network Architecture

Each neuron applies an **activation function** (Sigmoid or ReLU), and training is done using **backpropagation** with gradient descent.

---

## 🧾 Project Tasks

1. **Visualize Input Data**
   - Load and plot 28×28 pixel intensity maps from MNIST `.csv` files.
   - Observe different digits visually before training.

2. **Implement Neural Network in MATLAB**
   - Use the class-based structure (`.m` file) as provided in the CBEM template.
   - Define weights, activation functions (sigmoid or ReLU), and forward pass logic.

3. **Train the Network**
   - Use the large MNIST training dataset.
   - Normalize inputs and encode the label to target vectors.
   - Train with gradient descent and backpropagation.

4. **Evaluate Accuracy**
   - Test on the MNIST test dataset.
   - Measure total and per-digit prediction accuracy.
   - Visualize results using bar charts or confusion matrices.

5. **Experiment with Random Initialization**
   - Train the model with different random weight seeds.
   - Observe variations in accuracy.
   - Optionally, try using fixed weights (e.g., all weights = 0.5) and compare.

6. **(Optional)**: Test with your own handwritten digits
   - Create 28×28 pixel versions of your own handwriting and classify them.

---

## 🧪 Data Preprocessing Notes

- Scale pixel values using:
- Target vector format:
- If label is `0`: `[0.99, 0.01, ..., 0.01]`
- If label is `5`: `[0.01, 0.01, 0.01, 0.01, 0.01, 0.99, 0.01, 0.01, 0.01, 0.01]`

---

## 👨‍💻 Team Members

- Soham Kumthekar  
- Mohammed Asad Akhtar  
- **Tanay Joshi** (Repo Maintainer)  
- Adithye Nambiar  
- Saif Almasalamah  

---

## 🗂 Submission Requirements

Each group must upload:
- All MATLAB `.m` files
- A presentation slide deck (`.pdf`, landscape)
- A list of group members (included above)
- (Optional) Presentation video (1 per group)

---

## 📅 Deadlines

- **Code & Presentation Upload**: July 18 (open until July 31)
- **Presentation**: During the last 2 weeks of the semester (video or live)

---

## 📎 References

- [MATLAB OOP: Create a Simple Class](https://www.mathworks.com/help/matlab/matlab_oop/create-a-simple-class.html)  
- [3Blue1Brown: What Are Neural Networks?](https://www.3blue1brown.com/lessons/neural-networks)

---


