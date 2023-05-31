.class public final Lcom/mintegral/msdk/video/js/a/g;
.super Lcom/mintegral/msdk/video/js/a/a;
.source "JSActivityProxy.java"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mintegral/msdk/video/js/a/a;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/video/js/a/g;->b:I

    .line 35
    iput-object p1, p0, Lcom/mintegral/msdk/video/js/a/g;->a:Landroid/webkit/WebView;

    .line 36
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 40
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/a/a;->a()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/video/js/a/g;->b:I

    .line 42
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/g;->a:Landroid/webkit/WebView;

    const-string v1, "onSystemPause"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public final a(I)V
    .registers 2

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/a/a;->a(I)V

    .line 86
    iput p1, p0, Lcom/mintegral/msdk/video/js/a/g;->b:I

    .line 87
    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .registers 5

    .prologue
    const/4 v2, 0x2

    .line 60
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/a/a;->a(Landroid/content/res/Configuration;)V

    .line 63
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 65
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_2c

    .line 66
    const-string v1, "orientation"

    const-string v2, "landscape"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    :goto_14
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/a/g;->a:Landroid/webkit/WebView;

    const-string v2, "orientation"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_2b
    return-void

    .line 68
    :cond_2c
    const-string v1, "orientation"

    const-string v2, "portrait"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_33} :catch_34

    goto :goto_14

    .line 73
    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 47
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/a/a;->b()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/video/js/a/g;->b:I

    .line 49
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/g;->a:Landroid/webkit/WebView;

    const-string v1, "onSystemResume"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public final c()V
    .registers 4

    .prologue
    .line 54
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/a/a;->c()V

    .line 55
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/g;->a:Landroid/webkit/WebView;

    const-string v1, "onSystemDestory"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public final d()V
    .registers 4

    .prologue
    .line 79
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/a/a;->d()V

    .line 80
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/g;->a:Landroid/webkit/WebView;

    const-string v1, "onSystemBackPressed"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public final e()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lcom/mintegral/msdk/video/js/a/g;->b:I

    return v0
.end method
