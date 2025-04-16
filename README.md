# LCP Docker Environment

This repository provides a minimal Docker environment to run the **Light Client Protocol (LCP)**.  
It's useful for local development, testing, or prototyping purposes.

## 🐳 Getting Started

Follow the steps below to build and run the LCP environment using Docker.

### 1. Clone the repository

```bash
git clone https://github.com/your-username/lcp-docker-env.git
cd lcp-docker-env
```

### 2. Build the Docker image

```bash
docker build -t lcp-env .
```

### 3. Run the container

```bash
docker run --rm -it lcp-env
```

🔧 Add volume mounts or port mappings as needed for your use case.

```tree
.
├── Dockerfile       # Environment definition to run LCP
└── README.md        # Project overview and usage instructions
```

