/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = glib-Base64-Encoding.html
 * outPack = glib
 * outFile = Base64
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Base64
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_base64_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 */

module glib.Base64;

public  import gtkc.glibtypes;

private import gtkc.glib;


private import glib.Str;




/**
 * Description
 * Base64 is an encoding that allows to encode a sequence of arbitrary
 * bytes as a sequence of printable ASCII characters. For the definition
 * of Base64, see RFC
 * 1421 or RFC
 * 2045. Base64 is most commonly used as a MIME transfer encoding
 * for email.
 * GLib supports incremental encoding using g_base64_encode_step() and
 * g_base64_encode_close(). Incremental decoding can be done with
 * g_base64_decode_step(). To encode or decode data in one go, use
 * g_base64_encode() or g_base64_decode().
 * Support for Base64 encoding has been added in GLib 2.12.
 */
public class Base64
{
	
	/**
	 */
	
	/**
	 * Incrementally encode a sequence of binary data into it's Base-64 stringified
	 * representation. By calling this function multiple times you can convert
	 * data in chunks to avoid having to have the full encoded data in memory.
	 * When all of the data has been converted you must call
	 * g_base64_encode_close() to flush the saved state.
	 * The output buffer must be large enough to fit all the data that will
	 * be written to it. Due to the way base64 encodes you will need
	 * at least: len * 4 / 3 + 6 bytes. If you enable line-breaking you will
	 * need at least: len * 4 / 3 + len * 4 / (3 * 72) + 7 bytes.
	 * break_lines is typically used when putting base64-encoded data in emails.
	 * It breaks the lines at 72 columns instead of putting all of the text on
	 * the same line. This avoids problems with long lines in the email system.
	 * Since 2.12
	 * Params:
	 * inn =  the binary data to encode
	 * len =  the length of in
	 * breakLines =  whether to break long lines
	 * f_out =  pointer to destination buffer
	 * state =  Saved state between steps, initialize to 0
	 * save =  Saved state between steps, initialize to 0
	 * Returns: The number of bytes of output that was written
	 */
	public static uint encodeStep(char* inn, uint len, int breakLines, char[] f_out, int* state, int* save)
	{
		// gsize g_base64_encode_step (const guchar *in,  gsize len,  gboolean break_lines,  gchar *out,  gint *state,  gint *save);
		return g_base64_encode_step(inn, len, breakLines, Str.toStringz(f_out), state, save);
	}
	
	/**
	 * Flush the status from a sequence of calls to g_base64_encode_step().
	 * Since 2.12
	 * Params:
	 * breakLines =  whether to break long lines
	 * f_out =  pointer to destination buffer
	 * state =  Saved state from g_base64_encode_step()
	 * save =  Saved state from g_base64_encode_step()
	 * Returns: The number of bytes of output that was written
	 */
	public static uint encodeClose(int breakLines, char[] f_out, int* state, int* save)
	{
		// gsize g_base64_encode_close (gboolean break_lines,  gchar *out,  gint *state,  gint *save);
		return g_base64_encode_close(breakLines, Str.toStringz(f_out), state, save);
	}
	
	/**
	 * Encode a sequence of binary data into its Base-64 stringified
	 * representation.
	 * Since 2.12
	 * Params:
	 * data =  the binary data to encode
	 * len =  the length of data
	 * Returns: a newly allocated, zero-terminated Base-64 encoded string representing data. The returned string must  be freed with g_free().
	 */
	public static char[] encode(char* data, uint len)
	{
		// gchar* g_base64_encode (const guchar *data,  gsize len);
		return Str.toString(g_base64_encode(data, len)).dup;
	}
	
	/**
	 * Incrementally decode a sequence of binary data from its Base-64 stringified
	 * representation. By calling this function multiple times you can convert
	 * data in chunks to avoid having to have the full encoded data in memory.
	 * The output buffer must be large enough to fit all the data that will
	 * be written to it. Since base64 encodes 3 bytes in 4 chars you need
	 * at least: len * 3 / 4 bytes.
	 * Since 2.12
	 * Params:
	 * inn =  binary input data
	 * len =  max length of in data to decode
	 * f_out =  output buffer
	 * state =  Saved state between steps, initialize to 0
	 * save =  Saved state between steps, initialize to 0
	 * Returns: The number of bytes of output that was written
	 */
	public static uint decodeStep(char[] inn, uint len, char* f_out, int* state, uint* save)
	{
		// gsize g_base64_decode_step (const gchar *in,  gsize len,  guchar *out,  gint *state,  guint *save);
		return g_base64_decode_step(Str.toStringz(inn), len, f_out, state, save);
	}
	
	/**
	 * Decode a sequence of Base-64 encoded text into binary data
	 * Since 2.12
	 * Params:
	 * text =  zero-terminated string with base64 text to decode
	 * outLen =  The length of the decoded data is written here
	 * Returns: a newly allocated buffer containing the binary data that text represents. The returned buffer must be freed with g_free().
	 */
	public static char* decode(char[] text, uint* outLen)
	{
		// guchar* g_base64_decode (const gchar *text,  gsize *out_len);
		return g_base64_decode(Str.toStringz(text), outLen);
	}
}