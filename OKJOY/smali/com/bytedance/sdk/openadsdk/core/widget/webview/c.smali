.class public Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;
.super Landroid/webkit/WebViewClient;
.source "TTWebViewClient.java"


# instance fields
.field protected final b:Lcom/bytedance/sdk/openadsdk/core/x;

.field protected final c:Landroid/content/Context;

.field protected final d:Ljava/lang/String;

.field protected e:Lcom/bytedance/sdk/openadsdk/c/j;

.field protected f:Z

.field protected g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/j;)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->f:Z

    .line 46
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->g:Z

    .line 55
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->c:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    .line 57
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->d:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    .line 59
    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 119
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->a()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 120
    const-string v0, "WebChromeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_1e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz v0, :cond_27

    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 126
    :cond_27
    if-eqz p1, :cond_44

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->f:Z

    if-eqz v0, :cond_44

    .line 128
    :try_start_2d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->j()Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 131
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/s;->a(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_44} :catch_48

    .line 137
    :cond_44
    :goto_44
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 138
    return-void

    .line 133
    :catch_48
    move-exception v0

    goto :goto_44
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz v0, :cond_c

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 148
    :cond_c
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->g:Z

    if-eqz v0, :cond_24

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_25

    const/4 v0, 0x1

    .line 150
    :goto_17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a(Z)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a(Landroid/webkit/WebView;)V

    .line 152
    :cond_24
    return-void

    .line 149
    :cond_25
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz v0, :cond_c

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_c
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 166
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz v0, :cond_1b

    if-eqz p3, :cond_1b

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_1b
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 176
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz v0, :cond_1b

    if-eqz p3, :cond_1b

    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_1b
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 8

    .prologue
    .line 185
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz v0, :cond_2d

    .line 187
    const/4 v1, 0x0

    .line 188
    const-string v0, "SslError: unknown"

    .line 190
    if-eqz p3, :cond_27

    .line 191
    :try_start_c
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v1

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SslError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_26} :catch_2e

    move-result-object v0

    .line 196
    :cond_27
    :goto_27
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v0, v3}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_2d
    return-void

    .line 194
    :catch_2e
    move-exception v2

    goto :goto_27
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 4
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz v0, :cond_9

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)V

    .line 67
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 4

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 82
    const-string v1, "WebChromeClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldOverrideUrlLoading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :try_start_19
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 87
    const-string v3, "bytedance"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 88
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/x;)V

    .line 114
    :cond_32
    :goto_32
    return v0

    .line 90
    :cond_33
    const-string v3, "market"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 91
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v2, :cond_6c

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/x;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v2

    if-eqz v2, :cond_6c

    .line 92
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/x;->e()Ljava/lang/String;

    move-result-object v2

    .line 93
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/x;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v3

    .line 94
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/downloadad/a/a/c$a;->a()Lcom/ss/android/downloadad/a/a/c;

    move-result-object v2

    .line 95
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d()Lcom/ss/android/downloadlib/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/downloadlib/h;->e()Lcom/ss/android/downloadad/a/b;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->c:Landroid/content/Context;

    invoke-interface {v3, v4, v1, v2}, Lcom/ss/android/downloadad/a/b;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/a/a/b/c;)Z

    move-result v2

    .line 96
    if-nez v2, :cond_32

    .line 101
    :cond_6c
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/w;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9c

    .line 102
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 104
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->c:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_87} :catch_88

    goto :goto_32

    .line 108
    :catch_88
    move-exception v1

    .line 109
    const-string v2, "WebChromeClient"

    const-string v3, "shouldOverrideUrlLoading"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v1, :cond_9c

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/x;->b()Z

    move-result v1

    if-nez v1, :cond_32

    .line 114
    :cond_9c
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_32
.end method
