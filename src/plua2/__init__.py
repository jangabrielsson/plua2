"""
plua2 - Python-Lua async runtime with timer support
"""

__version__ = "0.1.0"
__author__ = "Jan Gabrielsson"
__email__ = "jan@gabrielsson.com"

from .interpreter import LuaInterpreter
from .runtime import LuaAsyncRuntime

__all__ = ["LuaInterpreter", "LuaAsyncRuntime"]
