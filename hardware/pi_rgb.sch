<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.1.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="11" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="con-lsta">
<description>&lt;b&gt;Female Headers etc.&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
FE = female&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="FE13-2">
<description>&lt;b&gt;FEMALE HEADER&lt;/b&gt;</description>
<wire x1="-16.51" y1="-2.413" x2="-16.51" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="2.413" x2="-15.875" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.51" y1="-2.413" x2="-15.875" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.875" y1="3.048" x2="15.875" y2="3.048" width="0.1524" layer="21"/>
<wire x1="16.51" y1="-2.413" x2="16.51" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="-3.048" x2="15.875" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="15.875" y1="3.048" x2="16.51" y2="2.413" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.875" y1="-3.048" x2="16.51" y2="-2.413" width="0.1524" layer="21" curve="90"/>
<circle x="-15.24" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-15.24" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-12.7" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-12.7" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-10.16" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-10.16" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-7.62" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-7.62" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-5.08" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-5.08" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-15.24" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-15.24" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-12.7" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-10.16" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-7.62" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-5.08" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-12.7" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-10.16" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-7.62" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-5.08" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-2.54" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-2.54" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="0" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="0" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="2.54" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="2.54" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="5.08" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="5.08" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="7.62" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="7.62" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-2.54" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-2.54" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="0" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="2.54" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="5.08" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="7.62" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="0" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="2.54" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="5.08" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="7.62" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="10.16" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="10.16" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="12.7" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="12.7" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="15.24" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="15.24" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="10.16" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="10.16" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="12.7" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="15.24" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="12.7" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="15.24" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<pad name="1" x="-15.24" y="1.27" drill="0.9144"/>
<pad name="2" x="-15.24" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="3" x="-12.7" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="4" x="-12.7" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="5" x="-10.16" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="6" x="-10.16" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="7" x="-7.62" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="8" x="-7.62" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="9" x="-5.08" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="10" x="-5.08" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="11" x="-2.54" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="12" x="-2.54" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="13" x="0" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="14" x="0" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="15" x="2.54" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="16" x="2.54" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="17" x="5.08" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="18" x="5.08" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="19" x="7.62" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="20" x="7.62" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="21" x="10.16" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="22" x="10.16" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="23" x="12.7" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="24" x="12.7" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="25" x="15.24" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="26" x="15.24" y="-1.27" drill="0.9144" shape="octagon"/>
<text x="-10.16" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-15.621" y="3.429" size="1.27" layer="21" ratio="10">1</text>
<text x="14.351" y="-4.699" size="1.27" layer="21" ratio="10">26</text>
<text x="-16.51" y="-4.699" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="FE13-2">
<wire x1="3.81" y1="-17.78" x2="-3.81" y2="-17.78" width="0.4064" layer="94"/>
<wire x1="-1.905" y1="-10.795" x2="-1.905" y2="-9.525" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="-13.335" x2="-1.905" y2="-12.065" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="-15.875" x2="-1.905" y2="-14.605" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-9.525" x2="1.905" y2="-10.795" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-12.065" x2="1.905" y2="-13.335" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-14.605" x2="1.905" y2="-15.875" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="-5.715" x2="-1.905" y2="-4.445" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="-8.255" x2="-1.905" y2="-6.985" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-4.445" x2="1.905" y2="-5.715" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-6.985" x2="1.905" y2="-8.255" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="1.905" x2="-1.905" y2="3.175" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="-0.635" x2="-1.905" y2="0.635" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="-3.175" x2="-1.905" y2="-1.905" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="3.175" x2="1.905" y2="1.905" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="0.635" x2="1.905" y2="-0.635" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-1.905" x2="1.905" y2="-3.175" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="6.985" x2="-1.905" y2="8.255" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="4.445" x2="-1.905" y2="5.715" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="8.255" x2="1.905" y2="6.985" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="5.715" x2="1.905" y2="4.445" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="14.605" x2="-1.905" y2="15.875" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="12.065" x2="-1.905" y2="13.335" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="9.525" x2="-1.905" y2="10.795" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="15.875" x2="1.905" y2="14.605" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="13.335" x2="1.905" y2="12.065" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="10.795" x2="1.905" y2="9.525" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-3.81" y1="17.78" x2="-3.81" y2="-17.78" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-17.78" x2="3.81" y2="17.78" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="17.78" x2="3.81" y2="17.78" width="0.4064" layer="94"/>
<text x="-3.81" y="-20.32" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="18.542" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-7.62" y="-15.24" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="3" x="-7.62" y="-12.7" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="5" x="-7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="2" x="7.62" y="-15.24" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="-12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="9" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="8" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="10" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="11" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="13" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="15" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="12" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="14" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="16" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="17" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="19" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="18" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="20" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="21" x="-7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="23" x="-7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="25" x="-7.62" y="15.24" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="22" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="24" x="7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="26" x="7.62" y="15.24" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FE13-2" prefix="SV" uservalue="yes">
<description>&lt;b&gt;FEMALE HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="FE13-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FE13-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20" pad="20"/>
<connect gate="G$1" pin="21" pad="21"/>
<connect gate="G$1" pin="22" pad="22"/>
<connect gate="G$1" pin="23" pad="23"/>
<connect gate="G$1" pin="24" pad="24"/>
<connect gate="G$1" pin="25" pad="25"/>
<connect gate="G$1" pin="26" pad="26"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lstb">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA04-1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-5.08" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.223" y="-0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="0.635" y="1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="5.334" y="-0.635" size="1.27" layer="21" ratio="10">4</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MA04-1">
<wire x1="3.81" y1="-7.62" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<text x="-1.27" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA04-1" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA04-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA04-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ir">
<description>&lt;b&gt;IR&lt;/b&gt; International Rectifier&lt;p&gt;
www.irf.com</description>
<packages>
<package name="DIL08">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="5.08" y1="2.921" x2="-5.08" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.921" x2="5.08" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="5.08" y1="2.921" x2="5.08" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="2.921" x2="-5.08" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.921" x2="-5.08" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.016" x2="-5.08" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-3.81" y="-3.81" drill="0.8" diameter="1.4" rot="R90"/>
<pad name="2" x="-1.27" y="-3.81" drill="0.8" diameter="1.4" rot="R90"/>
<pad name="7" x="-1.27" y="3.81" drill="0.8" diameter="1.4" rot="R90"/>
<pad name="8" x="-3.81" y="3.81" drill="0.8" diameter="1.4" rot="R90"/>
<pad name="3" x="1.27" y="-3.81" drill="0.8" diameter="1.4" rot="R90"/>
<pad name="4" x="3.81" y="-3.81" drill="0.8" diameter="1.4" rot="R90"/>
<pad name="6" x="1.27" y="3.81" drill="0.8" diameter="1.4" rot="R90"/>
<pad name="5" x="3.81" y="3.81" drill="0.8" diameter="1.4" rot="R90"/>
<text x="-5.334" y="-2.921" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-3.556" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SO08">
<description>&lt;b&gt;8 Lead SOIC&lt;/b&gt;&lt;p&gt;
Data Sheet No. PD60212 Rev A&lt;br&gt;
Source: www.irf.com .. ir2520.pdf</description>
<wire x1="2.4" y1="1.9" x2="2.4" y2="-1.4" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-1.4" x2="2.4" y2="-1.9" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-1.9" x2="-2.4" y2="-1.9" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="-1.9" x2="-2.4" y2="-1.4" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="-1.4" x2="-2.4" y2="1.9" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="1.9" x2="2.4" y2="1.9" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-1.4" x2="-2.4" y2="-1.4" width="0.2032" layer="51"/>
<smd name="2" x="-0.635" y="-2.35" dx="0.72" dy="1.78" layer="1"/>
<smd name="7" x="-0.635" y="2.35" dx="0.72" dy="1.78" layer="1"/>
<smd name="1" x="-1.905" y="-2.35" dx="0.72" dy="1.78" layer="1"/>
<smd name="3" x="0.635" y="-2.35" dx="0.72" dy="1.78" layer="1"/>
<smd name="4" x="1.905" y="-2.35" dx="0.72" dy="1.78" layer="1"/>
<smd name="8" x="-1.905" y="2.35" dx="0.72" dy="1.78" layer="1"/>
<smd name="6" x="0.635" y="2.35" dx="0.72" dy="1.78" layer="1"/>
<smd name="5" x="1.905" y="2.35" dx="0.72" dy="1.78" layer="1"/>
<text x="-2.667" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.937" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.15" y1="-3.1" x2="-1.66" y2="-2" layer="51"/>
<rectangle x1="-0.88" y1="-3.1" x2="-0.39" y2="-2" layer="51"/>
<rectangle x1="0.39" y1="-3.1" x2="0.88" y2="-2" layer="51"/>
<rectangle x1="1.66" y1="-3.1" x2="2.15" y2="-2" layer="51"/>
<rectangle x1="1.66" y1="2" x2="2.15" y2="3.1" layer="51"/>
<rectangle x1="0.39" y1="2" x2="0.88" y2="3.1" layer="51"/>
<rectangle x1="-0.88" y1="2" x2="-0.39" y2="3.1" layer="51"/>
<rectangle x1="-2.15" y1="2" x2="-1.66" y2="3.1" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="IR4426">
<wire x1="-7.62" y1="7.62" x2="10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="7.62" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="-7.62" y2="7.62" width="0.254" layer="94"/>
<text x="-7.62" y="8.89" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="!INA" x="-10.16" y="2.54" length="short" direction="in"/>
<pin name="!INB" x="-10.16" y="-2.54" length="short" direction="in"/>
<pin name="OUTA" x="12.7" y="2.54" length="short" direction="out" rot="R180"/>
<pin name="OUTB" x="12.7" y="-2.54" length="short" direction="out" rot="R180"/>
<pin name="GND" x="12.7" y="-5.08" length="short" direction="pwr" rot="R180"/>
<pin name="VS" x="12.7" y="5.08" length="short" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="IR4426" prefix="IC">
<description>&lt;b&gt;DUAL LOW SIDE DRIVER&lt;/b&gt;&lt;p&gt;
Source: ID4426.pdf</description>
<gates>
<gate name="P" symbol="IR4426" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIL08">
<connects>
<connect gate="P" pin="!INA" pad="2"/>
<connect gate="P" pin="!INB" pad="4"/>
<connect gate="P" pin="GND" pad="3"/>
<connect gate="P" pin="OUTA" pad="7"/>
<connect gate="P" pin="OUTB" pad="5"/>
<connect gate="P" pin="VS" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="INTERNATIONAL RECTIFIER(IR)" constant="no"/>
<attribute name="MPN" value="IR4426PBF" constant="no"/>
<attribute name="OC_FARNELL" value="1023265" constant="no"/>
<attribute name="OC_NEWARK" value="19K8460" constant="no"/>
</technology>
</technologies>
</device>
<device name="S" package="SO08">
<connects>
<connect gate="P" pin="!INA" pad="2"/>
<connect gate="P" pin="!INB" pad="4"/>
<connect gate="P" pin="GND" pad="3"/>
<connect gate="P" pin="OUTA" pad="7"/>
<connect gate="P" pin="OUTB" pad="5"/>
<connect gate="P" pin="VS" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="INTERNATIONAL RECTIFIER(IR)" constant="no"/>
<attribute name="MPN" value="IR4426S" constant="no"/>
<attribute name="OC_FARNELL" value="1023266" constant="no"/>
<attribute name="OC_NEWARK" value="27C6913" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<text x="-1.905" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="GND" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="VCC">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VCC" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-jack">
<description>&lt;b&gt;Jacks&lt;/b&gt;&lt;p&gt;
Power Connectors&lt;br&gt;
Phone Connectors&lt;br&gt;
Cinch Connectors&lt;br&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DCJ0303">
<description>&lt;b&gt;DC POWER JACK&lt;/b&gt; Pad shape changed to LONG 2007.07.26&lt;p&gt;
Source: DCJ0303.pdf</description>
<wire x1="1.65" y1="2.6" x2="-1.65" y2="2.6" width="0" layer="46"/>
<wire x1="-1.65" y1="2.6" x2="-1.65" y2="3.6" width="0" layer="46"/>
<wire x1="-1.65" y1="3.6" x2="1.65" y2="3.6" width="0" layer="46"/>
<wire x1="1.65" y1="3.6" x2="1.65" y2="2.6" width="0" layer="46"/>
<wire x1="5.3" y1="1.4" x2="4.3" y2="1.4" width="0" layer="46"/>
<wire x1="4.3" y1="1.4" x2="4.3" y2="-1.4" width="0" layer="46"/>
<wire x1="4.3" y1="-1.4" x2="5.3" y2="-1.4" width="0" layer="46"/>
<wire x1="5.3" y1="-1.4" x2="5.3" y2="1.4" width="0" layer="46"/>
<wire x1="1.4" y1="-3.5" x2="-1.4" y2="-3.5" width="0" layer="46"/>
<wire x1="-1.4" y1="-3.5" x2="-1.4" y2="-2.5" width="0" layer="46"/>
<wire x1="-1.4" y1="-2.5" x2="1.4" y2="-2.5" width="0" layer="46"/>
<wire x1="1.4" y1="-2.5" x2="1.4" y2="-3.5" width="0" layer="46"/>
<wire x1="-4.3" y1="-10.4" x2="4.3" y2="-10.4" width="0.2032" layer="21"/>
<wire x1="4.3" y1="-10.4" x2="4.3" y2="3.9" width="0.2032" layer="51"/>
<wire x1="4.3" y1="3.9" x2="-4.3" y2="3.9" width="0.2032" layer="51"/>
<wire x1="-4.3" y1="3.9" x2="-4.3" y2="-10.4" width="0.2032" layer="21"/>
<wire x1="-2.7" y1="3.9" x2="-4.3" y2="3.9" width="0.2032" layer="21"/>
<wire x1="4.3" y1="3.9" x2="2.7" y2="3.9" width="0.2032" layer="21"/>
<wire x1="-3" y1="-10.275" x2="-3" y2="-3" width="0.2032" layer="51" style="shortdash"/>
<wire x1="3" y1="-10.3" x2="3" y2="-3" width="0.2032" layer="51" style="shortdash"/>
<wire x1="3" y1="-3" x2="-3" y2="-3" width="0.2032" layer="51" style="shortdash"/>
<wire x1="-0.9" y1="-9" x2="-0.9" y2="-4.5" width="0.2032" layer="51" style="shortdash"/>
<wire x1="0.9" y1="-9" x2="0.9" y2="-4.5" width="0.2032" layer="51" style="shortdash"/>
<wire x1="-0.9" y1="-9" x2="0.9" y2="-9" width="0.2032" layer="51" curve="166.57811"/>
<wire x1="4.3" y1="-10.4" x2="4.3" y2="-2.45" width="0.2032" layer="21"/>
<wire x1="4.3" y1="2.3" x2="4.3" y2="3.9" width="0.2032" layer="21"/>
<pad name="1" x="0" y="3.1" drill="1" diameter="2" shape="long" rot="R180"/>
<pad name="3" x="0" y="-3" drill="1" diameter="2" shape="long" rot="R180"/>
<pad name="2" x="4.8" y="0" drill="1" diameter="2" shape="long" rot="R90"/>
<text x="6.35" y="-10.16" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="-5.08" y="-10.16" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="DC-JACK-SWITCH">
<wire x1="5.08" y1="2.54" x2="-2.54" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="1.27" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="0.762" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0.762" y1="-2.54" x2="0" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="0" y1="-1.016" x2="-0.762" y2="-2.54" width="0.1524" layer="94"/>
<text x="-2.54" y="3.81" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-6.35" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-3.302" y1="-2.54" x2="-1.778" y2="1.27" layer="94"/>
<pin name="1" x="7.62" y="2.54" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="2" x="7.62" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="3" x="7.62" y="-2.54" visible="pad" length="short" direction="pas" rot="R180"/>
<polygon width="0.1524" layer="94">
<vertex x="2.54" y="-2.54"/>
<vertex x="2.032" y="-1.27"/>
<vertex x="3.048" y="-1.27"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="DCJ0303" prefix="J" uservalue="yes">
<description>&lt;b&gt;DC POWER JACK&lt;/b&gt;&lt;p&gt;
Source: DCJ0303.pdf</description>
<gates>
<gate name="G$1" symbol="DC-JACK-SWITCH" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DCJ0303">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="DCDC">
<packages>
<package name="DCDC">
<pad name="IN+_2" x="0" y="0" drill="0.8" diameter="1.6764" rot="R90"/>
<pad name="IN+_1" x="0" y="2.54" drill="0.8" diameter="1.6764"/>
<pad name="IN-_2" x="0" y="11" drill="0.8" diameter="1.6764"/>
<pad name="IN-_1" x="0" y="13.54" drill="0.8" diameter="1.6764"/>
<pad name="OUT+2" x="19" y="0" drill="0.8" diameter="1.6764"/>
<pad name="OUT+_1" x="19" y="2.54" drill="0.8" diameter="1.6764"/>
<pad name="OUT-_2" x="19" y="11" drill="0.8" diameter="1.6764"/>
<pad name="OUT-_1" x="19" y="13.54" drill="0.8" diameter="1.6764"/>
<wire x1="-1.5" y1="-1.5" x2="20.5" y2="-1.5" width="0.127" layer="21"/>
<wire x1="20.5" y1="-1.5" x2="20.5" y2="15.04" width="0.127" layer="21"/>
<wire x1="-1.5" y1="-1.5" x2="-1.5" y2="15.04" width="0.127" layer="21"/>
<wire x1="-1.5" y1="15.04" x2="20.5" y2="15.04" width="0.127" layer="21"/>
<text x="6.35" y="15.24" size="1.27" layer="21">DCDC</text>
<text x="-5.08" y="11.43" size="1.27" layer="21">IN-</text>
<text x="-5.08" y="1.27" size="1.27" layer="21">IN+</text>
<text x="21.59" y="11.43" size="1.27" layer="21">OUT-</text>
<text x="21.59" y="1.27" size="1.27" layer="21">OUT+</text>
<text x="6.35" y="6.35" size="1.27" layer="25">name</text>
<text x="6.35" y="-3.81" size="1.27" layer="27">value</text>
</package>
</packages>
<symbols>
<symbol name="DCDC">
<wire x1="0" y1="0" x2="0" y2="15.24" width="0.254" layer="94"/>
<wire x1="0" y1="15.24" x2="25.4" y2="15.24" width="0.254" layer="94"/>
<wire x1="25.4" y1="15.24" x2="25.4" y2="0" width="0.254" layer="94"/>
<wire x1="25.4" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<pin name="IN-_1" x="-5.08" y="12.7" visible="pin" length="middle"/>
<pin name="IN-_2" x="-5.08" y="10.16" visible="pin" length="middle"/>
<pin name="IN+_1" x="-5.08" y="5.08" visible="pin" length="middle"/>
<pin name="IN+_2" x="-5.08" y="2.54" visible="pin" length="middle"/>
<pin name="OUT-_1" x="30.48" y="12.7" visible="pin" length="middle" rot="R180"/>
<pin name="OUT-_2" x="30.48" y="10.16" visible="pin" length="middle" rot="R180"/>
<pin name="OUT+_1" x="30.48" y="5.08" visible="pin" length="middle" rot="R180"/>
<pin name="OUT+_2" x="30.48" y="2.54" visible="pin" length="middle" rot="R180"/>
<text x="10.16" y="7.62" size="1.27" layer="94">DCDC</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="DCDC">
<gates>
<gate name="G$1" symbol="DCDC" x="5.08" y="-2.54"/>
</gates>
<devices>
<device name="" package="DCDC">
<connects>
<connect gate="G$1" pin="IN+_1" pad="IN+_1"/>
<connect gate="G$1" pin="IN+_2" pad="IN+_2"/>
<connect gate="G$1" pin="IN-_1" pad="IN-_1"/>
<connect gate="G$1" pin="IN-_2" pad="IN-_2"/>
<connect gate="G$1" pin="OUT+_1" pad="OUT+2"/>
<connect gate="G$1" pin="OUT+_2" pad="OUT+_1"/>
<connect gate="G$1" pin="OUT-_1" pad="OUT-_1"/>
<connect gate="G$1" pin="OUT-_2" pad="OUT-_2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="transistor-power">
<description>&lt;b&gt;Power Transistors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="TO220BH">
<description>&lt;b&gt;Molded Package&lt;/b&gt;&lt;p&gt;
grid 2.54 mm</description>
<wire x1="-5.207" y1="-1.27" x2="5.207" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.207" y1="14.605" x2="-5.207" y2="14.605" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-1.27" x2="5.207" y2="11.176" width="0.1524" layer="21"/>
<wire x1="5.207" y1="11.176" x2="4.318" y2="11.176" width="0.1524" layer="21"/>
<wire x1="4.318" y1="11.176" x2="4.318" y2="12.7" width="0.1524" layer="21"/>
<wire x1="4.318" y1="12.7" x2="5.207" y2="12.7" width="0.1524" layer="21"/>
<wire x1="5.207" y1="12.7" x2="5.207" y2="14.605" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-1.27" x2="-5.207" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="11.176" x2="-4.318" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="11.176" x2="-4.318" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="12.7" x2="-5.207" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="12.7" x2="-5.207" y2="14.605" width="0.1524" layer="21"/>
<wire x1="-4.572" y1="-0.635" x2="4.572" y2="-0.635" width="0.0508" layer="21"/>
<wire x1="4.572" y1="7.62" x2="4.572" y2="-0.635" width="0.0508" layer="21"/>
<wire x1="4.572" y1="7.62" x2="-4.572" y2="7.62" width="0.0508" layer="21"/>
<wire x1="-4.572" y1="-0.635" x2="-4.572" y2="7.62" width="0.0508" layer="21"/>
<circle x="0" y="11.176" radius="1.8034" width="0.1524" layer="21"/>
<circle x="0" y="11.176" radius="4.191" width="0" layer="42"/>
<circle x="0" y="11.176" radius="4.191" width="0" layer="43"/>
<pad name="G" x="-2.54" y="-6.35" drill="1.1176" shape="long" rot="R90"/>
<pad name="D" x="0" y="-6.35" drill="1.1176" shape="long" rot="R90"/>
<pad name="S" x="2.54" y="-6.35" drill="1.1176" shape="long" rot="R90"/>
<text x="-3.81" y="5.207" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.937" y="2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-4.445" y="7.874" size="1.016" layer="21" ratio="10">A17,5mm</text>
<rectangle x1="2.159" y1="-4.699" x2="2.921" y2="-4.064" layer="21"/>
<rectangle x1="-0.381" y1="-4.699" x2="0.381" y2="-4.064" layer="21"/>
<rectangle x1="-2.921" y1="-4.699" x2="-2.159" y2="-4.064" layer="21"/>
<rectangle x1="-3.175" y1="-4.064" x2="-1.905" y2="-1.27" layer="21"/>
<rectangle x1="-0.635" y1="-4.064" x2="0.635" y2="-1.27" layer="21"/>
<rectangle x1="1.905" y1="-4.064" x2="3.175" y2="-1.27" layer="21"/>
<rectangle x1="-2.921" y1="-6.604" x2="-2.159" y2="-4.699" layer="51"/>
<rectangle x1="-0.381" y1="-6.604" x2="0.381" y2="-4.699" layer="51"/>
<rectangle x1="2.159" y1="-6.604" x2="2.921" y2="-4.699" layer="51"/>
<hole x="0" y="11.176" drill="3.302"/>
</package>
<package name="TO220BV">
<description>&lt;b&gt;Molded Package&lt;/b&gt;&lt;p&gt;
grid 2.54 mm</description>
<wire x1="4.699" y1="-4.318" x2="4.953" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-4.318" x2="-4.699" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-4.064" x2="-4.699" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.143" x2="4.953" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-4.064" x2="-5.08" y2="-1.143" width="0.1524" layer="21"/>
<circle x="-4.4958" y="-3.7084" radius="0.254" width="0" layer="21"/>
<pad name="G" x="-2.54" y="-2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="D" x="0" y="-2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="S" x="2.54" y="-2.54" drill="1.016" shape="long" rot="R90"/>
<text x="-5.08" y="-6.0452" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-7.62" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.334" y1="-0.762" x2="5.334" y2="0" layer="21"/>
<rectangle x1="-5.334" y1="-1.27" x2="-3.429" y2="-0.762" layer="21"/>
<rectangle x1="-1.651" y1="-1.27" x2="-0.889" y2="-0.762" layer="21"/>
<rectangle x1="-3.429" y1="-1.27" x2="-1.651" y2="-0.762" layer="51"/>
<rectangle x1="0.889" y1="-1.27" x2="1.651" y2="-0.762" layer="21"/>
<rectangle x1="3.429" y1="-1.27" x2="5.334" y2="-0.762" layer="21"/>
<rectangle x1="-0.889" y1="-1.27" x2="0.889" y2="-0.762" layer="51"/>
<rectangle x1="1.651" y1="-1.27" x2="3.429" y2="-0.762" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MFNS">
<wire x1="-1.1176" y1="2.413" x2="-1.1176" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.1176" y1="-2.54" x2="-2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="1.905" x2="0.5334" y2="1.905" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="0.508" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="1.905" width="0.1524" layer="94"/>
<wire x1="2.54" y1="1.905" x2="5.08" y2="1.905" width="0.1524" layer="94"/>
<wire x1="5.08" y1="1.905" x2="5.08" y2="0.762" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0.762" x2="5.08" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0.762" x2="4.445" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="4.445" y1="-0.635" x2="5.715" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="5.715" y1="-0.635" x2="5.08" y2="0.762" width="0.1524" layer="94"/>
<wire x1="4.445" y1="0.762" x2="5.08" y2="0.762" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0.762" x2="5.715" y2="0.762" width="0.1524" layer="94"/>
<wire x1="5.715" y1="0.762" x2="5.969" y2="1.016" width="0.1524" layer="94"/>
<wire x1="4.445" y1="0.762" x2="4.191" y2="0.508" width="0.1524" layer="94"/>
<wire x1="0.508" y1="0" x2="1.778" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="1.778" y1="-0.508" x2="1.778" y2="0.508" width="0.1524" layer="94"/>
<wire x1="1.778" y1="0.508" x2="0.508" y2="0" width="0.1524" layer="94"/>
<wire x1="1.651" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="1.651" y1="0.254" x2="0.762" y2="0" width="0.3048" layer="94"/>
<wire x1="0.762" y1="0" x2="1.651" y2="-0.254" width="0.3048" layer="94"/>
<wire x1="1.651" y1="-0.254" x2="1.651" y2="0" width="0.3048" layer="94"/>
<wire x1="1.651" y1="0" x2="1.397" y2="0" width="0.3048" layer="94"/>
<circle x="2.54" y="-1.905" radius="0.127" width="0.4064" layer="94"/>
<circle x="2.54" y="1.905" radius="0.127" width="0.4064" layer="94"/>
<text x="7.62" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="7.62" y="0" size="1.778" layer="96">&gt;VALUE</text>
<text x="1.27" y="2.54" size="0.8128" layer="93">D</text>
<text x="1.27" y="-3.175" size="0.8128" layer="93">S</text>
<text x="-2.54" y="-1.27" size="0.8128" layer="93">G</text>
<rectangle x1="-0.254" y1="-2.54" x2="0.508" y2="-1.27" layer="94"/>
<rectangle x1="-0.254" y1="1.27" x2="0.508" y2="2.54" layer="94"/>
<rectangle x1="-0.254" y1="-0.889" x2="0.508" y2="0.889" layer="94"/>
<pin name="G" x="-2.54" y="-2.54" visible="off" length="point" direction="pas"/>
<pin name="D" x="2.54" y="5.08" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="S" x="2.54" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="IRLZ44Z" prefix="Q">
<description>&lt;b&gt;N-Channel HEXFET® Power MOSFET&lt;/b&gt; Logic Level&lt;p&gt;
 AUTOMOTIVE MOSFET&lt;br&gt;
Source: http://www.irf.com/product-info/datasheets/data/irlz44zpbf.pdf</description>
<gates>
<gate name="G$1" symbol="MFNS" x="0" y="0"/>
</gates>
<devices>
<device name="1" package="TO220BH">
<connects>
<connect gate="G$1" pin="D" pad="D"/>
<connect gate="G$1" pin="G" pad="G"/>
<connect gate="G$1" pin="S" pad="S"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="" package="TO220BV">
<connects>
<connect gate="G$1" pin="D" pad="D"/>
<connect gate="G$1" pin="G" pad="G"/>
<connect gate="G$1" pin="S" pad="S"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="SV1" library="con-lsta" deviceset="FE13-2" device=""/>
<part name="SV2" library="con-lstb" deviceset="MA04-1" device=""/>
<part name="SV3" library="con-lstb" deviceset="MA04-1" device=""/>
<part name="SV4" library="con-lstb" deviceset="MA04-1" device=""/>
<part name="SV5" library="con-lstb" deviceset="MA04-1" device=""/>
<part name="IC1" library="ir" deviceset="IR4426" device=""/>
<part name="IC2" library="ir" deviceset="IR4426" device=""/>
<part name="SUPPLY1" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY2" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY3" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY4" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY5" library="supply2" deviceset="GND" device=""/>
<part name="P+4" library="supply1" deviceset="VCC" device=""/>
<part name="P+5" library="supply1" deviceset="VCC" device=""/>
<part name="P+1" library="supply1" deviceset="VCC" device=""/>
<part name="P+2" library="supply1" deviceset="VCC" device=""/>
<part name="P+3" library="supply1" deviceset="VCC" device=""/>
<part name="P+6" library="supply1" deviceset="VCC" device=""/>
<part name="SUPPLY6" library="supply2" deviceset="GND" device=""/>
<part name="J1" library="con-jack" deviceset="DCJ0303" device=""/>
<part name="SUPPLY7" library="supply2" deviceset="GND" device=""/>
<part name="P+7" library="supply1" deviceset="VCC" device=""/>
<part name="5V" library="DCDC" deviceset="DCDC" device=""/>
<part name="SUPPLY8" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY9" library="supply2" deviceset="GND" device=""/>
<part name="P+8" library="supply1" deviceset="VCC" device=""/>
<part name="SUPPLY10" library="supply2" deviceset="GND" device=""/>
<part name="Q1" library="transistor-power" deviceset="IRLZ44Z" device=""/>
<part name="Q2" library="transistor-power" deviceset="IRLZ44Z" device=""/>
<part name="Q3" library="transistor-power" deviceset="IRLZ44Z" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="SV1" gate="G$1" x="-10.16" y="40.64" rot="R180"/>
<instance part="SV2" gate="1" x="93.98" y="48.26" rot="R180"/>
<instance part="SV3" gate="1" x="111.76" y="48.26" rot="R180"/>
<instance part="SV4" gate="1" x="129.54" y="48.26" rot="R180"/>
<instance part="SV5" gate="1" x="149.86" y="48.26" rot="R180"/>
<instance part="IC1" gate="P" x="27.94" y="50.8"/>
<instance part="IC2" gate="P" x="27.94" y="15.24"/>
<instance part="SUPPLY1" gate="GND" x="43.18" y="43.18"/>
<instance part="SUPPLY2" gate="GND" x="43.18" y="7.62"/>
<instance part="SUPPLY3" gate="GND" x="58.42" y="7.62"/>
<instance part="SUPPLY4" gate="GND" x="58.42" y="33.02"/>
<instance part="SUPPLY5" gate="GND" x="58.42" y="55.88"/>
<instance part="P+4" gate="VCC" x="43.18" y="22.86"/>
<instance part="P+5" gate="VCC" x="43.18" y="58.42"/>
<instance part="P+1" gate="VCC" x="83.82" y="55.88"/>
<instance part="P+2" gate="VCC" x="101.6" y="55.88"/>
<instance part="P+3" gate="VCC" x="119.38" y="55.88"/>
<instance part="P+6" gate="VCC" x="139.7" y="55.88"/>
<instance part="SUPPLY6" gate="GND" x="7.62" y="48.26"/>
<instance part="J1" gate="G$1" x="-43.18" y="22.86" rot="MR0"/>
<instance part="SUPPLY7" gate="GND" x="-55.88" y="15.24"/>
<instance part="P+7" gate="VCC" x="-55.88" y="30.48"/>
<instance part="5V" gate="G$1" x="-60.96" y="58.42" rot="MR180"/>
<instance part="SUPPLY8" gate="GND" x="7.62" y="20.32"/>
<instance part="SUPPLY9" gate="GND" x="-25.4" y="27.94"/>
<instance part="P+8" gate="VCC" x="-71.12" y="60.96"/>
<instance part="SUPPLY10" gate="GND" x="-71.12" y="40.64"/>
<instance part="Q1" gate="G$1" x="55.88" y="63.5"/>
<instance part="Q2" gate="G$1" x="55.88" y="40.64"/>
<instance part="Q3" gate="G$1" x="55.88" y="15.24"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="11"/>
<wire x1="12.7" y1="43.18" x2="-2.54" y2="43.18" width="0.1524" layer="91"/>
<wire x1="12.7" y1="43.18" x2="12.7" y2="48.26" width="0.1524" layer="91"/>
<pinref part="IC1" gate="P" pin="!INB"/>
<wire x1="12.7" y1="48.26" x2="17.78" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<wire x1="15.24" y1="53.34" x2="15.24" y2="40.64" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="13"/>
<wire x1="-2.54" y1="40.64" x2="15.24" y2="40.64" width="0.1524" layer="91"/>
<pinref part="IC1" gate="P" pin="!INA"/>
<wire x1="17.78" y1="53.34" x2="15.24" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="15.24" y1="38.1" x2="15.24" y2="17.78" width="0.1524" layer="91"/>
<pinref part="IC2" gate="P" pin="!INA"/>
<wire x1="15.24" y1="17.78" x2="17.78" y2="17.78" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="15"/>
<wire x1="15.24" y1="38.1" x2="-2.54" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="48.26" y1="38.1" x2="53.34" y2="38.1" width="0.1524" layer="91"/>
<pinref part="Q2" gate="G$1" pin="G"/>
<pinref part="IC1" gate="P" pin="OUTA"/>
<wire x1="40.64" y1="53.34" x2="48.26" y2="53.34" width="0.1524" layer="91"/>
<wire x1="48.26" y1="53.34" x2="48.26" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="IC1" gate="P" pin="GND"/>
<pinref part="SUPPLY1" gate="GND" pin="GND"/>
<wire x1="43.18" y1="45.72" x2="40.64" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC2" gate="P" pin="GND"/>
<pinref part="SUPPLY2" gate="GND" pin="GND"/>
<wire x1="40.64" y1="10.16" x2="43.18" y2="10.16" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="2.54" y1="45.72" x2="2.54" y2="53.34" width="0.1524" layer="91"/>
<pinref part="SUPPLY6" gate="GND" pin="GND"/>
<wire x1="2.54" y1="53.34" x2="7.62" y2="53.34" width="0.1524" layer="91"/>
<wire x1="7.62" y1="53.34" x2="7.62" y2="50.8" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="9"/>
<wire x1="-2.54" y1="45.72" x2="2.54" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV1" gate="G$1" pin="14"/>
<pinref part="SUPPLY9" gate="GND" pin="GND"/>
<wire x1="-17.78" y1="40.64" x2="-25.4" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="40.64" x2="-25.4" y2="33.02" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="20"/>
<wire x1="-17.78" y1="33.02" x2="-25.4" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="33.02" x2="-25.4" y2="30.48" width="0.1524" layer="91"/>
<junction x="-25.4" y="33.02"/>
<junction x="-25.4" y="40.64"/>
<pinref part="SV1" gate="G$1" pin="6"/>
<wire x1="-17.78" y1="50.8" x2="-25.4" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="50.8" x2="-25.4" y2="48.26" width="0.1524" layer="91"/>
<pinref part="5V" gate="G$1" pin="OUT-_2"/>
<wire x1="-25.4" y1="45.72" x2="-25.4" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="48.26" x2="-25.4" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="48.26" x2="-25.4" y2="45.72" width="0.1524" layer="91"/>
<pinref part="5V" gate="G$1" pin="OUT-_1"/>
<wire x1="-25.4" y1="45.72" x2="-30.48" y2="45.72" width="0.1524" layer="91"/>
<junction x="-25.4" y="45.72"/>
<junction x="-25.4" y="48.26"/>
</segment>
<segment>
<pinref part="SV1" gate="G$1" pin="25"/>
<pinref part="SUPPLY8" gate="GND" pin="GND"/>
<wire x1="-2.54" y1="25.4" x2="7.62" y2="25.4" width="0.1524" layer="91"/>
<wire x1="7.62" y1="25.4" x2="7.62" y2="22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="5V" gate="G$1" pin="IN-_2"/>
<pinref part="SUPPLY10" gate="GND" pin="GND"/>
<wire x1="-66.04" y1="48.26" x2="-71.12" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="48.26" x2="-71.12" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="43.18" x2="-71.12" y2="45.72" width="0.1524" layer="91"/>
<pinref part="5V" gate="G$1" pin="IN-_1"/>
<wire x1="-71.12" y1="45.72" x2="-66.04" y2="45.72" width="0.1524" layer="91"/>
<junction x="-71.12" y="45.72"/>
</segment>
<segment>
<pinref part="SUPPLY5" gate="GND" pin="GND"/>
<pinref part="Q1" gate="G$1" pin="S"/>
</segment>
<segment>
<pinref part="SUPPLY4" gate="GND" pin="GND"/>
<pinref part="Q2" gate="G$1" pin="S"/>
</segment>
<segment>
<pinref part="SUPPLY3" gate="GND" pin="GND"/>
<pinref part="Q3" gate="G$1" pin="S"/>
</segment>
<segment>
<pinref part="SUPPLY7" gate="GND" pin="GND"/>
<pinref part="J1" gate="G$1" pin="3"/>
<wire x1="-55.88" y1="17.78" x2="-55.88" y2="20.32" width="0.1524" layer="91"/>
<wire x1="-55.88" y1="20.32" x2="-50.8" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="P+5" gate="VCC" pin="VCC"/>
<pinref part="IC1" gate="P" pin="VS"/>
<wire x1="43.18" y1="55.88" x2="40.64" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+4" gate="VCC" pin="VCC"/>
<pinref part="IC2" gate="P" pin="VS"/>
<wire x1="43.18" y1="20.32" x2="40.64" y2="20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV5" gate="1" pin="1"/>
<pinref part="P+6" gate="VCC" pin="VCC"/>
<wire x1="142.24" y1="53.34" x2="139.7" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV4" gate="1" pin="1"/>
<pinref part="P+3" gate="VCC" pin="VCC"/>
<wire x1="121.92" y1="53.34" x2="119.38" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV3" gate="1" pin="1"/>
<pinref part="P+2" gate="VCC" pin="VCC"/>
<wire x1="104.14" y1="53.34" x2="101.6" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV2" gate="1" pin="1"/>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<wire x1="86.36" y1="53.34" x2="83.82" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="5V" gate="G$1" pin="IN+_2"/>
<pinref part="P+8" gate="VCC" pin="VCC"/>
<wire x1="-66.04" y1="55.88" x2="-71.12" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="55.88" x2="-71.12" y2="58.42" width="0.1524" layer="91"/>
<pinref part="5V" gate="G$1" pin="IN+_1"/>
<wire x1="-66.04" y1="53.34" x2="-71.12" y2="53.34" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="53.34" x2="-71.12" y2="55.88" width="0.1524" layer="91"/>
<junction x="-71.12" y="55.88"/>
</segment>
<segment>
<pinref part="P+7" gate="VCC" pin="VCC"/>
<pinref part="J1" gate="G$1" pin="1"/>
<wire x1="-55.88" y1="27.94" x2="-55.88" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-55.88" y1="25.4" x2="-50.8" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="Q1" gate="G$1" pin="G"/>
<pinref part="IC1" gate="P" pin="OUTB"/>
<wire x1="50.8" y1="60.96" x2="53.34" y2="60.96" width="0.1524" layer="91"/>
<wire x1="40.64" y1="48.26" x2="50.8" y2="48.26" width="0.1524" layer="91"/>
<wire x1="50.8" y1="48.26" x2="50.8" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="IC2" gate="P" pin="OUTA"/>
<wire x1="40.64" y1="17.78" x2="48.26" y2="17.78" width="0.1524" layer="91"/>
<wire x1="48.26" y1="17.78" x2="48.26" y2="12.7" width="0.1524" layer="91"/>
<wire x1="48.26" y1="12.7" x2="53.34" y2="12.7" width="0.1524" layer="91"/>
<pinref part="Q3" gate="G$1" pin="G"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<wire x1="58.42" y1="45.72" x2="58.42" y2="48.26" width="0.1524" layer="91"/>
<pinref part="SV2" gate="1" pin="3"/>
<wire x1="86.36" y1="48.26" x2="58.42" y2="48.26" width="0.1524" layer="91"/>
<pinref part="SV3" gate="1" pin="3"/>
<wire x1="104.14" y1="48.26" x2="86.36" y2="48.26" width="0.1524" layer="91"/>
<pinref part="SV4" gate="1" pin="3"/>
<wire x1="121.92" y1="48.26" x2="86.36" y2="48.26" width="0.1524" layer="91"/>
<pinref part="SV5" gate="1" pin="3"/>
<wire x1="142.24" y1="48.26" x2="86.36" y2="48.26" width="0.1524" layer="91"/>
<pinref part="Q2" gate="G$1" pin="D"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<wire x1="58.42" y1="20.32" x2="58.42" y2="25.4" width="0.1524" layer="91"/>
<wire x1="58.42" y1="25.4" x2="78.74" y2="25.4" width="0.1524" layer="91"/>
<wire x1="78.74" y1="25.4" x2="78.74" y2="45.72" width="0.1524" layer="91"/>
<pinref part="SV2" gate="1" pin="4"/>
<wire x1="78.74" y1="45.72" x2="86.36" y2="45.72" width="0.1524" layer="91"/>
<wire x1="78.74" y1="25.4" x2="101.6" y2="25.4" width="0.1524" layer="91"/>
<wire x1="101.6" y1="25.4" x2="101.6" y2="45.72" width="0.1524" layer="91"/>
<junction x="78.74" y="25.4"/>
<pinref part="SV3" gate="1" pin="4"/>
<wire x1="101.6" y1="45.72" x2="104.14" y2="45.72" width="0.1524" layer="91"/>
<pinref part="SV4" gate="1" pin="4"/>
<wire x1="121.92" y1="45.72" x2="119.38" y2="45.72" width="0.1524" layer="91"/>
<wire x1="119.38" y1="45.72" x2="119.38" y2="25.4" width="0.1524" layer="91"/>
<wire x1="119.38" y1="25.4" x2="101.6" y2="25.4" width="0.1524" layer="91"/>
<junction x="101.6" y="25.4"/>
<pinref part="SV5" gate="1" pin="4"/>
<wire x1="142.24" y1="45.72" x2="139.7" y2="45.72" width="0.1524" layer="91"/>
<wire x1="139.7" y1="45.72" x2="139.7" y2="25.4" width="0.1524" layer="91"/>
<wire x1="139.7" y1="25.4" x2="119.38" y2="25.4" width="0.1524" layer="91"/>
<junction x="119.38" y="25.4"/>
<pinref part="Q3" gate="G$1" pin="D"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="SV2" gate="1" pin="2"/>
<wire x1="86.36" y1="50.8" x2="78.74" y2="50.8" width="0.1524" layer="91"/>
<wire x1="78.74" y1="50.8" x2="78.74" y2="71.12" width="0.1524" layer="91"/>
<wire x1="78.74" y1="71.12" x2="58.42" y2="71.12" width="0.1524" layer="91"/>
<wire x1="58.42" y1="71.12" x2="58.42" y2="68.58" width="0.1524" layer="91"/>
<pinref part="SV3" gate="1" pin="2"/>
<wire x1="104.14" y1="50.8" x2="99.06" y2="50.8" width="0.1524" layer="91"/>
<wire x1="99.06" y1="50.8" x2="99.06" y2="71.12" width="0.1524" layer="91"/>
<wire x1="99.06" y1="71.12" x2="78.74" y2="71.12" width="0.1524" layer="91"/>
<junction x="78.74" y="71.12"/>
<pinref part="SV4" gate="1" pin="2"/>
<wire x1="121.92" y1="50.8" x2="116.84" y2="50.8" width="0.1524" layer="91"/>
<wire x1="116.84" y1="50.8" x2="116.84" y2="71.12" width="0.1524" layer="91"/>
<wire x1="116.84" y1="71.12" x2="99.06" y2="71.12" width="0.1524" layer="91"/>
<junction x="99.06" y="71.12"/>
<pinref part="SV5" gate="1" pin="2"/>
<wire x1="142.24" y1="50.8" x2="134.62" y2="50.8" width="0.1524" layer="91"/>
<wire x1="134.62" y1="50.8" x2="134.62" y2="71.12" width="0.1524" layer="91"/>
<wire x1="134.62" y1="71.12" x2="116.84" y2="71.12" width="0.1524" layer="91"/>
<junction x="116.84" y="71.12"/>
<pinref part="Q1" gate="G$1" pin="D"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="2"/>
<wire x1="-17.78" y1="55.88" x2="-22.86" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="55.88" x2="-22.86" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="55.88" x2="-22.86" y2="53.34" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="4"/>
<wire x1="-22.86" y1="53.34" x2="-17.78" y2="53.34" width="0.1524" layer="91"/>
<junction x="-22.86" y="55.88"/>
<pinref part="5V" gate="G$1" pin="OUT+_2"/>
<wire x1="-30.48" y1="55.88" x2="-25.4" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="55.88" x2="-25.4" y2="53.34" width="0.1524" layer="91"/>
<pinref part="5V" gate="G$1" pin="OUT+_1"/>
<wire x1="-25.4" y1="53.34" x2="-30.48" y2="53.34" width="0.1524" layer="91"/>
<junction x="-25.4" y="55.88"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
