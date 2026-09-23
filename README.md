# Face Landmarker 🎭

A real-time facial landmark tracking application built with Python using OpenCV and Google's MediaPipe Tasks API. 

This program captures live video from your webcam, detects facial structures, and overlays hundreds of precise tracking points directly onto the video feed.

## ✨ Features

* **Real-Time Tracking:** Processes live webcam feeds smoothly using MediaPipe's optimized Video Running Mode.
* **Precise Landmarks:** Overlays hundreds of facial landmark meshes dynamically.
* **Visual Output:** Renders the tracking feed in an interactive window via OpenCV.

## 🛠️ Technologies Used

* **Python** — Core language
* **OpenCV (`opencv-python`)** — Handle webcam streaming and frame manipulations.
* **MediaPipe (`mediapipe`)** — Provide the AI vision architecture and facial landmark detection mesh.

## 📋 Requirements

* Python 3.10 or later
* Pre-trained model file: `face_landmarker.task` 
  *(Ensure you download the model from Google's MediaPipe repository and place it in your specified model path).*

## 🚀 Installation and Setup

### 1. Clone the Repository
```bash
git clone https://github.com/YOUR_USERNAME/Face-Landmarker.git
cd Face-Landmarker
```
*Note: Replace `YOUR_USERNAME` with your GitHub username.*

### 2. Create a Virtual Environment
**Windows:**
```bash
python -m venv .venv
.venv\Scripts\activate
```
**macOS/Linux:**
```bash
python3 -m venv .venv
source .venv/bin/activate
```

### 3. Install Dependencies
```bash
python -m pip install -r requirements.txt
```

### 4. Configure and Run the Program
1. Download the `face_landmarker.task` bundle from MediaPipe.
2. Update the `MODEL_PATH` variable inside your code file to point to your local model path.
3. Launch the script:

```bash
python Face_Landmarker.py
```
*Press the `ESC` key while focusing on the visual feed window to exit.*

## 🧠 How It Works

1. **Webcam Streaming:** Captures sequential frames from the system default camera using OpenCV.
2. **Colorspace Inversion:** Translates standard BGR camera frames into RGB images required by MediaPipe.
3. **Tasks Video Engine:** Submits frames to the `FaceLandmarker` instance using sequential frame IDs to track landmarks smoothly over time.
4. **Coordinate Mapping:** Extracts the normalized geometric arrays and maps them relative to the current frame width and height before rendering pixel points.

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
