<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
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
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
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
<library name="ATMEGA328P-AU">
<packages>
<package name="QFP80P900X900X120-32N">
<wire x1="3.4" y1="3.4" x2="3.4" y2="-3.4" width="0.1524" layer="21"/>
<wire x1="3.4" y1="-3.4" x2="-3.4" y2="-3.4" width="0.1524" layer="21"/>
<wire x1="-3.4" y1="-3.4" x2="-3.4" y2="3.4" width="0.1524" layer="21"/>
<wire x1="-3.4" y1="3.4" x2="3.4" y2="3.4" width="0.1524" layer="21"/>
<circle x="-2.7432" y="2.7432" radius="0.3592" width="0.1524" layer="21"/>
<text x="-5.57938125" y="5.63088125" size="0.814375" layer="25">&gt;NAME</text>
<text x="-5.52646875" y="-6.514559375" size="0.81336875" layer="27">&gt;VALUE</text>
<rectangle x1="-4.49693125" y1="2.571590625" x2="-3.506" y2="3.0286" layer="51"/>
<rectangle x1="-4.50498125" y1="1.7747" x2="-3.506" y2="2.2286" layer="51"/>
<rectangle x1="-4.500090625" y1="0.97215625" x2="-3.506" y2="1.4286" layer="51"/>
<rectangle x1="-4.50036875" y1="0.17154375" x2="-3.506" y2="0.6286" layer="51"/>
<rectangle x1="-4.50256875" y1="-0.629434375" x2="-3.506" y2="-0.1714" layer="51"/>
<rectangle x1="-4.50186875" y1="-1.43028125" x2="-3.506" y2="-0.9714" layer="51"/>
<rectangle x1="-4.50138125" y1="-2.23096875" x2="-3.506" y2="-1.7714" layer="51"/>
<rectangle x1="-4.50128125" y1="-3.03175" x2="-3.506" y2="-2.5714" layer="51"/>
<rectangle x1="-3.03458125" y1="-4.50548125" x2="-2.5714" y2="-3.506" layer="51"/>
<rectangle x1="-2.230459375" y1="-4.50035" x2="-1.7714" y2="-3.506" layer="51"/>
<rectangle x1="-1.43093125" y1="-4.503940625" x2="-0.9714" y2="-3.506" layer="51"/>
<rectangle x1="-0.628771875" y1="-4.497840625" x2="-0.1714" y2="-3.506" layer="51"/>
<rectangle x1="0.1716" y1="-4.501840625" x2="0.6286" y2="-3.506" layer="51"/>
<rectangle x1="0.971784375" y1="-4.49838125" x2="1.4286" y2="-3.506" layer="51"/>
<rectangle x1="1.77431875" y1="-4.504009375" x2="2.2286" y2="-3.506" layer="51"/>
<rectangle x1="2.57515" y1="-4.50315" x2="3.0286" y2="-3.506" layer="51"/>
<rectangle x1="3.506709375" y1="-3.029209375" x2="4.4966" y2="-2.5714" layer="51"/>
<rectangle x1="3.51286875" y1="-2.23296875" x2="4.4966" y2="-1.7714" layer="51"/>
<rectangle x1="3.51128125" y1="-1.43075" x2="4.4966" y2="-0.9714" layer="51"/>
<rectangle x1="3.509259375" y1="-0.629184375" x2="4.4966" y2="-0.1714" layer="51"/>
<rectangle x1="3.50885" y1="0.1715375" x2="4.4966" y2="0.6286" layer="51"/>
<rectangle x1="3.51123125" y1="0.972846875" x2="4.4966" y2="1.4286" layer="51"/>
<rectangle x1="3.51065" y1="1.77375" x2="4.4966" y2="2.2286" layer="51"/>
<rectangle x1="3.511440625" y1="2.575390625" x2="4.4966" y2="3.0286" layer="51"/>
<rectangle x1="2.57641875" y1="3.51285" x2="3.0286" y2="4.4966" layer="51"/>
<rectangle x1="1.77408125" y1="3.511309375" x2="2.2286" y2="4.4966" layer="51"/>
<rectangle x1="0.972196875" y1="3.50888125" x2="1.4286" y2="4.4966" layer="51"/>
<rectangle x1="0.17140625" y1="3.506109375" x2="0.6286" y2="4.4966" layer="51"/>
<rectangle x1="-0.62981875" y1="3.512790625" x2="-0.1714" y2="4.4966" layer="51"/>
<rectangle x1="-1.42951875" y1="3.50826875" x2="-0.9714" y2="4.4966" layer="51"/>
<rectangle x1="-2.23255" y1="3.51221875" x2="-1.7714" y2="4.4966" layer="51"/>
<rectangle x1="-3.0316" y1="3.50946875" x2="-2.5714" y2="4.4966" layer="51"/>
<wire x1="-5.5" y1="-5.5" x2="5.5" y2="-5.5" width="0.05" layer="39"/>
<wire x1="5.5" y1="-5.5" x2="5.5" y2="5.5" width="0.05" layer="39"/>
<wire x1="5.5" y1="5.5" x2="-5.5" y2="5.5" width="0.05" layer="39"/>
<wire x1="-5.5" y1="5.5" x2="-5.5" y2="-5.5" width="0.05" layer="39"/>
<circle x="-4.5" y="3.75" radius="0.254" width="0" layer="21"/>
<smd name="1" x="-4.3" y="2.8" dx="1.5" dy="0.55" layer="1"/>
<smd name="2" x="-4.3" y="2" dx="1.5" dy="0.55" layer="1"/>
<smd name="3" x="-4.3" y="1.2" dx="1.5" dy="0.55" layer="1"/>
<smd name="4" x="-4.3" y="0.4" dx="1.5" dy="0.55" layer="1"/>
<smd name="5" x="-4.3" y="-0.4" dx="1.5" dy="0.55" layer="1"/>
<smd name="6" x="-4.3" y="-1.2" dx="1.5" dy="0.55" layer="1"/>
<smd name="7" x="-4.3" y="-2" dx="1.5" dy="0.55" layer="1"/>
<smd name="8" x="-4.3" y="-2.8" dx="1.5" dy="0.55" layer="1"/>
<smd name="9" x="-2.8" y="-4.3" dx="0.55" dy="1.5" layer="1"/>
<smd name="10" x="-2" y="-4.3" dx="0.55" dy="1.5" layer="1"/>
<smd name="11" x="-1.2" y="-4.3" dx="0.55" dy="1.5" layer="1"/>
<smd name="12" x="-0.4" y="-4.3" dx="0.55" dy="1.5" layer="1"/>
<smd name="13" x="0.4" y="-4.3" dx="0.55" dy="1.5" layer="1"/>
<smd name="14" x="1.2" y="-4.3" dx="0.55" dy="1.5" layer="1"/>
<smd name="15" x="2" y="-4.3" dx="0.55" dy="1.5" layer="1"/>
<smd name="16" x="2.8" y="-4.3" dx="0.55" dy="1.5" layer="1"/>
<smd name="17" x="4.3" y="-2.8" dx="1.5" dy="0.55" layer="1"/>
<smd name="18" x="4.3" y="-2" dx="1.5" dy="0.55" layer="1"/>
<smd name="19" x="4.3" y="-1.2" dx="1.5" dy="0.55" layer="1"/>
<smd name="20" x="4.3" y="-0.4" dx="1.5" dy="0.55" layer="1"/>
<smd name="21" x="4.3" y="0.4" dx="1.5" dy="0.55" layer="1"/>
<smd name="22" x="4.3" y="1.2" dx="1.5" dy="0.55" layer="1"/>
<smd name="23" x="4.3" y="2" dx="1.5" dy="0.55" layer="1"/>
<smd name="24" x="4.3" y="2.8" dx="1.5" dy="0.55" layer="1"/>
<smd name="25" x="2.8" y="4.3" dx="0.55" dy="1.5" layer="1"/>
<smd name="26" x="2" y="4.3" dx="0.55" dy="1.5" layer="1"/>
<smd name="27" x="1.2" y="4.3" dx="0.55" dy="1.5" layer="1"/>
<smd name="28" x="0.4" y="4.3" dx="0.55" dy="1.5" layer="1"/>
<smd name="29" x="-0.4" y="4.3" dx="0.55" dy="1.5" layer="1"/>
<smd name="30" x="-1.2" y="4.3" dx="0.55" dy="1.5" layer="1"/>
<smd name="31" x="-2" y="4.3" dx="0.55" dy="1.5" layer="1"/>
<smd name="32" x="-2.8" y="4.3" dx="0.55" dy="1.5" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="ATMEGA328P-AU">
<wire x1="10.16" y1="27.94" x2="10.16" y2="-27.94" width="0.254" layer="94"/>
<wire x1="10.16" y1="-27.94" x2="-10.16" y2="-27.94" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-27.94" x2="-10.16" y2="27.94" width="0.254" layer="94"/>
<wire x1="-10.16" y1="27.94" x2="10.16" y2="27.94" width="0.254" layer="94"/>
<text x="-10.1755" y="29.2546" size="2.54388125" layer="95">&gt;NAME</text>
<text x="-10.1669" y="-31.7714" size="2.54171875" layer="96">&gt;VALUE</text>
<pin name="VCC" x="15.24" y="22.86" length="middle" direction="pwr" rot="R180"/>
<pin name="GND" x="15.24" y="-25.4" length="middle" direction="pwr" rot="R180"/>
<pin name="PB0" x="-15.24" y="17.78" length="middle"/>
<pin name="PB1" x="-15.24" y="15.24" length="middle"/>
<pin name="PB2" x="-15.24" y="12.7" length="middle"/>
<pin name="PB3" x="-15.24" y="10.16" length="middle"/>
<pin name="PB4" x="-15.24" y="7.62" length="middle"/>
<pin name="PB5" x="-15.24" y="5.08" length="middle"/>
<pin name="PB6" x="-15.24" y="2.54" length="middle"/>
<pin name="PB7" x="-15.24" y="0" length="middle"/>
<pin name="PC0" x="-15.24" y="-5.08" length="middle"/>
<pin name="PC1" x="-15.24" y="-7.62" length="middle"/>
<pin name="PC2" x="-15.24" y="-10.16" length="middle"/>
<pin name="PC3" x="-15.24" y="-12.7" length="middle"/>
<pin name="PC4" x="-15.24" y="-15.24" length="middle"/>
<pin name="PC5" x="-15.24" y="-17.78" length="middle"/>
<pin name="PC6/!RESET" x="-15.24" y="-20.32" length="middle"/>
<pin name="PD0" x="15.24" y="17.78" length="middle" rot="R180"/>
<pin name="PD1" x="15.24" y="15.24" length="middle" rot="R180"/>
<pin name="PD2" x="15.24" y="12.7" length="middle" rot="R180"/>
<pin name="PD3" x="15.24" y="10.16" length="middle" rot="R180"/>
<pin name="PD4" x="15.24" y="7.62" length="middle" rot="R180"/>
<pin name="PD5" x="15.24" y="5.08" length="middle" rot="R180"/>
<pin name="PD6" x="15.24" y="2.54" length="middle" rot="R180"/>
<pin name="PD7" x="15.24" y="0" length="middle" rot="R180"/>
<pin name="AREF" x="-15.24" y="22.86" length="middle" direction="in"/>
<pin name="AVCC" x="15.24" y="25.4" length="middle" direction="pwr" rot="R180"/>
<pin name="ADC6" x="15.24" y="-5.08" length="middle" rot="R180"/>
<pin name="ADC7" x="15.24" y="-7.62" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ATMEGA328P-AU" prefix="U">
<description>ATmega Series 20 MHz 32 KB Flash 2 KB SRAM 8-Bit Microcontroller - TQFP-32</description>
<gates>
<gate name="G$1" symbol="ATMEGA328P-AU" x="0" y="0"/>
</gates>
<devices>
<device name="" package="QFP80P900X900X120-32N">
<connects>
<connect gate="G$1" pin="ADC6" pad="19"/>
<connect gate="G$1" pin="ADC7" pad="22"/>
<connect gate="G$1" pin="AREF" pad="20"/>
<connect gate="G$1" pin="AVCC" pad="18"/>
<connect gate="G$1" pin="GND" pad="3 5 21"/>
<connect gate="G$1" pin="PB0" pad="12"/>
<connect gate="G$1" pin="PB1" pad="13"/>
<connect gate="G$1" pin="PB2" pad="14"/>
<connect gate="G$1" pin="PB3" pad="15"/>
<connect gate="G$1" pin="PB4" pad="16"/>
<connect gate="G$1" pin="PB5" pad="17"/>
<connect gate="G$1" pin="PB6" pad="7"/>
<connect gate="G$1" pin="PB7" pad="8"/>
<connect gate="G$1" pin="PC0" pad="23"/>
<connect gate="G$1" pin="PC1" pad="24"/>
<connect gate="G$1" pin="PC2" pad="25"/>
<connect gate="G$1" pin="PC3" pad="26"/>
<connect gate="G$1" pin="PC4" pad="27"/>
<connect gate="G$1" pin="PC5" pad="28"/>
<connect gate="G$1" pin="PC6/!RESET" pad="29"/>
<connect gate="G$1" pin="PD0" pad="30"/>
<connect gate="G$1" pin="PD1" pad="31"/>
<connect gate="G$1" pin="PD2" pad="32"/>
<connect gate="G$1" pin="PD3" pad="1"/>
<connect gate="G$1" pin="PD4" pad="2"/>
<connect gate="G$1" pin="PD5" pad="9"/>
<connect gate="G$1" pin="PD6" pad="10"/>
<connect gate="G$1" pin="PD7" pad="11"/>
<connect gate="G$1" pin="VCC" pad="4 6"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="DESCRIPTION" value=" AVR AVR® ATmega Microcontroller IC 8-Bit 20MHz 32KB _16K x 16_ FLASH 32-TQFP _7x7_ "/>
<attribute name="MF" value="Microchip Technology"/>
<attribute name="MP" value="ATMEGA328P-AU"/>
<attribute name="PACKAGE" value="TQFP-32 Microchip Technology"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-IC-Power">
<description>&lt;h3&gt;SparkFun Power Driver and Management ICs&lt;/h3&gt;
In this library you'll find anything that has to do with power delivery, or making power supplies.
&lt;p&gt;Contents:
&lt;ul&gt;&lt;li&gt;LDOs&lt;/li&gt;
&lt;li&gt;Boost/Buck controllers&lt;/li&gt;
&lt;li&gt;Charge pump controllers&lt;/li&gt;
&lt;li&gt;Power sequencers&lt;/li&gt;
&lt;li&gt;Power switches&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is &lt;b&gt; the end user's responsibility&lt;/b&gt; to ensure correctness and suitablity for a given componet or application. 
&lt;br&gt;
&lt;br&gt;If you enjoy using this library, please buy one of our products at &lt;a href=" www.sparkfun.com"&gt;SparkFun.com&lt;/a&gt;.
&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;
&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="SOT223">
<description>&lt;b&gt;SOT-223&lt;/b&gt;</description>
<wire x1="3.2766" y1="1.651" x2="3.2766" y2="-1.651" width="0.2032" layer="21"/>
<wire x1="3.2766" y1="-1.651" x2="-3.2766" y2="-1.651" width="0.2032" layer="21"/>
<wire x1="-3.2766" y1="-1.651" x2="-3.2766" y2="1.651" width="0.2032" layer="21"/>
<wire x1="-3.2766" y1="1.651" x2="3.2766" y2="1.651" width="0.2032" layer="21"/>
<smd name="1" x="-2.3114" y="-3.0988" dx="1.2192" dy="2.2352" layer="1"/>
<smd name="2" x="0" y="-3.0988" dx="1.2192" dy="2.2352" layer="1"/>
<smd name="3" x="2.3114" y="-3.0988" dx="1.2192" dy="2.2352" layer="1"/>
<smd name="4" x="0" y="3.099" dx="3.6" dy="2.2" layer="1"/>
<text x="-0.8255" y="4.5085" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.0795" y="-0.1905" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6002" y1="1.8034" x2="1.6002" y2="3.6576" layer="51"/>
<rectangle x1="-0.4318" y1="-3.6576" x2="0.4318" y2="-1.8034" layer="51"/>
<rectangle x1="-2.7432" y1="-3.6576" x2="-1.8796" y2="-1.8034" layer="51"/>
<rectangle x1="1.8796" y1="-3.6576" x2="2.7432" y2="-1.8034" layer="51"/>
<rectangle x1="-1.6002" y1="1.8034" x2="1.6002" y2="3.6576" layer="51"/>
<rectangle x1="-0.4318" y1="-3.6576" x2="0.4318" y2="-1.8034" layer="51"/>
<rectangle x1="-2.7432" y1="-3.6576" x2="-1.8796" y2="-1.8034" layer="51"/>
<rectangle x1="1.8796" y1="-3.6576" x2="2.7432" y2="-1.8034" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="78ADJ-2">
<wire x1="-5.08" y1="-5.08" x2="5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="5.08" y2="2.54" width="0.4064" layer="94"/>
<wire x1="5.08" y1="2.54" x2="-5.08" y2="2.54" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<text x="2.54" y="-7.62" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.778" y="-4.572" size="1.524" layer="95">ADJ</text>
<text x="-4.318" y="-0.762" size="1.524" layer="95">IN</text>
<text x="0.762" y="-0.762" size="1.524" layer="95">OUT</text>
<pin name="IN" x="-7.62" y="0" visible="off" length="short" direction="in"/>
<pin name="ADJ" x="0" y="-7.62" visible="off" length="short" direction="in" rot="R90"/>
<pin name="OUT" x="7.62" y="0" visible="off" length="short" direction="out" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="V_REG_LM1117" prefix="U" uservalue="yes">
<description>&lt;b&gt;Voltage Regulator LM1117&lt;/b&gt;
Standard adjustable voltage regulator but in SMD form. Spark Fun Electronics SKU : COM-00595</description>
<gates>
<gate name="G$1" symbol="78ADJ-2" x="0" y="0"/>
</gates>
<devices>
<device name="SOT223" package="SOT223">
<connects>
<connect gate="G$1" pin="ADJ" pad="1"/>
<connect gate="G$1" pin="IN" pad="3"/>
<connect gate="G$1" pin="OUT" pad="2 4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="VREG-08170" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-DiscreteSemi">
<description>&lt;h3&gt;SparkFun Discrete Semiconductors&lt;/h3&gt;
This library contains diodes, optoisolators, TRIACs, MOSFETs, transistors, etc. 
&lt;br&gt;
&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is &lt;b&gt; the end user's responsibility&lt;/b&gt; to ensure correctness and suitablity for a given componet or application. 
&lt;br&gt;
&lt;br&gt;If you enjoy using this library, please buy one of our products at &lt;a href=" www.sparkfun.com"&gt;SparkFun.com&lt;/a&gt;.
&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;
&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="DPAK">
<wire x1="3.2766" y1="2.4654" x2="3.277" y2="-3.729" width="0.2032" layer="21"/>
<wire x1="3.277" y1="-3.729" x2="-3.277" y2="-3.729" width="0.2032" layer="21"/>
<wire x1="-3.277" y1="-3.729" x2="-3.2766" y2="2.4654" width="0.2032" layer="21"/>
<wire x1="-3.277" y1="2.465" x2="3.2774" y2="2.4646" width="0.2032" layer="51"/>
<wire x1="-2.5654" y1="2.567" x2="-2.5654" y2="3.2782" width="0.2032" layer="51"/>
<wire x1="-2.5654" y1="3.2782" x2="-2.1082" y2="3.7354" width="0.2032" layer="51"/>
<wire x1="-2.1082" y1="3.7354" x2="2.1082" y2="3.7354" width="0.2032" layer="51"/>
<wire x1="2.1082" y1="3.7354" x2="2.5654" y2="3.2782" width="0.2032" layer="51"/>
<wire x1="2.5654" y1="3.2782" x2="2.5654" y2="2.567" width="0.2032" layer="51"/>
<wire x1="2.5654" y1="2.567" x2="-2.5654" y2="2.567" width="0.2032" layer="51"/>
<rectangle x1="-2.7178" y1="-6.7262" x2="-1.8542" y2="-3.8306" layer="51"/>
<rectangle x1="1.8542" y1="-6.7262" x2="2.7178" y2="-3.8306" layer="51"/>
<rectangle x1="-0.4318" y1="-4.5926" x2="0.4318" y2="-3.8306" layer="21"/>
<smd name="1" x="-2.28" y="-5.31" dx="1.6" dy="3" layer="1"/>
<smd name="3" x="2.28" y="-5.31" dx="1.6" dy="3" layer="1"/>
<smd name="4" x="0" y="1.588" dx="4.826" dy="5.715" layer="1"/>
<text x="-3.81" y="0" size="0.6096" layer="25" font="vector" ratio="20" rot="R90" align="bottom-center">&gt;NAME</text>
<text x="3.81" y="0" size="0.6096" layer="27" font="vector" ratio="20" rot="R90" align="top-center">&gt;VALUE</text>
<polygon width="0.1998" layer="51">
<vertex x="-2.5654" y="2.567"/>
<vertex x="-2.5654" y="3.2782"/>
<vertex x="-2.1082" y="3.7354"/>
<vertex x="2.1082" y="3.7354"/>
<vertex x="2.5654" y="3.2782"/>
<vertex x="2.5654" y="2.567"/>
</polygon>
</package>
<package name="SOT323">
<wire x1="1.1224" y1="0.6604" x2="1.1224" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="1.1224" y1="-0.6604" x2="-1.1224" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="-1.1224" y1="-0.6604" x2="-1.1224" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-1.1224" y1="0.6604" x2="1.1224" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-0.673" y1="0.7" x2="-1.1" y2="0.7" width="0.2032" layer="21"/>
<wire x1="-1.1" y1="0.7" x2="-1.1" y2="-0.354" width="0.2032" layer="21"/>
<wire x1="0.673" y1="0.7" x2="1.1" y2="0.7" width="0.2032" layer="21"/>
<wire x1="1.1" y1="0.7" x2="1.1" y2="-0.354" width="0.2032" layer="21"/>
<smd name="1" x="-0.65" y="-0.925" dx="0.7" dy="0.7" layer="1"/>
<smd name="2" x="0.65" y="-0.925" dx="0.7" dy="0.7" layer="1"/>
<smd name="3" x="0" y="0.925" dx="0.7" dy="0.7" layer="1"/>
<text x="-1.27" y="0" size="0.6096" layer="25" font="vector" ratio="20" rot="R90" align="bottom-center">&gt;NAME</text>
<text x="1.27" y="0" size="0.6096" layer="27" font="vector" ratio="20" rot="R90" align="top-center">&gt;VALUE</text>
</package>
<package name="TO220V">
<description>&lt;b&gt;TO 220 Vertical&lt;/b&gt; Package works with various parts including N-Channel MOSFET SparkFun SKU: COM-10213</description>
<wire x1="-5.08" y1="2.032" x2="-5.08" y2="-0.381" width="0.2032" layer="21"/>
<wire x1="5.08" y1="2.032" x2="5.08" y2="-0.381" width="0.2032" layer="21"/>
<wire x1="5.08" y1="2.032" x2="-5.08" y2="2.032" width="0.2032" layer="21"/>
<wire x1="-5.08" y1="2.032" x2="-5.08" y2="3.048" width="0.2032" layer="21"/>
<wire x1="-5.08" y1="3.048" x2="5.08" y2="3.048" width="0.2032" layer="21"/>
<wire x1="5.08" y1="3.048" x2="5.08" y2="2.032" width="0.2032" layer="21"/>
<wire x1="-5.08" y1="-0.381" x2="-4.191" y2="-1.27" width="0.2032" layer="21" curve="92.798868"/>
<wire x1="4.191" y1="-1.27" x2="5.08" y2="-0.381" width="0.2032" layer="21" curve="92.798868"/>
<wire x1="-4.191" y1="-1.27" x2="-3.81" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="4.191" y1="-1.27" x2="3.81" y2="-1.27" width="0.2032" layer="21"/>
<rectangle x1="-5.08" y1="2.032" x2="5.08" y2="3.048" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-5.334" y="0.254" size="0.6096" layer="25" font="vector" ratio="20" rot="R90" align="bottom-center">&gt;NAME</text>
<text x="5.334" y="0.254" size="0.6096" layer="27" font="vector" ratio="20" rot="R90" align="top-center">&gt;VALUE</text>
</package>
<package name="SOT23-3">
<description>SOT23-3</description>
<wire x1="1.4224" y1="0.6604" x2="1.4224" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="1.4224" y1="-0.6604" x2="-1.4224" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="-1.4224" y1="-0.6604" x2="-1.4224" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-1.4224" y1="0.6604" x2="1.4224" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-0.8" y1="0.7" x2="-1.4" y2="0.7" width="0.2032" layer="21"/>
<wire x1="-1.4" y1="0.7" x2="-1.4" y2="-0.1" width="0.2032" layer="21"/>
<wire x1="0.8" y1="0.7" x2="1.4" y2="0.7" width="0.2032" layer="21"/>
<wire x1="1.4" y1="0.7" x2="1.4" y2="-0.1" width="0.2032" layer="21"/>
<smd name="1" x="-0.95" y="-1" dx="0.8" dy="0.9" layer="1"/>
<smd name="2" x="0.95" y="-1" dx="0.8" dy="0.9" layer="1"/>
<smd name="3" x="0" y="1.1" dx="0.8" dy="0.9" layer="1"/>
<text x="-1.651" y="0" size="0.6096" layer="25" font="vector" ratio="20" rot="R90" align="bottom-center">&gt;NAME</text>
<text x="1.651" y="0" size="0.6096" layer="27" font="vector" ratio="20" rot="R90" align="top-center">&gt;VALUE</text>
</package>
<package name="TO-263/D2PAK">
<wire x1="5" y1="-1" x2="5" y2="-3.4" width="0.2032" layer="21"/>
<wire x1="5" y1="-3.4" x2="-5" y2="-3.4" width="0.2032" layer="21"/>
<wire x1="-5" y1="-3.4" x2="-5" y2="-1" width="0.2032" layer="21"/>
<rectangle x1="-3.27" y1="-7.6" x2="-1.81" y2="-3.4" layer="51"/>
<rectangle x1="-0.73" y1="-4.9" x2="0.73" y2="-3.4" layer="21"/>
<smd name="1" x="-2.54" y="-7.045" dx="2.32" dy="3.81" layer="1"/>
<smd name="3" x="2.54" y="-7.045" dx="2.32" dy="3.81" layer="1"/>
<smd name="2" x="0" y="4.125" dx="11" dy="9.65" layer="1"/>
<text x="-5.715" y="0" size="0.6096" layer="25" font="vector" ratio="20" rot="R90" align="bottom-center">&gt;NAME</text>
<text x="5.715" y="0" size="0.6096" layer="27" font="vector" ratio="20" rot="R90" align="top-center">&gt;VALUE</text>
<polygon width="0.1998" layer="51">
<vertex x="-5" y="6.25"/>
<vertex x="-5" y="7"/>
<vertex x="-1" y="7.65"/>
<vertex x="1" y="7.65"/>
<vertex x="5" y="7"/>
<vertex x="5" y="6.25"/>
</polygon>
<wire x1="-5" y1="6.25" x2="-5" y2="-0.65" width="0.127" layer="51"/>
<wire x1="5" y1="-0.65" x2="5" y2="6.25" width="0.127" layer="51"/>
<wire x1="-1.81" y1="-3.4" x2="-1.81" y2="-7.6" width="0.127" layer="51"/>
<wire x1="-1.81" y1="-7.6" x2="-3.27" y2="-7.6" width="0.127" layer="51"/>
<wire x1="-3.27" y1="-7.6" x2="-3.27" y2="-3.4" width="0.127" layer="51"/>
<wire x1="-3.27" y1="-3.4" x2="-1.81" y2="-3.4" width="0.127" layer="51"/>
<wire x1="1.81" y1="-3.4" x2="1.81" y2="-7.6" width="0.127" layer="51"/>
<wire x1="1.81" y1="-7.6" x2="3.27" y2="-7.6" width="0.127" layer="51"/>
<wire x1="3.27" y1="-7.6" x2="3.27" y2="-3.4" width="0.127" layer="51"/>
<wire x1="3.27" y1="-3.4" x2="1.81" y2="-3.4" width="0.127" layer="51"/>
<rectangle x1="1.81" y1="-7.6" x2="3.27" y2="-3.4" layer="51"/>
<rectangle x1="-3.27" y1="-4.9" x2="-1.81" y2="-3.4" layer="21"/>
<rectangle x1="1.81" y1="-4.9" x2="3.27" y2="-3.4" layer="21"/>
</package>
<package name="SO08">
<description>SOIC, 0.15 inch width</description>
<wire x1="2.3368" y1="1.9463" x2="-2.3368" y2="1.9463" width="0.2032" layer="21"/>
<wire x1="2.4368" y1="-1.9463" x2="2.7178" y2="-1.5653" width="0.2032" layer="21" curve="90"/>
<wire x1="-2.7178" y1="1.4653" x2="-2.3368" y2="1.9463" width="0.2032" layer="21" curve="-90.023829"/>
<wire x1="2.3368" y1="1.9463" x2="2.7178" y2="1.5653" width="0.2032" layer="21" curve="-90.030084"/>
<wire x1="-2.7178" y1="-1.6653" x2="-2.3368" y2="-1.9463" width="0.2032" layer="21" curve="90.060185"/>
<wire x1="-2.3368" y1="-1.9463" x2="2.4368" y2="-1.9463" width="0.2032" layer="21"/>
<wire x1="2.7178" y1="-1.5653" x2="2.7178" y2="1.5653" width="0.2032" layer="21"/>
<wire x1="-2.667" y1="0.6096" x2="-2.667" y2="-0.6604" width="0.2032" layer="21" curve="-180"/>
<wire x1="-2.7178" y1="1.4526" x2="-2.7178" y2="0.6096" width="0.2032" layer="21"/>
<wire x1="-2.7178" y1="-1.6653" x2="-2.7178" y2="-0.6604" width="0.2032" layer="21"/>
<rectangle x1="-2.159" y1="-3.302" x2="-1.651" y2="-2.2733" layer="51"/>
<rectangle x1="-0.889" y1="-3.302" x2="-0.381" y2="-2.2733" layer="51"/>
<rectangle x1="0.381" y1="-3.302" x2="0.889" y2="-2.2733" layer="51"/>
<rectangle x1="1.651" y1="-3.302" x2="2.159" y2="-2.2733" layer="51"/>
<rectangle x1="-0.889" y1="2.286" x2="-0.381" y2="3.302" layer="51"/>
<rectangle x1="0.381" y1="2.286" x2="0.889" y2="3.302" layer="51"/>
<rectangle x1="1.651" y1="2.286" x2="2.159" y2="3.302" layer="51"/>
<smd name="1" x="-1.905" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="2" x="-0.635" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="3" x="0.635" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="4" x="1.905" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="5" x="1.905" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="6" x="0.635" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="7" x="-0.635" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="8" x="-1.905" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<text x="-3.175" y="0" size="0.6096" layer="25" font="vector" ratio="20" rot="R90" align="bottom-center">&gt;NAME</text>
<text x="3.81" y="0" size="0.6096" layer="27" font="vector" ratio="20" rot="R90" align="bottom-center">&gt;VALUE</text>
<rectangle x1="-2.159" y1="2.286" x2="-1.651" y2="3.302" layer="51"/>
<polygon width="0.002540625" layer="21">
<vertex x="-2.69875" y="-2.38125" curve="90"/>
<vertex x="-3.01625" y="-2.06375" curve="90"/>
<vertex x="-3.33375" y="-2.38125" curve="90"/>
<vertex x="-3.01625" y="-2.69875" curve="90"/>
</polygon>
</package>
<package name="SOT-416FL">
<wire x1="-0.725" y1="-0.525" x2="-0.725" y2="-0.175" width="0.2032" layer="21"/>
<wire x1="-0.725" y1="-0.175" x2="-0.425" y2="-0.175" width="0.2032" layer="21"/>
<wire x1="0.425" y1="-0.175" x2="0.725" y2="-0.175" width="0.2032" layer="21"/>
<wire x1="0.725" y1="-0.175" x2="0.725" y2="-0.525" width="0.2032" layer="21"/>
<wire x1="-0.075" y1="-0.875" x2="0.075" y2="-0.875" width="0.2032" layer="21"/>
<rectangle x1="-0.8" y1="-0.955" x2="0.8" y2="-0.095" layer="51"/>
<smd name="1" x="-0.5" y="-1.1" dx="0.46" dy="0.65" layer="1"/>
<smd name="2" x="0.5" y="-1.1" dx="0.46" dy="0.65" layer="1"/>
<smd name="3" x="0" y="0.05" dx="0.46" dy="0.65" layer="1"/>
<text x="-1.5" y="0.6" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.75" y="-2.3" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="LABELED-NMOS">
<description>&lt;h3&gt; N-channel MOSFET transistor&lt;/h3&gt;
Switches electronic signals</description>
<pin name="G" x="-5.08" y="-2.54" visible="off" length="short"/>
<pin name="S" x="2.54" y="-5.08" visible="off" length="short" rot="R90"/>
<pin name="D" x="2.54" y="5.08" visible="off" length="short" rot="R270"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-1.9812" y1="0.6858" x2="-1.9812" y2="-0.8382" width="0.1524" layer="94"/>
<wire x1="-1.9812" y1="-1.2954" x2="-1.9812" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="-1.9812" y1="-1.905" x2="-1.9812" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-1.9812" y1="2.54" x2="-1.9812" y2="1.8034" width="0.1524" layer="94"/>
<wire x1="-1.9812" y1="1.8034" x2="-1.9812" y2="1.0922" width="0.1524" layer="94"/>
<wire x1="-1.9812" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="0" y1="-1.905" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="-1.2192" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-0.7112" x2="2.54" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="-1.9812" y1="1.8034" x2="2.54" y2="1.8034" width="0.1524" layer="94"/>
<wire x1="2.54" y1="1.8034" x2="2.54" y2="0.5588" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0.5588" x2="3.302" y2="0.5588" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0.5588" x2="1.778" y2="0.5588" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="1.8034" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="-1.905" width="0.1524" layer="94"/>
<polygon width="0.1524" layer="94">
<vertex x="1.778" y="-0.7112"/>
<vertex x="2.54" y="0.5588"/>
<vertex x="3.302" y="-0.7112"/>
</polygon>
<wire x1="3.302" y1="0.5588" x2="3.4798" y2="0.7366" width="0.1524" layer="94"/>
<wire x1="1.6002" y1="0.381" x2="1.778" y2="0.5588" width="0.1524" layer="94"/>
<polygon width="0.1524" layer="94">
<vertex x="-1.9812" y="0"/>
<vertex x="-1.2192" y="0.254"/>
<vertex x="-1.2192" y="-0.254"/>
</polygon>
<text x="5.08" y="0" size="1.778" layer="95" font="vector">&gt;NAME</text>
<text x="5.08" y="-2.54" size="1.778" layer="96" font="vector">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="MOSFET-NCH" prefix="Q">
<description>&lt;h3&gt;N-channel MOSFETs&lt;/h3&gt;
&lt;p&gt;Voltage controlled devices that allow control of high current outputs.&lt;/p&gt;
&lt;p&gt;&lt;b&gt;SparkFun Products:&lt;/b&gt;
&lt;ul&gt;&lt;li&gt;&lt;a href=”https://www.sparkfun.com/products/13261”&gt;SparkFun OpenScale&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href=”https://www.sparkfun.com/products/12651”&gt;SparkFun Digital Sandbox&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href=”https://www.sparkfun.com/products/10182”&gt;SparkFun Monster Moto Shield&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href=”https://www.sparkfun.com/products/11214”&gt;SparkFun MOSFET Power Controller&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<gates>
<gate name="NMOS" symbol="LABELED-NMOS" x="0" y="0"/>
</gates>
<devices>
<device name="-FDD8780" package="DPAK">
<connects>
<connect gate="NMOS" pin="D" pad="4"/>
<connect gate="NMOS" pin="G" pad="1"/>
<connect gate="NMOS" pin="S" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="TRANS-09984"/>
<attribute name="VALUE" value="35A/25V/8.5mΩ"/>
</technology>
</technologies>
</device>
<device name="-2N7002PW" package="SOT323">
<connects>
<connect gate="NMOS" pin="D" pad="3"/>
<connect gate="NMOS" pin="G" pad="1"/>
<connect gate="NMOS" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="TRANS-11151"/>
<attribute name="VALUE" value="310mA/60V/1.6Ω"/>
</technology>
</technologies>
</device>
<device name="-FQP30N06L" package="TO220V">
<connects>
<connect gate="NMOS" pin="D" pad="2"/>
<connect gate="NMOS" pin="G" pad="1"/>
<connect gate="NMOS" pin="S" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="TRANS-10060"/>
<attribute name="VALUE" value="60V/32A/35mΩ"/>
</technology>
</technologies>
</device>
<device name="-BSS138" package="SOT23-3">
<connects>
<connect gate="NMOS" pin="D" pad="3"/>
<connect gate="NMOS" pin="G" pad="1"/>
<connect gate="NMOS" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="TRANS-00830"/>
<attribute name="VALUE" value="220mA/50V/3.5Ω"/>
</technology>
</technologies>
</device>
<device name="-PSMN7R0" package="TO-263/D2PAK">
<connects>
<connect gate="NMOS" pin="D" pad="2"/>
<connect gate="NMOS" pin="G" pad="1"/>
<connect gate="NMOS" pin="S" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="TRANS-12437"/>
<attribute name="VALUE" value="100A/100V/6.8mΩ"/>
</technology>
</technologies>
</device>
<device name="-AO3404A" package="SOT23-3">
<connects>
<connect gate="NMOS" pin="D" pad="3"/>
<connect gate="NMOS" pin="G" pad="1"/>
<connect gate="NMOS" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="TRANS-12988"/>
<attribute name="VALUE" value="5.8A/30V/35mΩ"/>
</technology>
</technologies>
</device>
<device name="-FDS6630A" package="SO08">
<connects>
<connect gate="NMOS" pin="D" pad="5 6 7 8"/>
<connect gate="NMOS" pin="G" pad="4"/>
<connect gate="NMOS" pin="S" pad="1 2 3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="TRANS-08089"/>
<attribute name="VALUE" value="6.5A/30V/38mΩ"/>
</technology>
</technologies>
</device>
<device name="-RE1C00UNTL" package="SOT-416FL">
<connects>
<connect gate="NMOS" pin="D" pad="3"/>
<connect gate="NMOS" pin="G" pad="1"/>
<connect gate="NMOS" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="TRANS-14399"/>
<attribute name="VALUE" value="20V/0.2A/8MHz/1.2Ω/1Vth"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-LED">
<description>&lt;h3&gt;SparkFun LEDs&lt;/h3&gt;
This library contains discrete LEDs for illumination or indication, but no displays.
&lt;br&gt;
&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is &lt;b&gt; the end user's responsibility&lt;/b&gt; to ensure correctness and suitablity for a given componet or application. 
&lt;br&gt;
&lt;br&gt;If you enjoy using this library, please buy one of our products at &lt;a href=" www.sparkfun.com"&gt;SparkFun.com&lt;/a&gt;.
&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;
&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="LED-0603">
<description>&lt;B&gt;LED 0603 SMT&lt;/B&gt;&lt;p&gt;
0603, surface mount.
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 2&lt;/li&gt;
&lt;li&gt;Pin pitch:0.075inch &lt;/li&gt;
&lt;li&gt;Area: 0.06" x 0.03"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;LED - BLUE&lt;/li&gt;</description>
<smd name="C" x="0.877" y="0" dx="1" dy="1" layer="1" roundness="30" rot="R270"/>
<smd name="A" x="-0.877" y="0" dx="1" dy="1" layer="1" roundness="30" rot="R270"/>
<text x="0" y="0.635" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-0.635" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<wire x1="1.5875" y1="0.47625" x2="1.5875" y2="-0.47625" width="0.2032" layer="21"/>
<wire x1="0.15875" y1="0.47625" x2="0.15875" y2="0" width="0.127" layer="51"/>
<wire x1="0.15875" y1="0" x2="0.15875" y2="-0.47625" width="0.127" layer="51"/>
<wire x1="0.15875" y1="0" x2="-0.15875" y2="0.3175" width="0.127" layer="51"/>
<wire x1="0.15875" y1="0" x2="-0.15875" y2="-0.3175" width="0.127" layer="51"/>
</package>
<package name="LED-1206">
<description>&lt;h3&gt;LED 1206 SMT&lt;/h3&gt;

1206, surface mount. 

&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 2&lt;/li&gt;
&lt;li&gt;Pin pitch: &lt;/li&gt;
&lt;li&gt;Area: 0.125" x 0.06"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;LED&lt;/li&gt;&lt;/ul&gt;</description>
<wire x1="2.4" y1="0.6825" x2="2.4" y2="-0.6825" width="0.2032" layer="21"/>
<smd name="A" x="-1.5" y="0" dx="1.2" dy="1.4" layer="1"/>
<smd name="C" x="1.5" y="0" dx="1.2" dy="1.4" layer="1"/>
<text x="0" y="0.9525" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-0.9525" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<wire x1="0.65375" y1="0.6825" x2="0.65375" y2="-0.6825" width="0.2032" layer="51"/>
<wire x1="0.635" y1="0" x2="0.15875" y2="0.47625" width="0.2032" layer="51"/>
<wire x1="0.635" y1="0" x2="0.15875" y2="-0.47625" width="0.2032" layer="51"/>
</package>
<package name="LED-1206-BOTTOM">
<description>&lt;h3&gt;LED 1206 SMT&lt;/h3&gt;

1206, surface mount. 

&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 2&lt;/li&gt;
&lt;li&gt;Area: 0.125" x 0.06"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;LED&lt;/li&gt;&lt;/ul&gt;</description>
<wire x1="-2" y1="0.4" x2="-2" y2="-0.4" width="0.127" layer="49"/>
<wire x1="-2.4" y1="0" x2="-1.6" y2="0" width="0.127" layer="49"/>
<wire x1="1.6" y1="0" x2="2.4" y2="0" width="0.127" layer="49"/>
<wire x1="-1.27" y1="0" x2="-0.381" y2="0" width="0.127" layer="49"/>
<wire x1="-0.381" y1="0" x2="-0.381" y2="0.635" width="0.127" layer="49"/>
<wire x1="-0.381" y1="0.635" x2="0.254" y2="0" width="0.127" layer="49"/>
<wire x1="0.254" y1="0" x2="-0.381" y2="-0.635" width="0.127" layer="49"/>
<wire x1="-0.381" y1="-0.635" x2="-0.381" y2="0" width="0.127" layer="49"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.635" width="0.127" layer="49"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.635" width="0.127" layer="49"/>
<wire x1="0.254" y1="0" x2="1.27" y2="0" width="0.127" layer="49"/>
<rectangle x1="-0.75" y1="-0.75" x2="0.75" y2="0.75" layer="51"/>
<smd name="A" x="-1.8" y="0" dx="1.5" dy="1.6" layer="1"/>
<smd name="C" x="1.8" y="0" dx="1.5" dy="1.6" layer="1"/>
<hole x="0" y="0" drill="2.3"/>
<polygon width="0" layer="51">
<vertex x="1.1" y="-0.5"/>
<vertex x="1.1" y="0.5"/>
<vertex x="1.6" y="0.5"/>
<vertex x="1.6" y="0.25" curve="90"/>
<vertex x="1.4" y="0.05"/>
<vertex x="1.4" y="-0.05" curve="90"/>
<vertex x="1.6" y="-0.25"/>
<vertex x="1.6" y="-0.5"/>
</polygon>
<polygon width="0" layer="51">
<vertex x="-1.1" y="0.5"/>
<vertex x="-1.1" y="-0.5"/>
<vertex x="-1.6" y="-0.5"/>
<vertex x="-1.6" y="-0.25" curve="90"/>
<vertex x="-1.4" y="-0.05"/>
<vertex x="-1.4" y="0.05" curve="90"/>
<vertex x="-1.6" y="0.25"/>
<vertex x="-1.6" y="0.5"/>
</polygon>
<wire x1="2.7686" y1="1.016" x2="2.7686" y2="-1.016" width="0.127" layer="21"/>
<text x="0" y="1.27" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.27" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
</package>
<package name="LED-1206-HIDDENSILK">
<wire x1="0.6474" y1="0.6825" x2="0.6474" y2="-0.6825" width="0.2032" layer="21"/>
<smd name="A" x="-1.5" y="0" dx="1.2" dy="1.4" layer="1"/>
<smd name="C" x="1.5" y="0" dx="1.2" dy="1.4" layer="1"/>
<text x="0" y="0.9525" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-0.9525" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<wire x1="0.65375" y1="0.6825" x2="0.65375" y2="-0.6825" width="0.2032" layer="51"/>
<wire x1="0.635" y1="0" x2="0.15875" y2="0.47625" width="0.2032" layer="51"/>
<wire x1="0.635" y1="0" x2="0.15875" y2="-0.47625" width="0.2032" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="LED">
<description>&lt;h3&gt;LED&lt;/h3&gt;
&lt;p&gt;&lt;/p&gt;</description>
<wire x1="1.27" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-2.032" y1="-0.762" x2="-3.429" y2="-2.159" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="-3.302" y2="-3.302" width="0.1524" layer="94"/>
<text x="-3.429" y="-4.572" size="1.778" layer="95" font="vector" rot="R90">&gt;NAME</text>
<text x="1.905" y="-4.572" size="1.778" layer="96" font="vector" rot="R90" align="top-left">&gt;VALUE</text>
<pin name="C" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="A" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="-3.429" y="-2.159"/>
<vertex x="-3.048" y="-1.27"/>
<vertex x="-2.54" y="-1.778"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-3.302" y="-3.302"/>
<vertex x="-2.921" y="-2.413"/>
<vertex x="-2.413" y="-2.921"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="LED-GREEN" prefix="D" uservalue="yes">
<description>&lt;h3&gt;Green SMD LED&lt;/h3&gt;
&lt;p&gt;Used in manufacturing of various products at SparkFun&lt;/p&gt;

&lt;p&gt;&lt;b&gt;Packages:&lt;/b&gt;
&lt;ul&gt;&lt;li&gt;&lt;b&gt;0603&lt;/b&gt; - SMD 0603 package &lt;a href="http://www.futureelectronics.com/en/technologies/semiconductors/optoelectronics/leds/Pages/9894312-LTST-C190GKT.aspx?CrossPart=HSMG-C190&amp;IM=0"&gt;[Product Link]&lt;/li&gt;
&lt;li&gt;&lt;b&gt;LilyPad 1206&lt;/b&gt; - SMD1206 LilyPad package &lt;a href="http://www.futureelectronics.com/en/Technologies/Product.aspx?ProductID=IN150NGHARVATEKCORPORATION2049943&amp;IM=0"&gt;[Product Link]&lt;/li&gt;
&lt;li&gt;&lt;b&gt; 1206&lt;/b&gt; - SMD1206  package &lt;a href=http://www.futureelectronics.com/en/technologies/semiconductors/optoelectronics/leds/Pages/8315665-LTST-C150KGKT.aspx?IM=0"&gt;[Product Link]&lt;/li&gt;
&lt;li&gt;&lt;b&gt; 1206 Bottom Mount&lt;/b&gt; -SMD 1206 Bottom Mount &lt;a href=http://www.digikey.com/product-detail/en/lite-on-inc/LTST-C230KGKT/160-1456-1-ND/386854"&gt;[Product Link]&lt;/li&gt;
&lt;ul&gt;&lt;/p&gt;

&lt;p&gt;&lt;b&gt;SparkFun Products:&lt;/b&gt;
&lt;ul&gt;&lt;li&gt;&lt;a href=”https://www.sparkfun.com/products/821”&gt;Pro Mini 328 -5V&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href=”https://www.sparkfun.com/products/12757”&gt;RedBoard&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href=”https://www.sparkfun.com/products/13720”&gt;MP3 Trigger&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href=”https://www.sparkfun.com/products/11076”&gt;Makey Makey&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="0603" package="LED-0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-00821" constant="no"/>
<attribute name="VALUE" value="GREEN" constant="no"/>
</technology>
</technologies>
</device>
<device name="LILYPAD" package="LED-1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-09910"/>
<attribute name="VALUE" value="GREEN" constant="no"/>
</technology>
</technologies>
</device>
<device name="1206" package="LED-1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-00862" constant="no"/>
<attribute name="VALUE" value="GREEN" constant="no"/>
</technology>
</technologies>
</device>
<device name="1206-BOTTOM" package="LED-1206-BOTTOM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-11076" constant="no"/>
<attribute name="VALUE" value="Green" constant="no"/>
</technology>
</technologies>
</device>
<device name="_HIDDENSILK" package="LED-1206-HIDDENSILK">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-00862" constant="no"/>
<attribute name="VALUE" value="GREEN" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Resistors">
<description>&lt;h3&gt;SparkFun Resistors&lt;/h3&gt;
This library contains resistors. Reference designator:R. 
&lt;br&gt;
&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is &lt;b&gt; the end user's responsibility&lt;/b&gt; to ensure correctness and suitablity for a given componet or application. 
&lt;br&gt;
&lt;br&gt;If you enjoy using this library, please buy one of our products at &lt;a href=" www.sparkfun.com"&gt;SparkFun.com&lt;/a&gt;.
&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;
&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="0603">
<description>&lt;p&gt;&lt;b&gt;Generic 1608 (0603) package&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;0.2mm courtyard excess rounded to nearest 0.05mm.&lt;/p&gt;</description>
<wire x1="-1.6" y1="0.7" x2="1.6" y2="0.7" width="0.0508" layer="39"/>
<wire x1="1.6" y1="0.7" x2="1.6" y2="-0.7" width="0.0508" layer="39"/>
<wire x1="1.6" y1="-0.7" x2="-1.6" y2="-0.7" width="0.0508" layer="39"/>
<wire x1="-1.6" y1="-0.7" x2="-1.6" y2="0.7" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="0" y="0.762" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-0.762" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
</package>
<package name="AXIAL-0.3">
<description>&lt;h3&gt;AXIAL-0.3&lt;/h3&gt;
&lt;p&gt;Commonly used for 1/4W through-hole resistors. 0.3" pitch between holes.&lt;/p&gt;</description>
<wire x1="-2.54" y1="0.762" x2="2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0.762" x2="2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="-2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="3.81" y="0" drill="0.9" diameter="1.8796"/>
<text x="0" y="1.016" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;Name</text>
<text x="0" y="-1.016" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;Value</text>
</package>
<package name="AXIAL-0.1">
<description>&lt;h3&gt;AXIAL-0.1&lt;/h3&gt;
&lt;p&gt;Commonly used for 1/4W through-hole resistors. 0.1" pitch between holes.&lt;/p&gt;</description>
<wire x1="0" y1="-0.762" x2="0" y2="0" width="0.2032" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="0.762" width="0.2032" layer="21"/>
<wire x1="0.254" y1="0" x2="0" y2="0" width="0.2032" layer="21"/>
<wire x1="0" y1="0" x2="-0.254" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-1.27" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="1.27" y="0" drill="0.9" diameter="1.8796"/>
<text x="0" y="1.143" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;Name</text>
<text x="0" y="-1.143" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;Value</text>
</package>
<package name="AXIAL-0.1-KIT">
<description>&lt;h3&gt;AXIAL-0.1-KIT&lt;/h3&gt;
&lt;p&gt;Commonly used for 1/4W through-hole resistors. 0.1" pitch between holes.&lt;/p&gt;
&lt;p&gt;&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of the AXIAL-0.1 package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.&lt;/p&gt;</description>
<wire x1="0" y1="-0.762" x2="0" y2="0" width="0.2032" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="0.762" width="0.2032" layer="21"/>
<wire x1="0.254" y1="0" x2="0" y2="0" width="0.2032" layer="21"/>
<wire x1="0" y1="0" x2="-0.254" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-1.27" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<pad name="P$2" x="1.27" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<text x="0" y="1.143" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;Name</text>
<text x="0" y="-1.143" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;Value</text>
<circle x="-1.27" y="0" radius="0.4572" width="0" layer="29"/>
<circle x="-1.27" y="0" radius="1.016" width="0" layer="30"/>
<circle x="1.27" y="0" radius="1.016" width="0" layer="30"/>
<circle x="-1.27" y="0" radius="0.4572" width="0" layer="29"/>
<circle x="1.27" y="0" radius="0.4572" width="0" layer="29"/>
</package>
<package name="AXIAL-0.3-KIT">
<description>&lt;h3&gt;AXIAL-0.3-KIT&lt;/h3&gt;
&lt;p&gt;Commonly used for 1/4W through-hole resistors. 0.3" pitch between holes.&lt;/p&gt;
&lt;p&gt;&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of the AXIAL-0.3 package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.&lt;/p&gt;</description>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="0" width="0.254" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="0" width="0.254" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.254" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.254" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="1.016" diameter="2.032" stop="no"/>
<pad name="P$2" x="3.81" y="0" drill="1.016" diameter="2.032" stop="no"/>
<text x="0" y="1.524" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.524" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<polygon width="0.127" layer="30">
<vertex x="3.8201" y="-0.9449" curve="-90"/>
<vertex x="2.8652" y="-0.0152" curve="-90.011749"/>
<vertex x="3.8176" y="0.9602" curve="-90"/>
<vertex x="4.7676" y="-0.0178" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="3.8176" y="-0.4369" curve="-90.012891"/>
<vertex x="3.3731" y="-0.0127" curve="-90"/>
<vertex x="3.8176" y="0.4546" curve="-90"/>
<vertex x="4.2595" y="-0.0025" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-3.8075" y="-0.9525" curve="-90"/>
<vertex x="-4.7624" y="-0.0228" curve="-90.011749"/>
<vertex x="-3.81" y="0.9526" curve="-90"/>
<vertex x="-2.86" y="-0.0254" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-3.81" y="-0.4445" curve="-90.012891"/>
<vertex x="-4.2545" y="-0.0203" curve="-90"/>
<vertex x="-3.81" y="0.447" curve="-90"/>
<vertex x="-3.3681" y="-0.0101" curve="-90.012967"/>
</polygon>
</package>
<package name="0402">
<description>&lt;p&gt;&lt;b&gt;Generic 1005 (0402) package&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;0.2mm courtyard excess rounded to nearest 0.05mm.&lt;/p&gt;</description>
<wire x1="-0.2704" y1="0.2286" x2="0.2704" y2="0.2286" width="0.1524" layer="51"/>
<wire x1="0.2704" y1="-0.2286" x2="-0.2704" y2="-0.2286" width="0.1524" layer="51"/>
<wire x1="-1.2" y1="0.65" x2="1.2" y2="0.65" width="0.0508" layer="39"/>
<wire x1="1.2" y1="0.65" x2="1.2" y2="-0.65" width="0.0508" layer="39"/>
<wire x1="1.2" y1="-0.65" x2="-1.2" y2="-0.65" width="0.0508" layer="39"/>
<wire x1="-1.2" y1="-0.65" x2="-1.2" y2="0.65" width="0.0508" layer="39"/>
<smd name="1" x="-0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<smd name="2" x="0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<text x="0" y="0.762" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-0.762" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.3048" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.3048" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="0402-TIGHT">
<smd name="1" x="-0.5" y="0" dx="0.6" dy="0.6" layer="1"/>
<smd name="2" x="0.5" y="0" dx="0.6" dy="0.6" layer="1"/>
<text x="0" y="0.562" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-0.562" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<wire x1="-0.5" y1="-0.25" x2="-0.5" y2="0.25" width="0.002540625" layer="51"/>
<wire x1="-0.5" y1="0.25" x2="0.5" y2="0.25" width="0.002540625" layer="51"/>
<wire x1="0.5" y1="0.25" x2="0.5" y2="-0.25" width="0.002540625" layer="51"/>
<wire x1="0.5" y1="-0.25" x2="-0.5" y2="-0.25" width="0.002540625" layer="51"/>
<rectangle x1="-0.5" y1="-0.25" x2="-0.3" y2="0.25" layer="51"/>
<rectangle x1="0.3" y1="-0.25" x2="0.5" y2="0.25" layer="51" rot="R180"/>
<wire x1="0.9262" y1="0.4262" x2="-0.9262" y2="0.4262" width="0.05" layer="39"/>
<wire x1="-0.9262" y1="0.4262" x2="-0.9262" y2="-0.4262" width="0.05" layer="39"/>
<wire x1="-0.9262" y1="-0.4262" x2="0.9262" y2="-0.4262" width="0.05" layer="39"/>
<wire x1="0.9262" y1="-0.4262" x2="0.9262" y2="0.4262" width="0.05" layer="39"/>
</package>
</packages>
<symbols>
<symbol name="RESISTOR">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.1524" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.1524" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.1524" layer="94"/>
<text x="0" y="1.524" size="1.778" layer="95" font="vector" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.524" size="1.778" layer="96" font="vector" align="top-center">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="4.7KOHM" prefix="R">
<description>&lt;h3&gt;4.7kΩ resistor&lt;/h3&gt;
&lt;p&gt;A resistor is a passive two-terminal electrical component that implements electrical resistance as a circuit element. Resistors act to reduce current flow, and, at the same time, act to lower voltage levels within circuits. - Wikipedia&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="-0603-1/10W-1%" package="0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-07857"/>
<attribute name="VALUE" value="4.7k"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="10KOHM" prefix="R">
<description>&lt;h3&gt;10kΩ resistor&lt;/h3&gt;
&lt;p&gt;A resistor is a passive two-terminal electrical component that implements electrical resistance as a circuit element. Resistors act to reduce current flow, and, at the same time, act to lower voltage levels within circuits. - Wikipedia&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="-HORIZ-1/4W-1%" package="AXIAL-0.3">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-12183" constant="no"/>
<attribute name="VALUE" value="10k" constant="no"/>
</technology>
</technologies>
</device>
<device name="-VERT-1/4W-1%" package="AXIAL-0.1">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-12183"/>
<attribute name="VALUE" value="10k"/>
</technology>
</technologies>
</device>
<device name="-VERT_KIT-1/4W-1%" package="AXIAL-0.1-KIT">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-12183" constant="no"/>
<attribute name="VALUE" value="10k" constant="no"/>
</technology>
</technologies>
</device>
<device name="-VERT-1/4W-5%" package="AXIAL-0.1">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-09435"/>
<attribute name="VALUE" value="10k"/>
</technology>
</technologies>
</device>
<device name="-VERT_KIT-1/4W-5%" package="AXIAL-0.1-KIT">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-09435"/>
<attribute name="VALUE" value="10k"/>
</technology>
</technologies>
</device>
<device name="-HORIZ-1/4W-5%" package="AXIAL-0.3">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-09435"/>
<attribute name="VALUE" value="10k"/>
</technology>
</technologies>
</device>
<device name="-HORIZ_KIT-1/4W-5%" package="AXIAL-0.3-KIT">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-09435"/>
<attribute name="VALUE" value="10k"/>
</technology>
</technologies>
</device>
<device name="-HORIZ_KIT-1/4W-1%" package="AXIAL-0.3-KIT">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-12183"/>
<attribute name="VALUE" value="10k"/>
</technology>
</technologies>
</device>
<device name="-VERT-1/6W-5%" package="AXIAL-0.1">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-08375"/>
<attribute name="VALUE" value="10k"/>
</technology>
</technologies>
</device>
<device name="-VERT_KIT-1/6W-5%" package="AXIAL-0.1-KIT">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-08375"/>
<attribute name="VALUE" value="10k"/>
</technology>
</technologies>
</device>
<device name="-HORIZ-1/6W-5%" package="AXIAL-0.3">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-08375"/>
<attribute name="VALUE" value="10k"/>
</technology>
</technologies>
</device>
<device name="-HORIZ_KIT-1/6W-5%" package="AXIAL-0.3-KIT">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-08375"/>
<attribute name="VALUE" value="10k"/>
</technology>
</technologies>
</device>
<device name="-0603-1/10W-1%" package="0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-00824"/>
<attribute name="VALUE" value="10k"/>
</technology>
</technologies>
</device>
<device name="-0402-1/16W-1%" package="0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-14241"/>
<attribute name="VALUE" value="10k"/>
</technology>
</technologies>
</device>
<device name="-0402T-1/16W-1%" package="0402-TIGHT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-14241" constant="no"/>
<attribute name="VALUE" value="10k" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="5.6KOHM" prefix="R">
<description>&lt;h3&gt;5.6kΩ resistor&lt;/h3&gt;
&lt;p&gt;A resistor is a passive two-terminal electrical component that implements electrical resistance as a circuit element. Resistors act to reduce current flow, and, at the same time, act to lower voltage levels within circuits. - Wikipedia&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="-0603-1/10W-1%" package="0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-12378"/>
<attribute name="VALUE" value="5.6k"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Coils">
<description>&lt;h3&gt;SparkFun Coils&lt;/h3&gt;
In this library you'll find magnetics.

&lt;p&gt;&lt;b&gt;SparkFun Products:&lt;/b&gt;
&lt;ul&gt;&lt;li&gt;Inductors&lt;/li&gt;
&lt;li&gt;Ferrite Beads&lt;/li&gt;
&lt;li&gt;Transformers&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;

&lt;br&gt;
&lt;p&gt;We've spent an enormous amount of time creating and checking these footprints and parts, but it is &lt;b&gt; the end user's responsibility&lt;/b&gt; to ensure correctness and suitablity for a given componet or application. 
&lt;br&gt;
&lt;br&gt;If you enjoy using this library, please buy one of our products at &lt;a href=" www.sparkfun.com"&gt;SparkFun.com&lt;/a&gt;.
&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;
&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.&lt;/p&gt;</description>
<packages>
<package name="0603">
<description>&lt;p&gt;&lt;b&gt;Generic 1608 (0603) package&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;0.2mm courtyard excess rounded to nearest 0.05mm.&lt;/p&gt;</description>
<wire x1="-1.6" y1="0.7" x2="1.6" y2="0.7" width="0.0508" layer="39"/>
<wire x1="1.6" y1="0.7" x2="1.6" y2="-0.7" width="0.0508" layer="39"/>
<wire x1="1.6" y1="-0.7" x2="-1.6" y2="-0.7" width="0.0508" layer="39"/>
<wire x1="-1.6" y1="-0.7" x2="-1.6" y2="0.7" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="0" y="0.762" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-0.762" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="0402">
<description>&lt;p&gt;&lt;b&gt;Generic 1005 (0402) package&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;0.2mm courtyard excess rounded to nearest 0.05mm.&lt;/p&gt;</description>
<wire x1="-0.2704" y1="0.2286" x2="0.2704" y2="0.2286" width="0.1524" layer="51"/>
<wire x1="0.2704" y1="-0.2286" x2="-0.2704" y2="-0.2286" width="0.1524" layer="51"/>
<wire x1="-1.2" y1="0.65" x2="1.2" y2="0.65" width="0.0508" layer="39"/>
<wire x1="1.2" y1="0.65" x2="1.2" y2="-0.65" width="0.0508" layer="39"/>
<wire x1="1.2" y1="-0.65" x2="-1.2" y2="-0.65" width="0.0508" layer="39"/>
<wire x1="-1.2" y1="-0.65" x2="-1.2" y2="0.65" width="0.0508" layer="39"/>
<smd name="1" x="-0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<smd name="2" x="0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<text x="0" y="0.762" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-0.762" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.3048" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.3048" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
</packages>
<symbols>
<symbol name="FERRITE_BEAD">
<description>&lt;h3&gt;Ferrite Bead (blocks, cores, rings, chokes, etc.)&lt;/h3&gt;
&lt;p&gt;Inductor with layers of ferrite used to suppress high frequencies. Often used to isolate high frequency noise.&lt;/p&gt;</description>
<text x="1.27" y="2.54" size="1.778" layer="95" font="vector">&gt;NAME</text>
<text x="1.27" y="-2.54" size="1.778" layer="96" font="vector" align="top-left">&gt;VALUE</text>
<pin name="1" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<wire x1="0" y1="2.54" x2="0" y2="1.27" width="0.1524" layer="94" curve="-180"/>
<wire x1="0" y1="1.27" x2="0" y2="0" width="0.1524" layer="94" curve="-180"/>
<wire x1="0" y1="0" x2="0" y2="-1.27" width="0.1524" layer="94" curve="-180"/>
<wire x1="0" y1="-1.27" x2="0" y2="-2.54" width="0.1524" layer="94" curve="-180"/>
<wire x1="0.889" y1="2.54" x2="0.889" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="1.143" y1="2.54" x2="1.143" y2="-2.54" width="0.1524" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FERRITE_BEAD" prefix="FB">
<description>&lt;h3&gt;Ferrite Bead (blocks, cores, rings, chokes, etc.)&lt;/h3&gt;
&lt;p&gt;Inductor with layers of ferrite used to suppress high frequencies. Often used to isolate high frequency noise.&lt;/p&gt;
&lt;p&gt;SparkFun Products:
&lt;ul&gt;&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/13613"&gt;IOIO-OTG - V2.2&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/13664"&gt;SparkFun SAMD21 Mini Breakout&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/13339"&gt;SparkFun 6 Degrees of Freedom Breakout - LSM6DS3&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/13672"&gt;SparkFun SAMD21 Dev Breakout&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="FERRITE_BEAD" x="0" y="0"/>
</gates>
<devices>
<device name="-0603" package="0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="NDUC-13805"/>
<attribute name="VALUE" value="30Ω/1.8A"/>
</technology>
</technologies>
</device>
<device name="" package="0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Capacitors">
<description>&lt;h3&gt;SparkFun Capacitors&lt;/h3&gt;
This library contains capacitors. 
&lt;br&gt;
&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is &lt;b&gt; the end user's responsibility&lt;/b&gt; to ensure correctness and suitablity for a given componet or application. 
&lt;br&gt;
&lt;br&gt;If you enjoy using this library, please buy one of our products at &lt;a href=" www.sparkfun.com"&gt;SparkFun.com&lt;/a&gt;.
&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;
&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="CAP-PTH-10MM">
<description>2 PTH spaced 10mm apart</description>
<wire x1="-0.5" y1="0.635" x2="-0.5" y2="0" width="0.2032" layer="21"/>
<pad name="1" x="-5" y="0" drill="0.9" diameter="1.651"/>
<pad name="2" x="5" y="0" drill="0.9" diameter="1.651"/>
<text x="0" y="1" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;Name</text>
<text x="0" y="-1" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;Value</text>
<wire x1="-0.5" y1="0" x2="-0.5" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="0.5" y1="0.635" x2="0.5" y2="0" width="0.2032" layer="21"/>
<wire x1="0.5" y1="0" x2="0.5" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.5" y1="0" x2="-3.5" y2="0" width="0.2032" layer="21"/>
<wire x1="0.5" y1="0" x2="3.5" y2="0" width="0.2032" layer="21"/>
</package>
<package name="0603">
<description>&lt;p&gt;&lt;b&gt;Generic 1608 (0603) package&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;0.2mm courtyard excess rounded to nearest 0.05mm.&lt;/p&gt;</description>
<wire x1="-1.6" y1="0.7" x2="1.6" y2="0.7" width="0.0508" layer="39"/>
<wire x1="1.6" y1="0.7" x2="1.6" y2="-0.7" width="0.0508" layer="39"/>
<wire x1="1.6" y1="-0.7" x2="-1.6" y2="-0.7" width="0.0508" layer="39"/>
<wire x1="-1.6" y1="-0.7" x2="-1.6" y2="0.7" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="0" y="0.762" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-0.762" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="0402">
<description>&lt;p&gt;&lt;b&gt;Generic 1005 (0402) package&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;0.2mm courtyard excess rounded to nearest 0.05mm.&lt;/p&gt;</description>
<wire x1="-0.2704" y1="0.2286" x2="0.2704" y2="0.2286" width="0.1524" layer="51"/>
<wire x1="0.2704" y1="-0.2286" x2="-0.2704" y2="-0.2286" width="0.1524" layer="51"/>
<wire x1="-1.2" y1="0.65" x2="1.2" y2="0.65" width="0.0508" layer="39"/>
<wire x1="1.2" y1="0.65" x2="1.2" y2="-0.65" width="0.0508" layer="39"/>
<wire x1="1.2" y1="-0.65" x2="-1.2" y2="-0.65" width="0.0508" layer="39"/>
<wire x1="-1.2" y1="-0.65" x2="-1.2" y2="0.65" width="0.0508" layer="39"/>
<smd name="1" x="-0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<smd name="2" x="0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<text x="0" y="0.762" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-0.762" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.3048" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.3048" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="0805">
<description>&lt;p&gt;&lt;b&gt;Generic 2012 (0805) package&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;0.2mm courtyard excess rounded to nearest 0.05mm.&lt;/p&gt;</description>
<smd name="1" x="-0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<text x="0" y="0.889" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-0.889" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<wire x1="-1.5" y1="0.8" x2="1.5" y2="0.8" width="0.0508" layer="39"/>
<wire x1="1.5" y1="0.8" x2="1.5" y2="-0.8" width="0.0508" layer="39"/>
<wire x1="1.5" y1="-0.8" x2="-1.5" y2="-0.8" width="0.0508" layer="39"/>
<wire x1="-1.5" y1="-0.8" x2="-1.5" y2="0.8" width="0.0508" layer="39"/>
</package>
<package name="1206">
<description>&lt;p&gt;&lt;b&gt;Generic 3216 (1206) package&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;0.2mm courtyard excess rounded to nearest 0.05mm.&lt;/p&gt;</description>
<wire x1="-2.4" y1="1.1" x2="2.4" y2="1.1" width="0.0508" layer="39"/>
<wire x1="2.4" y1="-1.1" x2="-2.4" y2="-1.1" width="0.0508" layer="39"/>
<wire x1="-2.4" y1="-1.1" x2="-2.4" y2="1.1" width="0.0508" layer="39"/>
<wire x1="2.4" y1="1.1" x2="2.4" y2="-1.1" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="0" y="1.143" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.143" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="0402-TIGHT">
<smd name="1" x="-0.5" y="0" dx="0.6" dy="0.6" layer="1"/>
<smd name="2" x="0.5" y="0" dx="0.6" dy="0.6" layer="1"/>
<text x="0" y="0.562" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-0.562" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<wire x1="-0.5" y1="-0.25" x2="-0.5" y2="0.25" width="0.002540625" layer="51"/>
<wire x1="-0.5" y1="0.25" x2="0.5" y2="0.25" width="0.002540625" layer="51"/>
<wire x1="0.5" y1="0.25" x2="0.5" y2="-0.25" width="0.002540625" layer="51"/>
<wire x1="0.5" y1="-0.25" x2="-0.5" y2="-0.25" width="0.002540625" layer="51"/>
<rectangle x1="-0.5" y1="-0.25" x2="-0.3" y2="0.25" layer="51"/>
<rectangle x1="0.3" y1="-0.25" x2="0.5" y2="0.25" layer="51" rot="R180"/>
<wire x1="0.9262" y1="0.4262" x2="-0.9262" y2="0.4262" width="0.05" layer="39"/>
<wire x1="-0.9262" y1="0.4262" x2="-0.9262" y2="-0.4262" width="0.05" layer="39"/>
<wire x1="-0.9262" y1="-0.4262" x2="0.9262" y2="-0.4262" width="0.05" layer="39"/>
<wire x1="0.9262" y1="-0.4262" x2="0.9262" y2="0.4262" width="0.05" layer="39"/>
</package>
</packages>
<symbols>
<symbol name="CAP">
<wire x1="0" y1="2.54" x2="0" y2="2.032" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="0.508" width="0.1524" layer="94"/>
<text x="1.524" y="2.921" size="1.778" layer="95" font="vector">&gt;NAME</text>
<text x="1.524" y="-2.159" size="1.778" layer="96" font="vector">&gt;VALUE</text>
<rectangle x1="-2.032" y1="0.508" x2="2.032" y2="1.016" layer="94"/>
<rectangle x1="-2.032" y1="1.524" x2="2.032" y2="2.032" layer="94"/>
<pin name="1" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="10NF" prefix="C">
<description>&lt;h3&gt;0.01uF/10nF/10,000pF ceramic capacitors&lt;/h3&gt;
&lt;p&gt;A capacitor is a passive two-terminal electrical component used to store electrical energy temporarily in an electric field.&lt;/p&gt;

CAP-09321</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="-PTH-10MM-10000V-1-%" package="CAP-PTH-10MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-09321"/>
<attribute name="VALUE" value="10nF"/>
</technology>
</technologies>
</device>
<device name="-0603-50V-10%" package="0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-00867"/>
<attribute name="VALUE" value="10nF"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="1.0UF" prefix="C">
<description>&lt;h3&gt;1µF ceramic capacitors&lt;/h3&gt;
&lt;p&gt;A capacitor is a passive two-terminal electrical component used to store electrical energy temporarily in an electric field.&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="-0603-16V-10%" package="0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-00868"/>
<attribute name="VALUE" value="1.0uF"/>
</technology>
</technologies>
</device>
<device name="-0402-16V-10%" package="0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-12417"/>
<attribute name="VALUE" value="1.0uF"/>
</technology>
</technologies>
</device>
<device name="-0805-25V-(+80/-20%)" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-11625"/>
<attribute name="VALUE" value="1.0uF"/>
</technology>
</technologies>
</device>
<device name="-1206-50V-10%" package="1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-09822"/>
<attribute name="VALUE" value="1.0uF"/>
</technology>
</technologies>
</device>
<device name="-0805-25V-10%" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-08064"/>
<attribute name="VALUE" value="1.0uF"/>
</technology>
</technologies>
</device>
<device name="-0603-16V-10%-X7R" package="0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-13930"/>
<attribute name="VALUE" value="1.0uF"/>
</technology>
</technologies>
</device>
<device name="-0402T-16V-10%" package="0402-TIGHT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-12417" constant="no"/>
<attribute name="VALUE" value="1.0uF" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="NINA-B112">
<packages>
<package name="UBLOX_NINA-B112">
<wire x1="7" y1="-5" x2="7" y2="5" width="0.127" layer="21"/>
<wire x1="7" y1="5" x2="-7" y2="5" width="0.127" layer="21"/>
<wire x1="-7" y1="5" x2="-7" y2="-5" width="0.127" layer="21"/>
<wire x1="-7" y1="-5" x2="7" y2="-5" width="0.127" layer="21"/>
<wire x1="7" y1="-5" x2="7" y2="5" width="0.127" layer="51"/>
<wire x1="7" y1="5" x2="-3.2" y2="5" width="0.127" layer="51"/>
<wire x1="-3.2" y1="5" x2="-7" y2="5" width="0.127" layer="51"/>
<wire x1="-7" y1="5" x2="-7" y2="-5" width="0.127" layer="51"/>
<wire x1="-7" y1="-5" x2="-3.2" y2="-5" width="0.127" layer="51"/>
<text x="-7.009559375" y="6.0082" size="1.27173125" layer="25">&gt;NAME</text>
<text x="-7.001440625" y="-6.00123125" size="1.270259375" layer="27" align="top-left">&gt;VALUE</text>
<wire x1="-3.2" y1="-5" x2="7" y2="-5" width="0.127" layer="51"/>
<wire x1="7.25" y1="-5.25" x2="-7.25" y2="-5.25" width="0.05" layer="39"/>
<wire x1="-7.25" y1="-5.25" x2="-7.25" y2="5.25" width="0.05" layer="39"/>
<wire x1="-7.25" y1="5.25" x2="7.25" y2="5.25" width="0.05" layer="39"/>
<wire x1="7.25" y1="5.25" x2="7.25" y2="-5.25" width="0.05" layer="39"/>
<circle x="7.6" y="4.2" radius="0.05" width="0.3" layer="21"/>
<wire x1="-3.2" y1="5" x2="-3.2" y2="-5" width="0.127" layer="51"/>
<circle x="6.2" y="4.1" radius="0.05" width="0.3" layer="51"/>
<text x="-4.445859375" y="-3.810740625" size="1.27025" layer="51" rot="R90">ANTENNA</text>
<smd name="25" x="6.2" y="-4.125" dx="1.15" dy="0.7" layer="1" rot="R270"/>
<smd name="24" x="5.2" y="-4.125" dx="1.15" dy="0.7" layer="1" rot="R270"/>
<smd name="23" x="4.2" y="-4.125" dx="1.15" dy="0.7" layer="1" rot="R270"/>
<smd name="22" x="3.2" y="-4.125" dx="1.15" dy="0.7" layer="1" rot="R270"/>
<smd name="21" x="2.2" y="-4.125" dx="1.15" dy="0.7" layer="1" rot="R270"/>
<smd name="20" x="1.2" y="-4.125" dx="1.15" dy="0.7" layer="1" rot="R270"/>
<smd name="19" x="0.2" y="-4.125" dx="1.15" dy="0.7" layer="1" rot="R270"/>
<smd name="18" x="-0.8" y="-4.125" dx="1.15" dy="0.7" layer="1" rot="R270"/>
<smd name="17" x="-1.8" y="-4.125" dx="1.15" dy="0.7" layer="1" rot="R270"/>
<smd name="16" x="-2.8" y="-4.125" dx="1.15" dy="0.7" layer="1" rot="R270"/>
<smd name="15" x="-2.725" y="-2" dx="1.15" dy="0.7" layer="1"/>
<smd name="14" x="-2.725" y="-1" dx="1.15" dy="0.7" layer="1"/>
<smd name="13" x="-2.725" y="0" dx="1.15" dy="0.7" layer="1"/>
<smd name="12" x="-2.725" y="1" dx="1.15" dy="0.7" layer="1"/>
<smd name="11" x="-2.725" y="2" dx="1.15" dy="0.7" layer="1"/>
<smd name="10" x="-2.8" y="4.125" dx="1.15" dy="0.7" layer="1" rot="R270"/>
<smd name="9" x="-1.8" y="4.125" dx="1.15" dy="0.7" layer="1" rot="R270"/>
<smd name="8" x="-0.8" y="4.125" dx="1.15" dy="0.7" layer="1" rot="R270"/>
<smd name="7" x="0.2" y="4.125" dx="1.15" dy="0.7" layer="1" rot="R270"/>
<smd name="6" x="1.2" y="4.125" dx="1.15" dy="0.7" layer="1" rot="R270"/>
<smd name="5" x="2.2" y="4.125" dx="1.15" dy="0.7" layer="1" rot="R270"/>
<smd name="4" x="3.2" y="4.125" dx="1.15" dy="0.7" layer="1" rot="R270"/>
<smd name="3" x="4.2" y="4.125" dx="1.15" dy="0.7" layer="1" rot="R270"/>
<smd name="2" x="5.2" y="4.125" dx="1.15" dy="0.7" layer="1" rot="R270"/>
<smd name="1" x="6.2" y="4.125" dx="1.15" dy="0.7" layer="1" rot="R270"/>
<smd name="30" x="6.125" y="2" dx="1.15" dy="0.7" layer="1"/>
<smd name="29" x="6.125" y="1" dx="1.15" dy="0.7" layer="1"/>
<smd name="28" x="6.125" y="0" dx="1.15" dy="0.7" layer="1"/>
<smd name="27" x="6.125" y="-1" dx="1.15" dy="0.7" layer="1"/>
<smd name="26" x="6.125" y="-2" dx="1.15" dy="0.7" layer="1"/>
<smd name="EXP10" x="2.27" y="-1.725" dx="0.7" dy="0.7" layer="1"/>
<smd name="EXP9" x="2.27" y="-0.575" dx="0.7" dy="0.7" layer="1"/>
<smd name="EXP11" x="3.42" y="-0.575" dx="0.7" dy="0.7" layer="1"/>
<smd name="EXP8" x="2.27" y="0.575" dx="0.7" dy="0.7" layer="1"/>
<smd name="EXP12" x="3.42" y="0.575" dx="0.7" dy="0.7" layer="1"/>
<smd name="EXP7" x="2.27" y="1.725" dx="0.7" dy="0.7" layer="1"/>
<smd name="EXP5" x="1.12" y="-0.575" dx="0.7" dy="0.7" layer="1"/>
<smd name="EXP6" x="1.12" y="0.575" dx="0.7" dy="0.7" layer="1"/>
<smd name="EXP3" x="-0.03" y="-0.575" dx="0.7" dy="0.7" layer="1"/>
<smd name="EXP2" x="-0.03" y="0.575" dx="0.7" dy="0.7" layer="1"/>
<smd name="EXP1" x="-0.03" y="1.725" dx="0.7" dy="0.7" layer="1"/>
<smd name="EXP4" x="-0.03" y="-1.725" dx="0.7" dy="0.7" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="NINA-B112">
<wire x1="-17.78" y1="22.86" x2="17.78" y2="22.86" width="0.254" layer="94"/>
<wire x1="17.78" y1="22.86" x2="17.78" y2="-22.86" width="0.254" layer="94"/>
<wire x1="17.78" y1="-22.86" x2="-17.78" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-22.86" x2="-17.78" y2="22.86" width="0.254" layer="94"/>
<text x="-17.7837" y="25.4053" size="2.54053125" layer="95">&gt;NAME</text>
<text x="-17.8076" y="-27.9833" size="2.543940625" layer="96">&gt;VALUE</text>
<pin name="GPIO_1" x="-22.86" y="12.7" length="middle"/>
<pin name="GPIO_2" x="-22.86" y="10.16" length="middle"/>
<pin name="GPIO_3" x="-22.86" y="7.62" length="middle"/>
<pin name="GPIO_4" x="-22.86" y="5.08" length="middle"/>
<pin name="GPIO_5" x="-22.86" y="2.54" length="middle"/>
<pin name="GND" x="22.86" y="-20.32" length="middle" direction="pwr" rot="R180"/>
<pin name="GPIO_7" x="-22.86" y="0" length="middle"/>
<pin name="SWO/GPIO_8" x="-22.86" y="-2.54" length="middle"/>
<pin name="VCC_IO" x="22.86" y="20.32" length="middle" direction="pwr" rot="R180"/>
<pin name="VCC" x="22.86" y="17.78" length="middle" direction="pwr" rot="R180"/>
<pin name="SWDCLK" x="-22.86" y="20.32" length="middle" direction="in" function="clk"/>
<pin name="ANT" x="22.86" y="-12.7" length="middle" rot="R180"/>
<pin name="SWDIO" x="-22.86" y="17.78" length="middle"/>
<pin name="GPIO_16" x="-22.86" y="-5.08" length="middle"/>
<pin name="GPIO_17" x="-22.86" y="-7.62" length="middle"/>
<pin name="GPIO_18" x="-22.86" y="-10.16" length="middle"/>
<pin name="RESET_N" x="22.86" y="-10.16" length="middle" rot="R180"/>
<pin name="GPIO_20" x="-22.86" y="-12.7" length="middle"/>
<pin name="GPIO_21" x="22.86" y="12.7" length="middle" rot="R180"/>
<pin name="GPIO_22" x="22.86" y="10.16" length="middle" rot="R180"/>
<pin name="GPIO_23" x="22.86" y="7.62" length="middle" rot="R180"/>
<pin name="GPIO_24" x="22.86" y="5.08" length="middle" rot="R180"/>
<pin name="GPIO_25" x="22.86" y="2.54" length="middle" rot="R180"/>
<pin name="GPIO_27" x="22.86" y="0" length="middle" rot="R180"/>
<pin name="NFC1/GPIO_28" x="22.86" y="-2.54" length="middle" rot="R180"/>
<pin name="NFC2/GPIO_29" x="22.86" y="-5.08" length="middle" rot="R180"/>
<pin name="EXP" x="22.86" y="-17.78" length="middle" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="NINA-B112" prefix="U">
<description>Rf Txrx Mod Bluetooth Stamp Ant</description>
<gates>
<gate name="G$1" symbol="NINA-B112" x="0" y="0"/>
</gates>
<devices>
<device name="" package="UBLOX_NINA-B112">
<connects>
<connect gate="G$1" pin="ANT" pad="13"/>
<connect gate="G$1" pin="EXP" pad="EXP1 EXP2 EXP3 EXP4 EXP5 EXP6 EXP7 EXP8 EXP9 EXP10 EXP11 EXP12"/>
<connect gate="G$1" pin="GND" pad="6 12 14 26 30"/>
<connect gate="G$1" pin="GPIO_1" pad="1"/>
<connect gate="G$1" pin="GPIO_16" pad="16"/>
<connect gate="G$1" pin="GPIO_17" pad="17"/>
<connect gate="G$1" pin="GPIO_18" pad="18"/>
<connect gate="G$1" pin="GPIO_2" pad="2"/>
<connect gate="G$1" pin="GPIO_20" pad="20"/>
<connect gate="G$1" pin="GPIO_21" pad="21"/>
<connect gate="G$1" pin="GPIO_22" pad="22"/>
<connect gate="G$1" pin="GPIO_23" pad="23"/>
<connect gate="G$1" pin="GPIO_24" pad="24"/>
<connect gate="G$1" pin="GPIO_25" pad="25"/>
<connect gate="G$1" pin="GPIO_27" pad="27"/>
<connect gate="G$1" pin="GPIO_3" pad="3"/>
<connect gate="G$1" pin="GPIO_4" pad="4"/>
<connect gate="G$1" pin="GPIO_5" pad="5"/>
<connect gate="G$1" pin="GPIO_7" pad="7"/>
<connect gate="G$1" pin="NFC1/GPIO_28" pad="28"/>
<connect gate="G$1" pin="NFC2/GPIO_29" pad="29"/>
<connect gate="G$1" pin="RESET_N" pad="19"/>
<connect gate="G$1" pin="SWDCLK" pad="11"/>
<connect gate="G$1" pin="SWDIO" pad="15"/>
<connect gate="G$1" pin="SWO/GPIO_8" pad="8"/>
<connect gate="G$1" pin="VCC" pad="10"/>
<connect gate="G$1" pin="VCC_IO" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="DESCRIPTION" value=" Bluetooth Bluetooth v5.0 Transceiver Module 2.4GHz Integrated, Chip Surface Mount "/>
<attribute name="MF" value="U-Blox America"/>
<attribute name="MP" value="NINA-B112"/>
<attribute name="PACKAGE" value="SMD-30 u-blox"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead" urn="urn:adsk.eagle:library:325">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X02" urn="urn:adsk.eagle:footprint:22309/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-2.6162" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
</package>
<package name="1X02/90" urn="urn:adsk.eagle:footprint:22310/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-3.175" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.445" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="1X02" urn="urn:adsk.eagle:package:22435/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X02"/>
</packageinstances>
</package3d>
<package3d name="1X02/90" urn="urn:adsk.eagle:package:22437/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X02/90"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PINHD2" urn="urn:adsk.eagle:symbol:22308/1" library_version="4">
<wire x1="-6.35" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-2.54" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X2" urn="urn:adsk.eagle:component:22516/4" prefix="JP" uservalue="yes" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="PINHD2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22435/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="98" constant="no"/>
</technology>
</technologies>
</device>
<device name="/90" package="1X02/90">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22437/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="24" constant="no"/>
</technology>
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
<part name="U1" library="ATMEGA328P-AU" deviceset="ATMEGA328P-AU" device=""/>
<part name="U2" library="SparkFun-IC-Power" deviceset="V_REG_LM1117" device="SOT223"/>
<part name="MAIN_PCB_MOSFET" library="SparkFun-DiscreteSemi" deviceset="MOSFET-NCH" device="-FDD8780" value="35A/25V/8.5mΩ"/>
<part name="MAIN_PCB_IND" library="SparkFun-LED" deviceset="LED-GREEN" device="0603" value="GREEN"/>
<part name="U3" library="SparkFun-IC-Power" deviceset="V_REG_LM1117" device="SOT223"/>
<part name="MOTOR_CONT_MOSFET" library="SparkFun-DiscreteSemi" deviceset="MOSFET-NCH" device="-FDD8780" value="35A/25V/8.5mΩ"/>
<part name="MOTOR_CONT_IND" library="SparkFun-LED" deviceset="LED-GREEN" device="0603" value="GREEN"/>
<part name="U4" library="SparkFun-IC-Power" deviceset="V_REG_LM1117" device="SOT223"/>
<part name="RASP_PI_MOSFET" library="SparkFun-DiscreteSemi" deviceset="MOSFET-NCH" device="-FDD8780" value="35A/25V/8.5mΩ"/>
<part name="RASP_PI_IND" library="SparkFun-LED" deviceset="LED-GREEN" device="0603" value="GREEN"/>
<part name="U5" library="SparkFun-IC-Power" deviceset="V_REG_LM1117" device="SOT223"/>
<part name="GPS_MOSFET" library="SparkFun-DiscreteSemi" deviceset="MOSFET-NCH" device="-FDD8780" value="35A/25V/8.5mΩ"/>
<part name="GPS_IND" library="SparkFun-LED" deviceset="LED-GREEN" device="0603" value="GREEN"/>
<part name="TX2_MOSFET" library="SparkFun-DiscreteSemi" deviceset="MOSFET-NCH" device="-FDD8780" value="35A/25V/8.5mΩ"/>
<part name="TX2_IND" library="SparkFun-LED" deviceset="LED-GREEN" device="0603" value="GREEN"/>
<part name="R1" library="SparkFun-Resistors" deviceset="4.7KOHM" device="-0603-1/10W-1%" value="4.7k"/>
<part name="R2" library="SparkFun-Resistors" deviceset="4.7KOHM" device="-0603-1/10W-1%" value="4.7k"/>
<part name="R3" library="SparkFun-Resistors" deviceset="4.7KOHM" device="-0603-1/10W-1%" value="4.7k"/>
<part name="R4" library="SparkFun-Resistors" deviceset="4.7KOHM" device="-0603-1/10W-1%" value="4.7k"/>
<part name="R5" library="SparkFun-Resistors" deviceset="4.7KOHM" device="-0603-1/10W-1%" value="4.7k"/>
<part name="U6" library="SparkFun-IC-Power" deviceset="V_REG_LM1117" device="SOT223"/>
<part name="10UH" library="SparkFun-Coils" deviceset="FERRITE_BEAD" device="-0603" value="30Ω/1.8A"/>
<part name="100NF" library="SparkFun-Capacitors" deviceset="10NF" device="-0603-50V-10%" value="10nF"/>
<part name="R6" library="SparkFun-Resistors" deviceset="10KOHM" device="-0603-1/10W-1%" value="10k"/>
<part name="R7" library="SparkFun-Resistors" deviceset="5.6KOHM" device="-0603-1/10W-1%" value="5.6k"/>
<part name="U8" library="SparkFun-IC-Power" deviceset="V_REG_LM1117" device="SOT223"/>
<part name="C1" library="SparkFun-Capacitors" deviceset="1.0UF" device="-0603-16V-10%" value="1.0uF"/>
<part name="U7" library="NINA-B112" deviceset="NINA-B112" device=""/>
<part name="JP1" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X2" device="" package3d_urn="urn:adsk.eagle:package:22435/2"/>
<part name="JP2" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X2" device="" package3d_urn="urn:adsk.eagle:package:22435/2"/>
<part name="JP3" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X2" device="" package3d_urn="urn:adsk.eagle:package:22435/2"/>
<part name="JP4" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X2" device="" package3d_urn="urn:adsk.eagle:package:22435/2"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="G$1" x="76.2" y="44.45" smashed="yes">
<attribute name="NAME" x="66.0245" y="73.7046" size="2.54388125" layer="95"/>
<attribute name="VALUE" x="66.0331" y="12.6786" size="2.54171875" layer="96"/>
</instance>
<instance part="U2" gate="G$1" x="184.15" y="78.74" smashed="yes" rot="R270">
<attribute name="NAME" x="176.53" y="76.2" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="173.99" y="76.2" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="MAIN_PCB_MOSFET" gate="NMOS" x="181.61" y="49.53" smashed="yes">
<attribute name="NAME" x="186.69" y="49.53" size="1.778" layer="95" font="vector"/>
<attribute name="VALUE" x="186.69" y="46.99" size="1.778" layer="96" font="vector"/>
</instance>
<instance part="MAIN_PCB_IND" gate="G$1" x="184.15" y="64.77" smashed="yes">
<attribute name="NAME" x="180.721" y="55.118" size="1.778" layer="95" font="vector" rot="R90"/>
<attribute name="VALUE" x="186.055" y="60.198" size="1.778" layer="96" font="vector" rot="R90" align="top-left"/>
</instance>
<instance part="U3" gate="G$1" x="254" y="38.1" smashed="yes" rot="R270">
<attribute name="NAME" x="246.38" y="35.56" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="243.84" y="35.56" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="MOTOR_CONT_MOSFET" gate="NMOS" x="251.46" y="8.89" smashed="yes">
<attribute name="NAME" x="256.54" y="8.89" size="1.778" layer="95" font="vector"/>
<attribute name="VALUE" x="256.54" y="6.35" size="1.778" layer="96" font="vector"/>
</instance>
<instance part="MOTOR_CONT_IND" gate="G$1" x="254" y="24.13" smashed="yes">
<attribute name="NAME" x="250.571" y="11.938" size="1.778" layer="95" font="vector" rot="R90"/>
<attribute name="VALUE" x="255.905" y="19.558" size="1.778" layer="96" font="vector" rot="R90" align="top-left"/>
</instance>
<instance part="U4" gate="G$1" x="189.23" y="-16.51" smashed="yes" rot="R270">
<attribute name="NAME" x="181.61" y="-19.05" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="179.07" y="-19.05" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="RASP_PI_MOSFET" gate="NMOS" x="186.69" y="-45.72" smashed="yes">
<attribute name="NAME" x="191.77" y="-45.72" size="1.778" layer="95" font="vector"/>
<attribute name="VALUE" x="191.77" y="-48.26" size="1.778" layer="96" font="vector"/>
</instance>
<instance part="RASP_PI_IND" gate="G$1" x="189.23" y="-30.48" smashed="yes">
<attribute name="NAME" x="185.801" y="-40.132" size="1.778" layer="95" font="vector" rot="R90"/>
<attribute name="VALUE" x="191.135" y="-35.052" size="1.778" layer="96" font="vector" rot="R90" align="top-left"/>
</instance>
<instance part="U5" gate="G$1" x="260.35" y="-63.5" smashed="yes" rot="R270">
<attribute name="NAME" x="252.73" y="-66.04" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="250.19" y="-66.04" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="GPS_MOSFET" gate="NMOS" x="257.81" y="-92.71" smashed="yes">
<attribute name="NAME" x="262.89" y="-92.71" size="1.778" layer="95" font="vector"/>
<attribute name="VALUE" x="262.89" y="-95.25" size="1.778" layer="96" font="vector"/>
</instance>
<instance part="GPS_IND" gate="G$1" x="260.35" y="-77.47" smashed="yes">
<attribute name="NAME" x="256.921" y="-87.122" size="1.778" layer="95" font="vector" rot="R90"/>
<attribute name="VALUE" x="262.255" y="-82.042" size="1.778" layer="96" font="vector" rot="R90" align="top-left"/>
</instance>
<instance part="TX2_MOSFET" gate="NMOS" x="232.41" y="100.33" smashed="yes">
<attribute name="NAME" x="237.49" y="100.33" size="1.778" layer="95" font="vector"/>
<attribute name="VALUE" x="237.49" y="97.79" size="1.778" layer="96" font="vector"/>
</instance>
<instance part="TX2_IND" gate="G$1" x="234.95" y="115.57" smashed="yes">
<attribute name="NAME" x="231.521" y="110.998" size="1.778" layer="95" font="vector" rot="R90"/>
<attribute name="VALUE" x="236.855" y="110.998" size="1.778" layer="96" font="vector" rot="R90" align="top-left"/>
</instance>
<instance part="R1" gate="G$1" x="220.98" y="92.71" smashed="yes" rot="R270">
<attribute name="NAME" x="222.504" y="92.71" size="1.778" layer="95" font="vector" rot="R270" align="bottom-center"/>
<attribute name="VALUE" x="219.456" y="92.71" size="1.778" layer="96" font="vector" rot="R270" align="top-center"/>
</instance>
<instance part="R2" gate="G$1" x="166.37" y="41.91" smashed="yes" rot="R270">
<attribute name="NAME" x="167.894" y="41.91" size="1.778" layer="95" font="vector" rot="R270" align="bottom-center"/>
<attribute name="VALUE" x="164.846" y="41.91" size="1.778" layer="96" font="vector" rot="R270" align="top-center"/>
</instance>
<instance part="R3" gate="G$1" x="237.49" y="1.27" smashed="yes" rot="R270">
<attribute name="NAME" x="239.014" y="1.27" size="1.778" layer="95" font="vector" rot="R270" align="bottom-center"/>
<attribute name="VALUE" x="235.966" y="1.27" size="1.778" layer="96" font="vector" rot="R270" align="top-center"/>
</instance>
<instance part="R4" gate="G$1" x="168.91" y="-53.34" smashed="yes" rot="R270">
<attribute name="NAME" x="170.434" y="-53.34" size="1.778" layer="95" font="vector" rot="R270" align="bottom-center"/>
<attribute name="VALUE" x="167.386" y="-53.34" size="1.778" layer="96" font="vector" rot="R270" align="top-center"/>
</instance>
<instance part="R5" gate="G$1" x="243.84" y="-100.33" smashed="yes" rot="R270">
<attribute name="NAME" x="245.364" y="-100.33" size="1.778" layer="95" font="vector" rot="R270" align="bottom-center"/>
<attribute name="VALUE" x="242.316" y="-100.33" size="1.778" layer="96" font="vector" rot="R270" align="top-center"/>
</instance>
<instance part="U6" gate="G$1" x="129.54" y="127" smashed="yes" rot="R270">
<attribute name="NAME" x="121.92" y="124.46" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="119.38" y="124.46" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="10UH" gate="G$1" x="132.08" y="97.79" smashed="yes">
<attribute name="NAME" x="133.35" y="100.33" size="1.778" layer="95" font="vector"/>
<attribute name="VALUE" x="133.35" y="95.25" size="1.778" layer="96" font="vector" align="top-left"/>
</instance>
<instance part="100NF" gate="G$1" x="132.08" y="77.47" smashed="yes">
<attribute name="NAME" x="133.604" y="80.391" size="1.778" layer="95" font="vector"/>
<attribute name="VALUE" x="133.604" y="75.311" size="1.778" layer="96" font="vector"/>
</instance>
<instance part="R6" gate="G$1" x="97.79" y="-19.05" smashed="yes" rot="R90">
<attribute name="NAME" x="96.266" y="-19.05" size="1.778" layer="95" font="vector" rot="R90" align="bottom-center"/>
<attribute name="VALUE" x="99.314" y="-19.05" size="1.778" layer="96" font="vector" rot="R90" align="top-center"/>
</instance>
<instance part="R7" gate="G$1" x="97.79" y="-39.37" smashed="yes" rot="R90">
<attribute name="NAME" x="96.266" y="-39.37" size="1.778" layer="95" font="vector" rot="R90" align="bottom-center"/>
<attribute name="VALUE" x="99.314" y="-39.37" size="1.778" layer="96" font="vector" rot="R90" align="top-center"/>
</instance>
<instance part="U8" gate="G$1" x="-175.26" y="162.56" smashed="yes" rot="R270">
<attribute name="NAME" x="-182.88" y="160.02" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="-185.42" y="160.02" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="C1" gate="G$1" x="-161.29" y="139.7" smashed="yes">
<attribute name="NAME" x="-159.766" y="142.621" size="1.778" layer="95" font="vector"/>
<attribute name="VALUE" x="-159.766" y="137.541" size="1.778" layer="96" font="vector"/>
</instance>
<instance part="U7" gate="G$1" x="-43.18" y="114.3" smashed="yes">
<attribute name="NAME" x="-60.9637" y="139.7053" size="2.54053125" layer="95"/>
<attribute name="VALUE" x="-60.9876" y="86.3167" size="2.543940625" layer="96"/>
</instance>
<instance part="JP1" gate="G$1" x="-104.14" y="157.48" smashed="yes">
<attribute name="NAME" x="-110.49" y="163.195" size="1.778" layer="95"/>
<attribute name="VALUE" x="-110.49" y="152.4" size="1.778" layer="96"/>
</instance>
<instance part="JP2" gate="G$1" x="7.62" y="25.4" smashed="yes">
<attribute name="NAME" x="1.27" y="31.115" size="1.778" layer="95"/>
<attribute name="VALUE" x="1.27" y="20.32" size="1.778" layer="96"/>
</instance>
<instance part="JP3" gate="G$1" x="15.24" y="73.66" smashed="yes">
<attribute name="NAME" x="8.89" y="79.375" size="1.778" layer="95"/>
<attribute name="VALUE" x="8.89" y="68.58" size="1.778" layer="96"/>
</instance>
<instance part="JP4" gate="G$1" x="40.64" y="106.68" smashed="yes">
<attribute name="NAME" x="34.29" y="112.395" size="1.778" layer="95"/>
<attribute name="VALUE" x="34.29" y="101.6" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="MAIN_5V" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="VCC"/>
<wire x1="91.44" y1="67.31" x2="109.22" y2="67.31" width="0.1524" layer="91"/>
<label x="109.22" y="67.31" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="U6" gate="G$1" pin="OUT"/>
<wire x1="129.54" y1="119.38" x2="129.54" y2="106.68" width="0.1524" layer="91"/>
<wire x1="129.54" y1="106.68" x2="132.08" y2="106.68" width="0.1524" layer="91"/>
<label x="149.86" y="106.68" size="1.778" layer="95" rot="R180"/>
<pinref part="10UH" gate="G$1" pin="1"/>
<wire x1="132.08" y1="106.68" x2="149.86" y2="106.68" width="0.1524" layer="91"/>
<wire x1="132.08" y1="102.87" x2="132.08" y2="106.68" width="0.1524" layer="91"/>
<junction x="132.08" y="106.68"/>
</segment>
</net>
<net name="RESET" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PC6/!RESET"/>
<wire x1="60.96" y1="24.13" x2="41.91" y2="24.13" width="0.1524" layer="91"/>
<label x="41.91" y="24.13" size="1.778" layer="95"/>
</segment>
</net>
<net name="I2C_SDA" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PC4"/>
<wire x1="38.1" y1="29.21" x2="60.96" y2="29.21" width="0.1524" layer="91"/>
<label x="38.1" y="29.21" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP2" gate="G$1" pin="1"/>
<wire x1="5.08" y1="27.94" x2="-20.32" y2="27.94" width="0.1524" layer="91"/>
<label x="-20.32" y="27.94" size="1.778" layer="95"/>
</segment>
</net>
<net name="I2C_SCL" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PC5"/>
<wire x1="60.96" y1="26.67" x2="38.1" y2="26.67" width="0.1524" layer="91"/>
<label x="38.1" y="26.67" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP2" gate="G$1" pin="2"/>
<wire x1="-20.32" y1="25.4" x2="5.08" y2="25.4" width="0.1524" layer="91"/>
<label x="-20.32" y="25.4" size="1.778" layer="95"/>
</segment>
</net>
<net name="TX2_ENABLE" class="0">
<segment>
<wire x1="203.2" y1="97.79" x2="220.98" y2="97.79" width="0.1524" layer="91"/>
<label x="203.2" y="97.79" size="1.778" layer="95"/>
<pinref part="TX2_MOSFET" gate="NMOS" pin="G"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="220.98" y1="97.79" x2="227.33" y2="97.79" width="0.1524" layer="91"/>
<junction x="220.98" y="97.79"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PD4"/>
<wire x1="91.44" y1="52.07" x2="123.19" y2="52.07" width="0.1524" layer="91"/>
<label x="123.19" y="52.07" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="MOTOR_CONT_ENABLE" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PD2"/>
<wire x1="91.44" y1="57.15" x2="123.19" y2="57.15" width="0.1524" layer="91"/>
<label x="123.19" y="57.15" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="222.25" y1="6.35" x2="237.49" y2="6.35" width="0.1524" layer="91"/>
<label x="222.25" y="6.35" size="1.778" layer="95"/>
<pinref part="MOTOR_CONT_MOSFET" gate="NMOS" pin="G"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="237.49" y1="6.35" x2="246.38" y2="6.35" width="0.1524" layer="91"/>
<junction x="237.49" y="6.35"/>
</segment>
</net>
<net name="GPS_ENABLE" class="0">
<segment>
<wire x1="228.6" y1="-95.25" x2="243.84" y2="-95.25" width="0.1524" layer="91"/>
<label x="228.6" y="-95.25" size="1.778" layer="95"/>
<pinref part="GPS_MOSFET" gate="NMOS" pin="G"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="243.84" y1="-95.25" x2="252.73" y2="-95.25" width="0.1524" layer="91"/>
<junction x="243.84" y="-95.25"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PD0"/>
<wire x1="91.44" y1="62.23" x2="123.19" y2="62.23" width="0.1524" layer="91"/>
<label x="123.19" y="62.23" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="MAIN_PCB_ENABLE" class="0">
<segment>
<wire x1="152.4" y1="46.99" x2="166.37" y2="46.99" width="0.1524" layer="91"/>
<label x="152.4" y="46.99" size="1.778" layer="95"/>
<pinref part="MAIN_PCB_MOSFET" gate="NMOS" pin="G"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="166.37" y1="46.99" x2="176.53" y2="46.99" width="0.1524" layer="91"/>
<junction x="166.37" y="46.99"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PD3"/>
<wire x1="123.19" y1="54.61" x2="91.44" y2="54.61" width="0.1524" layer="91"/>
<label x="123.19" y="54.61" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="RASP_PI_ENABLE" class="0">
<segment>
<wire x1="157.48" y1="-48.26" x2="168.91" y2="-48.26" width="0.1524" layer="91"/>
<label x="157.48" y="-48.26" size="1.778" layer="95"/>
<pinref part="RASP_PI_MOSFET" gate="NMOS" pin="G"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="168.91" y1="-48.26" x2="181.61" y2="-48.26" width="0.1524" layer="91"/>
<junction x="168.91" y="-48.26"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PD1"/>
<wire x1="123.19" y1="59.69" x2="91.44" y2="59.69" width="0.1524" layer="91"/>
<label x="123.19" y="59.69" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="BLUETOOTH_ESTOP" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PD5"/>
<wire x1="123.19" y1="49.53" x2="91.44" y2="49.53" width="0.1524" layer="91"/>
<label x="123.19" y="49.53" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="SPI_MISO" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PB4"/>
<wire x1="33.02" y1="52.07" x2="60.96" y2="52.07" width="0.1524" layer="91"/>
<label x="33.02" y="52.07" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U7" gate="G$1" pin="GPIO_3"/>
<wire x1="-66.04" y1="121.92" x2="-88.9" y2="121.92" width="0.1524" layer="91"/>
<label x="-88.9" y="121.92" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP3" gate="G$1" pin="2"/>
<wire x1="-7.62" y1="73.66" x2="12.7" y2="73.66" width="0.1524" layer="91"/>
<label x="-7.62" y="73.66" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPI_SELECT" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PB2"/>
<wire x1="33.02" y1="57.15" x2="60.96" y2="57.15" width="0.1524" layer="91"/>
<label x="33.02" y="57.15" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U7" gate="G$1" pin="GPIO_1"/>
<wire x1="-66.04" y1="127" x2="-88.9" y2="127" width="0.1524" layer="91"/>
<label x="-88.9" y="127" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPI_MOSI" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PB3"/>
<wire x1="60.96" y1="54.61" x2="33.02" y2="54.61" width="0.1524" layer="91"/>
<label x="33.02" y="54.61" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U7" gate="G$1" pin="GPIO_2"/>
<wire x1="-88.9" y1="124.46" x2="-66.04" y2="124.46" width="0.1524" layer="91"/>
<label x="-88.9" y="124.46" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP3" gate="G$1" pin="1"/>
<wire x1="12.7" y1="76.2" x2="-7.62" y2="76.2" width="0.1524" layer="91"/>
<label x="-7.62" y="76.2" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPI_CLK" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PB5"/>
<wire x1="60.96" y1="49.53" x2="33.02" y2="49.53" width="0.1524" layer="91"/>
<label x="33.02" y="49.53" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U7" gate="G$1" pin="GPIO_4"/>
<wire x1="-88.9" y1="119.38" x2="-66.04" y2="119.38" width="0.1524" layer="91"/>
<label x="-88.9" y="119.38" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="GND"/>
<wire x1="91.44" y1="19.05" x2="113.03" y2="19.05" width="0.1524" layer="91"/>
<label x="113.03" y="19.05" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="184.15" y1="29.21" x2="193.04" y2="29.21" width="0.1524" layer="91"/>
<label x="193.04" y="29.21" size="1.778" layer="95" rot="R180"/>
<wire x1="184.15" y1="36.83" x2="184.15" y2="34.29" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="184.15" y1="34.29" x2="184.15" y2="29.21" width="0.1524" layer="91"/>
<wire x1="166.37" y1="36.83" x2="166.37" y2="34.29" width="0.1524" layer="91"/>
<wire x1="166.37" y1="34.29" x2="184.15" y2="34.29" width="0.1524" layer="91"/>
<junction x="184.15" y="34.29"/>
</segment>
<segment>
<wire x1="254" y1="-11.43" x2="262.89" y2="-11.43" width="0.1524" layer="91"/>
<label x="262.89" y="-11.43" size="1.778" layer="95" rot="R180"/>
<wire x1="254" y1="-3.81" x2="254" y2="-8.89" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="254" y1="-8.89" x2="254" y2="-11.43" width="0.1524" layer="91"/>
<wire x1="237.49" y1="-3.81" x2="237.49" y2="-8.89" width="0.1524" layer="91"/>
<wire x1="237.49" y1="-8.89" x2="254" y2="-8.89" width="0.1524" layer="91"/>
<junction x="254" y="-8.89"/>
</segment>
<segment>
<wire x1="189.23" y1="-66.04" x2="198.12" y2="-66.04" width="0.1524" layer="91"/>
<label x="198.12" y="-66.04" size="1.778" layer="95" rot="R180"/>
<wire x1="189.23" y1="-58.42" x2="189.23" y2="-62.23" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="189.23" y1="-62.23" x2="189.23" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="168.91" y1="-58.42" x2="168.91" y2="-62.23" width="0.1524" layer="91"/>
<wire x1="168.91" y1="-62.23" x2="189.23" y2="-62.23" width="0.1524" layer="91"/>
<junction x="189.23" y="-62.23"/>
</segment>
<segment>
<wire x1="260.35" y1="-113.03" x2="269.24" y2="-113.03" width="0.1524" layer="91"/>
<label x="269.24" y="-113.03" size="1.778" layer="95" rot="R180"/>
<wire x1="260.35" y1="-105.41" x2="260.35" y2="-109.22" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="260.35" y1="-109.22" x2="260.35" y2="-113.03" width="0.1524" layer="91"/>
<wire x1="243.84" y1="-105.41" x2="243.84" y2="-109.22" width="0.1524" layer="91"/>
<wire x1="243.84" y1="-109.22" x2="260.35" y2="-109.22" width="0.1524" layer="91"/>
<junction x="260.35" y="-109.22"/>
</segment>
<segment>
<wire x1="234.95" y1="80.01" x2="243.84" y2="80.01" width="0.1524" layer="91"/>
<label x="243.84" y="80.01" size="1.778" layer="95" rot="R180"/>
<wire x1="234.95" y1="87.63" x2="234.95" y2="82.55" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="234.95" y1="82.55" x2="234.95" y2="80.01" width="0.1524" layer="91"/>
<wire x1="220.98" y1="87.63" x2="220.98" y2="82.55" width="0.1524" layer="91"/>
<wire x1="220.98" y1="82.55" x2="234.95" y2="82.55" width="0.1524" layer="91"/>
<junction x="234.95" y="82.55"/>
</segment>
<segment>
<pinref part="100NF" gate="G$1" pin="2"/>
<wire x1="132.08" y1="74.93" x2="132.08" y2="71.12" width="0.1524" layer="91"/>
<wire x1="132.08" y1="71.12" x2="142.24" y2="71.12" width="0.1524" layer="91"/>
<label x="142.24" y="71.12" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="97.79" y1="-44.45" x2="97.79" y2="-54.61" width="0.1524" layer="91"/>
<wire x1="97.79" y1="-54.61" x2="104.14" y2="-54.61" width="0.1524" layer="91"/>
<label x="104.14" y="-54.61" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="-161.29" y1="137.16" x2="-161.29" y2="133.35" width="0.1524" layer="91"/>
<wire x1="-161.29" y1="133.35" x2="-153.67" y2="133.35" width="0.1524" layer="91"/>
<label x="-153.67" y="133.35" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="U7" gate="G$1" pin="GND"/>
<wire x1="-20.32" y1="93.98" x2="-7.62" y2="93.98" width="0.1524" layer="91"/>
<label x="-7.62" y="93.726" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="JP4" gate="G$1" pin="2"/>
<wire x1="15.24" y1="106.68" x2="38.1" y2="106.68" width="0.1524" layer="91"/>
<label x="15.24" y="106.68" size="1.778" layer="95"/>
</segment>
</net>
<net name="12V" class="0">
<segment>
<wire x1="184.15" y1="90.17" x2="184.15" y2="86.36" width="0.1524" layer="91"/>
<wire x1="184.15" y1="90.17" x2="175.26" y2="90.17" width="0.1524" layer="91"/>
<label x="175.26" y="90.17" size="1.778" layer="95"/>
<pinref part="U2" gate="G$1" pin="IN"/>
</segment>
<segment>
<wire x1="254" y1="49.53" x2="254" y2="45.72" width="0.1524" layer="91"/>
<wire x1="254" y1="49.53" x2="245.11" y2="49.53" width="0.1524" layer="91"/>
<label x="245.11" y="49.53" size="1.778" layer="95"/>
<pinref part="U3" gate="G$1" pin="IN"/>
</segment>
<segment>
<wire x1="189.23" y1="-5.08" x2="189.23" y2="-8.89" width="0.1524" layer="91"/>
<wire x1="189.23" y1="-5.08" x2="180.34" y2="-5.08" width="0.1524" layer="91"/>
<label x="180.34" y="-5.08" size="1.778" layer="95"/>
<pinref part="U4" gate="G$1" pin="IN"/>
</segment>
<segment>
<wire x1="260.35" y1="-52.07" x2="260.35" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="260.35" y1="-52.07" x2="251.46" y2="-52.07" width="0.1524" layer="91"/>
<label x="251.46" y="-52.07" size="1.778" layer="95"/>
<pinref part="U5" gate="G$1" pin="IN"/>
</segment>
<segment>
<wire x1="234.95" y1="132.08" x2="226.06" y2="132.08" width="0.1524" layer="91"/>
<label x="226.06" y="132.08" size="1.778" layer="95"/>
<pinref part="TX2_IND" gate="G$1" pin="A"/>
<wire x1="234.95" y1="132.08" x2="234.95" y2="118.11" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U6" gate="G$1" pin="IN"/>
<wire x1="129.54" y1="134.62" x2="129.54" y2="151.13" width="0.1524" layer="91"/>
<wire x1="129.54" y1="151.13" x2="115.57" y2="151.13" width="0.1524" layer="91"/>
<label x="115.57" y="151.13" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="97.79" y1="-13.97" x2="97.79" y2="-8.89" width="0.1524" layer="91"/>
<wire x1="97.79" y1="-8.89" x2="92.71" y2="-8.89" width="0.1524" layer="91"/>
<label x="92.71" y="-8.89" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="IN"/>
<wire x1="-175.26" y1="170.18" x2="-175.26" y2="172.72" width="0.1524" layer="91"/>
<wire x1="-175.26" y1="172.72" x2="-187.96" y2="172.72" width="0.1524" layer="91"/>
<label x="-187.96" y="172.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP4" gate="G$1" pin="1"/>
<wire x1="38.1" y1="109.22" x2="15.24" y2="109.22" width="0.1524" layer="91"/>
<label x="15.24" y="109.22" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="MAIN_PCB_MOSFET" gate="NMOS" pin="D"/>
<wire x1="184.15" y1="59.69" x2="184.15" y2="54.61" width="0.1524" layer="91"/>
<pinref part="MAIN_PCB_IND" gate="G$1" pin="C"/>
</segment>
</net>
<net name="MAIN_PCB_OUT" class="0">
<segment>
<pinref part="MAIN_PCB_MOSFET" gate="NMOS" pin="S"/>
<wire x1="184.15" y1="44.45" x2="184.15" y2="40.64" width="0.1524" layer="91"/>
<wire x1="184.15" y1="40.64" x2="205.74" y2="40.64" width="0.1524" layer="91"/>
<label x="205.74" y="40.64" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="OUT"/>
<wire x1="184.15" y1="71.12" x2="184.15" y2="67.31" width="0.1524" layer="91"/>
<pinref part="MAIN_PCB_IND" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="MOTOR_CONT_MOSFET" gate="NMOS" pin="D"/>
<wire x1="254" y1="19.05" x2="254" y2="13.97" width="0.1524" layer="91"/>
<pinref part="MOTOR_CONT_IND" gate="G$1" pin="C"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="OUT"/>
<wire x1="254" y1="30.48" x2="254" y2="26.67" width="0.1524" layer="91"/>
<pinref part="MOTOR_CONT_IND" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="RASP_PI_MOSFET" gate="NMOS" pin="D"/>
<wire x1="189.23" y1="-35.56" x2="189.23" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="RASP_PI_IND" gate="G$1" pin="C"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="OUT"/>
<wire x1="189.23" y1="-24.13" x2="189.23" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="RASP_PI_IND" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="GPS_MOSFET" gate="NMOS" pin="D"/>
<wire x1="260.35" y1="-82.55" x2="260.35" y2="-87.63" width="0.1524" layer="91"/>
<pinref part="GPS_IND" gate="G$1" pin="C"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="OUT"/>
<wire x1="260.35" y1="-71.12" x2="260.35" y2="-74.93" width="0.1524" layer="91"/>
<pinref part="GPS_IND" gate="G$1" pin="A"/>
</segment>
</net>
<net name="MOTOR_CONT_OUT" class="0">
<segment>
<pinref part="MOTOR_CONT_MOSFET" gate="NMOS" pin="S"/>
<wire x1="254" y1="3.81" x2="254" y2="0" width="0.1524" layer="91"/>
<wire x1="254" y1="0" x2="275.59" y2="0" width="0.1524" layer="91"/>
<label x="275.59" y="0" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="RASP_PI_OUT" class="0">
<segment>
<pinref part="RASP_PI_MOSFET" gate="NMOS" pin="S"/>
<wire x1="189.23" y1="-50.8" x2="189.23" y2="-54.61" width="0.1524" layer="91"/>
<wire x1="189.23" y1="-54.61" x2="210.82" y2="-54.61" width="0.1524" layer="91"/>
<label x="210.82" y="-54.61" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="GPS_OUT" class="0">
<segment>
<pinref part="GPS_MOSFET" gate="NMOS" pin="S"/>
<wire x1="260.35" y1="-97.79" x2="260.35" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="260.35" y1="-101.6" x2="281.94" y2="-101.6" width="0.1524" layer="91"/>
<label x="281.94" y="-101.6" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="TX2_MOSFET" gate="NMOS" pin="D"/>
<wire x1="234.95" y1="110.49" x2="234.95" y2="105.41" width="0.1524" layer="91"/>
<pinref part="TX2_IND" gate="G$1" pin="C"/>
</segment>
</net>
<net name="ADC_5V_FILTERED" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="AVCC"/>
<wire x1="91.44" y1="69.85" x2="116.84" y2="69.85" width="0.1524" layer="91"/>
<label x="116.84" y="69.85" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="10UH" gate="G$1" pin="2"/>
<pinref part="100NF" gate="G$1" pin="1"/>
<wire x1="132.08" y1="92.71" x2="132.08" y2="87.63" width="0.1524" layer="91"/>
<wire x1="132.08" y1="87.63" x2="132.08" y2="82.55" width="0.1524" layer="91"/>
<wire x1="132.08" y1="87.63" x2="156.21" y2="87.63" width="0.1524" layer="91"/>
<label x="156.21" y="87.63" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="BATTERY_LEVEL_PROBE" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="ADC6"/>
<wire x1="91.44" y1="39.37" x2="123.19" y2="39.37" width="0.1524" layer="91"/>
<label x="123.19" y="39.37" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="R6" gate="G$1" pin="1"/>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="97.79" y1="-24.13" x2="97.79" y2="-29.21" width="0.1524" layer="91"/>
<wire x1="97.79" y1="-29.21" x2="97.79" y2="-34.29" width="0.1524" layer="91"/>
<wire x1="97.79" y1="-29.21" x2="134.62" y2="-29.21" width="0.1524" layer="91"/>
<junction x="97.79" y="-29.21"/>
<label x="134.62" y="-29.21" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="TX2_OUT" class="0">
<segment>
<pinref part="TX2_MOSFET" gate="NMOS" pin="S"/>
<wire x1="234.95" y1="95.25" x2="234.95" y2="91.44" width="0.1524" layer="91"/>
<wire x1="234.95" y1="91.44" x2="256.54" y2="91.44" width="0.1524" layer="91"/>
<label x="256.54" y="91.44" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="BLUETOOTH_VDD" class="0">
<segment>
<pinref part="U8" gate="G$1" pin="OUT"/>
<wire x1="-175.26" y1="154.94" x2="-175.26" y2="146.05" width="0.1524" layer="91"/>
<wire x1="-175.26" y1="146.05" x2="-161.29" y2="146.05" width="0.1524" layer="91"/>
<label x="-175.26" y="146.05" size="1.778" layer="95"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="-161.29" y1="144.78" x2="-161.29" y2="146.05" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="8.89" y1="132.08" x2="-20.32" y2="132.08" width="0.1524" layer="91"/>
<label x="8.636" y="131.826" size="1.778" layer="95" rot="R180"/>
<pinref part="U7" gate="G$1" pin="VCC"/>
</segment>
</net>
<net name="BT_SWDCLK" class="0">
<segment>
<wire x1="-95.504" y1="134.62" x2="-66.04" y2="134.62" width="0.1524" layer="91"/>
<label x="-94.996" y="134.874" size="1.778" layer="95"/>
<pinref part="U7" gate="G$1" pin="SWDCLK"/>
</segment>
<segment>
<pinref part="JP1" gate="G$1" pin="1"/>
<wire x1="-106.68" y1="160.02" x2="-134.62" y2="160.02" width="0.1524" layer="91"/>
<label x="-134.62" y="160.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="BT_SWDIO" class="0">
<segment>
<wire x1="-66.04" y1="132.08" x2="-95.25" y2="132.08" width="0.1524" layer="91"/>
<label x="-94.996" y="132.334" size="1.778" layer="95"/>
<pinref part="U7" gate="G$1" pin="SWDIO"/>
</segment>
<segment>
<pinref part="JP1" gate="G$1" pin="2"/>
<wire x1="-134.62" y1="157.48" x2="-106.68" y2="157.48" width="0.1524" layer="91"/>
<label x="-134.62" y="157.48" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
