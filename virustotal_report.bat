<!DOCTYPE rem|
for %%x in (system32 syswow64) do if exist "%SystemRoot%\%%x" set SystemLeaf=%%x
start "%~n0" "%SystemRoot%\%SystemLeaf%\mshta.exe" "%~f0"
goto :eof
>
<style id='style'>
html { height: 100%; margin: 8ex 0 0 0; }
body { height: 100%; margin: 0; border: none; }
fieldset { position: absolute; left: 0; top: 0; }
iframe { width: 100%; height: 100%; }
blockquote.detected { border: 4px solid red; }
blockquote.undetected { border: 4px solid green; }
blockquote a { display: block; }
textarea { width: 100%; border-style: none; }
</style>
<style disabled id='hideDetected'>
blockquote.detected { display: none; }
</style>
<style disabled id='hideUndetected'>
blockquote.undetected { display: none; }
</style>
<fieldset>
<legend>VirusTotal FP Reporting Assistant</legend>
<legend>Fill in the below, then drop a .jsn VirusTotal report file onto the window background.</legend>
<legend>Origin: <input id='origin' size='200'></legend>
</fieldset>
<iframe id='json' onload='parse_report()'></iframe>
<map id='vendors'>
<area id='Acronis' href='mailto:virustotal-falsepositive@acronis.com?subject=False%20Positive%20Report&body=/body/'>
<area id='AhnLab-V3' href='mailto:v3sos@ahnlab.com?subject=False%20Positive%20Report&body=/body/'>
<area id='AhnLab-V3' href='mailto:e-support@ahnlab.com?subject=False%20Positive%20Report&body=/body/'>
<area id='AhnLab-V3' href='mailto:samples@ahnlab.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Alibaba' href='mailto:virustotal@list.alibaba-inc.com?subject=False%20Positive%20Report&body=/body/'>
<area id='ALYac' href='mailto:esrc@estsecurity.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Antiy-AVL' href='mailto:avlsdk_support_vt@antiy.cn?subject=False%20Positive%20Report&body=/body/'>
<area id='Antiy-AVL' href='mailto:submit@antiy.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Antiy-AVL' href='mailto:support@antiy.cn?subject=False%20Positive%20Report&body=/body/'>
<area id='APEX' href='https://www.secureage.com/article-report-false-positive'>
<area id='Avast' href='https://www.avast.com/false-positive-file-form.php'>
<area id='Avast' href='mailto:virus@avast.com?subject=False%20Positive%20Report&body=/body/'>
<area id='AVG' href='https://www.avg.com/false-positive-file-form'>
<area id='AVG' href='https://www.avg.com/us-en/whitelist'>
<area id='Avira' href='https://www.avira.com/en/analysis/submit'>
<area id='Avira' href='mailto:cleanset@avira.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Avira' href='mailto:virus_malware@avira.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Avira' href='mailto:virus@avira.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Baidu' href='mailto:bav@baidu.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Baidu' href='mailto:gaoyingchun@baidu.com?subject=False%20Positive%20Report&body=/body/'>
<area id='BitDefender' href='https://www.bitdefender.com/consumer/support/answer/40673/'>
<area id='BitDefender' href='mailto:virus_submission@bitdefender.com?subject=False%20Positive%20Report&body=/body/'>
<area id='BitDefender' href='mailto:oemsamples@bitdefender.com?subject=False%20Positive%20Report&body=/body/'>
<area id='BitDefenderTheta' href='https://www.bitdefender.com/consumer/support/answer/40673/'>
<area id='BitDefenderTheta' href='mailto:virus_submission@bitdefender.com?subject=False%20Positive%20Report&body=/body/'>
<area id='BitDefenderTheta' href='mailto:oemsamples@bitdefender.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Bkav' href='mailto:fpreport@bkav.com?subject=False%20Positive%20Report&body=/body/'>
<area id='CAT-QuickHeal' href='mailto:viruslab@quickheal.com?subject=False%20Positive%20Report&body=/body/'>
<area id='CAT-QuickHeal' href='mailto:OEMENGINE@quickheal.com?subject=False%20Positive%20Report&body=/body/'>
<area id='ClamAV' href='https://www.clamav.net/reports/fp'>
<area id='CMC' href='mailto:vulambang@cmcinfosec.com?subject=False%20Positive%20Report&body=/body/'>
<area id='CMC' href='mailto:support.is@cmclab.net?subject=False%20Positive%20Report&body=/body/'>
<area id='CrowdStrike' href='mailto:VTscanner@crowdstrike.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Cybereason' href='mailto:vt-feedback@cybereason.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Cylance' href='mailto:cylancefilesubmit@cylance.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Cylance' href='https://support.blackberry.com/kb/articleDetail?language=en_US&articleNumber=000067337'>
<area id='Cynet' href='mailto:soc@cynet.com?subject=False%20Positive%20Report&body=/body/'>
<area id='DeepInstinct' href='mailto:info@deepinstinct.com?subject=False%20Positive%20Report&body=/body/'>
<area id='DrWeb' href='https://vms.drweb.com/sendvirus/'>
<area id='DrWeb' href='mailto:vms@drweb.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Elastic' href='https://discuss.elastic.co/t/submitting-false-positives/232322'>
<area id='Emsisoft' href='mailto:submit@emsisoft.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Emsisoft' href='mailto:fp@emsisoft.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Emsisoft' href='https://www.emsisoft.com/en/support/contact/'>
<area id='ESET-NOD32' href='https://support.eset.com/kb141/?page=content&id=SOLN141'>
<area id='F-Secure' href='https://www.f-secure.com/en/business/support-and-downloads/submit-a-sample'>
<area id='FireEye' href='mailto:virustotal@fireeye.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Fortinet' href='mailto:submitvirus@fortinet.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Fortinet' href='https://www.fortiguard.com/faq/classificationdispute'>
<area id='GData' href='https://www.gdatasoftware.com/faq/consumer/submit-a-suspicious-file-app-or-url'>
<area id='Gridinsoft' href='mailto:antimalware@gridinsoft.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Gridinsoft' href='https://gridinsoft.com/incorrect-detection'>
<area id='Ikarus' href='mailto:fp@ikarus.at?subject=False%20Positive%20Report&body=/body/'>
<area id='Ikarus' href='mailto:samples@ikarus.at?subject=False%20Positive%20Report&body=/body/'>
<area id='Ikarus' href='mailto:false-positive@ikarus.at?subject=False%20Positive%20Report&body=/body/'>
<area id='Jiangmin' href='mailto:support@jiangmin.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Jiangmin' href='mailto:shaojia@jiangmin.com?subject=False%20Positive%20Report&body=/body/'>
<area id='K7GW' href='mailto:reportfp@labs.k7computing.com?subject=False%20Positive%20Report&body=/body/'>
<area id='K7GW' href='mailto:k7viruslab@labs.k7computing.com?subject=False%20Positive%20Report&body=/body/'>
<area id='K7GW' href='mailto:support@k7computing.com?subject=False%20Positive%20Report&body=/body/'>
<area id='K7GW' href='https://support.k7computing.com/index.php?/ticket/submit-ticket'>
<area id='K7AntiVirus' href='mailto:reportfp@labs.k7computing.com?subject=False%20Positive%20Report&body=/body/'>
<area id='K7AntiVirus' href='mailto:k7viruslab@labs.k7computing.com?subject=False%20Positive%20Report&body=/body/'>
<area id='K7AntiVirus' href='mailto:support@k7computing.com?subject=False%20Positive%20Report&body=/body/'>
<area id='K7AntiVirus' href='https://support.k7computing.com/index.php?/ticket/submit-ticket'>
<area id='Kaspersky' href='https://opentip.kaspersky.com/'>
<area id='Kaspersky' href='mailto:newvirus@kaspersky.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Kingsoft' href='mailto:operation@cmcm.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Lionic' href='mailto:support@aegislab.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Lionic' href='https://www.lionic.com/reportfp'>
<area id='Malwarebytes' href='https://support.malwarebytes.com/hc/en-us/requests/new'>
<area id='MAX' href='mailto:root@malwares.com?subject=False%20Positive%20Report&body=/body/'>
<area id='MaxSecure' href='mailto:tech@maxpcsecure.com?subject=False%20Positive%20Report&body=/body/'>
<area id='McAfee' href='https://kc.mcafee.com/corporate/index?page=content&id=KB85567'>
<area id='McAfee' href='mailto:virus_research@avertlabs.com?subject=False%20Positive%20Report&body=/body/'>
<area id='McAfee-GW-Edition' href='mailto:datasubmission@mcafee.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Microsoft' href='https://www.microsoft.com/en-us/wdsi/filesubmission'>
<area id='MicroWorld-eScan' href='mailto:samples@escanav.com?subject=False%20Positive%20Report&body=/body/'>
<area id='MicroWorld-eScan' href='http://support.mwti.net/support/index.php?/Tickets/Submit/'>
<area id='NANO-Antivirus' href='https://www.nanoav.ru/index.php?option=com_content&view=article&id=15&Itemid=83&lang=en'>
<area id='NANO-Antivirus' href='mailto:false@nanoav.ru?subject=False%20Positive%20Report&body=/body/'>
<area id='Paloalto' href='mailto:vt-pan-false-positive@paloaltonetworks.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Panda' href='mailto:falsepositives@pandasecurity.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Panda' href='mailto:virussamples@pandasecurity.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Rising' href='http://mailcenter.rising.com.cn/filecheck_en/'>
<area id='Sangfor' href='https://github.com/yaronelh/False-Positive-Center/blob/main/Sangfor%20Engine%20Zero%20false%20positive%20instruction%20guide.pdf'>
<area id='SentinelOne' href='mailto:report@sentinelone.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Sophos' href='https://support.sophos.com/support/s/filesubmission'>
<area id='Symantec' href='https://symsubmit.symantec.com/'>
<area id='Symantec' href='mailto:false.positives@broadcom.com?subject=False%20Positive%20Report&body=/body/'>
<area id='TACHYON' href='mailto:isarc@inca.co.kr?subject=False%20Positive%20Report&body=/body/' alt='(Password Protected zip file include detection name)'>
<area id='tehtris' href='https://tehtris.com/en/false-positives-false-negatives/'>
<area id='Tencent' href='mailto:TAVfp@tencent.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Trapmine' href='mailto:fp@trapmine.com?subject=False%20Positive%20Report&body=/body/'>
<area id='TrendMicro' href='https://www.trendmicro.com/en_us/about/legal/detection-reevaluation.html'>
<area id='TrendMicro' href='mailto:virus_doctor@trendmicro.com?subject=False%20Positive%20Report&body=/body/'>
<area id='TrendMicro' href='https://helpcenter.trendmicro.com/en-us/srf/'>
<area id='TrendMicro-HouseCall' href='https://www.trendmicro.com/en_us/about/legal/detection-reevaluation.html'>
<area id='TrendMicro-HouseCall' href='mailto:virus_doctor@trendmicro.com?subject=False%20Positive%20Report&body=/body/'>
<area id='TrendMicro-HouseCall' href='https://helpcenter.trendmicro.com/en-us/srf/'>
<area id='VBA32' href='mailto:feedback@anti-virus.by?subject=False%20Positive%20Report&body=/body/'>
<area id='VIPRE' href='https://helpdesk.vipre.com/hc/en-us/requests/new'>
<area id='VirIT' href='http://www.tgsoft.it/italy/file_sospetti.asp'>
<area id='Webroot' href='http://snup.webrootcloudav.com/SkyStoreFileUploader/upload.aspx'>
<area id='Webroot' href='https://www.webroot.com/us/en/business/support/vendor-dispute-contact-us'>
<area id='Yandex' href='mailto:yandex-antivir@support.yandex.ru?subject=False%20Positive%20Report&body=/body/'>
<area id='Zillya' href='mailto:virus@zillya.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Zillya' href='https://zillya.com/support'>
<area id='Zillya' href='mailto:help@zillya.com?subject=False%20Positive%20Report&body=/body/'>
<area id='ZoneAlarm' href='mailto:zonealarm_VT_reports@checkpoint.com?subject=False%20Positive%20Report&body=/body/'>
<area id='Zoner' href='mailto:false@zonerantivirus.com?subject=False%20Positive%20Report&body=/body/'>
</map>
<object id='wsh' classid='clsid:{72C24DD5-D70A-438B-8A42-98424B88AFB8}'/>
<script>
<!--
function parse_report()
{
	if (json.document.body.innerText == "")
		return;
	eval("var report = " + json.document.body.innerText);
	var origin = document.getElementById("origin").value;
	document.writeln(style.outerHTML + hideDetected.outerHTML + hideUndetected.outerHTML + document.getElementById("vendors").outerHTML + document.getElementById("wsh").outerHTML);
	document.writeln("<input id='check1' type='checkbox' checked onclick='hideDetected.disabled=this.checked'><label for='check1'>show detected</label>");
	document.writeln("<input id='check2' type='checkbox' checked onclick='hideUndetected.disabled=this.checked'><label for='check2'>show undetected</label>");
	var vendors = document.getElementById("vendors");
	for (var node in report.scans)
	{
		var scan = report.scans[node];
		document.writeln("<blockquote class='?'>"
				.replace("?", scan.detected ? "detected" : "undetected"));
		document.writeln("<textarea readonly rows='6'>");
		document.writeln("Product: " + node);
		document.writeln("Detection name: " + scan.result);
		document.writeln("SHA256: " + report.resource);
		if (origin) document.writeln("Origin: " + origin);
		document.writeln("VirusTotal link: " + report.permalink.substr(0, report.permalink.indexOf("/detection/")));
		document.writeln("</textarea>");
		var vendor = vendors.areas.namedItem(node);
		if (vendor)
		{
			var items = vendor.length ? vendor : [vendor];
			for (var i = 0; i < items.length; ++i)
			{
				document.writeln("<a href='#-' alt='*' onclick='wsh.run(this.alt.replace(\"/body/\", encodeURI(this.parentElement.firstChild.innerText)))'>*</a>"
						.replace("*", items[i].href)
						.replace("*", items[i].href));
			}
		}
		document.writeln("</blockquote>");
	}
}
-->
</script>
