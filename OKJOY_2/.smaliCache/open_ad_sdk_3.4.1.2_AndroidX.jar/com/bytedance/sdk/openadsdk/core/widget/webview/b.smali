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

    .line 21
    const-class v0, Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/c/j;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    .line 31
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;->c:Lcom/bytedance/sdk/openadsdk/c/j;

    .line 32
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 5

    .line 55
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string v1, "bytedance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/r;->a(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/x;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_34

    .line 60
    const/4 p1, 0x1

    return p1

    .line 63
    :cond_33
    goto :goto_35

    .line 62
    :catch_34
    move-exception p1

    .line 64
    :goto_35
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 37
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;->a(Ljava/lang/String;)Z

    .line 39
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 3

    .line 44
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 45
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;->a(Ljava/lang/String;)Z

    move-result v0

    .line 46
    if-eqz v0, :cond_18

    .line 47
    const/4 p1, 0x1

    return p1

    .line 50
    :cond_18
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 4

    .line 69
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;->c:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz v0, :cond_a

    .line 72
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Landroid/webkit/WebView;I)V

    .line 74
    :cond_a
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 3

    .line 78
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 79
    return-void
.end method
