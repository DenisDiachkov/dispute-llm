"""
This module contains the different LLM engines that can be used to train the LLM model.
"""

from typing import Protocol, runtime_checkable

from .engine import ConcurrentEngine, Engine
from .vllm_engine import VLLMEngine, VLLMSamplingParams
