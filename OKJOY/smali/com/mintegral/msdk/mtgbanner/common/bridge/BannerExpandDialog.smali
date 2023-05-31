.class public Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;
.super Landroid/app/Dialog;
.source "BannerExpandDialog.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Landroid/widget/FrameLayout;

.field private e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/mintegral/msdk/mtgbanner/common/b/a;

.field private j:Lcom/mintegral/msdk/mtgjscommon/mraid/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/mintegral/msdk/mtgbanner/common/b/a;)V
    .registers 5

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 52
    const-string v0, "BannerExpandDialog"

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->a:Ljava/lang/String;

    .line 230
    new-instance v0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$4;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$4;-><init>(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->j:Lcom/mintegral/msdk/mtgjscommon/mraid/b;

    .line 69
    if-eqz p2, :cond_20

    .line 70
    const-string v0, "url"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->b:Ljava/lang/String;

    .line 71
    const-string v0, "shouldUseCustomClose"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->c:Z

    .line 74
    :cond_20
    iput-object p3, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->i:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)V
    .registers 12

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1193
    :try_start_2
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1194
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1195
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1197
    const-string v2, "orientation"

    if-ne v0, v4, :cond_ed

    const-string v0, "landscape"

    :goto_1f
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1199
    const-string v0, "locked"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1201
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->n(Landroid/content/Context;)I

    move-result v0

    int-to-float v2, v0

    .line 1202
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->o(Landroid/content/Context;)I

    move-result v0

    int-to-float v3, v0

    .line 1204
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->p(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v4

    .line 1205
    const-string v0, "width"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1206
    const-string v0, "height"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1208
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1209
    const-string v6, "placementType"

    const-string v7, "Interstitial"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    const-string v6, "state"

    const-string v7, "expanded"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    const-string v6, "viewable"

    const-string v7, "true"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    const-string v6, "currentAppOrientation"

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1215
    iget-object v6, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v6, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getLocationInWindow([I)V

    .line 1217
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v6, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    const/4 v7, 0x0

    aget v7, v1, v7

    int-to-float v7, v7

    const/4 v8, 0x1

    aget v8, v1, v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 1218
    invoke-virtual {v9}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v10}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    .line 1217
    invoke-static {v6, v7, v8, v9, v10}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;FFFF)V

    .line 1219
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v6, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    const/4 v7, 0x0

    aget v7, v1, v7

    int-to-float v7, v7

    const/4 v8, 0x1

    aget v1, v1, v8

    int-to-float v1, v1

    iget-object v8, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 1220
    invoke-virtual {v8}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v9}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    .line 1219
    invoke-static {v6, v7, v1, v8, v9}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->b(Landroid/webkit/WebView;FFFF)V

    .line 1221
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-static {v1, v2, v3}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->b(Landroid/webkit/WebView;FF)V

    .line 1222
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    int-to-float v2, v5

    int-to-float v0, v0

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->c(Landroid/webkit/WebView;FF)V

    .line 1223
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-static {v0, v4}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;Ljava/util/Map;)V

    .line 1224
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;)V

    .line 1227
    :goto_ec
    return-void

    .line 1197
    :cond_ed
    if-ne v0, v3, :cond_f3

    const-string v0, "portrait"

    goto/16 :goto_1f

    :cond_f3
    const-string v0, "undefined"
    :try_end_f5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_f5} :catch_f7

    goto/16 :goto_1f

    .line 1225
    :catch_f7
    move-exception v0

    .line 1226
    const-string v1, "BannerExpandDialog"

    const-string v2, "notifyMraid"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ec
.end method

.method static synthetic b(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)Lcom/mintegral/msdk/mtgbanner/common/b/a;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->i:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    return-object v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    return-object v0
.end method

.method static synthetic d(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    return-object v0
.end method

.method static synthetic f(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)Lcom/mintegral/msdk/mtgbanner/common/b/a;
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->i:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    return-object v0
.end method

.method static synthetic g(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)Ljava/util/List;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->f:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    .prologue
    const/16 v4, 0x60

    const/4 v0, 0x1

    const/16 v3, 0x1e

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 79
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->requestWindowFeature(I)Z

    .line 82
    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->setCanceledOnTouchOutside(Z)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->setCancelable(Z)V

    .line 1089
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->d:Landroid/widget/FrameLayout;

    .line 1090
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->d:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1093
    new-instance v0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 1094
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1096
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->d:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1098
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->f:Landroid/widget/TextView;

    .line 1099
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1100
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1101
    const v2, 0x800035

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1102
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1103
    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1104
    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->f:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->c:Z

    if-eqz v0, :cond_121

    const/4 v0, 0x4

    :goto_71
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1105
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->f:Landroid/widget/TextView;

    new-instance v2, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$1;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$1;-><init>(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1111
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->d:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1114
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1115
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1116
    const-string v2, "MRAID EXPAND TEST"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1118
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/16 v4, 0x78

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1119
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1120
    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1122
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->setContentView(Landroid/view/View;)V

    .line 1124
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_100

    .line 1125
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1126
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1127
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1128
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1129
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1130
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_100

    .line 1133
    const/16 v0, 0x207

    .line 1138
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_f5

    .line 1139
    const/16 v0, 0x1207

    .line 1141
    :cond_f5
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1145
    :cond_100
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    new-instance v1, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$2;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$2;-><init>(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/mintegral/msdk/mtgjscommon/windvane/c;)V

    .line 1166
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->j:Lcom/mintegral/msdk/mtgjscommon/mraid/b;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    .line 1167
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V

    .line 1169
    new-instance v0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$3;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$3;-><init>(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)V

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 86
    return-void

    :cond_121
    move v0, v1

    .line 1104
    goto/16 :goto_71
.end method

.method public setCampaignList(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->g:Ljava/lang/String;

    .line 187
    iput-object p2, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->h:Ljava/util/List;

    .line 188
    return-void
.end method
