.class Lcom/tencent/smtt/sdk/WebView$a;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/WebView;


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/sdk/WebView;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/smtt/sdk/WebView$a;-><init>(Lcom/tencent/smtt/sdk/WebView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/smtt/sdk/WebView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-direct {p0, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getIsSysWebViewForcedByOuter()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4c

    :cond_11
    invoke-static {p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/sdk/WebView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/CookieSyncManager;->createInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/CookieSyncManager;->startSync()V

    :try_start_1c
    const-string v0, "android.webkit.WebViewWorker"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Lcom/tencent/smtt/sdk/p;

    invoke-direct {v1}, Lcom/tencent/smtt/sdk/p;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/smtt/sdk/WebView;->mSysWebviewCreated:Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_4c} :catch_4d

    :cond_4c
    :goto_4c
    return-void

    :catch_4d
    move-exception v0

    goto :goto_4c
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-super {p0}, Landroid/webkit/WebView;->computeScroll()V

    return-void
.end method

.method public a(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    return-void
.end method

.method public a(IIZZ)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_9

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onOverScrolled(IIZZ)V

    :cond_9
    return-void
.end method

.method public a(IIIIIIIIZ)Z
    .registers 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_b

    invoke-super/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    invoke-interface {v0, p0}, Lcom/tencent/smtt/sdk/WebViewCallbackClient;->computeScroll(Landroid/view/View;)V

    :goto_d
    return-void

    :cond_e
    invoke-super {p0}, Landroid/webkit/WebView;->computeScroll()V

    goto :goto_d
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/WebView;->e()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/tencent/smtt/sdk/WebView;->f()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {}, Lcom/tencent/smtt/sdk/WebView;->f()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    :cond_1c
    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1c
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    invoke-interface {v0, p1, p0}, Lcom/tencent/smtt/sdk/WebViewCallbackClient;->dispatchTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_e
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .registers 2

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_4
.end method

.method public invalidate()V
    .registers 2

    invoke-super {p0}, Landroid/webkit/WebView;->invalidate()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    invoke-interface {v0}, Lcom/tencent/smtt/sdk/WebViewCallbackClient;->invalidate()V

    :cond_10
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    invoke-interface {v0, p1, p0}, Lcom/tencent/smtt/sdk/WebViewCallbackClient;->onInterceptTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_e
.end method

.method public onOverScrolled(IIZZ)V
    .registers 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/tencent/smtt/sdk/WebViewCallbackClient;->onOverScrolled(IIZZLandroid/view/View;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_12

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onOverScrolled(IIZZ)V

    goto :goto_12
.end method

.method protected onScrollChanged(IIII)V
    .registers 11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/tencent/smtt/sdk/WebViewCallbackClient;->onScrollChanged(IIIILandroid/view/View;)V

    :goto_12
    return-void

    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebView;->b(Lcom/tencent/smtt/sdk/WebView;IIII)V

    goto :goto_12
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView$a;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView$a;->requestFocus()Z

    :cond_9
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    invoke-interface {v0, p1, p0}, Lcom/tencent/smtt/sdk/WebViewCallbackClient;->onTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    :goto_17
    return v0

    :cond_18
    :try_start_18
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result v0

    goto :goto_17

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_17
.end method

.method public overScrollBy(IIIIIIIIZ)Z
    .registers 21
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object v10, p0

    invoke-interface/range {v0 .. v10}, Lcom/tencent/smtt/sdk/WebViewCallbackClient;->overScrollBy(IIIIIIIIZLandroid/view/View;)Z

    move-result v0

    :goto_1d
    return v0

    :cond_1e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_29

    invoke-super/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    goto :goto_1d

    :cond_29
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public setOverScrollMode(I)V
    .registers 3

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOverScrollMode(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    goto :goto_3
.end method
