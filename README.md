<h1 align="center">
  <br>
  <a href="https://github.com/derbenx/nextcloud-normalscrollbars"><img src="https://raw.githubusercontent.com/derbenx/nextcloud-normalscrollbars/master/differences.png" alt="derbenx/nextcloud-normalscrollbars logo" width="200"></a>
  <br>nextcloud-normalscrollbars
</h1>
<h3 align="center">
  A Nextcloud app that restores the scrollbars to a normal size.
</h3>

It is a simple app that only does one thing: it injects the bundled-in CSS code into Nextcloud, and the CSS is what matters.

# Contributors
- [@derbenx](https://github.com/derbenx)
- [@OliverParoczai](https://github.com/OliverParoczai)
- [@karlprieb](https://github.com/karlprieb)

# Usage with Custom CSS

I couldn't get Custom CSS to work.. so I made this..

# Packaging using the buildscript

There is a bash script for packaging the application included in the 'code' directory. It makes a tar file using the required file structure, and can optionally sign it.

The script doesn't require root permissions, just a few packages: ```git, xmlstarlet, tar```
