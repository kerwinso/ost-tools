var validID = false;

//Checks which server based on the class name
function checkserver(x) {
  if (x.contains("dev")) {
    short_url = "http://legacy-textbook-dev.cnx.org/content/";
    long_url = "http://legacy-textbook-dev.cnx.org/content/col";
    servername = "legacy-textbook-dev.cnx.org";
  }
  if (x.contains("devb")) {
    short_url = "http://legacy-devb.cnx.org/content/";
    long_url = "http://legacy-devb.cnx.org/content/col";
    servername = "legacy-devb.cnx.org";
    webview_url = "http://devb.cnx.org/content/";
  }
  if (x.contains("prod")) {
    short_url = "http://legacy.cnx.org/content/";
    long_url = "http://legacy.cnx.org/content/col";
    servername = "legacy.cnx.org";
    webview_url = "http://cnx.org/content/";
  }
  if (x.contains("qa")) {
    short_url = "http://legacy-qa.cnx.org/content/";
    long_url = "http://legacy-qa.cnx.org/content/col";
    servername = "legacy-qa.cnx.org";
    webview_url = "http://qa.cnx.org/content/";
  }
  if (x.contains("staging")) {
    short_url = "http://legacy-staging.cnx.org/content/";
    long_url = "http://legacy-staging.cnx.org/content/col";
    servername = "legacy-staging.cnx.org";
    webview_url = "http://staging.cnx.org/content/";
  }
  if (x.contains("tq")) {
    short_url = "http://legacy-textbook-qa.cnx.org/content/";
    long_url = "http://legacy-textbook-qa.cnx.org/content/col";
    servername = "legacy-textbook-qa.cnx.org";
  }
}

// Check if collectionID is valid and whether to use baseurl+"col"
function enterCID() {
  while (!validID) {
    input = prompt("Enter a legacy collection or module ID for " + servername + ":");
    colID = input.trim().toLowerCase();
    if (colID === null || colID === "" ) { //handles the Cancel button in the Prompt
      emptyID = true;
      alert("No ID inputted")
      continue;
    }
    if (colID.length == 5 && !isNaN(colID)) {
      validID = true;
      emptyID = false;
      baseurl = long_url;
    }
    else if (colID.length == 8 && colID.indexOf("c") == 0) {
      validID = true;
      emptyID = false;
      baseurl = short_url;
    }
    else if (colID.length == 6 && colID.indexOf("m") == 0) {
      validID = true;
      emptyID = false;
      baseurl = short_url;
    }
    else {
      alert("Invalid ID format, click OK to try again");
    }
  }
}

// enter module ID for source function
function enterMID() {
  while (!validID) {
    input = prompt("Enter a legacy module ID for " + servername + ":");
    mID = input.trim().toLowerCase();
    if (mID === null || mID === "" ) { //handles the Cancel button in the Prompt
      emptyID = true;
      alert("No ID inputted")
      continue;
    }
    if (mID.length == 6 && mID.indexOf("m") == 0) {
      validID = true;
      emptyID = false;
      baseurl = short_url
    }
    else {
      alert("Invalid module ID format, click OK to try again");
    }
  }
}

// Link command functions below
function completezip(x) {
  checkserver(x);
  enterCID();
  window.open(baseurl + colID + "/latest/module_export?format=zip", "_self");
  validID = false;
}

function downloadPDF(x) {
  checkserver(x);
  enterCID();
  window.open(baseurl + colID + "/latest/pdf", "_self");
  validID = false;
}

function downloads(x) {
  checkserver(x);
  enterCID();
  window.open(baseurl + colID + "/latest/content_info#cnx_downloads_header", "_self");
  validID = false;
}

function enqueue(x) {
  checkserver(x);
  enterCID();
  window.open(baseurl + colID + "/latest/enqueue", "_self");
  validID = false;
}

function latest(x) {
  checkserver(x);
  enterCID();
  window.open(baseurl + colID + "/latest/", "_self");
  validID = false;
}

function metadata(x) {
  checkserver(x);
  enterCID();
  window.open(baseurl + colID + "/latest/content_info", "_self");
  validID = false;
}

function printinfo(x) {
  checkserver(x);
  enterCID();
  window.open(baseurl + colID + "/latest/printinfo", "_self");
  validID = false;
}

function printparameters(x) {
  alert ("Warning: Use this to look up a parameter only, NOT to update it!");
  checkserver(x);
  enterCID();
  window.open(baseurl + colID + "/latest/collection_parameters", "_self");
  validID = false;
}

function qptool(x) {
  checkserver(x);
  enterCID();
  window.open(baseurl + colID + "/latest/query_ptool", "_self");
  validID = false;
}

// view XML source for modules in Chrome only
function source(x) {
  var browser = navigator.userAgent;
  if (browser.search("Chrome") == -1) {
    alert ("Sorry, this feature only works in the Chrome browser");
  }
  else {
    checkserver(x);
    enterMID();
    if (!emptyID) {
      window.open(baseurl + mID + "/latest/source", "_self");
      validID = false;
    }
  }
}

function versionhistory(x) {
  checkserver(x);
  enterCID();
  window.open(baseurl + colID + "/latest/content_info#cnx_history_header", "_self");
  validID = false;
}

function webview(x) {
  checkserver(x);
  enterCID();
  if (baseurl == short_url) {
    window.open(webview_url + colID + "/latest/", "_self");
    validID = false;
  }
  if (baseurl == long_url) {
    window.open(webview_url + "col" + colID + "/latest/", "_self");
    validID = false;
  }
}
