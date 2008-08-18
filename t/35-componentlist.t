use strict;
use Test::More tests => 7;

use Graphics::Primitive::Component;

BEGIN {
    use_ok('Graphics::Primitive::ComponentList');
}

my $list = Graphics::Primitive::ComponentList->new;
isa_ok($list, 'Graphics::Primitive::ComponentList');

my $comp1 = Graphics::Primitive::Component->new(name => 'first');
$list->add_component($comp1);
cmp_ok($list->component_count, '==', 1, 'component_count');

my $comp2 = Graphics::Primitive::Component->new(name => 'second');
$list->add_component($comp2);
cmp_ok($list->component_count, '==', 2, 'component_count');

my $comp3 = Graphics::Primitive::Component->new;
$list->add_component($comp3);

my $foundi = $list->find_component('first');
my $found = $list->get_component($foundi);
cmp_ok($found->name, 'eq', 'first', 'found first by name');

my $index1 = $list->get_component(0);
cmp_ok($index1->name, 'eq', 'first', 'found first by index');

my $index2 = $list->get_component(1);
cmp_ok($index2->name, 'eq', 'second', 'found second by index');



