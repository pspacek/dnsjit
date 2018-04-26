-- Copyright (c) 2018, OARC, Inc.
-- All rights reserved.
--
-- This file is part of dnsjit.
--
-- dnsjit is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- dnsjit is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with dnsjit.  If not, see <http://www.gnu.org/licenses/>.

-- dnsjit.core.object.null
-- BSD loopback encapsulation (null) part of a packet
--
-- The null part of a packet that usually can be found in the object chain
-- after parsing with, for example, Layer filter.
-- .SS Attributes
-- .TP
-- family
-- The link-layer header describing what type of packet is encapsulated.
module(...,package.seeall)

require("dnsjit.core.object.null_h")
local ffi = require("ffi")

local t_name = "core_object_null_t"
local core_object_null_t
local Null = {}

-- Return the textual type of the object.
function Null:type()
    return "null"
end

-- Return the previous object.
function Null:prev()
    return self.obj_prev
end

core_object_null_t = ffi.metatype(t_name, { __index = Null })

-- dnsjit.core.object (3),
-- dnsjit.filter.layer (3)
return Null