.class public Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;
.super Landroid/widget/RelativeLayout;
.source "MTGAuthorityCustomView.java"


# instance fields
.field public checkBox:Landroid/widget/CheckBox;

.field public okButton:Landroid/widget/Button;

.field public webViewContent:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v4, -0x1

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_jscommon_authoritylayout"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 49
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_99

    .line 51
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_jscommon_webcontent"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;->webViewContent:Landroid/webkit/WebView;

    .line 52
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_jscommon_checkBox"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;->checkBox:Landroid/widget/CheckBox;

    .line 53
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_jscommon_okbutton"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;->okButton:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;->webViewContent:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 55
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;->webViewContent:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;->webViewContent:Landroid/webkit/WebView;

    sget-object v2, Lcom/mintegral/msdk/MIntegralConstans;->AUTHORITY_DEFAULTLOCAL_INFO_URL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;->okButton:Landroid/widget/Button;

    new-instance v1, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView$1;

    invoke-direct {v1, p0, p1}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView$1;-><init>(Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;->checkBox:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->b()Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;->isSwitch(Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 71
    :cond_99
    return-void
.end method


# virtual methods
.method public authorityInfoToJsonString(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 100
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 102
    :try_start_5
    const-string v1, "authority_general_data"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string v1, "authority_device_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v1, "authority_gps"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v1, "authority_imei_mac"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v1, "authority_android_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v1, "authority_applist"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v1, "authority_app_download"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v1, "authority_app_progress"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v1, "authority_serial_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v1, "authority_imsi_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v1, "authority_oaid_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_6b} :catch_6d

    move-result-object v0

    .line 117
    :goto_6c
    return-object v0

    .line 115
    :catch_6d
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 117
    const-string v0, ""

    goto :goto_6c
.end method

.method public isSwitch(Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;)Z
    .registers 14

    .prologue
    const/4 v0, 0x1

    .line 78
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->getAuthDeviceIdStatus()I

    move-result v1

    .line 79
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->getAuthAndroidIdStatus()I

    move-result v2

    .line 80
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->getAuthGpsStatus()I

    move-result v3

    .line 81
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->getAuthImeiAndMacStatus()I

    move-result v4

    .line 82
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->getAuthGenDataStatus()I

    move-result v5

    .line 83
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->getAuthAppListStatus()I

    move-result v6

    .line 84
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->getAuthAppDownloadStatus()I

    move-result v7

    .line 85
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->getAuthAppProgressStatus()I

    move-result v8

    .line 86
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->getAuthSerialIdStatus()I

    move-result v9

    .line 87
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->getAuthImsiIdStatus()I

    move-result v10

    .line 88
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->getAuthOaidStatus()I

    move-result v11

    .line 89
    if-ne v11, v0, :cond_33

    if-ne v10, v0, :cond_33

    if-eq v9, v0, :cond_43

    :cond_33
    if-eq v2, v0, :cond_43

    if-eq v7, v0, :cond_43

    if-eq v6, v0, :cond_43

    if-eq v8, v0, :cond_43

    if-eq v1, v0, :cond_43

    if-eq v5, v0, :cond_43

    if-eq v3, v0, :cond_43

    if-ne v4, v0, :cond_44

    .line 92
    :cond_43
    :goto_43
    return v0

    :cond_44
    const/4 v0, 0x0

    goto :goto_43
.end method
