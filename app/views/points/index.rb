
<%= form_with(model: @point, local: true) do |form| %>
    <div>
      <%= label_tag :points, "ポイントを選択:" %>
      <%= number_field_tag :points, nil, min: 1 %>
    </div>
    <div>
      <%= submit_tag "加算" %>
    </div>
  <% end %>
  
  <div>
    <h3>合計ポイント: </h3>
  </div>