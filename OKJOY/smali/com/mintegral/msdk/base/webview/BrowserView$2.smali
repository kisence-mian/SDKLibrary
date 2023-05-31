.class final Lcom/mintegral/msdk/base/webview/BrowserView$2;
.super Landroid/webkit/WebViewClient;
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
    .line 172
    iput-object p1, p0, Lcom/mintegral/msdk/base/webview/BrowserView$2;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7

    .prologue
    .line 175
    const-string v0, "BrowserView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f00\u59cb! = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$2;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0, p2}, Lcom/mintegral/msdk/base/webview/BrowserView;->a(Lcom/mintegral/msdk/base/webview/BrowserView;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$2;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->d(Lcom/mintegral/msdk/base/webview/BrowserView;)Lcom/mintegral/msdk/base/webview/BrowserView$a;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 179
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$2;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->d(Lcom/mintegral/msdk/base/webview/BrowserView;)Lcom/mintegral/msdk/base/webview/BrowserView$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mintegral/msdk/base/webview/BrowserView$a;->a(Ljava/lang/String;)V

    .line 182
    :cond_2a
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$2;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->e(Lcom/mintegral/msdk/base/webview/BrowserView;)Lcom/mintegral/msdk/base/webview/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/webview/ProgressBar;->setVisible(Z)V

    .line 184
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$2;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->e(Lcom/mintegral/msdk/base/webview/BrowserView;)Lcom/mintegral/msdk/base/webview/ProgressBar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/webview/ProgressBar;->setProgressState(I)V

    .line 185
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 190
    const-string v0, "BrowserView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "js\u5927\u8df3! = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$2;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->b(Lcom/mintegral/msdk/base/webview/BrowserView;)Lcom/mintegral/msdk/base/webview/ToolBar;

    move-result-object v0

    const-string v1, "backward"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/webview/ToolBar;->getItem(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 193
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$2;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->b(Lcom/mintegral/msdk/base/webview/BrowserView;)Lcom/mintegral/msdk/base/webview/ToolBar;

    move-result-object v0

    const-string v1, "forward"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/webview/ToolBar;->getItem(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$2;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->d(Lcom/mintegral/msdk/base/webview/BrowserView;)Lcom/mintegral/msdk/base/webview/BrowserView$a;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 196
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView$2;->a:Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->d(Lcom/mintegral/msdk/base/webview/BrowserView;)Lcom/mintegral/msdk/base/webview/BrowserView$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mintegral/msdk/base/webview/BrowserView$a;->b(Ljava/lang/String;)Z

    .line 199
    :cond_45
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_59

    .line 201
    const-string v0, "BrowserView"

    const-string v1, "hint"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_59
    return v3
.end method
