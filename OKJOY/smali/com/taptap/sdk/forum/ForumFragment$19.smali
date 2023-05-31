.class Lcom/taptap/sdk/forum/ForumFragment$19;
.super Landroid/webkit/WebChromeClient;
.source "ForumFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/forum/ForumFragment;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field final synthetic this$0:Lcom/taptap/sdk/forum/ForumFragment;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/forum/ForumFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/taptap/sdk/forum/ForumFragment;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

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

    .prologue
    .line 376
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 377
    .local v0, "newWebView":Landroid/webkit/WebView;
    new-instance v2, Lcom/taptap/sdk/forum/ForumFragment$19$1;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/forum/ForumFragment$19$1;-><init>(Lcom/taptap/sdk/forum/ForumFragment$19;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 385
    iget-object v1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebView$WebViewTransport;

    .line 386
    .local v1, "transport":Landroid/webkit/WebView$WebViewTransport;
    invoke-virtual {v1, v0}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 387
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 388
    const/4 v2, 0x1

    return v2
.end method

.method public onHideCustomView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 435
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_6

    .line 445
    :goto_5
    return-void

    .line 438
    :cond_6
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->root:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/taptap/sdk/forum/ForumFragment;->access$1300(Lcom/taptap/sdk/forum/ForumFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 439
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;
    invoke-static {v0}, Lcom/taptap/sdk/forum/ForumFragment;->access$100(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->forum:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/taptap/sdk/forum/ForumFragment;->access$1400(Lcom/taptap/sdk/forum/ForumFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->mCustomView:Landroid/view/View;

    .line 444
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_5
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    const/16 v2, 0x8

    .line 418
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 419
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 420
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 432
    :goto_c
    return-void

    .line 423
    :cond_d
    iput-object p1, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->mCustomView:Landroid/view/View;

    .line 424
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->root:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/taptap/sdk/forum/ForumFragment;->access$1300(Lcom/taptap/sdk/forum/ForumFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 425
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;
    invoke-static {v0}, Lcom/taptap/sdk/forum/ForumFragment;->access$100(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->forum:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/taptap/sdk/forum/ForumFragment;->access$1400(Lcom/taptap/sdk/forum/ForumFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->mCustomView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->mCustomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 431
    iput-object p2, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    goto :goto_c
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 5
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 408
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # setter for: Lcom/taptap/sdk/forum/ForumFragment;->uploadMessageAboveL:Landroid/webkit/ValueCallback;
    invoke-static {v0, p2}, Lcom/taptap/sdk/forum/ForumFragment;->access$1202(Lcom/taptap/sdk/forum/ForumFragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 409
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # invokes: Lcom/taptap/sdk/forum/ForumFragment;->openImageChooserActivity()V
    invoke-static {v0}, Lcom/taptap/sdk/forum/ForumFragment;->access$1100(Lcom/taptap/sdk/forum/ForumFragment;)V

    .line 410
    const/4 v0, 0x1

    return v0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, "valueCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # setter for: Lcom/taptap/sdk/forum/ForumFragment;->uploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v0, p1}, Lcom/taptap/sdk/forum/ForumFragment;->access$1002(Lcom/taptap/sdk/forum/ForumFragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 393
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # invokes: Lcom/taptap/sdk/forum/ForumFragment;->openImageChooserActivity()V
    invoke-static {v0}, Lcom/taptap/sdk/forum/ForumFragment;->access$1100(Lcom/taptap/sdk/forum/ForumFragment;)V

    .line 394
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .registers 4
    .param p1, "valueCallback"    # Landroid/webkit/ValueCallback;
    .param p2, "acceptType"    # Ljava/lang/String;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # setter for: Lcom/taptap/sdk/forum/ForumFragment;->uploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v0, p1}, Lcom/taptap/sdk/forum/ForumFragment;->access$1002(Lcom/taptap/sdk/forum/ForumFragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 398
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # invokes: Lcom/taptap/sdk/forum/ForumFragment;->openImageChooserActivity()V
    invoke-static {v0}, Lcom/taptap/sdk/forum/ForumFragment;->access$1100(Lcom/taptap/sdk/forum/ForumFragment;)V

    .line 399
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 402
    .local p1, "valueCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # setter for: Lcom/taptap/sdk/forum/ForumFragment;->uploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v0, p1}, Lcom/taptap/sdk/forum/ForumFragment;->access$1002(Lcom/taptap/sdk/forum/ForumFragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 403
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$19;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # invokes: Lcom/taptap/sdk/forum/ForumFragment;->openImageChooserActivity()V
    invoke-static {v0}, Lcom/taptap/sdk/forum/ForumFragment;->access$1100(Lcom/taptap/sdk/forum/ForumFragment;)V

    .line 404
    return-void
.end method
