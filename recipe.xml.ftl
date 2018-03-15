<?xml version="1.0"?>
<recipe>
  
<#--
<#if needActivity>
    <#include "../common/recipe_manifest.xml.ftl" />
</#if>
-->

<#if needActivity && generateActivityLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />
</#if>

<#--
<#if needFragment && generateFragmentLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />
</#if>
-->



<#if needActivity>
    <instantiate from="root/src/app_package/ArmsActivity.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(ativityPackageName)}/${pageName}Activity.kt" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(ativityPackageName)}/${pageName}Activity.kt" />
</#if>

<#--
<#if needFragment>
    <instantiate from="root/src/app_package/ArmsFragment.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(fragmentPackageName)}/${pageName}Fragment.java" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(fragmentPackageName)}/${pageName}Fragment.java" />
</#if>
-->

<#if needContract>
    <instantiate from="root/src/app_package/ArmsContract.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(contractPackageName)}/${pageName}Contract.kt" />
</#if>

<#if needPresenter>
    <instantiate from="root/src/app_package/ArmsPresenter.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(presenterPackageName)}/${pageName}Presenter.kt" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(presenterPackageName)}/${pageName}Presenter.kt" />
</#if>

<#if needModel>
    <instantiate from="root/src/app_package/ArmsModel.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(modelPackageName)}/${pageName}Model.kt" />
</#if>

<merge from="root/AndroidManifest.xml.ftl"
      to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml"/>

<#if needDagger>
    
    <instantiate from="root/src/app_package/ArmsModule.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(moudlePackageName)}/${pageName}Module.kt" />

    <instantiate from="root/src/app_package/PresenterModule.kt.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(moudlePackageName)}/${pageName}PresenterModule.kt"/>

</#if>

</recipe>
