.class public Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;
.super Ljava/lang/Object;
.source "SSWebSettings.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->b:Z

    .line 45
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->c:Z

    .line 48
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->d:Z

    .line 51
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->e:Z

    .line 54
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->f:Z

    .line 57
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->g:Z

    .line 60
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->h:Z

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a:Ljava/lang/ref/WeakReference;

    .line 64
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;
    .registers 2

    .prologue
    .line 36
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 156
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "{{ad_id}}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 157
    :cond_1c
    const/4 v0, 0x0

    .line 170
    :goto_1d
    return-object v0

    .line 159
    :cond_1e
    const-string v0, "{{ad_id}}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:(function () {    var JS_ACTLOG_URL = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\';    var head = document.getElementsByTagName(\'head\')[0];    var script = document.createElement(\'script\');    script.type = \'text/javascript\';    script.src = JS_ACTLOG_URL;    head.appendChild(script);})();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method

.method private a(Landroid/webkit/WebSettings;)V
    .registers 4

    .prologue
    .line 145
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    .line 151
    :cond_a
    :goto_a
    return-void

    .line 148
    :catch_b
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;)V

    goto :goto_a
.end method

.method private b(Landroid/webkit/WebView;)V
    .registers 3

    .prologue
    .line 134
    :try_start_0
    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 135
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 136
    const-string v0, "accessibilityTraversal"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 140
    :goto_f
    return-void

    .line 137
    :catch_10
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;)V

    goto :goto_f
.end method


# virtual methods
.method public a(Z)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;
    .registers 2

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->h:Z

    .line 73
    return-object p0
.end method

.method public a(Landroid/webkit/WebView;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 86
    if-eqz p1, :cond_c

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_d

    .line 129
    :cond_c
    :goto_c
    return-void

    .line 89
    :cond_d
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->b(Landroid/webkit/WebView;)V

    .line 90
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 91
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a(Landroid/webkit/WebSettings;)V

    .line 92
    if-eqz v3, :cond_c

    .line 98
    const/4 v2, 0x1

    :try_start_1a
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_57

    .line 103
    :goto_1d
    :try_start_1d
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->c:Z

    if-eqz v2, :cond_5c

    .line 104
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 105
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_29} :catch_61

    .line 114
    :goto_29
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 115
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->d:Z

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 116
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->e:Z

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 117
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->f:Z

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 118
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->g:Z

    if-nez v2, :cond_66

    :goto_3f
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 121
    :try_start_42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_68

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->h:Z

    if-nez v0, :cond_68

    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_51} :catch_52

    goto :goto_c

    .line 126
    :catch_52
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    .line 99
    :catch_57
    move-exception v2

    .line 100
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d

    .line 107
    :cond_5c
    const/4 v2, 0x0

    :try_start_5d
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_29

    .line 109
    :catch_61
    move-exception v2

    .line 111
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_29

    :cond_66
    move v0, v1

    .line 118
    goto :goto_3f

    .line 123
    :cond_68
    :try_start_68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->h:Z

    if-eqz v0, :cond_c

    .line 124
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_77} :catch_52

    goto :goto_c
.end method

.method public b(Z)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;
    .registers 2

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->c:Z

    .line 78
    return-object p0
.end method
