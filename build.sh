#!/usr/bin/env bash -e

# Copyright (c) 2017, rockyluke
#
# Permission  to use,  copy, modify,  and/or  distribute this  software for  any
# purpose  with  or without  fee  is hereby  granted,  provided  that the  above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS"  AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
# REGARD TO  THIS SOFTWARE INCLUDING  ALL IMPLIED WARRANTIES  OF MERCHANTABILITY
# AND FITNESS.  IN NO EVENT SHALL  THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR  CONSEQUENTIAL DAMAGES OR  ANY DAMAGES WHATSOEVER  RESULTING FROM
# LOSS OF USE, DATA OR PROFITS,  WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER  TORTIOUS ACTION,  ARISING  OUT OF  OR  IN CONNECTION  WITH  THE USE  OR
# PERFORMANCE OF THIS SOFTWARE.

# .NET Core latest
docker build --force-rm --tag ${USER}/dotnet:latest .

# .NET Core 1.1
docker build --force-rm --tag ${USER}/dotnet:1.1 1.1

# .NET Core 2.0.0
docker build --force-rm --tag ${USER}/dotnet:2.0.0 2.0.0

# Tests
clear
echo -n 'latest: ' && docker run --rm ${USER}/dotnet:latest /usr/local/bin/dotnet --version
echo -n '1.1: '    && docker run --rm ${USER}/dotnet:1.1    /usr/local/bin/dotnet --version
echo -n '2.0.0: '  && docker run --rm ${USER}/dotnet:2.0.0  /usr/local/bin/dotnet --version
# EOF
