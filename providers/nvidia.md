# 🟢 NVIDIA — Universal AI Platform & Accelerator Layer

[← Back to README](../README.md) · [Comparison matrix](../comparisons/provider-matrix.md)

## Overview

NVIDIA's strategy is **not** to compete as a general-purpose cloud, but to make its AI stack
the default operating layer wherever GPUs exist. Its tools abstract away infrastructure and
provide a consistent experience across on-premises, DGX Cloud, and the major public clouds.

## Key tools & platforms

| Tool / Platform | Purpose & role |
| :--- | :--- |
| **DGX Cloud Lepton** | Multi-cloud AI platform unifying compute across NVIDIA Cloud Partners and GPU marketplaces. One workflow for development, training, and inference — run workloads where the data lives without rearchitecting. |
| **NVIDIA AI Enterprise** | Comprehensive software platform: 100+ frameworks, pre-trained models, and tools including **NIM microservices**, **NeMo** (LLM customization), **Riva** (speech), **BioNeMo** (drug discovery). |
| **NIM (Inference Microservices)** | Pre-built, optimized containers packaging a model behind a standard API. Deploy high-performance inference anywhere — cloud, data center, edge — with a single command. |
| **NeMo Microservices** | Full LLM lifecycle: **Customizer** (fine-tuning), **Evaluator** (assessment), **Guardrails** (safety), **Retriever** (RAG). |
| **Inference runtimes** | **Triton**, **TensorRT-LLM**, **Dynamo** — dedicated serving software for optimizing and scaling deployment on any infrastructure. |

## Example solution repository

### 🎯 [NVIDIA/GenerativeAIExamples](https://github.com/NVIDIA/GenerativeAIExamples)

**Why this repo:** the official starting point for integrating with the NVIDIA software
ecosystem. Contains reference workflows for RAG pipelines, agentic systems, fine-tuning, and
data-flywheel patterns — all optimized for accelerated infrastructure and microservice
architecture.

**Inside:**

- **RAG pipelines with NIM microservices** — end-to-end RAG built on NIMs and LangChain
- **Data flywheel tutorials** — NeMo Microservices (Datastore, Entity Store, Customizer,
  Evaluator, Guardrails) combined with NIMs for tool-calling and embedding fine-tuning
- **Safer agentic AI** — auditing LLMs with NeMo Auditor, parallel guardrails for lower latency
- **Knowledge graph RAG** — GPU-accelerated pipeline using NIMs and RAPIDS
- **Vision NIM workflows** and agentic workflows with Llama 3.1

### Specialized repos

| Repository | Focus |
| :--- | :--- |
| [NVIDIA/workbench-example-downloadable-nim](https://github.com/NVIDIA/workbench-example-downloadable-nim) | Build & deploy a downloadable NIM with AI Workbench |
| [rh-ai-quickstart/nvidia-blueprint-enterprise-rag-pipeline](https://github.com/rh-ai-quickstart/nvidia-blueprint-enterprise-rag-pipeline) | Enterprise RAG blueprint on OpenShift |
| [NVIDIA-NeMo/Nemotron](https://github.com/NVIDIA-NeMo/Nemotron) | SFT runs on DGX Cloud Lepton via the Nemotron framework |

## Quick start

```bash
git clone https://github.com/NVIDIA/GenerativeAIExamples.git
cd GenerativeAIExamples
# Explore nemo/data-flywheel/ for a full fine-tune + evaluate workflow
# Follow rag/ to deploy a local NIM and wire it into LangChain
# For Lepton users: see the Nemotron repo for a step-by-step SFT run
```

## Strategic note

NVIDIA provides the **universal accelerator layer**. If you operate multi-cloud or hybrid and
want one consistent AI runtime everywhere, NIM and NeMo microservices are purpose-built to
abstract away infrastructure differences.
