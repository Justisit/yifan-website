
function addHtml()
{
document.getElementsByTagName("head").innerHtml=
	'<link rel="stylesheet" type="text/css" href="./Dialog Effects   Sandra_files/dialog.css">'
	 + '<link rel="stylesheet" type="text/css" href="./Dialog Effects   Sandra_files/dialog-sandra.css">'
/*	 + '<link rel="stylesheet" type="text/css" href="./Dialog Effects   Sandra_files/dialog.css">'*/
/*	 + '<script src="./Dialog Effects   Sandra_files/dialogFx.js"></script>';*/




document.getElementById("showdialog").innerHTML=
       ' <div class="container">'
     + '			<div class="content">'
//	 + '				<header class="codrops-header">'
//	 + '					<h1><span>A collection of</span> Dialog Effects</h1>'
//	 + '					<div class="button-wrap"><button data-dialog="somedialog" class="trigger">Open Dialog</button></div>'
//	 + '				</header>'
	 + '				<div id="somedialog" class="dialog">'
	 + '					<div class="dialog__overlay"></div>'
	 + '					<div class="dialog__content">'
	 + '						<div style="padding-left:912px"><button class="action" data-dialog-close="">Close</button></div>'
	 + '                        <h2><strong>Howdy</strong>,I am a dialog box for about us</h2>'
	 + '                        <div id="div_iframe">'
	 + '                         <iframe id="iframe" overflow=hidden src="http://www.baidu.com" width="100%" height="400px"></iframe>'
	 + '                        </div>'
	 + '					</div>'
	 + '				</div>'
	 + '			</div><!-- /content -->'
	 + '		</div><!-- /container -->'
	 + '		<script src="./Dialog Effects   Sandra_files/dialogFx.js"></script>'
	 + '<script>'
	 + '			(function() {'
	 + '				var dlgtrigger = document.querySelector( "[data-dialog]" ),'
	 + '					somedialog = document.getElementById( dlgtrigger.getAttribute( "data-dialog" ) ),'
	 + '					dlg = new DialogFx( somedialog );'
	 + '				dlgtrigger.addEventListener( "click", dlg.toggle.bind(dlg) );'
	 + '			})();'
	 + '</script>'
;
}

function clearHtml()
{
document.getElementById("showdialog").innerHTML="";
}

 