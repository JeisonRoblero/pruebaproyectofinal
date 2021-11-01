<%@include file="utils/DataBaseAccess.jsp"%>

<section style="padding: 30px">
<form method="post" action="">
	<div class="row">
		<div class="col-md-6">
			<div class="form-control">
				<input type="text" class="form-control" name="busqueda" placeholder="Buscar">
			</div>
		</div>
		<div class="col-md-5">
			<select id="dropdown2" name="cat" class="dropdown-content">
				<option value="">Categorias</option>        
				<%
                                    ResultSet rs;
                                    String query = "SELECT * FROM categorias ORDER BY nombre_categoria ASC";

                                    rs = sql.executeQuery(query);
                                
                                    while(rs.next()){
                                %>
                                        <option value="<% out.println(rs.getInt(1)); %>"><% out.println(rs.getString(2)); %></option>
                                
                                <%}%>
                                 
			</select>
		</div>
		<div class="col-md-1">
			<button type="submit" class="waves-effect waves-light btn-small" name="buscar"><i class="material-icons">search</i></button>
		</div>
	</div>
</form>
</section>
                           
                                