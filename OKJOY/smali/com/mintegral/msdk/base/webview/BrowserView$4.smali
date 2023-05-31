.class final Lcom/mintegral/msdk/base/webview/BrowserView$4;
.super Landroid/webkit/WebChromeClient;
.source "BrowserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/webview/BrowserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/webview/BrowserView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/webview/BrowserView;)V
    .registers 2

    .prologue
    .line 245
    iput-object p1, p0, Lcom/mintegral/msdk/base/webview/BrowserView$4;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 7

    .prologue
    .line 248
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1d

    .line 249
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$4;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->e(Lcom/mintegral/msdk/base/webview/BrowserView;)Lcom/mintegral/msdk/base/webview/ProgressBar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/webview/ProgressBar;->setProgressState(I)V

    .line 250
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mintegral/msdk/base/webview/BrowserView$4$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/base/webview/BrowserView$4$1;-><init>(Lcom/mintegral/msdk/base/webview/BrowserView$4;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    :cond_1d
    return-void
.end method
