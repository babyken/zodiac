




<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>zodiac/zodiac/zodiacAppDelegate.m at master · babyken/zodiac</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <meta property="fb:app_id" content="1401488693436528"/>

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="babyken/zodiac" name="twitter:title" /><meta content="View your zodiac by daily, weekly, monthly." name="twitter:description" /><meta content="https://0.gravatar.com/avatar/37913a40cb4f528ef66c3dc6bbc74398?d=https%3A%2F%2Fidenticons.github.com%2Ff826d52117a4ec3b77a68d14434ff1f1.png&amp;r=x&amp;s=400" name="twitter:image:src" />
<meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://0.gravatar.com/avatar/37913a40cb4f528ef66c3dc6bbc74398?d=https%3A%2F%2Fidenticons.github.com%2Ff826d52117a4ec3b77a68d14434ff1f1.png&amp;r=x&amp;s=400" property="og:image" /><meta content="babyken/zodiac" property="og:title" /><meta content="https://github.com/babyken/zodiac" property="og:url" /><meta content="View your zodiac by daily, weekly, monthly." property="og:description" />

    <meta name="hostname" content="github-fe136-cp1-prd.iad.github.net">
    <meta name="ruby" content="ruby 2.1.0p0-github-tcmalloc (87c9373a41) [x86_64-linux]">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    <link rel="xhr-socket" href="/_sockets" />


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="CA53F1BD:31E8:D9BCF0:531EC074" name="octolytics-dimension-request_id" /><meta content="1861184" name="octolytics-actor-id" /><meta content="babyken" name="octolytics-actor-login" /><meta content="02d069f80bf23be5161f2d3bf49bbe00689a89c86fe981fb237e6328bdffb4db" name="octolytics-actor-hash" />
    

    
    
    <link rel="icon" type="image/x-icon" href="https://github.global.ssl.fastly.net/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="x8qjrXKWdQ4KkNfAvN7jbJS6+fvclemSve8bSMtUHtA=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-80dee920ed6bd0cba7599b1af22d13d606a063a3.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-1bb38ad9539aa663444cb862f42b8ce2127b8496.css" media="all" rel="stylesheet" type="text/css" />
    


      <script crossorigin="anonymous" src="https://github.global.ssl.fastly.net/assets/frameworks-3d18c504ea97dc018d44d64d8fce147a96a944b8.js" type="text/javascript"></script>
      <script async="async" crossorigin="anonymous" src="https://github.global.ssl.fastly.net/assets/github-f55e0ba79e1c8bf72317dc65d0e4693ad999f597.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="0f24b53d62ed6530d7a71b9b2fc3fd13">

        <link data-pjax-transient rel='permalink' href='/babyken/zodiac/blob/4f2814f633b00c6163b0b81b74d22b520f0a8b11/zodiac/zodiacAppDelegate.m'>

  <meta name="description" content="View your zodiac by daily, weekly, monthly." />

  <meta content="1861184" name="octolytics-dimension-user_id" /><meta content="babyken" name="octolytics-dimension-user_login" /><meta content="17579490" name="octolytics-dimension-repository_id" /><meta content="babyken/zodiac" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="17579490" name="octolytics-dimension-repository_network_root_id" /><meta content="babyken/zodiac" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/babyken/zodiac/commits/master.atom" rel="alternate" title="Recent Commits to zodiac:master" type="application/atom+xml" />

  </head>


  <body class="logged_in  env-production macintosh vis-public page-blob">
    <a href="#start-of-content" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      
      


      <div class="header header-logged-in true">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/">
  <span class="mega-octicon octicon-mark-github"></span>
</a>

    
    <a href="/notifications" aria-label="You have no unread notifications" class="notification-indicator tooltipped tooltipped-s" data-gotokey="n">
        <span class="mail-status all-read"></span>
</a>

      <div class="command-bar js-command-bar  in-repository">
          <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<input type="text" data-hotkey="/ s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    data-username="babyken"
      data-repo="babyken/zodiac"
      data-branch="master"
      data-sha="111594f549fd33c25536d5f4771e9d202922f41e"
  >

    <input type="hidden" name="nwo" value="babyken/zodiac" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target" role="button" aria-haspopup="true">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container" aria-hidden="true">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="help tooltipped tooltipped-s" aria-label="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
        <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
            <li><a href="https://gist.github.com">Gist</a></li>
            <li><a href="/blog">Blog</a></li>
          <li><a href="https://help.github.com">Help</a></li>
        </ul>
      </div>

    


  <ul id="user-links">
    <li>
      <a href="/babyken" class="name">
        <img alt="babyken" class=" js-avatar" data-user="1861184" height="20" src="https://avatars1.githubusercontent.com/u/1861184?s=140" width="20" /> babyken
      </a>
    </li>

    <li class="new-menu dropdown-toggle js-menu-container">
      <a href="#" class="js-menu-target tooltipped tooltipped-s" aria-label="Create new...">
        <span class="octicon octicon-plus"></span>
        <span class="dropdown-arrow"></span>
      </a>

      <div class="new-menu-content js-menu-content">
      </div>
    </li>

    <li>
      <a href="/settings/profile" id="account_settings"
        class="tooltipped tooltipped-s"
        aria-label="Account settings ">
        <span class="octicon octicon-tools"></span>
      </a>
    </li>
    <li>
      <a class="tooltipped tooltipped-s" href="/logout" data-method="post" id="logout" aria-label="Sign out">
        <span class="octicon octicon-log-out"></span>
      </a>
    </li>

  </ul>

<div class="js-new-dropdown-contents hidden">
  

<ul class="dropdown-menu">
  <li>
    <a href="/new"><span class="octicon octicon-repo-create"></span> New repository</a>
  </li>
  <li>
    <a href="/organizations/new"><span class="octicon octicon-organization"></span> New organization</a>
  </li>


    <li class="section-title">
      <span title="babyken/zodiac">This repository</span>
    </li>
      <li>
        <a href="/babyken/zodiac/issues/new"><span class="octicon octicon-issue-opened"></span> New issue</a>
      </li>
      <li>
        <a href="/babyken/zodiac/settings/collaboration"><span class="octicon octicon-person-add"></span> New collaborator</a>
      </li>
</ul>

</div>


    
  </div>
</div>

      

        



      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">

    <li class="subscription">
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="x8qjrXKWdQ4KkNfAvN7jbJS6+fvclemSve8bSMtUHtA=" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="17579490" />

    <div class="select-menu js-menu-container js-select-menu">
      <a class="social-count js-social-count" href="/babyken/zodiac/watchers">
        2
      </a>
      <span class="minibutton select-menu-button with-count js-menu-target" role="button" tabindex="0" aria-haspopup="true">
        <span class="js-select-button">
          <span class="octicon octicon-eye-unwatch"></span>
          Unwatch
        </span>
      </span>

      <div class="select-menu-modal-holder">
        <div class="select-menu-modal subscription-menu-modal js-menu-content" aria-hidden="true">
          <div class="select-menu-header">
            <span class="select-menu-title">Notification status</span>
            <span class="octicon octicon-remove-close js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-list js-navigation-container" role="menu">

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_included" name="do" type="radio" value="included" />
                <h4>Not watching</h4>
                <span class="description">You only receive notifications for conversations in which you participate or are @mentioned.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-watch"></span>
                  Watch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input checked="checked" id="do_subscribed" name="do" type="radio" value="subscribed" />
                <h4>Watching</h4>
                <span class="description">You receive notifications for all conversations in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-unwatch"></span>
                  Unwatch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_ignore" name="do" type="radio" value="ignore" />
                <h4>Ignoring</h4>
                <span class="description">You do not receive any notifications for conversations in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-mute"></span>
                  Stop ignoring
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

</form>
    </li>

  <li>
  

  <div class="js-toggler-container js-social-container starring-container ">
    <a href="/babyken/zodiac/unstar"
      class="minibutton with-count js-toggler-target star-button starred"
      aria-label="Unstar this repository" title="Unstar babyken/zodiac" data-remote="true" data-method="post" rel="nofollow">
      <span class="octicon octicon-star-delete"></span><span class="text">Unstar</span>
    </a>

    <a href="/babyken/zodiac/star"
      class="minibutton with-count js-toggler-target star-button unstarred"
      aria-label="Star this repository" title="Star babyken/zodiac" data-remote="true" data-method="post" rel="nofollow">
      <span class="octicon octicon-star"></span><span class="text">Star</span>
    </a>

      <a class="social-count js-social-count" href="/babyken/zodiac/stargazers">
        0
      </a>
  </div>

  </li>


        <li>
          <a href="/babyken/zodiac/fork" class="minibutton with-count js-toggler-target fork-button lighter tooltipped-n" title="Fork your own copy of babyken/zodiac to your account" aria-label="Fork your own copy of babyken/zodiac to your account" rel="nofollow" data-method="post">
            <span class="octicon octicon-git-branch-create"></span><span class="text">Fork</span>
          </a>
          <a href="/babyken/zodiac/network" class="social-count">1</a>
        </li>


</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo"></span>
          <span class="author">
            <a href="/babyken" class="url fn" itemprop="url" rel="author"><span itemprop="title">babyken</span></a>
          </span>
          <span class="repohead-name-divider">/</span>
          <strong><a href="/babyken/zodiac" class="js-current-repository js-repo-home-link">zodiac</a></strong>

          <span class="page-context-loader">
            <img alt="Octocat-spinner-32" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline js-new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            

<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped tooltipped-w" aria-label="Code">
        <a href="/babyken/zodiac" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-gotokey="c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /babyken/zodiac">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped tooltipped-w" aria-label="Issues">
          <a href="/babyken/zodiac/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="i" data-selected-links="repo_issues /babyken/zodiac/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped tooltipped-w" aria-label="Pull Requests">
        <a href="/babyken/zodiac/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="p" data-selected-links="repo_pulls /babyken/zodiac/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


        <li class="tooltipped tooltipped-w" aria-label="Wiki">
          <a href="/babyken/zodiac/wiki" aria-label="Wiki" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_wiki /babyken/zodiac/wiki">
            <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>
    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped tooltipped-w" aria-label="Pulse">
        <a href="/babyken/zodiac/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /babyken/zodiac/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped tooltipped-w" aria-label="Graphs">
        <a href="/babyken/zodiac/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /babyken/zodiac/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped tooltipped-w" aria-label="Network">
        <a href="/babyken/zodiac/network" aria-label="Network" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-selected-links="repo_network /babyken/zodiac/network">
          <span class="octicon octicon-git-branch"></span> <span class="full-word">Network</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


      <div class="sunken-menu-separator"></div>
      <ul class="sunken-menu-group">
        <li class="tooltipped tooltipped-w" aria-label="Settings">
          <a href="/babyken/zodiac/settings"
            class="sunken-menu-item" data-pjax aria-label="Settings">
            <span class="octicon octicon-tools"></span> <span class="full-word">Settings</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </a>
        </li>
      </ul>
  </div>
</div>

              <div class="only-with-full-nav">
                

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=push">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/babyken/zodiac.git" readonly="readonly">

    <span aria-label="copy to clipboard" class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/babyken/zodiac.git" data-copied-hint="copied!"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="ssh"
  data-url="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=push">
  <h3><strong>SSH</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="git@github.com:babyken/zodiac.git" readonly="readonly">

    <span aria-label="copy to clipboard" class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="git@github.com:babyken/zodiac.git" data-copied-hint="copied!"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=push">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/babyken/zodiac" readonly="readonly">

    <span aria-label="copy to clipboard" class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/babyken/zodiac" data-copied-hint="copied!"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
      <a href="#" class="js-clone-selector" data-protocol="ssh">SSH</a>,
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <span class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <a href="https://help.github.com/articles/which-remote-url-should-i-use">
    <span class="octicon octicon-question"></span>
    </a>
  </span>
</p>

  <a href="http://mac.github.com" data-url="github-mac://openRepo/https://github.com/babyken/zodiac" class="minibutton sidebar-button js-conduit-rewrite-url" title="Save babyken/zodiac to your computer and use it in GitHub Desktop." aria-label="Save babyken/zodiac to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>


                <a href="/babyken/zodiac/archive/master.zip"
                   class="minibutton sidebar-button"
                   aria-label="Download babyken/zodiac as a zip file"
                   title="Download babyken/zodiac as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:4f71adac7163748437a2e08e5c74e5c7 -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/babyken/zodiac/find/master" data-pjax data-hotkey="t" class="js-show-file-finder" style="display:none">Show File Finder</a>

<div class="file-navigation">
  

<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-remove-close js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Find or create a branch…" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Find or create a branch…">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/babyken/zodiac/blob/master/zodiac/zodiacAppDelegate.m"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <form accept-charset="UTF-8" action="/babyken/zodiac/branches" class="js-create-branch select-menu-item select-menu-new-item-form js-navigation-item js-new-item-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="x8qjrXKWdQ4KkNfAvN7jbJS6+fvclemSve8bSMtUHtA=" /></div>
            <span class="octicon octicon-git-branch-create select-menu-item-icon"></span>
            <div class="select-menu-item-text">
              <h4>Create branch: <span class="js-new-item-name"></span></h4>
              <span class="description">from ‘master’</span>
            </div>
            <input type="hidden" name="name" id="name" class="js-new-item-value">
            <input type="hidden" name="branch" id="branch" value="master" />
            <input type="hidden" name="path" id="path" value="zodiac/zodiacAppDelegate.m" />
          </form> <!-- /.select-menu-item -->

      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/babyken/zodiac" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">zodiac</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/babyken/zodiac/tree/master/zodiac" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">zodiac</span></a></span><span class="separator"> / </span><strong class="final-path">zodiacAppDelegate.m</strong> <span aria-label="copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="zodiac/zodiacAppDelegate.m" data-copied-hint="copied!"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


  <div class="commit file-history-tease">
    <img class="main-avatar" height="24" src="https://1.gravatar.com/avatar/f4f3f99dc0626e313050831af0989196?d=https%3A%2F%2Fa248.e.akamai.net%2Fassets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png&amp;r=x&amp;s=140" width="24" />
    <span class="author"><span rel="author">Ken@LredsOffice</span></span>
    <time class="js-relative-date" data-title-format="YYYY-MM-DD HH:mm:ss" datetime="2014-03-11T15:47:08+08:00" title="2014-03-11 15:47:08">March 11, 2014</time>
    <div class="commit-title">
        <a href="/babyken/zodiac/commit/4f2814f633b00c6163b0b81b74d22b520f0a8b11" class="message" data-pjax="true" title="Rename appDelegate">Rename appDelegate</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>1</strong> contributor</a></p>
      
    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img alt="Bertie Liu" class=" js-avatar" data-user="1046686" height="24" src="https://2.gravatar.com/avatar/80d0f9d629ac1eb2b7ea30b2cb410cea?d=https%3A%2F%2Fidenticons.github.com%2F88c945fa41d3b2df0a0aea5d98abb1a4.png&amp;r=x&amp;s=140" width="24" />
            <a href="/aceisScope">aceisScope</a>
          </li>
      </ul>
    </div>
  </div>

<div class="file-box">
  <div class="file">
    <div class="meta clearfix">
      <div class="info file-name">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
        <span class="meta-divider"></span>
          <span>105 lines (72 sloc)</span>
          <span class="meta-divider"></span>
        <span>4.125 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
            <a class="minibutton tooltipped tooltipped-w js-conduit-openfile-check"
               href="http://mac.github.com"
               data-url="github-mac://openRepo/https://github.com/babyken/zodiac?branch=master&amp;filepath=zodiac%2FzodiacAppDelegate.m"
               aria-label="Open this file in GitHub for Mac"
               data-failed-title="Your version of GitHub for Mac is too old to open this file. Try checking for updates.">
                <span class="octicon octicon-device-desktop"></span> Open
            </a>
                <a class="minibutton js-update-url-with-hash"
                   href="/babyken/zodiac/edit/master/zodiac/zodiacAppDelegate.m"
                   data-method="post" rel="nofollow" data-hotkey="e">Edit</a>
          <a href="/babyken/zodiac/raw/master/zodiac/zodiacAppDelegate.m" class="button minibutton " id="raw-url">Raw</a>
            <a href="/babyken/zodiac/blame/master/zodiac/zodiacAppDelegate.m" class="button minibutton js-update-url-with-hash">Blame</a>
          <a href="/babyken/zodiac/commits/master/zodiac/zodiacAppDelegate.m" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->

            <a class="minibutton danger empty-icon"
               href="/babyken/zodiac/delete/master/zodiac/zodiacAppDelegate.m"
               data-method="post" data-test-id="delete-blob-file" rel="nofollow">

          Delete
        </a>
      </div><!-- /.actions -->
    </div>
        <div class="blob-wrapper data type-objective-c js-blob-data">
        <table class="file-code file-diff tab-size-8">
          <tr class="file-code-line">
            <td class="blob-line-nums">
              <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>

            </td>
            <td class="blob-line-code"><div class="code-body highlight"><pre><div class='line' id='LC1'><span class="c1">//</span></div><div class='line' id='LC2'><span class="c1">//  zodiacAppDelegate.m</span></div><div class='line' id='LC3'><span class="c1">//  zodiac</span></div><div class='line' id='LC4'><span class="c1">//</span></div><div class='line' id='LC5'><span class="c1">//  Created by Ken Hui on 3/10/14.</span></div><div class='line' id='LC6'><span class="c1">//  Copyright (c) 2014 huis. All rights reserved.</span></div><div class='line' id='LC7'><span class="c1">//</span></div><div class='line' id='LC8'><br/></div><div class='line' id='LC9'><br/></div><div class='line' id='LC10'><br/></div><div class='line' id='LC11'><span class="cp">#import &quot;ZodiacAppDelegate.h&quot;</span></div><div class='line' id='LC12'><br/></div><div class='line' id='LC13'><span class="cp">#import &quot;MainViewController.h&quot;</span></div><div class='line' id='LC14'><span class="cp">#import &quot;ZodiacSelectViewController.h&quot;</span></div><div class='line' id='LC15'><br/></div><div class='line' id='LC16'><span class="cp">#import &quot;WebdataParser.h&quot;</span></div><div class='line' id='LC17'><br/></div><div class='line' id='LC18'><br/></div><div class='line' id='LC19'><span class="k">@interface</span> <span class="nc">ZodiacAppDelegate</span> <span class="p">()</span></div><div class='line' id='LC20'><br/></div><div class='line' id='LC21'><br/></div><div class='line' id='LC22'><span class="k">@end</span></div><div class='line' id='LC23'><br/></div><div class='line' id='LC24'><span class="k">@implementation</span> <span class="nc">ZodiacAppDelegate</span></div><div class='line' id='LC25'><br/></div><div class='line' id='LC26'><span class="k">-</span> <span class="p">(</span><span class="kt">BOOL</span><span class="p">)</span><span class="nf">application:</span><span class="p">(</span><span class="n">UIApplication</span> <span class="o">*</span><span class="p">)</span><span class="nv">application</span> <span class="nf">didFinishLaunchingWithOptions:</span><span class="p">(</span><span class="n">NSDictionary</span> <span class="o">*</span><span class="p">)</span><span class="nv">launchOptions</span></div><div class='line' id='LC27'><span class="p">{</span></div><div class='line' id='LC28'><br/></div><div class='line' id='LC29'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// Override point for customization after application launch.</span></div><div class='line' id='LC30'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[[</span><span class="n">WebdataParser</span> <span class="n">sharedParser</span><span class="p">]</span><span class="n">htmlParserForWeeklyOrMonthlyHoroscope</span><span class="o">:</span><span class="s">@&quot;http://www.meiguoshenpo.com/MeiYue/d87886.html&quot;</span> <span class="n">page</span><span class="o">:</span><span class="mi">1</span> <span class="n">initialStr</span><span class="o">:</span><span class="s">@&quot;&quot;</span> <span class="n">Completion</span><span class="o">:^</span><span class="p">(</span><span class="kt">id</span> <span class="n">result</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC31'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">NSLog</span><span class="p">(</span><span class="s">@&quot;%@&quot;</span><span class="p">,</span><span class="n">result</span><span class="p">);</span></div><div class='line' id='LC32'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> <span class="n">failure</span><span class="o">:^</span><span class="p">(</span><span class="n">NSError</span> <span class="o">*</span><span class="n">error</span><span class="p">)</span> <span class="p">{</span></div><div class='line' id='LC33'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC34'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span> <span class="p">];</span></div><div class='line' id='LC35'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC36'><br/></div><div class='line' id='LC37'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC38'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// Override the storyboard</span></div><div class='line' id='LC39'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC40'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">MainViewController</span> <span class="o">*</span><span class="n">mainCenterVC</span> <span class="o">=</span> <span class="p">[[</span><span class="n">MainViewController</span> <span class="n">alloc</span><span class="p">]</span> <span class="n">initWithNibName</span><span class="o">:</span><span class="nb">nil</span> <span class="n">bundle</span><span class="o">:</span><span class="nb">nil</span><span class="p">];</span></div><div class='line' id='LC41'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">ZodiacSelectViewController</span> <span class="o">*</span><span class="n">selectLeftVC</span> <span class="o">=</span> <span class="p">[[</span><span class="n">ZodiacSelectViewController</span> <span class="n">alloc</span><span class="p">]</span> <span class="n">initWithNibName</span><span class="o">:</span><span class="nb">nil</span> <span class="n">bundle</span><span class="o">:</span><span class="nb">nil</span><span class="p">];</span></div><div class='line' id='LC42'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC43'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">UINavigationController</span> <span class="o">*</span><span class="n">navigationController</span> <span class="o">=</span> <span class="p">[[</span><span class="n">UINavigationController</span> <span class="n">alloc</span><span class="p">]</span> <span class="n">initWithRootViewController</span><span class="o">:</span><span class="n">mainCenterVC</span><span class="p">];</span></div><div class='line' id='LC44'><br/></div><div class='line' id='LC45'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">self</span><span class="p">.</span><span class="n">drawerController</span> <span class="o">=</span> <span class="p">[[</span><span class="n">MMDrawerController</span> <span class="n">alloc</span><span class="p">]</span> <span class="n">initWithCenterViewController</span><span class="o">:</span><span class="n">navigationController</span></div><div class='line' id='LC46'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nl">leftDrawerViewController:</span><span class="n">selectLeftVC</span><span class="p">];</span></div><div class='line' id='LC47'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC48'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">drawerController</span> <span class="n">setOpenDrawerGestureModeMask</span><span class="o">:</span><span class="n">MMOpenDrawerGestureModeAll</span><span class="p">];</span></div><div class='line' id='LC49'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">drawerController</span> <span class="n">setCloseDrawerGestureModeMask</span><span class="o">:</span><span class="n">MMCloseDrawerGestureModeAll</span><span class="p">];</span></div><div class='line' id='LC50'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC51'><span class="c1">//    [self.drawerController</span></div><div class='line' id='LC52'><span class="c1">//     setDrawerVisualStateBlock:^(MMDrawerController *drawerController, MMDrawerSide drawerSide, CGFloat percentVisible) {</span></div><div class='line' id='LC53'><span class="c1">//         MMDrawerControllerDrawerVisualStateBlock block;</span></div><div class='line' id='LC54'><span class="c1">//         block = [[MMExampleDrawerVisualStateManager sharedManager]</span></div><div class='line' id='LC55'><span class="c1">//                  drawerVisualStateBlockForDrawerSide:drawerSide];</span></div><div class='line' id='LC56'><span class="c1">//         if(block){</span></div><div class='line' id='LC57'><span class="c1">//             block(drawerController, drawerSide, percentVisible);</span></div><div class='line' id='LC58'><span class="c1">//         }</span></div><div class='line' id='LC59'><span class="c1">//     }];</span></div><div class='line' id='LC60'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC61'><br/></div><div class='line' id='LC62'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span><span class="p">(</span><span class="n">SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO</span><span class="p">(</span><span class="s">@&quot;7.0&quot;</span><span class="p">))</span> <span class="p">{</span></div><div class='line' id='LC63'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">UIColor</span> <span class="o">*</span> <span class="n">tintColor</span> <span class="o">=</span> <span class="p">[</span><span class="n">UIColor</span> <span class="n">colorWithRed</span><span class="o">:</span><span class="mf">29.0</span><span class="o">/</span><span class="mf">255.0</span></div><div class='line' id='LC64'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nl">green:</span><span class="mf">173.0</span><span class="o">/</span><span class="mf">255.0</span></div><div class='line' id='LC65'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nl">blue:</span><span class="mf">234.0</span><span class="o">/</span><span class="mf">255.0</span></div><div class='line' id='LC66'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nl">alpha:</span><span class="mf">1.0</span><span class="p">];</span></div><div class='line' id='LC67'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">window</span> <span class="n">setTintColor</span><span class="o">:</span><span class="n">tintColor</span><span class="p">];</span></div><div class='line' id='LC68'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC69'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC70'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">self</span><span class="p">.</span><span class="n">window</span><span class="p">.</span><span class="n">rootViewController</span> <span class="o">=</span> <span class="n">self</span><span class="p">.</span><span class="n">drawerController</span><span class="p">;</span></div><div class='line' id='LC71'><br/></div><div class='line' id='LC72'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">self</span><span class="p">.</span><span class="n">window</span> <span class="n">makeKeyAndVisible</span><span class="p">];</span></div><div class='line' id='LC73'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC74'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="nb">YES</span><span class="p">;</span></div><div class='line' id='LC75'><span class="p">}</span></div><div class='line' id='LC76'><br/></div><div class='line' id='LC77'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">applicationWillResignActive:</span><span class="p">(</span><span class="n">UIApplication</span> <span class="o">*</span><span class="p">)</span><span class="nv">application</span></div><div class='line' id='LC78'><span class="p">{</span></div><div class='line' id='LC79'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.</span></div><div class='line' id='LC80'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.</span></div><div class='line' id='LC81'><span class="p">}</span></div><div class='line' id='LC82'><br/></div><div class='line' id='LC83'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">applicationDidEnterBackground:</span><span class="p">(</span><span class="n">UIApplication</span> <span class="o">*</span><span class="p">)</span><span class="nv">application</span></div><div class='line' id='LC84'><span class="p">{</span></div><div class='line' id='LC85'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. </span></div><div class='line' id='LC86'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.</span></div><div class='line' id='LC87'><span class="p">}</span></div><div class='line' id='LC88'><br/></div><div class='line' id='LC89'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">applicationWillEnterForeground:</span><span class="p">(</span><span class="n">UIApplication</span> <span class="o">*</span><span class="p">)</span><span class="nv">application</span></div><div class='line' id='LC90'><span class="p">{</span></div><div class='line' id='LC91'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.</span></div><div class='line' id='LC92'><span class="p">}</span></div><div class='line' id='LC93'><br/></div><div class='line' id='LC94'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">applicationDidBecomeActive:</span><span class="p">(</span><span class="n">UIApplication</span> <span class="o">*</span><span class="p">)</span><span class="nv">application</span></div><div class='line' id='LC95'><span class="p">{</span></div><div class='line' id='LC96'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.</span></div><div class='line' id='LC97'><span class="p">}</span></div><div class='line' id='LC98'><br/></div><div class='line' id='LC99'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">applicationWillTerminate:</span><span class="p">(</span><span class="n">UIApplication</span> <span class="o">*</span><span class="p">)</span><span class="nv">application</span></div><div class='line' id='LC100'><span class="p">{</span></div><div class='line' id='LC101'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.</span></div><div class='line' id='LC102'><span class="p">}</span></div><div class='line' id='LC103'><br/></div><div class='line' id='LC104'><span class="k">@end</span></div></pre></div></td>
          </tr>
        </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2014 <span title="0.04256s from github-fe136-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-remove-close close js-ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>

  </body>
</html>

