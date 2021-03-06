package Zaaksysteem::SchemaGM::BagPand;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "TimeStamp", "Core");
__PACKAGE__->table("bag_pand");
__PACKAGE__->add_columns(
  "identificatie",
  {
    data_type => "character varying",
    default_value => undef,
    is_nullable => 0,
    size => 16,
  },
  "begindatum",
  {
    data_type => "character varying",
    default_value => undef,
    is_nullable => 0,
    size => 14,
  },
  "einddatum",
  {
    data_type => "character varying",
    default_value => undef,
    is_nullable => 1,
    size => 14,
  },
  "officieel",
  {
    data_type => "character varying",
    default_value => undef,
    is_nullable => 0,
    size => 1,
  },
  "bouwjaar",
  { data_type => "integer", default_value => undef, is_nullable => 0, size => 4 },
  "status",
  {
    data_type => "character varying",
    default_value => undef,
    is_nullable => 0,
    size => 80,
  },
  "inonderzoek",
  {
    data_type => "character varying",
    default_value => undef,
    is_nullable => 0,
    size => 1,
  },
  "documentdatum",
  {
    data_type => "character varying",
    default_value => undef,
    is_nullable => 0,
    size => 14,
  },
  "documentnummer",
  {
    data_type => "character varying",
    default_value => undef,
    is_nullable => 0,
    size => 20,
  },
  "correctie",
  {
    data_type => "character varying",
    default_value => undef,
    is_nullable => 0,
    size => 1,
  },
);
__PACKAGE__->set_primary_key("identificatie", "begindatum", "correctie");
__PACKAGE__->add_unique_constraint("pk_pand", ["identificatie", "begindatum", "correctie"]);


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2012-04-03 15:22:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:3ArDEvCwmmN9tzhI0w+rew

__PACKAGE__->has_many(
  "verblijfsobject_panden",
  "Zaaksysteem::SchemaGM::BagVerblijfsobjectPand",
  { "foreign.pand" => "self.identificatie" },
);


# You can replace this text with custom content, and it will be preserved on regeneration
1;
