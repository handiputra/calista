﻿/*

  The contents of this file are subject to the Mozilla Public License Version
  1.1 (the "License"); you may not use this file except in compliance with
  the License. You may obtain a copy of the License at 
  
           http://www.mozilla.org/MPL/ 
  
  Software distributed under the License is distributed on an "AS IS" basis,
  WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
  for the specific language governing rights and limitations under the License. 
  
  The Original Code is CalistA Framework.
  
  The Initial Developer of the Original Code is
  ALCARAZ Marc (aka eKameleon)  <ekameleon@gmail.com>.
  Portions created by the Initial Developer are Copyright (C) 2004-2010
  the Initial Developer. All Rights Reserved.
  
  Contributor(s) :
  
  Alternatively, the contents of this file may be used under the terms of
  either the GNU General Public License Version 2 or later (the "GPL"), or
  the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
  in which case the provisions of the GPL or the LGPL are applicable instead
  of those above. If you wish to allow use of your version of this file only
  under the terms of either the GPL or the LGPL, and not to allow others to
  use your version of this file under the terms of the MPL, indicate your
  decision by deleting the provisions above and replace them with the notice
  and other provisions required by the LGPL or the GPL. If you do not delete
  the provisions above, a recipient may use your version of this file under
  the terms of any one of the MPL, the GPL or the LGPL.
  
*/

package calista.hash 
{
    import buRRRn.ASTUce.framework.TestCase;
    
    public class TestTEA extends TestCase 
    {
        public function TestTEA(name:String = "")
        {
            super(name);
        }
        
        public function testEncrypt():void
        {
            var source:String   = "hello world is secret" ;
            var password:String = "calista" ;
            var result:String = TEA.encrypt( source , password ) ;
            assertEquals( result , "Ah/YmDwXFldANJT/6XH9vqP0is6oQYhk" ) ;
        }
        
        public function testDecrypt():void
        {
            var source:String   = "Ah/YmDwXFldANJT/6XH9vqP0is6oQYhk" ;
            var password:String = "calista" ;
            assertEquals( TEA.decrypt( source , password ) , "hello world is secret" ) ;
        }
    }
}