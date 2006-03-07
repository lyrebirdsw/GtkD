/*
 * This file is part of duit.
 * 
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module utils.WrapperIF;

public interface WrapperIF
{
	/** the global license in of files */
	char[] getLicense();
	
	/** the simple token subsitution */
	char[][char[]] getAliases();
	
	/** the referenced enum type table */
	char[][char[]] getEnumTypes();
	
	/** switch on or off the comments enbeded on the source */
	bit includeComments();
}