<div layout="row" layout-sm="column">
	<div flex="10"></div>
	<div flex="80" flex-sm="100" style="margin: 8px;">.
		
		<md-subheader class="md-no-sticky">Users List</md-subheader>
		
		<div data-ng-controller="resultController">
		
		
			<md-content class='md-whiteframe-z5'> <md-list
				class="results-list"> 
				<md-list-item class="md-3-line"
				ng-repeat="user in users|filter:" style="border-bottom: 1px solid#ddd;">
			<div class="md-list-item-text" layout="row" layout-sm="column">
				<div flex="5">
					<img src="http://wwwin.cisco.com/dir/photo/std/musantho.jpg"
						class="circle-img-list" alt="{{user.firstName}}">
				</div>
				<div flex="25" flex-sm="100" class="list-item-text">{{
					user.firstName }}&nbsp;{{user.lastName}}</div>
				<p flex="20" flex-sm="100" data-ng-click="getUserInfo(user.userId)"
					data-ng-model="registeredUsers.userId" class="list-item-text">{{
					user.userId }}</p>
				<p flex="20" flex-sm="100" class="list-item-text">{{
					user.contactNo }}</p>
				<p flex="25" flex-sm="100" class="list-item-text">{{ user.email
					}}</p>
				<div flex="5" flex-sm="100">
					<md-menu md-position-mode="target-right target"> <md-button
						aria-label="Open demo menu" class="md-icon-button"
						ng-click="$mdOpenMenu($event)"> <i
						class="ion-android-more-vertical icon-more"></i> </md-button> <md-menu-content
						width="2"> <md-menu-item> <md-button>
					<a class="edit-link"
						style="text-decoration: none; font-size: 0.9em;"
						data-ng-click="editUserData(user.userId)" href=""><span
						class="ion-edit">&nbsp;&nbsp;Edit Details</span>
					<md-tooltip>Edit</md-tooltip></a> </md-button> </md-menu-item> <md-menu-item> <md-button>
					<a class="delete-link"
						style="text-decoration: none; font-size: 0.9em;"
						data-ng-click="deleteUserData(user.userId)" href=""><span
						class="ion-trash-b">&nbsp;&nbsp;Remove From DB</span>
					<md-tooltip>Delete</md-tooltip></a> </md-button> </md-menu-item> </md-menu-content> </md-menu>
				</div>
			</div>
			 </md-list-item> 
			</md-list></md-content><br/>
			
			
			
			
				<md-content class='md-whiteframe-z5'>
			<md-list
				class="results-list">
			
			<!-- To display the list day wise -->
					<md-list-item class="md-3-line"
				ng-repeat="user in users" style="border-bottom: 1px solid#ddd;">
			<div class="md-list-item-text" layout="row" layout-sm="column">
				<div flex="5">
					<img src="http://wwwin.cisco.com/dir/photo/std/musantho.jpg"
						class="circle-img-list" alt="{{user.firstName}}">
				</div>
				<div flex="25" flex-sm="100" class="list-item-text">{{
					user.firstName }}&nbsp;{{user.lastName}}</div>
				<p flex="20" flex-sm="100" data-ng-click="getUserInfo(user.userId)"
					data-ng-model="registeredUsers.userId" class="list-item-text">{{
					user.userId }}</p>
				<p flex="20" flex-sm="100" class="list-item-text">{{
					user.contactNo }}</p>
				<p flex="25" flex-sm="100" class="list-item-text">{{ user.email
					}}</p>
				<div flex="5" flex-sm="100">
					<md-menu md-position-mode="target-right target"> <md-button
						aria-label="Open demo menu" class="md-icon-button"
						ng-click="$mdOpenMenu($event)"> <i
						class="ion-android-more-vertical icon-more"></i> </md-button> <md-menu-content
						width="2"> <md-menu-item> <md-button>
					<a class="edit-link"
						style="text-decoration: none; font-size: 0.9em;"
						data-ng-click="editUserData(user.userId)" href=""><span
						class="ion-edit">&nbsp;&nbsp;Edit Details</span>
					<md-tooltip>Edit</md-tooltip></a> </md-button> </md-menu-item> <md-menu-item> <md-button>
					<a class="delete-link"
						style="text-decoration: none; font-size: 0.9em;"
						data-ng-click="deleteUserData(user.userId)" href=""><span
						class="ion-trash-b">&nbsp;&nbsp;Remove From DB</span>
					<md-tooltip>Delete</md-tooltip></a> </md-button> </md-menu-item> </md-menu-content> </md-menu>
				</div>
			</div>
			 </md-list-item> 
			</md-list> </md-content>
		</div>
	</div>
	<div flex="10"></div>
</div>

