.class public Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;
.super Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;
.source "WindVaneWebViewForNV.java"


# static fields
.field private static e:Ljava/lang/String;


# instance fields
.field private f:Lcom/mintegral/msdk/nativex/listener/b;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string v0, "WindVaneWebViewForNV"

    sput-object v0, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->g:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->g:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->g:Z

    .line 55
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    .prologue
    .line 69
    sget-object v0, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "====webview \u8fd4\u56dekeyCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x4

    if-ne p1, v0, :cond_29

    .line 71
    sget-object v0, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->e:Ljava/lang/String;

    const-string v1, "====webview \u8fd4\u56de"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->f:Lcom/mintegral/msdk/nativex/listener/b;

    if-eqz v0, :cond_29

    .line 73
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->f:Lcom/mintegral/msdk/nativex/listener/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/listener/b;->a()V

    .line 74
    const/4 v0, 0x1

    .line 78
    :goto_28
    return v0

    :cond_29
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_28
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->g:Z

    if-eqz v0, :cond_6

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public orientation(Z)V
    .registers 5

    .prologue
    .line 102
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 103
    if-eqz p1, :cond_24

    .line 104
    const-string v1, "orientation"

    const-string v2, "landscape"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    :goto_e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    const-string v1, "orientation"

    invoke-static {p0, v1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_23
    return-void

    .line 106
    :cond_24
    const-string v1, "orientation"

    const-string v2, "portrait"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_e

    .line 111
    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method

.method public setBackListener(Lcom/mintegral/msdk/nativex/listener/b;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->f:Lcom/mintegral/msdk/nativex/listener/b;

    .line 43
    return-void
.end method

.method public setInterceptTouch(Z)V
    .registers 2

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->g:Z

    .line 39
    return-void
.end method

.method public webViewShow(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 83
    :try_start_0
    sget-object v0, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->e:Ljava/lang/String;

    const-string v1, "webviewshow"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    const-string v0, "webviewshow"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v1, Lcom/mintegral/msdk/base/entity/q;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/entity/q;-><init>()V

    .line 87
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 97
    :cond_2d
    :goto_2d
    return-void

    .line 91
    :cond_2e
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_51

    sget v0, Lcom/mintegral/msdk/base/entity/q;->a:I

    :goto_3d
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/q;->a(I)V

    .line 93
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0, p2}, Lcom/mintegral/msdk/base/common/e/a;->b(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4c

    goto :goto_2d

    .line 95
    :catch_4c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d

    .line 92
    :cond_51
    :try_start_51
    sget v0, Lcom/mintegral/msdk/base/entity/q;->b:I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_53} :catch_4c

    goto :goto_3d
.end method
