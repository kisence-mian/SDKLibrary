.class public final Lcom/mintegral/msdk/mtgbanner/view/a;
.super Lcom/mintegral/msdk/mtgjscommon/base/b;
.source "BannerWebViewClient.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/mintegral/msdk/mtgbanner/common/b/a;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/mintegral/msdk/mtgbanner/common/b/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;",
            "Lcom/mintegral/msdk/mtgbanner/common/b/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgjscommon/base/b;-><init>()V

    .line 29
    const-string v0, "BannerWebViewClient"

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/view/a;->d:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/view/a;->a:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/mintegral/msdk/mtgbanner/view/a;->b:Ljava/util/List;

    .line 38
    iput-object p3, p0, Lcom/mintegral/msdk/mtgbanner/view/a;->c:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    .line 39
    return-void
.end method


# virtual methods
.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/mintegral/msdk/mtgjscommon/base/b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 46
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    sget-object v1, Lcom/mintegral/msdk/base/utils/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_1d

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 61
    :goto_1c
    return-void

    .line 52
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mintegral/msdk/mtgbanner/view/a$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/mtgbanner/view/a$1;-><init>(Lcom/mintegral/msdk/mtgbanner/view/a;)V

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_29} :catch_2a

    goto :goto_1c

    .line 58
    :catch_2a
    move-exception v0

    .line 59
    const-string v1, "BannerWebViewClient"

    const-string v2, "onPageStarted"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    :try_start_2
    const-string v2, "BannerWebViewClient"

    const-string v3, "Use html to open url."

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v2, 0x0

    .line 69
    iget-object v3, p0, Lcom/mintegral/msdk/mtgbanner/view/a;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_29

    .line 70
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    .line 71
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object p2, v2

    .line 76
    :cond_29
    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/view/a;->c:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    if-eqz v2, :cond_33

    .line 77
    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/view/a;->c:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p2}, Lcom/mintegral/msdk/mtgbanner/common/b/a;->a(ZLjava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_33} :catch_34

    .line 85
    :cond_33
    :goto_33
    return v0

    .line 81
    :catch_34
    move-exception v0

    .line 82
    const-string v2, "BannerWebViewClient"

    const-string v3, "shouldOverrideUrlLoading"

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 85
    goto :goto_33
.end method
