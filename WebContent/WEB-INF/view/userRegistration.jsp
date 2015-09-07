
<!-- registration fields page -->
<div class="md-padding md-margin" id="contactUs" layout="row"
	layout-padding layout-align="center center" flex="100"
	data-ng-controller="regCtrl">
	<div flex="30" flex-sm="100" class="md-whiteframe-z2" style="background: #fff;">
		<div layout-align="center">
				<md-content class="md-padding">
					<div layout="column">
						<form name="registrationForm">
						<div layout-align="center center">
							<h2>Register</h2>
						</div>
							<md-input-container flex>
								 <label>First Name</label>
								 <input type="text" name="firstName" data-ng-model="newUser.firstName" />
						 	</md-input-container>
							<md-input-container flex>
								 <label>Last Name</label> 
								 <input type="text" name="lastName" data-ng-model="newUser.lastName" /> 
							</md-input-container>
							<md-input-container flex>
								 <label>User ID</label>
								 <input type="text" name="userId" data-ng-model="newUser.userId" />
							 </md-input-container>
							<md-input-container flex>
								 <label>Password</label>
								 <input type="password" name="password" data-ng-model="newUser.password" /> 
							</md-input-container>
							<md-input-container flex>
								 <label>Re enter password</label>
								 <input type="password" name="rePassword" data-ng-model="newUser.rePassword" />
							</md-input-container>
							<md-input-container flex> 
								<label>Email</label>
								<input type="email" name="email" data-ng-model="newUser.email" /> 
							</md-input-container>
							<md-input-container flex> 
								<label>Contact Number</label>
								<input type="text" name="contactNo" data-ng-model="newUser.contactNo" /> 
							</md-input-container>
						<!-- 	<md-input-container flex> 
								<label>User Name</label>
								<input type="text" name="userName" placeholder="${editUser.userName}" data-ng-model="newUser.userName" /> 
							</md-input-container> -->
							<!-- <md-input-container flex>
								<md-select flex data-ng-model="newUser.country" aria-label="country" placeholder="country">
									<md-option ng-value="opt.id" ng-repeat="opt in country">{{opt.name}}</md-option>
								</md-select>
							</md-input-container> -->
					
				</md-content>
				<div layout="row" flex layout-align="center center" layout-padding>
					<md-button class="md-primary md-raised" ng-click="submitForm()">Submit</md-button>
					<md-button class="md-accent md-raised" ng-click="reset()">Reset</md-button>
				</div>
			</form>
			</div>
		</div>
	</div>
	<!--<ul>
	 <div layout="row" flex layout-align="center center" layout-padding>
		<md-button class="md-primary md-raised" ng-click="basket.addUser(newUser);newUser={}">Submit</md-button>
	</div>
		 <li data-ng-repeat="item in basket.items()">
            {{item}}<br />
        </li></ul> -->
</div>

