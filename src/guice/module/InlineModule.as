/***
 * Copyright 2013 LTN Consulting, Inc. /dba Digital Primates®
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * 
 * 
 * @author Michael Labriola <labriola@digitalprimates.net>
 */
package guice.module {
import guice.GuiceModule;
import guice.binding.Binder;

public class InlineModule extends GuiceModule {
		private var configFunction:Function;

		override public function configure(binder:Binder):void {
			if ( configFunction != null )
				configFunction( binder );
		}

		//Pass a function with the signature f((binder:Binder):void
		public function InlineModule( configFunction:Function ) {
			this.configFunction = configFunction;
		}
	}
}