<%= link_to "Open modal", new_post_path, :class => "btn", :remote => true, "data-toggle" => "modal", "data-target" => "my-modal" %>






<%= link_to "Open modal", data_path, :class => "btn", :remote => true, "data-toggle" => "modal", "data-target" => "modal" %>
  <div class="modal hide fade" id="player-modal" title="My modal">
    <div class="modal-header">
      <button aria-hidden="true" class="close" data-dismiss="modal" type="button">×</button>
      <h3 id="myModalLabel">New Post</h3>
    </div>
    <div class="modal-body a-unique-class">
      New Post Body
    </div>
    <div class="modal-footer">
      <button aria-hidden="true" class="btn" data-dismiss="modal">Close</button>
    </div>
  </div>