# 🔵 Azure — Enterprise MLOps & OpenAI Powerhouse

[← Back to README](../README.md) · [Comparison matrix](../comparisons/provider-matrix.md)

## Overview

Azure's strength is deep enterprise integration (Entra ID, governance) plus its position as
the primary cloud for OpenAI models. The platform bifurcates between a unified generative AI
studio (**Microsoft Foundry**) and a robust custom ML platform (**Azure Machine Learning**),
with heavy emphasis on agent development and production-grade MLOps.

## Key tools & platforms

| Tool / Platform | Purpose & role |
| :--- | :--- |
| **Azure Machine Learning** | Comprehensive custom-ML platform: experiment tracking (MLflow-compatible), pipeline automation, model registry, responsible AI dashboards. |
| **Microsoft Foundry** (formerly Azure AI Studio) | Unified generative AI + agent platform. Model discovery incl. **Azure OpenAI Service**, prompt flow, evaluation, fine-tuning, and agent development (**Agent Studio**, **Agent Registry**) in one portal + SDK. |
| **AKS + partner solutions** | Kubernetes-native portability: pair AKS with **Anyscale** (Ray) or **Run:ai** (GPU scheduling) for a portable cross-cloud ML platform. |
| **Foundry Tools** (formerly Cognitive Services) | Pre-trained AI APIs for vision, speech, language, and decision tasks — no custom training required. |

## Example solution repository

### 🎯 [Boriszn/azure-ml-ai-foundry-labs-hub](https://github.com/Boriszn/azure-ml-ai-foundry-labs-hub)

**Why this repo:** a hands-on collection of notebooks and artifacts spanning the **entire
Azure ML and Microsoft Foundry lifecycle** — training, MLflow integration, pipelines,
endpoints, Responsible AI dashboards, RAG with Azure AI Search, and LLM fine-tuning.

**Inside:**

- **Training & MLflow** — experiment tracking and model management
- **Pipelines & endpoints** — automated ML pipelines and managed deployments
- **Responsible AI (RAI) dashboards** — monitoring, privacy, smart-noise techniques
- **RAG with Azure AI Search** — end-to-end retrieval-augmented generation
- **LLM fine-tuning** — notebooks for tuning within the Azure ecosystem

### Specialized repos

| Repository | Focus |
| :--- | :--- |
| [microsoft-foundry/foundry-samples](https://github.com/microsoft-foundry/foundry-samples) | Official samples for prompt agents and hosted agents via the Foundry SDK |
| [microsoft/agent-framework-samples](https://github.com/microsoft/agent-framework-samples) | Building agents with the **Microsoft Agent Framework** |
| [Azure/azure-quickstart-templates — aifoundry-basics](https://github.com/Azure/azure-quickstart-templates/tree/master/quickstarts/microsoft.machinelearningservices/aifoundry-basics) | Bicep template to provision a Foundry hub (IaC) |

## Quick start

```bash
git clone https://github.com/Boriszn/azure-ml-ai-foundry-labs-hub.git
# Start in training/ for the Azure ML experiment-tracking + pipeline workflow
# Then rag/ for a Retrieval-Augmented Generation pipeline on Azure AI Search
# For agents: clone foundry-samples and deploy a prompt or hosted agent
```

## Strategic note

Azure is the **enterprise MLOps choice**, especially for Microsoft-invested organizations.
**Azure ML** has the most mature governance and responsible-AI tooling; **Foundry** offers the
deepest OpenAI frontier-model integration and a rapidly maturing agent platform.
