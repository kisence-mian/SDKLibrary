.class final Lcom/mintegral/msdk/base/webview/BrowserView$4$1;
.super Ljava/lang/Object;
.source "BrowserView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/webview/BrowserView$4;->onProgressChanged(Landroid/webkit/WebView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/webview/BrowserView$4;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/webview/BrowserView$4;)V
    .registers 2

    .prologue
    .line 250
    iput-object p1, p0, Lcom/mintegral/msdk/base/webview/BrowserView$4$1;->a:Lcom/mintegral/msdk/base/webview/BrowserView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$4$1;->a:Lcom/mintegral/msdk/base/webview/BrowserView$4;

    iget-object v0, v0, Lcom/mintegral/msdk/base/webview/BrowserView$4;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->e(Lcom/mintegral/msdk/base/webview/BrowserView;)Lcom/mintegral/msdk/base/webview/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/webview/ProgressBar;->setVisible(Z)V

    .line 254
    return-void
.end method
