FROM apache/spark-py

# Ensure Python and pip are installed
USER root
RUN apt-get update && apt-get install -y python3 python3-pip python3-dev

# Install additional Python packages if needed
# Install Python dependencies
RUN pip3 install --no-cache-dir pyarrow delta-spark pandas jupyter
