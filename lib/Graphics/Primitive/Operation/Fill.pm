package Graphics::Primitive::Operation::Fill;
use Moose;

extends 'Graphics::Primitive::Operation';

has paint => (
    isa => 'Graphics::Primitive::Paint',
    is  => 'rw'
);

__PACKAGE__->meta->make_immutable;

no Moose;
1;
__END__
=head1 NAME

Graphics::Primitive::Operation::Fill

=head1 DESCRIPTION

Graphics::Primitive::Operation::Fill represents a fill operation to be
performed on a path.

=head1 SYNOPSIS

  use Graphics::Primitive::Operation::Fill;

  my $stroke = Graphics::Primitive::Operation::Fill->new;
  $stroke->paint(Graphics::Primitive::Paint::Solid->new);

=head1 METHODS

=head2 Constructor

=over 4

=item I<new>

Creates a new Graphics::Primitive::Operation::Fill.

=back

=head2 Instance Methods

=over 4

=item I<paint>

Set/Get the L<Paint|Graphics::Primitive::Paint> to use for this fill.

=back

=head1 AUTHOR

Cory Watson, C<< <gphat@cpan.org> >>

Infinity Interactive, L<http://www.iinteractive.com>

=head1 BUGS

Please report any bugs or feature requests to C<bug-geometry-primitive at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Geometry-Primitive>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.