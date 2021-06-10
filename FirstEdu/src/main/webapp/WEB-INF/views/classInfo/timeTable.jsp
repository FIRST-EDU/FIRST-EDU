<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<style>
#searchClear{display:none;}
</style>
<h1>시간표</h1>

<table id="htmlTable">
  <thead>
    <tr>
      <th>학년</th>
      <th>강의명</th>
      <th>강의실</th>
      <th>요일</th>
      <th>선생님</th>
      <th>수업시작</th>
      <th>수업종료</th>
      <th>교재</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="time" items="${ tableTime }">
    <tr>
        <td><c:out value="${time.grade.gradeName}" /></td>
        <td><c:out value="${time.className}" /></td>
        <td><c:out value="${time.room}" /></td>
        <td><c:out value="${time.day}" /></td>
        <td><c:out value="${time.startTime}" /></td>
        <td><c:out value="${time.endTime}" /></td>
        <td><c:out value="${time.book}" /></td>
        <td><c:out value="${time.teacherInfo.teacherName}" /></td>
    <tr>
    </c:forEach>
  </tbody>
</table>
    <script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-8216c69d01441f36c0ea791ae2d4469f0f8ff5326f00ae2d00e4bb7d20e24edb.js"></script>

  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
      <script id="rendered-js" >
new JQCTable();


function JQCTable() {
  var tableName = "#htmlTable";
  var backgroundColor = "#FFFFFF";
  var fontColor = "";
  var rowsPerPage = 5;
  var pageNo = 1;
  var numberOfRows = 0;

  var searchBar = "";

  var initArrayOfRows;
  var arrayOfRows;

  $(function constructor() {
    initArrayOfRows = $(tableName + " tbody tr").get();
    initialiseSortingArrows();
    resetTable();
  });

  function resetTable() {
    $("#searchField").val("");
    arrayOfRows = initArrayOfRows.slice();
    numberOfRows = arrayOfRows.length;
    refreshTable();
  }

  function refreshTable() {
    var searchCriteria = $("#searchField").val();

    numberOfRows = arrayOfRows.length;
    selectNumberOfRows();

    addTableFooter();

    //console.log($('#searchField').get());
    $("#searchField").val(searchCriteria);

    setCSS();

    $("#colPick1").attr("value", backgroundColor);

    $(tableName + " tr:odd").css("background-color", backgroundColor);
    $(tableName + " tr:even").css("background-color", shader(backgroundColor, -5));

    $(tableName + " tr:not('tfoot tr')").hover(
    function () {
      $(this).toggleClass("highlight");
    },
    function () {
      $(this).toggleClass("highlight");
    });

    $(".searchBarToggled").hide();
    refreshListeners();
  }

  function sortRowsByColumn(columnNo, ascending) {

    arrayOfRows.sort(function (a, b) {
      var A = $(a).children('td').eq(columnNo).text().toUpperCase();
      var B = $(b).children('td').eq(columnNo).text().toUpperCase();

      if ($.isNumeric(A) && $.isNumeric(B)) {
        A = A < 10 ? "0" + A : A;
        B = B < 10 ? "0" + B : B;
      }

      if (ascending) {
        return A < B ? -1 : A > B ? 1 : 0;
      } else {
        return A > B ? -1 : A < B ? 1 : 0;
      }

    });

    $.each(arrayOfRows, function (index, row) {
      $(tableName).children('tbody').append(row);
    });
  }

  function selectNumberOfRows() {
    $(tableName + " tbody").html("");

    for (var i = pageNo * rowsPerPage - rowsPerPage; i < pageNo * rowsPerPage; i++) {if (window.CP.shouldStopExecution(0)) break;
      $(tableName).append(arrayOfRows[i]);
    }window.CP.exitedLoop(0);
  }

  function initialiseSortingArrows() {
    var columnHeaders = $(tableName + " thead tr").get();

    $.each(columnHeaders, function () {
      $(this).append('<span class="sort-hidden"></span>');
    });
  }

  function addTableFooter() {
    var content = "";

    content += searchBar != "" ? searchBar : "<tr>";
    content += "<td style='text-align: right;' colspan='" + $(tableName + " thead tr").children().length + "'>";
    content += "<div class='paginationDiv'>";

    content += "<span style='text-align: left;'>&nbsp;&nbsp;Search: ";
    content += "<input id='searchField' name='searchField' type='search' />&nbsp;&nbsp;";
    content += "<input id='searchGo' class='clickable' style='color:" + shader(backgroundColor, -50) + "; padding: 0em 0.3em 0.1em; ' type='submit' value='&#x1F50D' />";
    content += "</span>";

    content += "<label>&nbsp;&nbsp;Rows Per Page: </label> <select id='noOfColsSelector' name='noOfCols'>";
    for (var i = 1; i <= 4; i++) {if (window.CP.shouldStopExecution(1)) break;
      content += "<option ";
      content += i * 10 == rowsPerPage ? "selected" : "";
      content += " value='" + i * 5 + "'>" + i * 5 + "</option>";
    }window.CP.exitedLoop(1);
    content += "</select>";

    content += "<label>&nbsp;&nbsp;Page: </label> <select id='pageSelector' name='pageNo'>";

    var max = 0;
    if (numberOfRows % rowsPerPage == 0) {
      max = numberOfRows / rowsPerPage;
    } else {
      max = numberOfRows / rowsPerPage + 1;
    }

    for (var i = 1; i <= max; i++) {if (window.CP.shouldStopExecution(2)) break;
      content += "<option ";
      content += i == pageNo ? "selected" : "";
      content += " value='" + i + "'>" + i + "</option>";
    }window.CP.exitedLoop(2);
    content += "</select>";

    content += "<span>&nbsp;&nbsp;";

    var pageMax = numberOfRows < pageNo * rowsPerPage ? numberOfRows : pageNo * rowsPerPage;

    content += pageNo * rowsPerPage - rowsPerPage + 1 + " - " + pageMax + " of " + numberOfRows;


    if ($(tableName + " tfoot").length == 0) {
      $(tableName).append("<tfoot></tfoot>");
    }

    $(tableName + " tfoot").html(content);
  }

  jQuery.fn.center = function () {
    this.css("position", "absolute");
    this.css("top", Math.max(0, ($(window).height() - $(this).outerHeight()) / 2 +
    $(window).scrollTop()) + "px");
    this.css("left", Math.max(0, ($(window).width() - $(this).outerWidth()) / 2 +
    $(window).scrollLeft()) + "px");
    return this;
  };

  $.expr[":"].contains = $.expr.createPseudo(function (arg) {
    return function (elem) {
      return $(elem).text().toUpperCase().indexOf(arg.toUpperCase()) >= 0;
    };
  });

  /**
   * Sets CSS values for the page.
   */
  function setCSS() {
    fontColor = backgroundColor.toString(16) < "#808080".toString(16) ? "#FFFFFF" : "#000000";

    $("table").css({
      "color": fontColor,
      "width": "900px" });


    $("td,th").css({
      "padding": "0.6em" });


    $("th").css("cursor", "pointer");

    $("tbody").css({
      "height": "10em",
      "overflow": "auto" });


    $(tableName + " tr:odd").css("background-color", backgroundColor);
    $(tableName + " tr:even").css("background-color", shader(backgroundColor, -5));

    $(".overlay").css({
      "background": "#363636",
      "width": "100%",
      "height": "100%" });


    $(".popup-box").css({
      "background": "white",
      "width": "40%",
      "height": "auto" });


    $(".sort-hidden").css("display", "none");

    $(".sort-asc, .sort-dsc").css("display", "inline");

    $(".clickable").css({
      "cursor": "pointer" });


    $(".highlight").css({
      "background-color": "#3c85bc !important",
      "color": "white !important" });

  }

  function shader(color, percentage) {
    color = color.substring(0, 1) != "#" ? "#" : "" + color;
    color = color.length == 4 ? "#" + color.substring(1, 2) + color.substring(1, 2) + color.substring(2, 3) + color.substring(2, 3) + color.substring(3, 4) + color.substring(3, 4) : color;

    var R = parseInt(color.substring(1, 3), 16);
    var G = parseInt(color.substring(3, 5), 16);
    var B = parseInt(color.substring(5, 7), 16);

    if (percentage > 0) {
      R = R + R * (percentage / 100) > 255 ? 255 : R + R * (percentage / 100);
      G = G + G * (percentage / 100) > 255 ? 255 : G + G * (percentage / 100);
      B = B + B * (percentage / 100) > 255 ? 255 : B + B * (percentage / 100);
    } else {
      R = R + R * (percentage / 100) < 0 ? 0 : R + R * (percentage / 100);
      G = G + G * (percentage / 100) < 0 ? 0 : G + G * (percentage / 100);
      B = B + B * (percentage / 100) < 0 ? 0 : B + B * (percentage / 100);
    }

    function changeToHex(decimal) {
      var hex = parseInt(decimal, 10).toString(16);
      return hex.length == 1 ? "0" + hex : hex;
    }
    return "#" + changeToHex(R) + changeToHex(G) + changeToHex(B);
  }

  function refreshListeners() {

    /**
     * CLICK EVENT HANDLER
     * Shows an overlay and popup representing the data
     * shown in the row that has been clicked on.
     */
    $(tableName).on("click", "tr:not('tfoot tr')", function () {

      if ($(this).parent().is(":not('thead')")) {
        var content = "";

        content += '<div class="overlay">';
        content += '<div class="opacity"></div>';
        content += '<div class="popup-box"></div>';
        content += '</div>';

        var output = "";
        for (var i = 0; i < $(tableName + " thead th").length; i++) {if (window.CP.shouldStopExecution(3)) break;
          output += "<b>" + $(tableName + " thead th").eq(i).text() + ": </b>";
          output += $(this).find("td").eq(i).text();
          output += "<br />";
        }window.CP.exitedLoop(3);
        if ($('html .overlay').length == 0) {
          $('html').append(content);
        }

        $(".popup-box").html(output);

        $(".overlay, .popup-box").show();

        $(".opacity").css({
          "position": "absolute",
          "top": "0",
          "left": "0",
          "background": "#000000",
          "opacity": ".80",
          "-moz-opacity": "0.8",
          "width": "100%",
          "height": "100%",
          "overflow": "hidden" });


        $(".popup-box").css({
          "position": "absolute",
          "padding": "2em",
          "background": "white",
          "height": "auto" });


        $(".popup-box").center();
      }
    });


    $(tableName + " thead tr").off().on("click", "th", function () {
      var ascending = true;
      if ($(this).find("span").attr('class') == "sort-asc") {
        ascending = false;
      }
      sortRowsByColumn($(this).index(), ascending); 

      $(this).find("span").html(ascending ? "&#9650" : "&#9660");

      var columnHeaders = $(tableName + " thead tr th").get(); 


      $.each(columnHeaders, function () {
        $(this).find("span").removeClass(); 
        $(this).find("span").addClass("sort-hidden"); 
      });

      $(this).find("span").removeClass(); 
      $(this).find("span").addClass(ascending ? "sort-asc" : "sort-dsc");

      console.log($("#searchField").val());
      pageNo = 1; 
      refreshTable($("#searchField").val());
    });


    $("html").on("click", ".overlay", function () {
      $(".overlay").hide();
    });


    $("#colPick1").change(function (evt) {
      backgroundColor = $("#colPick1").val();
      refreshTable();
    });


    $("#pageSelector").change(function (evt) {
      pageNo = $("#pageSelector").val();
      refreshTable();
    });


    $("#noOfColsSelector").change(function (evt) {
      pageNo = 1;
      rowsPerPage = $("#noOfColsSelector").val();
      refreshTable();
    });


    $("#backPage").click(function (evt) {
      pageNo = pageNo - 1 > 1 ? pageNo - 1 : 1;
      refreshTable();
    });


    $("#nextPage").click(function (evt) {
      var pageMax = numberOfRows < pageNo * rowsPerPage ? numberOfRows : pageNo * rowsPerPage;

      pageNo += pageMax < numberOfRows ? 1 : 0;

      refreshTable();
    });


    $("#searchClear").click(function (evt) {
      pageNo = 1;
      resetTable();
    });


    $("#searchField").keypress(function (evt) {
      if (evt.which == 13) {
        console.log(1);
        search();
      }
    });


    $("#searchGo").click(function (evt) {
      search();
    });

    function search() {
      var searchCriteria = $("#searchField").val();

      pageNo = 1;
      resetTable();

      $("#searchField").val(searchCriteria);

      for (var i = arrayOfRows.length - 1; i > -1; --i) {if (window.CP.shouldStopExecution(4)) break;

        var str = "";
        $.each($(arrayOfRows[i]).find("td"), function (key, value) {
          str += $(this).text() + " ";
        });

        if (!str.toUpperCase().includes(searchCriteria.toUpperCase())) {
          arrayOfRows.splice(i, 1);
        }

      }window.CP.exitedLoop(4);

      if (arrayOfRows.length == 1) {
        arrayOfRows[1] = "<tr><td colspan='" + $(tableName + " thead tr").children().length + "'>Sorry but your search returned no results. </td></tr>";
      }

      refreshTable(searchCriteria);
    }

  }
}

    </script>



</body>
</html>