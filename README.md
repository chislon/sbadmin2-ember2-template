SBadmin2 Ember 2 Template
==========================

This provides a starting point for a SBadmin2/Bootstrap themed Ember2 
front-end web application. 

This comes with a working 'tables.html' sample file baked into the default 
'index.html' as a sample. 

See also: https://ide.c9.io/chislon/sbadmin2-ember2-template

# Caveats

* Requires Node JS and npm
* Works on Cloud9 IDE and Linux distributions
* Datatables responsive files originally in the SBadmin2 template are
  not imported
* watchman not installed by default
* If the setup.sh shell script fails to complete, it is not smart to recovery 
 by its own, so you may have to run each step by itself. Please have a 
  good working internet connection. 

# Setup

The app creates a folder for the app 'client' and uses node.js. Please make sure
node is installed, and that there is no pre-existing and conflicting 
package.json in the directory where setup.sh is run.

1) Run the 'sh setup.sh' from the root directory
2) Installation will commence, after which ember will start the app on the
   default port
3) (Optional) Cleanup and remove the file 'setup.sh' from the root 
   directory and the folder 'client-prebuilts'

# Running

For future runs, navigate into the client folder and run 'ember server'

To add additional demo templates from sbadmin2, you will need to modify the 
css and js imports of the html files. You may also need to add additional lines 
to ember-cli-build.js.

# What this does

* pulls SB2admin into the vendor folder
* setup a working ember-cli-build.js to integrate required css and js into 
  vendor files
* uses the SB2admin tables as an example, having replaced css and js imports to 
  the vendor css and js Ember JS generated files
* installs pre-requisite for working with LESS (not actually used here)

# LESS

ember-cli-less is already included as a node module. Edit the blank file 
'client/app/styles/app.less' to use it. 

# Credits

[Mithrilhall](http://discuss.emberjs.com/users/Mithrilhall) for answering in 
[What’s the suggested way to add bootstrap for Ember 2.0.1](http://discuss.emberjs.com/t/whats-the-suggested-way-to-add-bootstrap-for-ember-2-0-1/8691)
[EmberJS](http://emberjs.com/)
[SBadmin2](http://startbootstrap.com/template-overviews/sb-admin-2/)

# Notes

There are no further plans for this project, I created this so I don't forget 
what I had to struggle through to get this working. 
