# 🟠 AWS — Three-Pillar AI Strategy

[← Back to README](../README.md) · [Comparison matrix](../comparisons/provider-matrix.md)

## Overview

AWS organizes its AI portfolio into three complementary pillars serving different builder
needs: **Bedrock** for generative AI via managed APIs, **SageMaker** for full-control ML
lifecycle management, and **Amazon Q** for ready-made assistants. AI is treated as an
integrated layer across the cloud rather than a standalone service.

## Key tools & platforms

| Tool / Platform | Purpose & role |
| :--- | :--- |
| **Amazon Bedrock** | Centerpiece for generative AI. Fully managed API service exposing a broad foundation-model catalog (Anthropic, Meta, Mistral, Cohere, Amazon Nova) with no infrastructure management. Includes **Bedrock AgentCore** for agents and **Reinforcement Fine-Tuning (RFT)**. |
| **Amazon SageMaker (AI / Unified Studio)** | Workbench for teams needing full control: data prep, training, tuning, deployment. **Serverless Model Customization** and **SageMaker JumpStart** for one-click solutions. |
| **Amazon Q** | Ready-made assistants: **Q Developer** (coding) and **Q Business** (enterprise workflows). |
| **Specialized AI services** | Pre-trained APIs: Rekognition (vision), Comprehend (NLP), Textract (documents), Polly (TTS), Transcribe (STT). |

## Example solution repository

### 🎯 [aws-samples/sample-aiml-solution-labs](https://github.com/aws-samples/sample-aiml-solution-labs)

**Why this repo:** maintained by AWS Specialist Solution Architects, it covers **both Bedrock
and SageMaker** with Jupyter notebooks for experimentation plus deployable Infrastructure-as-Code
artifacts — ideal for moving from prototype to production.

**Inside:**

- **Jupyter notebooks** — interactive examples across Bedrock and SageMaker use cases
- **IaC templates** — deployable infrastructure code (CDK / CloudFormation)
- **Code artifacts & use cases** — real-world, production-oriented scenarios
- **Service-organized folders** — navigate `bedrock/` or `sagemaker/` directly

### Specialized repos

| Repository | Focus |
| :--- | :--- |
| [awslabs/amazon-bedrock-agentcore-samples](https://github.com/awslabs/amazon-bedrock-agentcore-samples) | Implementing **Bedrock AgentCore** capabilities |
| [aws-samples/gen-ai-demos](https://github.com/aws-samples/gen-ai-demos) | Six popular GenAI demos across AWS AI services |
| [aws-samples/sample-strands-agent-with-agentcore](https://github.com/aws-samples/sample-strands-agent-with-agentcore) | Agentic chatbot reference architecture (Strands + AgentCore) |

## Quick start

```bash
git clone https://github.com/aws-samples/sample-aiml-solution-labs.git
# Prereqs: AWS account with permissions, configured AWS CLI,
#          Python 3.11+, Jupyter Lab
# Start in bedrock/ for foundation-model experiments
# Then clone the AgentCore samples for agentic workflows
```

## Strategic note

AWS offers the broadest managed-service surface area. **Bedrock** minimizes operational
overhead; **SageMaker** maximizes control. The **AgentCore** ecosystem is the strategic bet
for production agentic systems.
