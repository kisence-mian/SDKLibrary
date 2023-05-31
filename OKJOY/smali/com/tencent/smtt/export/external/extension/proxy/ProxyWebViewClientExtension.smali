.class public abstract Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;


# static fields
.field private static sCompatibleOnMetricsSavedCountReceived:Z

.field private static sCompatibleOnPageLoadingStartedAndFinished:Z


# instance fields
.field protected mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->sCompatibleOnPageLoadingStartedAndFinished:Z

    sput-boolean v0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->sCompatibleOnMetricsSavedCountReceived:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowJavaScriptOpenWindowAutomatically(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->allowJavaScriptOpenWindowAutomatically(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public computeScroll(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->computeScroll(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public didFirstVisuallyNonEmptyPaint()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->didFirstVisuallyNonEmptyPaint()V

    :cond_9
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->dispatchTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public documentAvailableInMainFrame()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->documentAvailableInMainFrame()V

    :cond_9
    return-void
.end method

.method public handlePluginTag(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->handlePluginTag(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public hideAddressBar()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->hideAddressBar()V

    :cond_9
    return-void
.end method

.method public invalidate()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->invalidate()V

    :cond_9
    return-void
.end method

.method public notifyAutoAudioPlay(Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_f

    :try_start_4
    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->notifyAutoAudioPlay(Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z
    :try_end_9
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_9} :catch_b

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public notifyJavaScriptOpenWindowsBlocked(Ljava/lang/String;[Ljava/lang/String;Landroid/webkit/ValueCallback;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->notifyJavaScriptOpenWindowsBlocked(Ljava/lang/String;[Ljava/lang/String;Landroid/webkit/ValueCallback;Z)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onDoubleTapStart()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onDoubleTapStart()V

    :cond_9
    return-void
.end method

.method public onFlingScrollBegin(III)V
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onFlingScrollBegin(III)V

    :cond_9
    return-void
.end method

.method public onFlingScrollEnd()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onFlingScrollEnd()V

    :cond_9
    return-void
.end method

.method public onHideListBox()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onHideListBox()V

    :cond_9
    return-void
.end method

.method public onHistoryItemChanged()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onHistoryItemChanged()V

    :cond_9
    return-void
.end method

.method public onInputBoxTextChanged(Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onInputBoxTextChanged(Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onInterceptTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onMetricsSavedCountReceived(Ljava/lang/String;ZJLjava/lang/String;I)V
    .registers 16

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_12

    sget-boolean v0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->sCompatibleOnMetricsSavedCountReceived:Z

    if-eqz v0, :cond_12

    :try_start_8
    iget-object v1, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onMetricsSavedCountReceived(Ljava/lang/String;ZJLjava/lang/String;I)V
    :try_end_12
    .catch Ljava/lang/NoSuchMethodError; {:try_start_8 .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onMetricsSavedCountReceived"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    :cond_26
    throw v0

    :cond_27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->sCompatibleOnMetricsSavedCountReceived:Z

    goto :goto_12
.end method

.method public onMiscCallBack(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onMiscCallBack(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onMiscCallBack(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onMiscCallBack(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public onMissingPluginClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onMissingPluginClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_9
    return-void
.end method

.method public onNativeCrashReport(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onNativeCrashReport(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public onOverScrolled(IIZZLandroid/view/View;)V
    .registers 12

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onOverScrolled(IIZZLandroid/view/View;)V

    :cond_e
    return-void
.end method

.method public onPinchToZoomStart()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onPinchToZoomStart()V

    :cond_9
    return-void
.end method

.method public onPreReadFinished()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onPreReadFinished()V

    :cond_9
    return-void
.end method

.method public onPrefetchResourceHit(Z)V
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onPrefetchResourceHit(Z)V

    :cond_9
    return-void
.end method

.method public onPreloadCallback(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onPreloadCallback(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public onPromptScaleSaved()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onPromptScaleSaved()V

    :cond_9
    return-void
.end method

.method public onReceivedSslErrorCancel()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onReceivedSslErrorCancel()V

    :cond_9
    return-void
.end method

.method public onReceivedViewSource(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onReceivedViewSource(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public onReportAdFilterInfo(IILjava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onReportAdFilterInfo(IILjava/lang/String;Z)V

    :cond_9
    return-void
.end method

.method public onReportHtmlInfo(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onReportHtmlInfo(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public onResponseReceived(Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;I)V
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onResponseReceived(Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;I)V

    :cond_9
    return-void
.end method

.method public onScrollChanged(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onScrollChanged(IIII)V

    :cond_9
    return-void
.end method

.method public onScrollChanged(IIIILandroid/view/View;)V
    .registers 12

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onScrollChanged(IIIILandroid/view/View;)V

    :cond_e
    return-void
.end method

.method public onSetButtonStatus(ZZ)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onSetButtonStatus(ZZ)V

    :cond_9
    return-void
.end method

.method public onShowListBox([Ljava/lang/String;[I[II)V
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onShowListBox([Ljava/lang/String;[I[II)V

    :cond_9
    return-void
.end method

.method public onShowLongClickPopupMenu()Z
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_f

    :try_start_4
    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onShowLongClickPopupMenu()Z
    :try_end_9
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_9} :catch_b

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onShowMutilListBox([Ljava/lang/String;[I[I[I)V
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onShowMutilListBox([Ljava/lang/String;[I[I[I)V

    :cond_9
    return-void
.end method

.method public onSlidingTitleOffScreen(II)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onSlidingTitleOffScreen(II)V

    :cond_9
    return-void
.end method

.method public onSoftKeyBoardHide(I)V
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onSoftKeyBoardHide(I)V

    :cond_9
    return-void
.end method

.method public onSoftKeyBoardShow()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onSoftKeyBoardShow()V

    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onTransitionToCommitted()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onTransitionToCommitted()V

    :cond_9
    return-void
.end method

.method public onUploadProgressChange(IILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onUploadProgressChange(IILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public onUploadProgressStart(I)V
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onUploadProgressStart(I)V

    :cond_9
    return-void
.end method

.method public onUrlChange(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->onUrlChange(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public overScrollBy(IIIIIIIIZLandroid/view/View;)Z
    .registers 22

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->overScrollBy(IIIIIIIIZLandroid/view/View;)Z

    move-result v0

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public preShouldOverrideUrlLoading(Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->preShouldOverrideUrlLoading(Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;Ljava/lang/String;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public showTranslateBubble(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/export/external/extension/proxy/ProxyWebViewClientExtension;->mWebViewClientExt:Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;->showTranslateBubble(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_9
    return-void
.end method
