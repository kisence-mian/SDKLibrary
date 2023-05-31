.class public Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;
.super Landroid/webkit/WebView;
.source "SSWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->a(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->a(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method private a()V
    .registers 2

    .prologue
    .line 334
    :try_start_0
    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 335
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 336
    const-string v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 340
    :goto_f
    return-void

    .line 337
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method private a(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 44
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->b(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->b()V

    .line 47
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->a()V

    .line 48
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_a

    .line 345
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 347
    :cond_a
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 313
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_18

    .line 314
    if-eqz p0, :cond_18

    .line 316
    :try_start_8
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 317
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_19

    .line 329
    :cond_18
    :goto_18
    return-void

    .line 322
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 323
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 324
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_3d} :catch_3e

    goto :goto_18

    .line 325
    :catch_3e
    move-exception v0

    goto :goto_18
.end method

.method private setJavaScriptEnabled(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 354
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 369
    :cond_6
    :goto_6
    return-void

    .line 357
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_6

    .line 361
    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 362
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    goto :goto_6

    .line 366
    :catch_1a
    move-exception v0

    goto :goto_6

    .line 364
    :cond_1c
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_20} :catch_1a

    goto :goto_6
.end method


# virtual methods
.method public canGoBack()Z
    .registers 2

    .prologue
    .line 128
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->canGoBack()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 130
    :goto_4
    return v0

    .line 129
    :catch_5
    move-exception v0

    .line 130
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public canGoBackOrForward(I)Z
    .registers 3

    .prologue
    .line 162
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 164
    :goto_4
    return v0

    .line 163
    :catch_5
    move-exception v0

    .line 164
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public canGoForward()Z
    .registers 2

    .prologue
    .line 145
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->canGoForward()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 147
    :goto_4
    return v0

    .line 146
    :catch_5
    move-exception v0

    .line 147
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public clearCache(Z)V
    .registers 3

    .prologue
    .line 223
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->clearCache(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 226
    :goto_3
    return-void

    .line 224
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public clearFormData()V
    .registers 2

    .prologue
    .line 231
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->clearFormData()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 234
    :goto_3
    return-void

    .line 232
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public clearHistory()V
    .registers 2

    .prologue
    .line 239
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->clearHistory()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 242
    :goto_3
    return-void

    .line 240
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public computeScroll()V
    .registers 2

    .prologue
    .line 279
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->computeScroll()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 282
    :goto_3
    return-void

    .line 280
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public getContentHeight()I
    .registers 2

    .prologue
    .line 214
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->getContentHeight()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 216
    :goto_4
    return v0

    .line 215
    :catch_5
    move-exception v0

    .line 216
    const/4 v0, 0x1

    goto :goto_4
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 189
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_20

    const-string v0, "data:text/html"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 191
    invoke-super {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_20

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1d

    move-result v2

    if-eqz v2, :cond_20

    .line 199
    :goto_1c
    return-object v0

    .line 197
    :catch_1d
    move-exception v0

    .line 199
    const/4 v0, 0x0

    goto :goto_1c

    :cond_20
    move-object v0, v1

    goto :goto_1c
.end method

.method public getProgress()I
    .registers 2

    .prologue
    .line 205
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->getProgress()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 207
    :goto_4
    return v0

    .line 206
    :catch_5
    move-exception v0

    .line 207
    const/16 v0, 0x64

    goto :goto_4
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 182
    :goto_4
    return-object v0

    .line 180
    :catch_5
    move-exception v0

    .line 182
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public goBack()V
    .registers 2

    .prologue
    .line 137
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->goBack()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 140
    :goto_3
    return-void

    .line 138
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public goBackOrForward(I)V
    .registers 3

    .prologue
    .line 171
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->goBackOrForward(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 174
    :goto_3
    return-void

    .line 172
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public goForward()V
    .registers 2

    .prologue
    .line 154
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->goForward()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 157
    :goto_3
    return-void

    .line 155
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 93
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 96
    :goto_3
    return-void

    .line 94
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 103
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setJavaScriptEnabled(Ljava/lang/String;)V

    .line 104
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 107
    :goto_6
    return-void

    .line 105
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 74
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setJavaScriptEnabled(Ljava/lang/String;)V

    .line 75
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 78
    :goto_6
    return-void

    .line 76
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setJavaScriptEnabled(Ljava/lang/String;)V

    .line 65
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 68
    :goto_6
    return-void

    .line 66
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 288
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 290
    :goto_4
    return v0

    .line 289
    :catch_5
    move-exception v0

    .line 290
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .registers 4

    .prologue
    .line 84
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setJavaScriptEnabled(Ljava/lang/String;)V

    .line 85
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 88
    :goto_6
    return-void

    .line 86
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method public reload()V
    .registers 2

    .prologue
    .line 120
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->reload()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 123
    :goto_3
    return-void

    .line 121
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public setBackgroundColor(I)V
    .registers 3

    .prologue
    .line 271
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 274
    :goto_3
    return-void

    .line 272
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .registers 3

    .prologue
    .line 255
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 258
    :goto_3
    return-void

    .line 256
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .registers 4

    .prologue
    .line 297
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 300
    :goto_3
    return-void

    .line 298
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public setNetworkAvailable(Z)V
    .registers 3

    .prologue
    .line 53
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 56
    :goto_3
    return-void

    .line 54
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public setOverScrollMode(I)V
    .registers 3

    .prologue
    .line 306
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOverScrollMode(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 309
    :goto_3
    return-void

    .line 307
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .registers 3

    .prologue
    .line 263
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 266
    :goto_3
    return-void

    .line 264
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 3

    .prologue
    .line 247
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 250
    :goto_3
    return-void

    .line 248
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public stopLoading()V
    .registers 2

    .prologue
    .line 112
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 115
    :goto_3
    return-void

    .line 113
    :catch_4
    move-exception v0

    goto :goto_3
.end method
