collection @bounties
attributes :title, :description, :price
child(@owner) { attribute: name}
child(@hunter) { attribute: name}