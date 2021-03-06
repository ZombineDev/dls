/*
 *Copyright (C) 2018 Laurent Tréguier
 *
 *This file is part of DLS.
 *
 *DLS is free software: you can redistribute it and/or modify
 *it under the terms of the GNU General Public License as published by
 *the Free Software Foundation, either version 3 of the License, or
 *(at your option) any later version.
 *
 *DLS is distributed in the hope that it will be useful,
 *but WITHOUT ANY WARRANTY; without even the implied warranty of
 *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *GNU General Public License for more details.
 *
 *You should have received a copy of the GNU General Public License
 *along with DLS.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

module dls.protocol.interfaces.dls;

class TranslationParams
{
    import dls.util.constants : Tr;

    string tr;

    this(Tr tr = Tr._, string[] args = string[].init)
    {
        static import dls.util.i18n;

        this.tr = dls.util.i18n.tr(tr, args);
    }
}

class DlsUpgradeSizeParams : TranslationParams
{
    import dls.util.constants : Tr;

    size_t size;

    this(Tr tr = Tr._, string[] args = string[].init, size_t size = size_t.init)
    {
        super(tr, args);
        this.size = size;
    }
}
