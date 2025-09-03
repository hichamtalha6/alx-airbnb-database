<mxfile host="app.diagrams.net">
  <diagram name="Airbnb ERD" id="er-diagram">
    <mxGraphModel dx="1050" dy="600" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="827" pageHeight="1169" math="0" shadow="0">
      <root>
        <mxCell id="0"/>
        <mxCell id="1" parent="0"/>
        
        <!-- User Entity -->
        <mxCell id="user" value="User
user_id (PK)
first_name
last_name
email
password
phone_number
created_at
updated_at" style="shape=rectangle;rounded=1;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="80" y="80" width="160" height="140" as="geometry"/>
        </mxCell>

        <!-- Property Entity -->
        <mxCell id="property" value="Property
property_id (PK)
owner_id (FK)
title
description
location
price_per_night
created_at
updated_at" style="shape=rectangle;rounded=1;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="320" y="80" width="180" height="160" as="geometry"/>
        </mxCell>

        <!-- Booking Entity -->
        <mxCell id="booking" value="Booking
booking_id (PK)
user_id (FK)
property_id (FK)
start_date
end_date
total_price
status
created_at
updated_at" style="shape=rectangle;rounded=1;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="200" y="280" width="200" height="180" as="geometry"/>
        </mxCell>

        <!-- Payment Entity -->
        <mxCell id="payment" value="Payment
payment_id (PK)
booking_id (FK)
amount
payment_date
payment_method
status" style="shape=rectangle;rounded=1;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="480" y="280" width="180" height="140" as="geometry"/>
        </mxCell>

        <!-- Review Entity -->
        <mxCell id="review" value="Review
review_id (PK)
user_id (FK)
property_id (FK)
rating
comment
created_at" style="shape=rectangle;rounded=1;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="80" y="500" width="180" height="120" as="geometry"/>
        </mxCell>

        <!-- Relationships -->
        <mxCell id="edge1" style="endArrow=classic;" edge="1" parent="1" source="user" target="property">
          <mxGeometry relative="1" as="geometry"/>
        </mxCell>
        <mxCell id="edge2" style="endArrow=classic;" edge="1" parent="1" source="user" target="booking">
          <mxGeometry relative="1" as="geometry"/>
        </mxCell>
        <mxCell id="edge3" style="endArrow=classic;" edge="1" parent="1" source="property" target="booking">
          <mxGeometry relative="1" as="geometry"/>
        </mxCell>
        <mxCell id="edge4" style="endArrow=classic;" edge="1" parent="1" source="booking" target="payment">
          <mxGeometry relative="1" as="geometry"/>
        </mxCell>
        <mxCell id="edge5" style="endArrow=classic;" edge="1" parent="1" source="user" target="review">
          <mxGeometry relative="1" as="geometry"/>
        </mxCell>
        <mxCell id="edge6" style="endArrow=classic;" edge="1" parent="1" source="property" target="review">
          <mxGeometry relative="1" as="geometry"/>
        </mxCell>

      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
