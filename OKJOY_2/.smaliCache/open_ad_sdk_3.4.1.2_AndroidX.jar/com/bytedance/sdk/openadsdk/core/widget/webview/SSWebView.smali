.class public Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;
.super Landroid/webkit/WebView;
.source "SSWebView.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 38
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->a:Z

    .line 39
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->b(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 43
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->a:Z

    .line 44
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->b(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 48
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->a:Z

    .line 51
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->b(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/content/Context;
    .registers 3

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_16

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_16

    .line 56
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 58
    :cond_16
    return-object p0
.end method

.method private a(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 3

    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 341
    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_25

    instance-of v0, p1, Landroid/widget/AbsListView;

    if-nez v0, :cond_25

    instance-of v0, p1, Landroid/widget/ScrollView;

    if-nez v0, :cond_25

    instance-of v0, p1, Landroid/widget/HorizontalScrollView;

    if-nez v0, :cond_25

    instance-of v0, p1, Landroidx/core/view/ScrollingView;

    if-eqz v0, :cond_19

    goto :goto_25

    .line 347
    :cond_19
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_24

    .line 348
    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->a(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object p1

    return-object p1

    .line 350
    :cond_24
    return-object p1

    .line 346
    :cond_25
    :goto_25
    return-object p1
.end method

.method private a()V
    .registers 2

    .line 394
    :try_start_0
    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 395
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 396
    const-string v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 399
    goto :goto_11

    .line 397
    :catchall_10
    move-exception v0

    .line 400
    :goto_11
    return-void
.end method

.method private b()V
    .registers 3

    .line 403
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_a

    .line 405
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 407
    :cond_a
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 2

    .line 62
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->c(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->b()V

    .line 65
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->a()V

    .line 66
    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .registers 7

    .line 373
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_3c

    .line 374
    if-eqz p0, :cond_3c

    .line 376
    :try_start_8
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 377
    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_3a

    .line 382
    :cond_19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setState"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 383
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 384
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_3b

    .line 386
    goto :goto_3c

    .line 379
    :cond_3a
    :goto_3a
    return-void

    .line 385
    :catchall_3b
    move-exception p0

    .line 389
    :cond_3c
    :goto_3c
    return-void
.end method

.method private setJavaScriptEnabled(Ljava/lang/String;)V
    .registers 4

    .line 414
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 415
    return-void

    .line 417
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 418
    if-nez v0, :cond_e

    .line 419
    return-void

    .line 421
    :cond_e
    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 422
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    goto :goto_1f

    .line 424
    :cond_1b
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    .line 427
    :goto_1f
    goto :goto_21

    .line 426
    :catchall_20
    move-exception p1

    .line 429
    :goto_21
    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .registers 2

    .line 146
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 147
    :catch_5
    move-exception v0

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .registers 2

    .line 180
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    .line 181
    :catch_5
    move-exception p1

    .line 182
    const/4 p1, 0x0

    return p1
.end method

.method public canGoForward()Z
    .registers 2

    .line 163
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 164
    :catch_5
    move-exception v0

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public clearCache(Z)V
    .registers 2

    .line 241
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->clearCache(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 243
    goto :goto_5

    .line 242
    :catch_4
    move-exception p1

    .line 244
    :goto_5
    return-void
.end method

.method public clearFormData()V
    .registers 2

    .line 249
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->clearFormData()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 251
    goto :goto_5

    .line 250
    :catch_4
    move-exception v0

    .line 252
    :goto_5
    return-void
.end method

.method public clearHistory()V
    .registers 2

    .line 257
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->clearHistory()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 259
    goto :goto_5

    .line 258
    :catch_4
    move-exception v0

    .line 260
    :goto_5
    return-void
.end method

.method public computeScroll()V
    .registers 2

    .line 297
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->computeScroll()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 299
    goto :goto_5

    .line 298
    :catch_4
    move-exception v0

    .line 300
    :goto_5
    return-void
.end method

.method public getContentHeight()I
    .registers 2

    .line 232
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 233
    :catch_5
    move-exception v0

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .registers 4

    .line 207
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_1d

    const-string v1, "data:text/html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 209
    invoke-super {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_1d

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1e

    if-eqz v2, :cond_1d

    .line 211
    move-object v0, v1

    .line 214
    :cond_1d
    return-object v0

    .line 215
    :catch_1e
    move-exception v0

    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgress()I
    .registers 2

    .line 223
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 224
    :catch_5
    move-exception v0

    .line 225
    const/16 v0, 0x64

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 197
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 198
    :catch_5
    move-exception v0

    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public goBack()V
    .registers 2

    .line 155
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->goBack()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 157
    goto :goto_5

    .line 156
    :catch_4
    move-exception v0

    .line 158
    :goto_5
    return-void
.end method

.method public goBackOrForward(I)V
    .registers 2

    .line 189
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->goBackOrForward(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 191
    goto :goto_5

    .line 190
    :catch_4
    move-exception p1

    .line 192
    :goto_5
    return-void
.end method

.method public goForward()V
    .registers 2

    .line 172
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->goForward()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 174
    goto :goto_5

    .line 173
    :catch_4
    move-exception v0

    .line 175
    :goto_5
    return-void
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 111
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 113
    goto :goto_5

    .line 112
    :catch_4
    move-exception p1

    .line 114
    :goto_5
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 121
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setJavaScriptEnabled(Ljava/lang/String;)V

    .line 122
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 124
    goto :goto_8

    .line 123
    :catch_7
    move-exception p1

    .line 125
    :goto_8
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 2

    .line 92
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setJavaScriptEnabled(Ljava/lang/String;)V

    .line 93
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 95
    goto :goto_8

    .line 94
    :catch_7
    move-exception p1

    .line 96
    :goto_8
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 82
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setJavaScriptEnabled(Ljava/lang/String;)V

    .line 83
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 85
    goto :goto_8

    .line 84
    :catch_7
    move-exception p1

    .line 86
    :goto_8
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 306
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->a:Z

    if-eqz v1, :cond_18

    .line 308
    invoke-direct {p0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->a(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v1

    .line 309
    if-eqz v1, :cond_18

    .line 310
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    .line 313
    :cond_18
    return v0

    .line 314
    :catchall_19
    move-exception v0

    .line 315
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .registers 3

    .line 102
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setJavaScriptEnabled(Ljava/lang/String;)V

    .line 103
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 105
    goto :goto_8

    .line 104
    :catch_7
    move-exception p1

    .line 106
    :goto_8
    return-void
.end method

.method public reload()V
    .registers 2

    .line 138
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->reload()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 140
    goto :goto_5

    .line 139
    :catch_4
    move-exception v0

    .line 141
    :goto_5
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 2

    .line 289
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 291
    goto :goto_5

    .line 290
    :catch_4
    move-exception p1

    .line 292
    :goto_5
    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .registers 2

    .line 273
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 275
    goto :goto_5

    .line 274
    :catch_4
    move-exception p1

    .line 276
    :goto_5
    return-void
.end method

.method public setIsPreventTouchEvent(Z)V
    .registers 2

    .line 320
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->a:Z

    .line 321
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .registers 3

    .line 357
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 359
    goto :goto_5

    .line 358
    :catchall_4
    move-exception p1

    .line 360
    :goto_5
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .registers 2

    .line 71
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 73
    goto :goto_5

    .line 72
    :catch_4
    move-exception p1

    .line 74
    :goto_5
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 2

    .line 366
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOverScrollMode(I)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 368
    goto :goto_5

    .line 367
    :catchall_4
    move-exception p1

    .line 369
    :goto_5
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .registers 2

    .line 281
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 283
    goto :goto_5

    .line 282
    :catch_4
    move-exception p1

    .line 284
    :goto_5
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 2

    .line 265
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 267
    goto :goto_5

    .line 266
    :catch_4
    move-exception p1

    .line 268
    :goto_5
    return-void
.end method

.method public stopLoading()V
    .registers 2

    .line 130
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 132
    goto :goto_5

    .line 131
    :catch_4
    move-exception v0

    .line 133
    :goto_5
    return-void
.end method
