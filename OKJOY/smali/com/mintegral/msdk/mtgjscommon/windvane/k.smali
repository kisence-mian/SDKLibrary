.class public final Lcom/mintegral/msdk/mtgjscommon/windvane/k;
.super Landroid/webkit/WebChromeClient;
.source "WindVaneWebViewChromeClient.java"


# instance fields
.field a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

.field private b:Lcom/mintegral/msdk/mtgjscommon/windvane/c;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/k;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lcom/mintegral/msdk/mtgjscommon/windvane/c;)V
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/k;->b:Lcom/mintegral/msdk/mtgjscommon/windvane/c;

    .line 22
    return-void
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 10

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/k;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getJsBridge()Lcom/mintegral/msdk/mtgjscommon/windvane/b;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_3d

    .line 28
    if-eqz p4, :cond_3d

    invoke-interface {v0, p4}, Lcom/mintegral/msdk/mtgjscommon/windvane/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 29
    invoke-interface {v0, p3}, Lcom/mintegral/msdk/mtgjscommon/windvane/b;->b(Ljava/lang/String;)V

    .line 30
    const-string v1, "VideoBridge"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "RewardJs"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 32
    :cond_23
    const-string v1, "VideoBridge"

    const-string v2, "Interactive"

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RewardJs"

    const-string v3, "Interactive"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/b;->b(Ljava/lang/String;)V

    .line 35
    :cond_36
    const-string v0, ""

    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x1

    .line 39
    :goto_3c
    return v0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 4

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 45
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/k;->b:Lcom/mintegral/msdk/mtgjscommon/windvane/c;

    if-eqz v0, :cond_c

    .line 46
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/k;->b:Lcom/mintegral/msdk/mtgjscommon/windvane/c;

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/c;->c()V

    .line 48
    :cond_c
    return-void
.end method
