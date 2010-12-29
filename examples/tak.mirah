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

def tak(x:fixnum, y:fixnum, z:fixnum)
  unless y < x
    z
  else
    tak( tak(x-1, y, z),
         tak(y-1, z, x),
         tak(z-1, x, y))
  end
end

i = 0
while i<1000
  tak(24, 16, 8)
  i+=1
end
