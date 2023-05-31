.class final Lcom/mintegral/msdk/base/webview/BrowserView$1;
.super Ljava/lang/Object;
.source "BrowserView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/webview/BrowserView;->init()V
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
    .line 95
    iput-object p1, p0, Lcom/mintegral/msdk/base/webview/BrowserView$1;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 98
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$1;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->a(Lcom/mintegral/msdk/base/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    const-string v1, "backward"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 101
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$1;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->b(Lcom/mintegral/msdk/base/webview/BrowserView;)Lcom/mintegral/msdk/base/webview/ToolBar;

    move-result-object v0

    const-string v1, "forward"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/webview/ToolBar;->getItem(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$1;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->a(Lcom/mintegral/msdk/base/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 103
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$1;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->a(Lcom/mintegral/msdk/base/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 105
    :cond_3c
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$1;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->b(Lcom/mintegral/msdk/base/webview/BrowserView;)Lcom/mintegral/msdk/base/webview/ToolBar;

    move-result-object v0

    const-string v1, "backward"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/webview/ToolBar;->getItem(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/base/webview/BrowserView$1;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v1}, Lcom/mintegral/msdk/base/webview/BrowserView;->a(Lcom/mintegral/msdk/base/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 122
    :cond_55
    :goto_55
    return-void

    .line 106
    :cond_56
    const-string v1, "forward"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 107
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$1;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->b(Lcom/mintegral/msdk/base/webview/BrowserView;)Lcom/mintegral/msdk/base/webview/ToolBar;

    move-result-object v0

    const-string v1, "backward"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/webview/ToolBar;->getItem(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$1;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->a(Lcom/mintegral/msdk/base/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 109
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$1;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->a(Lcom/mintegral/msdk/base/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 111
    :cond_82
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$1;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->b(Lcom/mintegral/msdk/base/webview/BrowserView;)Lcom/mintegral/msdk/base/webview/ToolBar;

    move-result-object v0

    const-string v1, "forward"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/webview/ToolBar;->getItem(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/base/webview/BrowserView$1;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v1}, Lcom/mintegral/msdk/base/webview/BrowserView;->a(Lcom/mintegral/msdk/base/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_55

    .line 112
    :cond_9c
    const-string v1, "refresh"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 113
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$1;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->b(Lcom/mintegral/msdk/base/webview/BrowserView;)Lcom/mintegral/msdk/base/webview/ToolBar;

    move-result-object v0

    const-string v1, "backward"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/webview/ToolBar;->getItem(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/base/webview/BrowserView$1;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v1}, Lcom/mintegral/msdk/base/webview/BrowserView;->a(Lcom/mintegral/msdk/base/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$1;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->b(Lcom/mintegral/msdk/base/webview/BrowserView;)Lcom/mintegral/msdk/base/webview/ToolBar;

    move-result-object v0

    const-string v1, "forward"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/webview/ToolBar;->getItem(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/base/webview/BrowserView$1;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v1}, Lcom/mintegral/msdk/base/webview/BrowserView;->a(Lcom/mintegral/msdk/base/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$1;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->a(Lcom/mintegral/msdk/base/webview/BrowserView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/base/webview/BrowserView$1;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v1}, Lcom/mintegral/msdk/base/webview/BrowserView;->c(Lcom/mintegral/msdk/base/webview/BrowserView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_55

    .line 117
    :cond_e7
    const-string v1, "exits"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 118
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$1;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->d(Lcom/mintegral/msdk/base/webview/BrowserView;)Lcom/mintegral/msdk/base/webview/BrowserView$a;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 119
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$1;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->d(Lcom/mintegral/msdk/base/webview/BrowserView;)Lcom/mintegral/msdk/base/webview/BrowserView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/base/webview/BrowserView$a;->a()V

    goto/16 :goto_55
.end method
