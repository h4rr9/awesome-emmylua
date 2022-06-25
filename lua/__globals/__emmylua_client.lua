--- ### Description
--- This file contains the EmmyLua based annotations for `client`, you should not use `require` in this file.
--- @module "globals.__emmylua_client"
---

--#region Client Signals

--- @alias ClientAPISignal
--- | "scanning" # Emitted when AwesomeWM is about to scan for existing clients.
--- | "scanned" # Emitted when AwesomeWM is done scanning for clients.
--- | "focus" # Emitted when a client gains focus.
--- | "list" # Emitted before request::manage, after request::unmanage, and when clients swap.
--- | "swapped" # Emitted when 2 clients are swapped
--- | "request::manage" # Emitted when a new client appears and gets managed by Awesome.
--- | "request::unmanage" # Emitted when a client is going away.
--- | "button::press" # Emitted when a mouse button is pressed in a client.
--- | "button::release" # Emitted when a mouse button is released in a client.
--- | "mouse::enter" # Emitted when the mouse enters a client.
--- | "mouse::leave" # Emitted when the mouse leaves a client.
--- | "mouse::move" # Emitted when the mouse moves within a client.
--- | "request::activate" # Emitted when a client should get activated (focused and/or raised).
--- | "request::autoactivate" # Emitted when an event could lead to the client being activated.
--- | "request::geometry" # Emitted when something request a client's geometry to be modified.
--- | "request::tag" # Emitted when a client requests to be moved to a tag or needs a new tag.
--- | "request::urgent" # Emitted when any client's urgent property changes.
--- | "request::default_mousebindings" # Emitted once to request default client mousebindings during the initial startup sequence.
--- | "request::default_keybindings" # Emitted once to request default client keybindings during the initial startup sequence.
--- | "tagged" # Emitted when a client gets tagged.
--- | "unfocus" # Emitted when a client gets unfocused.
--- | "untagged" # Emitted when a client gets untagged.
--- | "raised" # Emitted when the client is raised within its layer.
--- | "lowered" # Emitted when the client is lowered within its layer.
--- | "property::floating_geometry" # The last geometry when client was floating.
--- | "request::titlebars" # Emitted when a client need to get a titlebar.
--- | "request::border" # Emitted when the border client might need to be update.
--#endregion



---
--#region ClientApi Properties

--- ### Description
--- The focused client or nil (in case there is none).
---
--- [View documents](https://awesomewm.org/apidoc/core_components/client.html#focus)
--- @alias ClientApiPropertyFocus string

--#endregion
