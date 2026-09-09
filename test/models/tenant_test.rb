require "test_helper"

class TenantTest < ActiveSupport::TestCase

  test "tenant should have a name" do
      tenant = Tenant.new(name: nil)

      assert_not tenant.save

  end
  test "tenant should have a email" do

   tenant1 = Tenant.new(email: nil)

   assert_not tenant1.save

  end

  test "tenant should have subdomain" do

  tenant2 = Tenant.new(subdomain: nil)

  assert_not tenant2.save


  end
  test "tenant should have operating hours" do

  tenant3 = Tenant.new(operating_hours: nil)
  assert_not tenant3.save

  end

  test "tenant should have a unique subdomain" do

  tenant5 = Tenant.new(name: "wanda", subdomain: "wanda", email:"jchepyego@gmail.com",operating_hours:"mon-sat:8am-6pm;sunday:closed")

  assert tenant5.save

   tenant6 = Tenant.new(name: "wanda", subdomain: "wanda", email:"jchepyego@gmail.com",operating_hours:"mon-sat:8am-6pm;sunday:closed")

   assert_not tenant6.save


  end

end
