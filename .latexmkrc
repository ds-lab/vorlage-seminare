# Automatically invoke makeglossaries
add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');

sub run_makeglossaries {
  if ( $silent ) {
    system "makeglossaries -q '$_[0]'";
  }
  else {
    system "makeglossaries '$_[0]'";
  };
}

# Glossaries and acronyms
push @generated_exts, 'glo', 'gls', 'glg';
push @generated_exts, 'acn', 'acr', 'alg';

# Lists of things
push @generated_exts, 'loa', 'lol';

$clean_ext .= '%R.bbl %R.ist %R.xdy %R.run.xml';
$cleanup_includes_generated = 1;
