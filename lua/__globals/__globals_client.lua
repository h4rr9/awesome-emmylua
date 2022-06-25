--- ### Description
--- A process window.

--- Clients are the name used by Awesome (and X11) to refer to a window.

--- A program can have multiple clients (e.g. for dialogs) or none at all (e.g. command line applications). Clients are usually grouped by classes. A class is the name used by X11 to help the window manager distinguish between windows and write rules for them. A client's behavior is also defined by its type and size_hints properties. See the xprop command line application to query properties for a client.
--- The client's :geometry() function returns a table with x, y, width and height. The area returned excludes the border width. All clients also have a shape_bounding and shape_clip used to "crop" the client's content. Finally, each clients can have titlebars (see awful.titlebar).
---
--- Additionally to the classes described here, one can also use signals as described in signals and X properties as described in xproperties.
---
--- Some signal names are starting with a dot. These dots are artefacts from the documentation generation, you get the real signal name by removing the starting dot.
---
--- Accessing client objects can be done in multiple ways depending on the context.
---
--- To get the currently focused client:
--- ```lua
--- local c = client.focus
--- if c then
---     -- do something
--- end
--- ```
--- To get a list of all clients, use client:get:
--- ```lua
--- for _, c in ipairs(client.get()) do
---     -- do something
--- end
--- ```
--- To execute a callback when a new client is added, use the manage signal:
--- ```lua
--- client.connect_signal("request::manage", function(c)
---     -- do something
--- end)
--- ```
--- To be notified when a property of a client changed:
--- ```lua
--- client.connect_signal("property::name", function(c)
---     -- do something
--- end)
--- ```
--- To be notified when a property of a specific client c changed:
--- ```lua
--- c:connect_signal("property::name", function()
---     -- do something
--- end)
--- ```
--- To get all the clients for a screen use either screen.clients or screen.tiled_clients.
--- Usage example
--- ### Inherits
--- - [`Object`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#gears.object) from [`gears.object`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html).
--- ### Information
--- - **Copyright**: 2008-2009 Julien Danjou
--- - **Originally authored by**: Julien Danjou <julien@danjou.info>
--- @diagnostic disable-next-line: lowercase-global
--- @class ClientApi : Object
--- @field focus ClientApiPropertyFocus The focused client or nil (in case there is none).
client = {}



--- ### Description
--- Connect to a signal.
--- ### Parameters
--- @param name ClientAPISignal The name of the signal.
--- @param action function The callback to call when the signal is emitted.
--- ### Inherits
--- - [`Object::connect_signal`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#connect_signal) from [`gears.object`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html).
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#connect_signal)
function client:connect_signal(name, action) end

--- ### Description
--- Connect to a signal weakly.
---
--- This allows the callback function to be garbage collected and automatically disconnects the signal when that happens.
--- ### Parameters
--- @param name ClientAPISignal The name of the signal.
--- @param action function The callback to call when the signal is emitted.
--- ### Warnings
--- > Only use this function if you really, really, really know what you are doing.
--- ### Inherits
--- - [`Object::weak_connect_signal`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#weak_connect_signal) from [`gears.object`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html).
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#connect_signal)
function client:weak_connect_signal(name, action) end

--- ### Description
--- Disconnect from a signal.
--- ### Parameters
--- @param name ClientAPISignal The name of the signal.
--- @param action function The callback that should be disconnected.
--- ### Inherits
--- - [`Object::disconnect_signal`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#disconnect_signal) from [`gears.object`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html).
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#disconnect_signal)
function client:disconnect_signal(name, action) end

--- ### Description
--- Emit a signal.
--- ### Parameters
--- @param name ClientAPISignal The name of the signal.
--- @param ... any Extra arguments for the callback functions. Each connected function receives the object as first argument and then any extra arguments that are given to [`emit_signal()`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#emit_signal).
--- ### Inherits
--- - [`Object::emit_signal`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#emit_signal) from [`gears.object`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html).
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#emit_signal)
function client:emit_signal(name, ...) end


--- ### Description
--- Get number of instances
--- @return integer num_instances The number of client objects alive.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/client.html#instances)
client.instances = function () end

--- ### Description
--- Get all client into table
--- ### Parameters
--- @param screen? integer|ScreenAPI  A screen number to filter clients on.
--- @param stacked? boolean Return clients in stacking order? (ordered from top to bottom).
--- ### Returns
--- @return table clients A table with clients
--- ### Usage
--- ```
---    for _, c in ipairs(client.get()) do
---        -- do something
---    end
--- ```
--- [Viw documentation](https://awesomewm.org/apidoc/core_components/client.html#get)
client.get = function (screen, stacked) end
