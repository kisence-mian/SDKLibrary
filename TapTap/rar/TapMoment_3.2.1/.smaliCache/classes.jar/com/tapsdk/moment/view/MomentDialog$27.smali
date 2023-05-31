.class Lcom/tapsdk/moment/view/MomentDialog$27;
.super Landroid/webkit/WebChromeClient;
.source "MomentDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/MomentDialog;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field final synthetic this$0:Lcom/tapsdk/moment/view/MomentDialog;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 800
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .line 805
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 806
    .local v0, "newWebView":Landroid/webkit/WebView;
    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$27$1;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$27$1;-><init>(Lcom/tapsdk/moment/view/MomentDialog$27;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 814
    iget-object v1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebView$WebViewTransport;

    .line 815
    .local v1, "transport":Landroid/webkit/WebView$WebViewTransport;
    invoke-virtual {v1, v0}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 816
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 817
    const/4 v2, 0x1

    return v2
.end method

.method public onHideCustomView()V
    .registers 3

    .line 865
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 866
    return-void

    .line 868
    :cond_5
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->root:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$1900(Lcom/tapsdk/moment/view/MomentDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 869
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$500(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->setVisibility(I)V

    .line 870
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 871
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->mCustomView:Landroid/view/View;

    .line 873
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 874
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 849
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 850
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 851
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 852
    return-void

    .line 854
    :cond_b
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->mCustomView:Landroid/view/View;

    .line 855
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->root:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$1900(Lcom/tapsdk/moment/view/MomentDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 856
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$500(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->setVisibility(I)V

    .line 858
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->mCustomView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->mCustomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 861
    iput-object p2, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 862
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 6
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 837
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # setter for: Lcom/tapsdk/moment/view/MomentDialog;->uploadMessageAboveL:Landroid/webkit/ValueCallback;
    invoke-static {v0, p2}, Lcom/tapsdk/moment/view/MomentDialog;->access$1802(Lcom/tapsdk/moment/view/MomentDialog;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 838
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_14

    .line 839
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->openImageChooserActivity([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$1700(Lcom/tapsdk/moment/view/MomentDialog;[Ljava/lang/String;)V

    .line 841
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 821
    .local p1, "valueCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # setter for: Lcom/tapsdk/moment/view/MomentDialog;->uploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v0, p1}, Lcom/tapsdk/moment/view/MomentDialog;->access$1602(Lcom/tapsdk/moment/view/MomentDialog;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 822
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    const/4 v1, 0x0

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->openImageChooserActivity([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$1700(Lcom/tapsdk/moment/view/MomentDialog;[Ljava/lang/String;)V

    .line 823
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .registers 6
    .param p1, "valueCallback"    # Landroid/webkit/ValueCallback;
    .param p2, "acceptType"    # Ljava/lang/String;

    .line 826
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # setter for: Lcom/tapsdk/moment/view/MomentDialog;->uploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v0, p1}, Lcom/tapsdk/moment/view/MomentDialog;->access$1602(Lcom/tapsdk/moment/view/MomentDialog;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 827
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->openImageChooserActivity([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$1700(Lcom/tapsdk/moment/view/MomentDialog;[Ljava/lang/String;)V

    .line 828
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 831
    .local p1, "valueCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # setter for: Lcom/tapsdk/moment/view/MomentDialog;->uploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v0, p1}, Lcom/tapsdk/moment/view/MomentDialog;->access$1602(Lcom/tapsdk/moment/view/MomentDialog;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 832
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$27;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->openImageChooserActivity([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$1700(Lcom/tapsdk/moment/view/MomentDialog;[Ljava/lang/String;)V

    .line 833
    return-void
.end method
