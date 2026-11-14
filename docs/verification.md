# Verification & Maintenance Notes

[← Back to README](../README.md)

This repository describes a fast-moving landscape. Service names, model versions, SKUs, and
feature availability change quarterly. **Validate every claim below against official sources
before procurement or architecture sign-off.**

## What changes fastest

| Area | Typical churn | Watch for |
| :--- | :--- | :--- |
| Foundation model versions | Weeks | Model deprecation dates, regional availability |
| Agent framework APIs | Weeks–months | Renames (e.g., AI Studio → Foundry), SDK breaking changes |
| Custom silicon generations | 12–18 months | New TPU / Trainium / Blackwell generations |
| Managed-service pricing | Quarterly | Per-token vs. per-hour, provisioned throughput discounts |
| Region availability | Continuous | GA vs. preview gating by region |

## Authoritative sources

- **NVIDIA** — [NVIDIA AI Enterprise docs](https://docs.nvidia.com/ai-enterprise/) ·
  [NIM docs](https://docs.nvidia.com/nim/) · [NeMo docs](https://docs.nvidia.com/nemo/)
- **AWS** — [Amazon Bedrock docs](https://docs.aws.amazon.com/bedrock/) ·
  [SageMaker docs](https://docs.aws.amazon.com/sagemaker/) ·
  [What's New](https://aws.amazon.com/new/)
- **Azure** — [Azure Machine Learning docs](https://learn.microsoft.com/azure/machine-learning/) ·
  [Microsoft Foundry docs](https://learn.microsoft.com/azure/ai-foundry/) ·
  [Azure updates](https://azure.microsoft.com/updates/)
- **Google Cloud** — [Vertex AI docs](https://cloud.google.com/vertex-ai/docs) ·
  [Gemini API docs](https://ai.google.dev/gemini-api/docs) ·
  [Release notes](https://cloud.google.com/release-notes)

## Review cadence

- **Quarterly:** re-check the comparison matrix and provider positioning.
- **On any major announcement:** update the affected provider guide within the sprint.
- **Annually:** re-evaluate the shortlist of example repositories for staleness.
