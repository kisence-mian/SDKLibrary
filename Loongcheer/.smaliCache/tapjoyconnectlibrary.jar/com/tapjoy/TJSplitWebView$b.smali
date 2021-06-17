.class final Lcom/tapjoy/TJSplitWebView$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJSplitWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJSplitWebView;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJSplitWebView;)V
    .registers 2

    .line 483
    iput-object p1, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJSplitWebView;B)V
    .registers 3

    .line 483
    invoke-direct {p0, p1}, Lcom/tapjoy/TJSplitWebView$b;-><init>(Lcom/tapjoy/TJSplitWebView;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 546
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v0}, Lcom/tapjoy/TJSplitWebView;->d(Lcom/tapjoy/TJSplitWebView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 548
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v0}, Lcom/tapjoy/TJSplitWebView;->a(Lcom/tapjoy/TJSplitWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 549
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v0}, Lcom/tapjoy/TJSplitWebView;->a(Lcom/tapjoy/TJSplitWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 550
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v0}, Lcom/tapjoy/TJSplitWebView;->a(Lcom/tapjoy/TJSplitWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 552
    :cond_2c
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-virtual {v0}, Lcom/tapjoy/TJSplitWebView;->isFirstOrLastPage()V

    .line 554
    :cond_31
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 486
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v0}, Lcom/tapjoy/TJSplitWebView;->d(Lcom/tapjoy/TJSplitWebView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 487
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v0}, Lcom/tapjoy/TJSplitWebView;->e(Lcom/tapjoy/TJSplitWebView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Lcom/tapjoy/TapjoyUrlFormatter;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v0}, Lcom/tapjoy/TJSplitWebView;->a(Lcom/tapjoy/TJSplitWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 490
    :cond_23
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPageStarted: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJSplitWebView"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceivedError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " firstUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v1}, Lcom/tapjoy/TJSplitWebView;->c(Lcom/tapjoy/TJSplitWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJSplitWebView"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v0}, Lcom/tapjoy/TJSplitWebView;->j(Lcom/tapjoy/TJSplitWebView;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_33

    .line 538
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-virtual {v0}, Lcom/tapjoy/TJSplitWebView;->showErrorDialog()V

    return-void

    .line 539
    :cond_33
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v0}, Lcom/tapjoy/TJSplitWebView;->c(Lcom/tapjoy/TJSplitWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 540
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-virtual {v0}, Lcom/tapjoy/TJSplitWebView;->a()V

    .line 542
    :cond_44
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "detail"    # Landroid/webkit/RenderProcessGoneDetail;

    .line 559
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v0}, Lcom/tapjoy/TJSplitWebView;->b(Lcom/tapjoy/TJSplitWebView;)Lcom/tapjoy/TJWebView;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 560
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v0}, Lcom/tapjoy/TJSplitWebView;->b(Lcom/tapjoy/TJSplitWebView;)Lcom/tapjoy/TJWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 561
    if-eqz v0, :cond_22

    .line 562
    iget-object v1, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v1}, Lcom/tapjoy/TJSplitWebView;->b(Lcom/tapjoy/TJSplitWebView;)Lcom/tapjoy/TJWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 563
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 565
    :cond_22
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v0}, Lcom/tapjoy/TJSplitWebView;->b(Lcom/tapjoy/TJSplitWebView;)Lcom/tapjoy/TJWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJWebView;->destroy()V

    .line 566
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v0}, Lcom/tapjoy/TJSplitWebView;->k(Lcom/tapjoy/TJSplitWebView;)Lcom/tapjoy/TJWebView;

    .line 569
    :cond_30
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v0}, Lcom/tapjoy/TJSplitWebView;->l(Lcom/tapjoy/TJSplitWebView;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 570
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v0}, Lcom/tapjoy/TJSplitWebView;->l(Lcom/tapjoy/TJSplitWebView;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->cleanUpJSBridge()V

    .line 571
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v0}, Lcom/tapjoy/TJSplitWebView;->m(Lcom/tapjoy/TJSplitWebView;)Lcom/tapjoy/TJAdUnitJSBridge;

    .line 574
    :cond_46
    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v2, "WebView rendering process exited while instantiating a WebViewClient unexpectedly"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string v1, "TJSplitWebView"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 575
    const/4 v0, 0x1

    return v0
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 523
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v0}, Lcom/tapjoy/TJSplitWebView;->h(Lcom/tapjoy/TJSplitWebView;)Ljava/lang/String;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v1}, Lcom/tapjoy/TJSplitWebView;->i(Lcom/tapjoy/TJSplitWebView;)Landroid/net/Uri;

    move-result-object v1

    .line 525
    if-eqz v0, :cond_2d

    if-eqz v1, :cond_2d

    if-eqz p2, :cond_2d

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 526
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 527
    iget-object v1, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v1}, Lcom/tapjoy/TJSplitWebView;->g(Lcom/tapjoy/TJSplitWebView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 528
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-virtual {v0}, Lcom/tapjoy/TJSplitWebView;->a()V

    .line 530
    :cond_2d
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 494
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shouldOverrideUrlLoading: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJSplitWebView"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_4c

    .line 498
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 499
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 500
    if-eqz v3, :cond_4c

    if-eqz v2, :cond_4c

    .line 501
    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    :cond_31
    iget-object v3, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    .line 502
    invoke-static {v3}, Lcom/tapjoy/TJSplitWebView;->f(Lcom/tapjoy/TJSplitWebView;)Ljava/util/HashSet;

    move-result-object v3

    if-eqz v3, :cond_45

    iget-object v3, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v3}, Lcom/tapjoy/TJSplitWebView;->f(Lcom/tapjoy/TJSplitWebView;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 503
    :cond_45
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v0, p2}, Lcom/tapjoy/TJSplitWebView;->a(Lcom/tapjoy/TJSplitWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 504
    const/4 v0, 0x0

    return v0

    .line 509
    :cond_4c
    :try_start_4c
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 510
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v0}, Lcom/tapjoy/TJSplitWebView;->g(Lcom/tapjoy/TJSplitWebView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 511
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-static {v0}, Lcom/tapjoy/TJSplitWebView;->d(Lcom/tapjoy/TJSplitWebView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 512
    iget-object v0, p0, Lcom/tapjoy/TJSplitWebView$b;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-virtual {v0}, Lcom/tapjoy/TJSplitWebView;->a()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_6d} :catch_6e

    .line 516
    :cond_6d
    goto :goto_76

    .line 514
    :catch_6e
    move-exception v0

    .line 515
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :goto_76
    const/4 v0, 0x1

    return v0
.end method
