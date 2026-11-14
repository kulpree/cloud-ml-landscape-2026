# Cloud ML Tools Landscape (2026)

A vendor-neutral, implementer-focused reference for the cloud ML platforms of the four
industry leaders — **NVIDIA, AWS, Azure, and Google Cloud** — each paired with a curated,
runnable example repository.

## Why this repo

The 2026 landscape is defined by a divergence: the hyperscalers have built increasingly
**unified, vertically integrated platforms** spanning the ML lifecycle, while **NVIDIA** has
doubled down on being the **universal accelerator layer** across all clouds. The strategic
battle is no longer raw compute — it's owning the developer workflow, from foundation model
access to agent orchestration and production MLOps.

## Guides

| Provider | Positioning | Guide | Example repo |
| :--- | :--- | :--- | :--- |
| 🟢 **NVIDIA** | Universal AI platform & accelerator layer | [providers/nvidia.md](providers/nvidia.md) | [NVIDIA/GenerativeAIExamples](https://github.com/NVIDIA/GenerativeAIExamples) |
| 🟠 **AWS** | Three-pillar strategy: Bedrock, SageMaker, Q | [providers/aws.md](providers/aws.md) | [aws-samples/sample-aiml-solution-labs](https://github.com/aws-samples/sample-aiml-solution-labs) |
| 🔵 **Azure** | Enterprise MLOps & OpenAI powerhouse | [providers/azure.md](providers/azure.md) | [Boriszn/azure-ml-ai-foundry-labs-hub](https://github.com/Boriszn/azure-ml-ai-foundry-labs-hub) |
| 🔴 **Google Cloud** | Agentic AI & TPU innovator | [providers/google-cloud.md](providers/google-cloud.md) | [GoogleCloudPlatform/generative-ai](https://github.com/GoogleCloudPlatform/generative-ai) |

👉 Start with the **[cross-provider comparison matrix](comparisons/provider-matrix.md)** if you're evaluating rather than implementing.

## Key strategic takeaways

- **Convenience vs. lock-in.** Unified hyperscaler suites accelerate time-to-first-model but
  carry a managed-service premium (est. ~25% on some compute) and bind pipelines to
  proprietary APIs. Modular open-source stacks (MLflow, Kubeflow, Feast) stay portable at
  the cost of platform engineering effort.
- **The serving-runtime divide.** Managed endpoints are convenient, but dedicated runtimes
  (**NVIDIA Triton**, **TensorRT-LLM**, **vLLM**) are often required to overcome the
  performance ceilings of generic Python REST wrappers.
- **Agents are the new battleground.** Google and Azure have explicitly reorganized their ML
  platforms around agent development and orchestration; AWS responded with **Bedrock
  AgentCore** and **Strands**; NVIDIA with **NeMo Agent Toolkit**.

## Repo layout

```text
providers/     Per-provider landscape + implementation guide
comparisons/   Cross-provider decision matrix and selection guide
docs/          Verification notes and contribution guidelines
```

## Usage

```bash
git clone <your-repo-url>
cd cloud-ml-landscape-2026
make lint          # markdown lint (requires npx / node)
```

## Maintenance

Service names, model versions, and SKUs change fast. Before any procurement or architecture
decision, validate against the official documentation listed in
[docs/verification.md](docs/verification.md).
