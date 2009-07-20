module: problem001main
synopsis: 
author: 
copyright: 

define function main(name, arguments)
  format-out("%d\n", sum35(8));
  exit-application(0);
end function main;

// Invoke our main() function.
main(application-name(), application-arguments());
