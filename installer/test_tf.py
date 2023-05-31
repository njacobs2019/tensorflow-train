"""
This script imports TensorFlow and verifies that the gpus were attached.
"""

import tensorflow as tf

print(f"TF Version: {tf.__version__}")
gpus = tf.config.list_physical_devices("GPU")
print(f"{len(gpus)} GPU(s):")
for gpu in gpus:
    print(gpu)
