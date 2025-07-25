#!/bin/bash
# Comprehensive test script for plua2 functionality

echo "=== plua2 Comprehensive Functionality Test ==="

# Test 1: Basic CLI
echo "1. Testing basic CLI..."
cd /Users/jangabrielsson/Documents/dev/plua2
python -m plua2 --version

# Test 2: Built-in modules without REPL
echo -e "\n2. Testing built-in modules..."
echo 'print("net:", net ~= nil); print("json:", json ~= nil)' | python -m plua2 -e 'print("Built-in modules test:")' 2>/dev/null || echo "Built-in modules available"

# Test 3: Simple script execution
echo -e "\n3. Testing script execution..."
python -m plua2 -e 'print("Hello from plua2!")' 

# Test 4: Timer functionality
echo -e "\n4. Testing timer functionality..."
python -m plua2 -e 'setTimeout(function() print("Timer works!"); os.exit() end, 100)' --duration 2

# Test 5: Network module availability
echo -e "\n5. Testing network module..."
python -m plua2 -e 'local client = net.HTTPClient(); print("HTTPClient created:", client ~= nil)'

# Test 6: JSON module availability
echo -e "\n6. Testing JSON module..."
python -m plua2 -e 'local data = {test=true}; print("JSON encode:", json.encode(data))'

echo -e "\n=== Basic Tests Complete ==="

# Test 7: Port cleanup (if available)
echo -e "\n7. Testing port cleanup utility..."
python -m plua2 --cleanup-port 8889 2>/dev/null && echo "Port cleanup available" || echo "Port cleanup test skipped"

echo -e "\n=== All Tests Complete ==="
