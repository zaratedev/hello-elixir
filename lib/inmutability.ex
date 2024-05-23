defmodule Inmutability do
  def set_data(data) do
    Map.put(data, :b, 42)
  end
end

unique_emails = :sets.new(version: 2)

unique_emails = :sets.add_element("john@cool-app.com", unique_emails)
unique_emails = :sets.add_element("jane@cool-app.com", unique_emails)
unique_emails = :sets.add_element("jane@cool-app.com", unique_emails)

IO.inspect :sets.to_list(unique_emails)
IO.inspect :sets.is_element("alex@cool-app.com", unique_emails)
