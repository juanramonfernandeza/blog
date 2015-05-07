if Apartment::Tenant.current == "public"
  Apartment.tenant_names.each {|tenant| Apartment::Tenant.create(tenant) }
end
