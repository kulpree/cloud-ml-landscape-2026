# Cross-Provider Decision Matrix

[← Back to README](../README.md)

## Side-by-side

| Dimension | 🟢 NVIDIA | 🟠 AWS | 🔵 Azure | 🔴 Google Cloud |
| :--- | :--- | :--- | :--- | :--- |
| **Primary role** | Accelerator + software layer across all clouds | Broadest managed AI service portfolio | Enterprise MLOps + OpenAI-first | Agentic AI + custom TPU silicon |
| **Flagship GenAI service** | NIM + NeMo microservices | Amazon Bedrock | Microsoft Foundry / Azure OpenAI | Gemini Enterprise Agent Platform |
| **Custom ML platform** | NeMo / DGX Cloud Lepton | SageMaker AI | Azure Machine Learning | Vertex AI → Agent Platform |
| **Agent framework** | NeMo Agent Toolkit | Strands Agents + Bedrock AgentCore | Microsoft Agent Framework | Agent Development Kit (ADK) |
| **Inference runtime** | Triton, TensorRT-LLM, Dynamo | Bedrock / SageMaker endpoints, DJL | Managed endpoints, vLLM on AKS | Cloud Run + vLLM / TGI |
| **Custom silicon** | GPUs (Blackwell / GB200) | Trainium, Inferentia | Maia, Cobalt | TPU (Trillium) |
| **Multi-cloud posture** | Natively multi-cloud | Single-cloud, broad | Single-cloud, hybrid (Arc) | Single-cloud, Anthos |
| **Lock-in risk** | Low (portable containers) | Medium–High | Medium–High | Medium–High |
| **Governance maturity** | N/A (inherits cloud) | Strong (IAM, Control Tower) | Strongest (Entra, Purview) | Strong (IAM, org policy) |
| **Best fit** | Multi-cloud GPU fleets, portability | Broad enterprise AI, fast GenAI wins | Microsoft shops, OpenAI models | Agent systems, TPU cost efficiency |

## Decision guide

### Choose NVIDIA when…

- You run multi-cloud or hybrid and need one consistent AI runtime everywhere.
- Your bottleneck is GPU utilization, inference latency, or serving cost.
- You want portable containers over proprietary managed APIs.

### Choose AWS when…

- You need the widest menu of managed AI services under one IAM/account model.
- Generative AI should go live fast with minimal ops (Bedrock).
- You need fine-grained control for a subset of custom models (SageMaker).

### Choose Azure when…

- You are already standardized on Microsoft identity, governance, and tooling.
- OpenAI frontier models and enterprise compliance are both requirements.
- Responsible AI and MLOps auditability are first-class concerns.

### Choose Google Cloud when…

- Your roadmap is centered on multi-agent systems and orchestration.
- TPU economics materially change your training/inference cost model.
- You want strong data-analytics integration (BigQuery) with the ML platform.

## The two trade-offs that matter most

1. **Convenience vs. lock-in.** Unified hyperscaler suites cut time-to-first-model but carry a
   managed-service premium (est. ~25% on some compute) and bind pipelines to proprietary APIs.
   Modular OSS stacks (MLflow, Kubeflow, Feast) stay portable at the cost of platform engineering.
2. **Serving performance vs. operational simplicity.** Managed endpoints are easy; dedicated
   runtimes (Triton, TensorRT-LLM, vLLM) are often needed to escape the performance ceiling of
   generic Python REST wrappers.

## A pragmatic hybrid pattern

Many teams land on: **NVIDIA NIM/Triton as the inference layer** (portable, GPU-optimal) +
**one hyperscaler as the control plane** (data gravity, IAM, governance). This keeps serving
portable while still leveraging managed orchestration and storage.
