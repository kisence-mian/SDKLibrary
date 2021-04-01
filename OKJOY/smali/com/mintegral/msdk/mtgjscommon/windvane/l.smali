.class public final Lcom/mintegral/msdk/mtgjscommon/windvane/l;
.super Lcom/mintegral/msdk/mtgjscommon/base/b;
.source "WindVaneWebViewClient.java"


# static fields
.field public static b:Z


# instance fields
.field protected a:Ljava/lang/String;

.field private c:I

.field private d:Lcom/mintegral/msdk/mtgjscommon/windvane/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mintegral/msdk/mtgjscommon/windvane/l;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgjscommon/base/b;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/l;->a:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/l;->c:I

    .line 45
    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 5

    .prologue
    .line 152
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    invoke-static {p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/j;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 153
    const-string v0, "WindVaneWebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "is image "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 155
    const-string v0, "WindVaneWebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "find image from cache "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 157
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-static {p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v1}, Lcom/mintegral/msdk/base/common/c/a;->a(Landroid/graphics/Bitmap;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5b} :catch_5c

    .line 163
    :goto_5b
    return-object v0

    :catch_5c
    move-exception v0

    :cond_5d
    const/4 v0, 0x0

    goto :goto_5b
.end method


# virtual methods
.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/mintegral/msdk/mtgjscommon/base/b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 54
    iput-object p2, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/l;->a:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/l;->d:Lcom/mintegral/msdk/mtgjscommon/windvane/c;

    if-eqz v0, :cond_e

    .line 56
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/l;->d:Lcom/mintegral/msdk/mtgjscommon/windvane/c;

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/c;->a()V

    .line 58
    :cond_e
    return-void
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 7

    .prologue
    .line 91
    invoke-static {p2}, Lcom/mintegral/msdk/mtgjscommon/windvane/l;->a(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_1b

    .line 93
    const-string v1, "WindVaneWebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "find WebResourceResponse url is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_1a
    return-object v0

    :cond_1b
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/mtgjscommon/base/b;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_1a
.end method
