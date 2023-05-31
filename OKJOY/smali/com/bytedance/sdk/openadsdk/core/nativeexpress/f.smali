.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;
.super Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;
.source "ExpressClient.java"


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/d/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 6

    .prologue
    .line 32
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/j;)V

    .line 33
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 34
    return-void
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 109
    :goto_7
    return-object v3

    .line 80
    :cond_8
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    move-result-object v4

    .line 84
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->d:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    if-eq v4, v0, :cond_72

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/j;

    .line 86
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 87
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v1

    .line 91
    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 92
    const-string v2, "https"

    const-string v6, "http"

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    :cond_4a
    const-string v2, "https"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 95
    const-string v2, "https"

    const-string v6, "http"

    invoke-virtual {p2, v2, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    :goto_5a
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 106
    :goto_60
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->d:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    if-eq v4, v1, :cond_66

    if-eqz v0, :cond_6b

    .line 107
    :cond_66
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    goto :goto_7

    .line 109
    :cond_6b
    invoke-static {p2, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    goto :goto_7

    :cond_70
    move-object v2, p2

    goto :goto_5a

    :cond_72
    move-object v0, v3

    goto :goto_60
.end method

.method private a(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 131
    :goto_7
    return-object v1

    .line 122
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a()Lcom/bytedance/sdk/openadsdk/g/a/a;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a()Lcom/bytedance/sdk/openadsdk/g/a/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 124
    if-eqz v2, :cond_49

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_49

    .line 125
    new-instance v0, Landroid/webkit/WebResourceResponse;

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->d:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3, v4, v5}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_3f} :catch_41

    :goto_3f
    move-object v1, v0

    .line 131
    goto :goto_7

    .line 127
    :catch_41
    move-exception v0

    .line 128
    const-string v2, "ExpressClient"

    const-string v3, "get image WebResourceResponse error"

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_49
    move-object v0, v1

    goto :goto_3f
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->f:Z

    .line 63
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->g:Z

    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 70
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 40
    :try_start_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    .line 44
    :goto_c
    return-object v0

    .line 41
    :catch_d
    move-exception v0

    .line 42
    const-string v1, "ExpressClient"

    const-string v2, "shouldInterceptRequest error1"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_c
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 6

    .prologue
    .line 50
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_7

    move-result-object v0

    .line 51
    if-eqz v0, :cond_f

    .line 57
    :goto_6
    return-object v0

    .line 54
    :catch_7
    move-exception v0

    .line 55
    const-string v1, "ExpressClient"

    const-string v2, "shouldInterceptRequest error2"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    :cond_f
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_6
.end method
