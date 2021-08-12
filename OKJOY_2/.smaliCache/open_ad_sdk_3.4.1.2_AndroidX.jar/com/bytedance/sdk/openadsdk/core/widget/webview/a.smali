.class public Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;
.super Ljava/lang/Object;
.source "SSWebSettings.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
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

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

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

    .line 36
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 162
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "{{ad_id}}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_3b

    .line 165
    :cond_1d
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:(function () {    var JS_ACTLOG_URL = \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\';    var head = document.getElementsByTagName(\'head\')[0];    var script = document.createElement(\'script\');    script.type = \'text/javascript\';    script.src = JS_ACTLOG_URL;    head.appendChild(script);})();"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 176
    return-object p0

    .line 163
    :cond_3b
    :goto_3b
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/webkit/WebSettings;)V
    .registers 4

    .line 151
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 156
    :cond_a
    goto :goto_13

    .line 154
    :catchall_b
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;)V

    .line 157
    :goto_13
    return-void
.end method

.method private b(Landroid/webkit/WebView;)V
    .registers 3

    .line 140
    :try_start_0
    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 141
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 142
    const-string v0, "accessibilityTraversal"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 145
    goto :goto_18

    .line 143
    :catchall_10
    move-exception p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;)V

    .line 146
    :goto_18
    return-void
.end method


# virtual methods
.method public a(Z)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;
    .registers 2

    .line 72
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->h:Z

    .line 73
    return-object p0
.end method

.method public a(Landroid/webkit/WebView;)V
    .registers 6

    .line 86
    if-eqz p1, :cond_7c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    goto/16 :goto_7c

    .line 89
    :cond_c
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->b(Landroid/webkit/WebView;)V

    .line 90
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 91
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a(Landroid/webkit/WebSettings;)V

    .line 92
    if-nez v0, :cond_19

    .line 93
    return-void

    .line 98
    :cond_19
    const/4 v1, 0x1

    :try_start_1a
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 101
    goto :goto_22

    .line 99
    :catch_1e
    move-exception v2

    .line 100
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    :goto_22
    const/4 v2, 0x0

    :try_start_23
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->c:Z

    if-eqz v3, :cond_2e

    .line 104
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 105
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    goto :goto_31

    .line 107
    :cond_2e
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_32

    .line 112
    :goto_31
    goto :goto_36

    .line 109
    :catchall_32
    move-exception v3

    .line 111
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    :goto_36
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 115
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->d:Z

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 116
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->e:Z

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 117
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->f:Z

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 118
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->g:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 119
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_59

    .line 123
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->h:Z

    .line 127
    :cond_59
    :try_start_59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    const/4 v3, 0x0

    if-lt v0, v1, :cond_68

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->h:Z

    if-nez v0, :cond_68

    .line 128
    invoke-virtual {p1, v2, v3}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_76

    .line 129
    :cond_68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_76

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->h:Z

    if-eqz v0, :cond_76

    .line 130
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_76
    .catchall {:try_start_59 .. :try_end_76} :catchall_77

    .line 134
    :cond_76
    :goto_76
    goto :goto_7b

    .line 132
    :catchall_77
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    :goto_7b
    return-void

    .line 87
    :cond_7c
    :goto_7c
    return-void
.end method

.method public b(Z)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;
    .registers 2

    .line 77
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->c:Z

    .line 78
    return-object p0
.end method
