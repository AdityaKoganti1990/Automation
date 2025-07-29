# filepath: keywords/csharp_keywords.py
import clr
import os
import sys

# Update this path to your DLL location
DLL_PATH = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "resources", "GlobalLibrary.dll"))
DLL_DIR = os.path.dirname(DLL_PATH)
if DLL_DIR not in sys.path:
    sys.path.append(DLL_DIR)

if os.path.exists(DLL_PATH):
    clr.AddReference("GlobalLibrary")
    import GlobalLibrary
else:
    raise FileNotFoundError(f"GlobalLibrary.dll not found at {DLL_PATH}")

class CSharpKeywords:
    def controlclick(self, applicationName, windowName, controlName):
        instance = GlobalLibrary.GUIOperations()
        return instance.ControlClick(applicationName, windowName, controlName)

# Expose the class for Robot Framework
CSharpKeywords = CSharpKeywords
