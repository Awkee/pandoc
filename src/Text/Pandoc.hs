{-
Copyright (C) 2006-7 John MacFarlane <jgm@berkeley.edu>

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
-}

{- |
   Module      : Text.Pandoc
   Copyright   : Copyright (C) 2006-7 John MacFarlane
   License     : GNU GPL, version 2 or above 

   Maintainer  : John MacFarlane <jgm@berkeley.edu>
   Stability   : alpha 
   Portability : portable

This helper module exports the basic writers, readers, and definitions
from the Pandoc libraries.
-}

module Text.Pandoc
               ( 
               -- * Definitions
               module Text.Pandoc.Definition
               -- * Readers: converting /to/ Pandoc format
               , readMarkdown
               , readRST
               , readLaTeX
               , readHtml
               -- * Parser state used in readers
               , ParserState (..)
               , defaultParserState
               -- * Writers: converting /from/ Pandoc format
               , writeMarkdown
               , writeRST
               , writeLaTeX
               , writeHtml
               , writeHtmlString
               , writeS5
               , writeDocbook
               , writeMan
               , writeRTF
               , prettyPandoc
               -- * Writer options used in writers 
               , WriterOptions (..)
               , defaultWriterOptions
               -- * UTF-8 encoding and decoding
               , encodeUTF8
               , decodeUTF8
             ) where

import Text.Pandoc.Definition
import Text.Pandoc.Readers.Markdown
import Text.Pandoc.Readers.RST
import Text.Pandoc.Readers.LaTeX
import Text.Pandoc.Readers.HTML
import Text.Pandoc.Writers.Markdown
import Text.Pandoc.Writers.RST 
import Text.Pandoc.Writers.LaTeX
import Text.Pandoc.Writers.HTML
import Text.Pandoc.Writers.S5
import Text.Pandoc.Writers.Docbook
import Text.Pandoc.Writers.Man
import Text.Pandoc.Writers.RTF 
import Text.Pandoc.UTF8
import Text.Pandoc.Shared
