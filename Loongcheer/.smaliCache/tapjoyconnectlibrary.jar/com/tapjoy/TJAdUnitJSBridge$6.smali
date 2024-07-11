.class final Lcom/tapjoy/TJAdUnitJSBridge$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitJSBridge;->displayURL(Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lorg/json/JSONArray;

.field final synthetic c:Lorg/json/JSONObject;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lcom/tapjoy/TJAdUnitJSBridge;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 381
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->i:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->b:Lorg/json/JSONArray;

    iput-object p4, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->c:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 384
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->i:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_a8

    .line 385
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->i:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJSplitWebView;

    move-result-object v0

    if-nez v0, :cond_49

    .line 386
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->i:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 387
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_48

    .line 388
    check-cast v0, Landroid/view/ViewGroup;

    .line 389
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->i:Lcom/tapjoy/TJAdUnitJSBridge;

    new-instance v2, Lcom/tapjoy/TJSplitWebView;

    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->i:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v3}, Lcom/tapjoy/TJAdUnitJSBridge;->b(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJAdUnitActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->a:Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->i:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-direct {v2, v3, v4, v5}, Lcom/tapjoy/TJSplitWebView;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/tapjoy/TJAdUnitJSBridge;)V

    invoke-static {v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;Lcom/tapjoy/TJSplitWebView;)Lcom/tapjoy/TJSplitWebView;

    .line 390
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->i:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v1}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJSplitWebView;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->i:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v1}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJSplitWebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJSplitWebView;->animateOpen(Landroid/view/ViewGroup;)V

    .line 394
    :cond_48
    goto :goto_67

    .line 396
    :cond_49
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->i:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJSplitWebView;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 397
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->i:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJSplitWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->b:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJSplitWebView;->setExitHosts(Lorg/json/JSONArray;)V

    .line 398
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->i:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJSplitWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJSplitWebView;->applyLayoutOption(Lorg/json/JSONObject;)V

    .line 402
    :cond_67
    :goto_67
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->i:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJSplitWebView;

    move-result-object v0

    if-eqz v0, :cond_a8

    .line 403
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->d:Ljava/lang/String;

    if-eqz v0, :cond_7e

    .line 404
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->i:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJSplitWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJSplitWebView;->setUserAgent(Ljava/lang/String;)V

    .line 407
    :cond_7e
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->i:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJSplitWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJSplitWebView;->setTrigger(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->i:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/tapjoy/TJAdUnitJSBridge;->splitWebViewCallbackID:Ljava/lang/String;

    .line 412
    :try_start_91
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->i:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJSplitWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJSplitWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9c} :catch_9d

    .line 415
    return-void

    .line 413
    :catch_9d
    move-exception v0

    .line 414
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJAdUnitJSBridge"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void

    .line 420
    :cond_a8
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->i:Lcom/tapjoy/TJAdUnitJSBridge;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;Lcom/tapjoy/TJSplitWebView;)Lcom/tapjoy/TJSplitWebView;

    .line 421
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->i:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-object v1, v0, Lcom/tapjoy/TJAdUnitJSBridge;->splitWebViewCallbackID:Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->i:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$6;->g:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    return-void
.end method
