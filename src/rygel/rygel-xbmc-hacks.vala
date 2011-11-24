/*
 * Copyright (C) 2011 Nokia Corporation.
 *
 * Author: Jens Georg <jensg@openismus.com>
 *
 * This file is part of Rygel.
 *
 * Rygel is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * Rygel is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
 */

using Soup;
using GUPnP;

internal class Rygel.XBMCHacks : ClientHacks {
    // FIXME: Limit to known broken versions once this is fixed in XBMC as
    // promised by developers.
    private const string AGENT = ".*Platinum/.*|.*XBMC/.*";

    public XBMCHacks () throws ClientHacksError, RegexError {
        base (AGENT);
    }

    public XBMCHacks.for_action (ServiceAction action)
                                 throws ClientHacksError {
        unowned MessageHeaders headers = action.get_message ().request_headers;
        this.for_headers (headers);
    }

    public XBMCHacks.for_headers (MessageHeaders headers)
                                  throws ClientHacksError {
        base (AGENT, headers);
    }

    public override void apply (MediaItem item) {
        if (item.mime_type == "audio/mp4" ||
            item.mime_type == "audio/3gpp" ||
            item.mime_type == "audio/vnd.dlna.adts") {
            item.mime_type = "audio/aac";
        }
    }
}
