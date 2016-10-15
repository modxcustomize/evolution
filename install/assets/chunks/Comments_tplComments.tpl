/**
 * Comments_tplComments
 *
 * Comments (Jot) Form-Template
 *
 * @category	chunk
 * @internal    @modx_category Demo Content
 * @internal    @installset base, sample
 */
<a name="jc[+jot.link.id+][+comment.id+]"></a>
	<div class="panel panel-[+chunk.rowclass:ne=``:then=`primary`:else=`info`+] [+comment.published:is=`0`:then=`jot-row-up`+]">
		<div class="panel-heading"><span class="jot-subject">[+comment.title:limit:esc+]</span></div>
		<div class="panel-body">
	 <div class="jot-comment">
 		 
		 <div class="jot-user">
		 [+comment.createdby:isnt=`0`:then=`<b>`+][+comment.createdby:userinfo=`username`:ifempty=`[+comment.custom.name:ifempty=`[+jot.guestname+]`:esc+]`+]
[+comment.createdby:isnt=`0`:then=`</b>`+]
		 <br />Posts: [+comment.userpostcount+]
		 </div> 
		
		 <div class="jot-content">
			 
			 <div class="jot-posticon">
					[+phx:userinfo=`lastlogin`:ifempty=`9999999999`:lt=`[+comment.createdon+]`:then=`
				 <img src="[(base_url)]assets/snippets/jot/templates/comment.gif" width="16" height="16" alt="New comment" border="0" />
				 `:else=`
				 <img src="[(base_url)]assets/snippets/jot/templates/comment_trans.gif" width="16" height="16" alt="Comment" border="0" />
				 `:strip+]
			 </div>		 
			 
			 <div class="jot-mod">
			 [+jot.moderation.enabled:is=`1`:then=`
				<a href="[+jot.link.delete:esc+][+jot.querykey.id+]=[+comment.id+]#jotmod[+jot.link.id+]" onclick="return confirm('Are you sure you wish to delete this comment?')" title="Delete Comment"><img src="[(base_url)]assets/snippets/jot/templates/delete.gif" width="16" height="16" alt="Delete Comment" border="0" /></a>
				[+comment.published:is=`0`:then=`
				<a href="[+jot.link.publish:esc+][+jot.querykey.id+]=[+comment.id+]#jotmod[+jot.link.id+]" onclick="return confirm('Are you sure you wish to publish this comment?')" title="Publish Comment"><img src="[(base_url)]assets/snippets/jot/templates/publish.png" width="16" height="16" alt="Publish Comment" border="0" /></a>
				`+]
				[+comment.published:is=`1`:then=`
				<a href="[+jot.link.unpublish:esc+][+jot.querykey.id+]=[+comment.id+]#jotmod[+jot.link.id+]" onclick="return confirm('Are you sure you wish to unpublish this comment?')" title="Unpublish Comment"><img src="[(base_url)]assets/snippets/jot/templates/unpublish.png" width="16" height="16" alt="Unpublish Comment" border="0" /></a>
				`+]
			 `:strip+]
			 [+jot.user.canedit:is=`1`:and:if=`[+comment.createdby+]`:is=`[+jot.user.id+]`:or:if=`[+jot.moderation.enabled+]`:is=`1`:then=`
				 <a href="[+jot.link.edit:esc+][+jot.querykey.id+]=[+comment.id+]#jf[+jot.link.id+]" onclick="return confirm('Are you sure you wish to edit this comment?')" title="Edit Comment"><img src="[(base_url)]assets/snippets/jot/templates/edit.gif" width="16" height="16" alt="Edit Comment" border="0" /></a>
   		 `:strip+]
			 </div>	
			  
			 <span class="jot-poster"><b>Reply #[+comment.postnumber+] on :</b> [+comment.createdon:date=`%a %B %d, %Y, %H:%M:%S`+]</span>
			 <hr />
			 <div class="jot-message">[+comment.content:wordwrap:esc:nl2br+]</div>
			 <div class="jot-extra">
			 [+comment.editedon:isnt=`0`:then=`
			  <span class="jot-editby">Last Edit: [+comment.editedon:date=`%B %d, %Y, %H:%M:%S`+] by [+comment.editedby:userinfo=`username`:ifempty=` * `+]</span>
			  &nbsp;`+] [+jot.moderation.enabled:is=`1`:then=`<a target="_blank" href="http://www.ripe.net/perl/whois?searchtext=[+comment.secip+]">[+comment.secip+]</a>`+]</div>
		 </div>
		 
	 </div>
	</div>
	</div>