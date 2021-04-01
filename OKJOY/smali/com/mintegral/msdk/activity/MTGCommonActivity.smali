.class public Lcom/mintegral/msdk/activity/MTGCommonActivity;
.super Landroid/app/Activity;
.source "MTGCommonActivity.java"


# instance fields
.field a:Ljava/lang/String;

.field private b:Lcom/mintegral/msdk/base/entity/CampaignEx;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/activity/MTGCommonActivity;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    .line 46
    invoke-virtual {p0}, Lcom/mintegral/msdk/activity/MTGCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_flag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/mintegral/msdk/activity/MTGCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent_jsonobject"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ed

    const-string v2, "shortcuts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ed

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    :try_start_2c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->parseShortCutsCampaign(Lorg/json/JSONObject;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/activity/MTGCommonActivity;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_37} :catch_df

    .line 57
    :goto_37
    :try_start_37
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 58
    if-nez v0, :cond_163

    .line 59
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    move-object v6, v0

    .line 61
    :goto_50
    invoke-static {p0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/activity/MTGCommonActivity;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/mintegral/msdk/c/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/base/b/f;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_96

    .line 63
    iget-object v1, p0, Lcom/mintegral/msdk/activity/MTGCommonActivity;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_96

    invoke-virtual {v6}, Lcom/mintegral/msdk/c/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_96

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIsClick()I

    move-result v0

    if-nez v0, :cond_96

    .line 64
    iget-object v1, p0, Lcom/mintegral/msdk/activity/MTGCommonActivity;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v6}, Lcom/mintegral/msdk/c/a;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mintegral/msdk/activity/MTGCommonActivity;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 67
    :cond_96
    iget-object v0, p0, Lcom/mintegral/msdk/activity/MTGCommonActivity;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsClick(I)V

    .line 68
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 69
    const-string v1, "is_click"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    invoke-static {p0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/f;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/activity/MTGCommonActivity;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 73
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/activity/MTGCommonActivity;->setContentView(Landroid/view/View;)V

    .line 76
    invoke-static {p0}, Lcom/mintegral/msdk/d/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/d/b;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/mintegral/msdk/d/b;->a(Lcom/mintegral/msdk/c/a;)V

    .line 77
    invoke-static {p0}, Lcom/mintegral/msdk/d/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/activity/MTGCommonActivity;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v1, p0}, Lcom/mintegral/msdk/d/b;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/app/Activity;)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_de} :catch_e5

    .line 1109
    :goto_de
    return-void

    .line 54
    :catch_df
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_37

    .line 79
    :catch_e5
    move-exception v0

    .line 80
    invoke-virtual {p0}, Lcom/mintegral/msdk/activity/MTGCommonActivity;->finish()V

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_de

    .line 84
    :cond_ed
    sget-boolean v0, Lcom/mintegral/msdk/MIntegralConstans;->APPWALL_IS_SHOW_WHEN_SCREEN_LOCK:Z

    if-eqz v0, :cond_fa

    .line 85
    invoke-virtual {p0}, Lcom/mintegral/msdk/activity/MTGCommonActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x480000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 88
    :cond_fa
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_10f

    .line 89
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mintegral/msdk/activity/MTGCommonActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/a;->a(Landroid/content/Context;)V

    .line 91
    :cond_10f
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0, v3}, Lcom/mintegral/msdk/activity/MTGCommonActivity;->requestWindowFeature(I)Z

    .line 94
    :try_start_115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1103
    invoke-virtual {p0}, Lcom/mintegral/msdk/activity/MTGCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/activity/MTGCommonActivity;->a:Ljava/lang/String;

    .line 1105
    iget-object v0, p0, Lcom/mintegral/msdk/activity/MTGCommonActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_157

    .line 1106
    invoke-virtual {p0}, Lcom/mintegral/msdk/activity/MTGCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mvcommon"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    iput-object v0, p0, Lcom/mintegral/msdk/activity/MTGCommonActivity;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1107
    iget-object v0, p0, Lcom/mintegral/msdk/activity/MTGCommonActivity;->a:Ljava/lang/String;

    .line 1118
    new-instance v1, Lcom/mintegral/msdk/base/webview/BrowserView;

    iget-object v2, p0, Lcom/mintegral/msdk/activity/MTGCommonActivity;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v1, p0, v2}, Lcom/mintegral/msdk/base/webview/BrowserView;-><init>(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 1120
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->loadUrl(Ljava/lang/String;)V

    .line 1122
    new-instance v0, Lcom/mintegral/msdk/activity/MTGCommonActivity$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/activity/MTGCommonActivity$1;-><init>(Lcom/mintegral/msdk/activity/MTGCommonActivity;)V

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->setListener(Lcom/mintegral/msdk/base/webview/BrowserView$a;)V

    .line 1109
    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/activity/MTGCommonActivity;->setContentView(Landroid/view/View;)V
    :try_end_151
    .catch Landroid/support/v4/app/Fragment$InstantiationException; {:try_start_115 .. :try_end_151} :catch_152

    goto :goto_de

    .line 97
    :catch_152
    move-exception v0

    invoke-virtual {p0}, Lcom/mintegral/msdk/activity/MTGCommonActivity;->finish()V

    goto :goto_de

    .line 1112
    :cond_157
    :try_start_157
    const-string v0, "Error: no data"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_161
    .catch Landroid/support/v4/app/Fragment$InstantiationException; {:try_start_157 .. :try_end_161} :catch_152

    goto/16 :goto_de

    :cond_163
    move-object v6, v0

    goto/16 :goto_50
.end method

.method public setTheme(I)V
    .registers 4

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/mintegral/msdk/activity/MTGCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_flag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "shortcuts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 149
    const v0, 0x1030010

    invoke-super {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 151
    :cond_1e
    return-void
.end method
