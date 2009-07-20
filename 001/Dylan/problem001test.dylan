module: problem001test
synopsis: 
author: 
copyright: 

define function main(name, arguments)
  format-out("Yo!");
  exit-application(0);
end function main;

// Invoke our main() function.
main(application-name(), application-arguments());
