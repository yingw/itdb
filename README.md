# Tags

- 1.23, latest (Dockerfile)

[http://www.sivann.gr/software/itdb/](http://www.sivann.gr/software/itdb/)

# Description

ITDB is a web based asset inventory management tool used to store information about assets found in office environments, with a focus -but not lmited to- IT assets. It is not or targets for ITIL/CMDB compliance (yet), but it has served me for years and hopefully it will do the same for you :-)

ITDB comes with sources and is distributed under the GNU Public license. 

![image](http://www.sivann.gr/software/itdb/itdb-overview.png)

# Features

- **Items**: specs, warranties, s/n, IP info, what other H/W relates/connects to this H/W, item status, event log, assignees
- **Software**: specs, license info, ...
- **Relations**: where each software is installed, license QTY, component relations, contract relations to software/hardware/invoices
- **Invoices**: purchase proofs depicting date, vendor, prices, attached documents
- **Agents**: Vendors, H/W & S/W Manufacturers, Buyers (for different Dpt), Contactors
- **Locations**: location of each asset: building, floor, room, rack, rack row, row depth
- **Contracts**: define custom contract types, like support& maintenance, SLA, etc. Track contract events.
- **Tags**: multiple tags for items and software. You may use tags for grouping according to usage, budget, owner, importance, etc.
- **Files**: attach documents to every main object entity (Items, Software, Invoices, Contracts
- **Users**: who has what or who is responsible for what
- **Racks**: display rack layout with items assigned to each rack row. (supports multiple items/rackrow).
- **Print labels**: print label stickers for tag all your assets, with or without barcode, from phones and laptops to cooling units and ups. Easily define new label paper layouts through the GUI.
- **One click backup**: get a full backup of the ITDB installation and data in a .tar.gz from the main menu. To restore, just extract the backup file on the web server!
- **All pages are printable**: all screen pages/lists/reports print-out nicely, without menus, scrollbars and other clutter.
- **Interface Translations**: translation file support. You may create your own translations (v1.3)
- **Rudimentary LDAP support**: pull userlist for item assignment from an LDAP URL.(Not tested with active directory, and not used for auth.

# SCREENSHOTS

Some screenshots are from previous versions.

Some screenshots have been edited to wipe-out private info. 

![image](http://www.sivann.gr/software/itdb/images/itdb-home.png)
