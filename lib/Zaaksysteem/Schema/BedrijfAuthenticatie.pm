package Zaaksysteem::Schema::BedrijfAuthenticatie;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "TimeStamp", "Core");
__PACKAGE__->table("bedrijf_authenticatie");
__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    default_value => "nextval('bedrijf_authenticatie_id_seq'::regclass)",
    is_nullable => 0,
    size => 4,
  },
  "gegevens_magazijn_id",
  { data_type => "integer", default_value => undef, is_nullable => 1, size => 4 },
  "login",
  { data_type => "integer", default_value => undef, is_nullable => 1, size => 4 },
  "password",
  {
    data_type => "character varying",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "created",
  {
    data_type => "timestamp without time zone",
    default_value => undef,
    is_nullable => 1,
    size => 8,
  },
  "last_modified",
  {
    data_type => "timestamp without time zone",
    default_value => undef,
    is_nullable => 1,
    size => 8,
  },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("bedrijf_authenticatie_pkey", ["id"]);


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2012-04-03 15:22:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yHMT/s2IQ/G8Rj5cioQBjA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
