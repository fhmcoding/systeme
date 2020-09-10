
<div class="card-header msg_head" >
	<div class="d-flex bd-highlight">
		<div class="img_cont">
			<img src="https://static.turbosquid.com/Preview/001292/481/WV/_D.jpg" class="rounded-circle user_img">
			<span class="online_icon"></span>
	    </div>
		<div class="user_info">
			<span>{{$user->name}}</span>
			
		</div>
		<div class="video_cam">
		    <span><i class="fas fa-video"></i></span>
		    <span><i class="fas fa-phone"></i></span>
		</div>
	</div>
	<span id="action_menu_btn"><i class="fas fa-ellipsis-v"></i></span>
    <div class="action_menu">
		<ul>
			<li><i class="fas fa-user-circle"></i> View profile</li>
			<li><i class="fas fa-users"></i> Add to close friends</li>
			<li><i class="fas fa-plus"></i> Add to group</li>
			<li><i class="fas fa-ban"></i> Block</li>
		</ul>
	</div>
</div>
<div class="card-body msg_card_body message-wrapper" id="myApp" >
	
<p v-text="newMsg"></p>
</div>
						<div class="card-footer">
							<div class="input-group">
								<div class="input-group-append">
									<span class="input-group-text attach_btn"><i class="fas fa-paperclip"></i></span>
								</div>
								<input type="text" id="msg" name="msg" class="form-control type_msg" placeholder="Type your message...">
								<div class="input-group-append">
									<span class="input-group-text send_btn"><i class="fas fa-location-arrow"></i></span>
								</div>
							</div>
						</div>


