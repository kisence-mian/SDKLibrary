.class public Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;
.super Landroid/webkit/WebChromeClient;
.source "TTWebChromeClient.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/bytedance/sdk/openadsdk/core/x;

.field private c:Lcom/bytedance/sdk/openadsdk/c/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/c/j;)V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    .line 30
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;->c:Lcom/bytedance/sdk/openadsdk/c/j;

    .line 31
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 56
    const-string v2, "bytedance"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 57
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/x;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1b

    .line 58
    const/4 v0, 0x1

    .line 62
    :goto_1a
    return v0

    .line 60
    :catch_1b
    move-exception v0

    .line 62
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 36
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;->a(Ljava/lang/String;)Z

    .line 38
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 39
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 3

    .prologue
    .line 43
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 44
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;->a(Ljava/lang/String;)Z

    move-result v0

    .line 45
    if-eqz v0, :cond_18

    .line 46
    const/4 v0, 0x1

    .line 49
    :goto_17
    return v0

    :cond_18
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    goto :goto_17
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 4

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;->c:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz v0, :cond_c

    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;->c:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Landroid/webkit/WebView;I)V

    .line 72
    :cond_c
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 3

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 77
    return-void
.end method
