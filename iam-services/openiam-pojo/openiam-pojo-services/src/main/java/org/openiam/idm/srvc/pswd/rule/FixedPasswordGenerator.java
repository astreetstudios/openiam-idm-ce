/*
 * Copyright 2009, OpenIAM LLC 
 * This file is part of the OpenIAM Identity and Access Management Suite
 *
 *   OpenIAM Identity and Access Management Suite is free software: 
 *   you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License 
 *   version 3 as published by the Free Software Foundation.
 *
 *   OpenIAM is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   Lesser GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with OpenIAM.  If not, see <http://www.gnu.org/licenses/>. *
 */

/**
 * 
 */
package org.openiam.idm.srvc.pswd.rule;

/**
 * FixedPasswordGenerator is usually used when the password policy calls for a fixed or static initial password.
 * @author suneet
 *
 */
public class FixedPasswordGenerator implements GeneratePassword {

	/* (non-Javadoc)
	 * @see org.openiam.idm.srvc.pswd.rule.GeneratePassword#generatePassword(java.lang.String)
	 */
    @Override
	public String generatePassword() {
		// TODO Auto-generated method stub
		return null;
	}

}
