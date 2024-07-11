.class public Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;
.super Landroid/webkit/WebViewClient;
.source "TTWebViewClient.java"


# static fields
.field private static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final b:Lcom/bytedance/sdk/openadsdk/core/x;

.field protected final c:Landroid/content/Context;

.field protected final d:Ljava/lang/String;

.field protected e:Lcom/bytedance/sdk/openadsdk/c/j;

.field protected f:Z

.field protected g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 297
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->a:Ljava/util/HashSet;

    .line 299
    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 300
    const-string v1, "ico"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 301
    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 302
    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 303
    const-string v1, "svg"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 304
    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 305
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;)V
    .registers 5

    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->f:Z

    .line 62
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->g:Z

    .line 67
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->c:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    .line 69
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->d:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/j;)V
    .registers 6

    .line 72
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->f:Z

    .line 62
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->g:Z

    .line 73
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->c:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    .line 75
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->d:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    .line 77
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 313
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 314
    return-object v0

    .line 316
    :cond_4
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 317
    if-ltz v1, :cond_3c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_15

    goto :goto_3c

    .line 320
    :cond_15
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 321
    if-nez p0, :cond_1c

    .line 322
    return-object v0

    .line 324
    :cond_1c
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->a:Ljava/util/HashSet;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "image/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 330
    :cond_3b
    return-object v0

    .line 318
    :cond_3c
    :goto_3c
    return-object v0
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 95
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 182
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->a()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebChromeClient"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_1e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz v0, :cond_25

    .line 186
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 189
    :cond_25
    if-eqz p1, :cond_44

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->f:Z

    if-eqz v0, :cond_44

    .line 191
    :try_start_2b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->i()Ljava/lang/String;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 194
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_2b .. :try_end_42} :catchall_43

    .line 198
    :cond_42
    goto :goto_44

    .line 196
    :catchall_43
    move-exception v0

    .line 200
    :cond_44
    :goto_44
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .line 205
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz v0, :cond_a

    .line 208
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 211
    :cond_a
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->g:Z

    if-eqz p2, :cond_24

    .line 212
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x13

    if-lt p2, p3, :cond_16

    const/4 p2, 0x1

    goto :goto_17

    :cond_16
    const/4 p2, 0x0

    .line 213
    :goto_17
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->c:Landroid/content/Context;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a(Z)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a(Landroid/webkit/WebView;)V

    .line 215
    :cond_24
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 219
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz p1, :cond_e

    .line 222
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/bytedance/sdk/openadsdk/c/j;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_e
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 7

    .line 229
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 231
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz p1, :cond_4d

    if-eqz p3, :cond_4d

    .line 232
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    .line 233
    const-string v0, ""

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_17

    :cond_16
    move-object p1, v0

    .line 234
    :goto_17
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p2

    .line 236
    const-string v1, "Accept"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 237
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    goto :goto_3c

    .line 238
    :cond_2b
    const-string v1, "accept"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 239
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    goto :goto_3c

    .line 241
    :cond_3b
    nop

    .line 243
    :goto_3c
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v1, p3, p1, v0}, Lcom/bytedance/sdk/openadsdk/c/j;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_4d
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 7

    .line 250
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 252
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz p1, :cond_4d

    if-eqz p3, :cond_4d

    .line 253
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    .line 254
    const-string v0, ""

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_17

    :cond_16
    move-object p1, v0

    .line 255
    :goto_17
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p2

    .line 257
    const-string v1, "Accept"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 258
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    goto :goto_3c

    .line 259
    :cond_2b
    const-string v1, "accept"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 260
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    goto :goto_3c

    .line 262
    :cond_3b
    nop

    .line 264
    :goto_3c
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v1, p3, p1, v0}, Lcom/bytedance/sdk/openadsdk/c/j;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_4d
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 7

    .line 270
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->v()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 272
    if-eqz p2, :cond_27

    .line 273
    :try_start_c
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    goto :goto_27

    .line 275
    :catchall_10
    move-exception p1

    .line 276
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onReceivedSslError error"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;)V

    .line 277
    :cond_27
    :goto_27
    goto :goto_62

    .line 279
    :cond_28
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 280
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz p1, :cond_62

    .line 281
    const/4 p1, 0x0

    .line 282
    const-string p2, "SslError: unknown"

    .line 283
    const/4 v0, 0x0

    .line 285
    if-eqz p3, :cond_58

    .line 286
    :try_start_35
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p1

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SslError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 288
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p3
    :try_end_54
    .catchall {:try_start_35 .. :try_end_54} :catchall_56

    move-object v0, p3

    goto :goto_58

    .line 290
    :catchall_56
    move-exception p3

    goto :goto_59

    .line 291
    :cond_58
    :goto_58
    nop

    .line 292
    :goto_59
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/j;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_62
    :goto_62
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->e:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz v0, :cond_7

    .line 83
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)V

    .line 85
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 3

    .line 90
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 14

    .line 100
    const-string v0, "TTWebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebChromeClient"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v1, 0x1

    :try_start_1b
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 103
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 104
    const-string v3, "bytedance"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-static {v9, v0}, Lcom/bytedance/sdk/openadsdk/utils/r;->a(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/x;)V

    .line 106
    return v1

    .line 107
    :cond_35
    invoke-static {v9}, Lcom/ss/android/downloadlib/b/j;->a(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 108
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v3, :cond_85

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/x;->c()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v3

    if-eqz v3, :cond_85

    .line 109
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/x;->l()Ljava/lang/String;

    move-result-object v3

    .line 110
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/x;->c()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v4

    .line 111
    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/a/c$a;->a()Lcom/ss/android/downloadad/a/a/c;

    move-result-object v6

    .line 112
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/a/a$a;->a()Lcom/ss/android/downloadad/a/a/a;

    move-result-object v8

    .line 113
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/x;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/a/b$a;->a()Lcom/ss/android/downloadad/a/a/b;

    move-result-object v7

    .line 114
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->d()Lcom/ss/android/downloadlib/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/downloadlib/g;->e()Lcom/ss/android/downloadad/a/b;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->c:Landroid/content/Context;

    move-object v5, v9

    invoke-interface/range {v3 .. v8}, Lcom/ss/android/downloadad/a/b;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)Z

    move-result v3

    .line 115
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/k;->a(Z)V

    .line 116
    if-eqz v3, :cond_85

    .line 117
    return v1

    .line 121
    :cond_85
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/x;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16c

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v3, :cond_16c

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/x;->c()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v3

    if-eqz v3, :cond_16c

    .line 122
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/x;->l()Ljava/lang/String;

    move-result-object v3

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TTWebView shouldOverrideUrlLoading tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/x;->c()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v4

    .line 125
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 127
    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->c:Landroid/content/Context;

    const-string v7, "lp_open_dpl"

    invoke-static {v6, v4, v3, v7, v10}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Landroid/content/Context;)Z

    move-result v6
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_d3} :catch_16d

    const-string v7, "lp_deeplink_fail_realtime"

    const-string v8, "lp_openurl_failed"

    if-eqz v6, :cond_145

    .line 131
    :try_start_d9
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->c:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_118

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TTWebView shouldOverrideUrlLoading \u8be5app\u5df2\u7ecf\u5b89\u88c5 tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " URL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->c:Landroid/content/Context;

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c$1;

    invoke-direct {v7, p0, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    invoke-static {v6, v5, v7}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)Z

    .line 149
    const-string v5, "TTWebView shouldOverrideUrlLoading OpenAppSuccEvent.obtain().send true "

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/k;->a()Lcom/bytedance/sdk/openadsdk/c/k;

    move-result-object v0

    invoke-virtual {v0, v4, v3, v1}, Lcom/bytedance/sdk/openadsdk/c/k;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Z)V

    goto :goto_16b

    .line 152
    :cond_118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TTWebView shouldOverrideUrlLoading \u8be5app\u6ca1\u6709\u5b89\u88c5 tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->c:Landroid/content/Context;

    invoke-static {v0, v4, v3, v8}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v3, v7}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_144} :catch_16d

    goto :goto_16b

    .line 159
    :cond_145
    :try_start_145
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->c:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 160
    const-string v5, "TTWebView shouldOverrideUrlLoading startActivitySuccess "

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->c:Landroid/content/Context;

    const-string v5, "lp_openurl"

    invoke-static {v0, v4, v3, v5}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/k;->a()Lcom/bytedance/sdk/openadsdk/c/k;

    move-result-object v0

    invoke-virtual {v0, v4, v3, v1}, Lcom/bytedance/sdk/openadsdk/c/k;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Z)V
    :try_end_15d
    .catchall {:try_start_145 .. :try_end_15d} :catchall_15e

    .line 166
    goto :goto_16b

    .line 163
    :catchall_15e
    move-exception v0

    .line 164
    :try_start_15f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->c:Landroid/content/Context;

    invoke-static {v0, v4, v3, v8}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v3, v7}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_16b} :catch_16d

    .line 169
    :goto_16b
    return v1

    .line 176
    :cond_16c
    goto :goto_17e

    .line 171
    :catch_16d
    move-exception v0

    .line 172
    const-string v3, "shouldOverrideUrlLoading"

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v0, :cond_17e

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->d()Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 174
    return v1

    .line 177
    :cond_17e
    :goto_17e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
