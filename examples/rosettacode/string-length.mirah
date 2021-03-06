# Copyright (c) 2010 The Mirah project authors. All Rights Reserved.
# All contributing project authors may be found in the NOTICE file.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

/**
* Java encodes strings in UTF-16, which represents each character with one
* or two 16-bit values. The length method of String objects returns the 
* number of 16-bit values used to encode a string, so the number of bytes 
* can be determined by doubling that number.
*/ 

s = "Hello, world!"
puts s.length() * 2

/**
* Another way to know the byte length of a string is to explicitly 
* specify the charset we desire.
*/ 
puts s.getBytes("UTF-16").length
puts s.getBytes("UTF-8").length
