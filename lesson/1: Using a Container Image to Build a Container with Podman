
# Lesson 1: Using a Containerfile to Build a Container with Podman

In this lesson, we'll explore how to use a Containerfile to build a custom container image using Podman. Containerfiles provide a set of instructions for building a container image. We will create a simple container image as an example.

## Prerequisites

Before we begin, ensure you have Podman installed on your system. You can typically install it using your system's package manager or by following the official installation instructions for your platform.

## Step 1: Create a Containerfile

### 1.1. Create a Directory

Start by creating a directory to organize your container build files.

```bash
mkdir my-container
cd my-container
```

### 1.2. Create a Containerfile

Inside the directory, create a text file named `Containerfile` (note the absence of a file extension). This file will contain the instructions for building your container image.

```bash
touch Containerfile
```

### 1.3. Edit the Containerfile

Open the `Containerfile` in a text editor and add the following lines to define your container:

```Dockerfile
# Use a base image
FROM fedora:latest

# Set metadata for the image
LABEL maintainer="your-email@example.com"
LABEL description="A Simple South African container image."

# Install any necessary software or perform customization here
# For example, installing a package:
RUN dnf -y update && dnf -y install "WHATEVER YOU NEED" && dnf clean all

# Set the default command to run when the container starts
CMD ["/bin/bash"]
```

Replace `your-email@example.com` with your email address and customize the image according to your requirements.

## Step 2: Build the Container Image

### 2.1. Build the Image

To build the container image using the Containerfile, use the following Podman command:

```bash
podman build -t my-image .
```

This command tells Podman to build an image tagged as `my-image` using the current directory (where your Containerfile is located) as the build context.

### 2.2. Verify the Image

After a successful build, you can verify that the image is available by listing the images:

```bash
podman images
```

## Step 3: Create and Run a Container

### 3.1. Create a Container

Now that you have your custom container image, you can create and run a container from it:

```bash
podman run -it --name my-zaf-container my-image
```

The `-it` flag allows you to interact with the container, and `--name` assigns a name to your container for easy reference.

### 3.2. Explore the Container

You are now inside the container. You can explore its file system, run commands, or install software specific to your application.

```bash
# For example, run a simple command within the container.
ls /
```

## Conclusion

Congratulations! You've successfully used a Containerfile to build a custom container image and created a container from it using Podman. Containerfiles provide a flexible way to define the contents and behavior of your containers.

In the next lesson, we'll explore more advanced topics, such as pushing your custom image to a container registry for sharing with others. Stay tuned!
```