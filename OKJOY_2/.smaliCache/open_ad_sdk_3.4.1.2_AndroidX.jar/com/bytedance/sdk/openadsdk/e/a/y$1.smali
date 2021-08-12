.class Lcom/bytedance/sdk/openadsdk/e/a/y$1;
.super Ljava/lang/Object;
.source "WebViewBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/e/a/y;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/e/a/y;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/e/a/y;Ljava/lang/String;)V
    .registers 3

    .line 95
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/e/a/y$1;->b:Lcom/bytedance/sdk/openadsdk/e/a/y;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/e/a/y$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/y$1;->b:Lcom/bytedance/sdk/openadsdk/e/a/y;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/e/a/y;->f:Z

    if-eqz v0, :cond_7

    .line 99
    return-void

    .line 101
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_32

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invoking Jsb using evaluateJavascript: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/e/a/y$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/e/a/i;->a(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/y$1;->b:Lcom/bytedance/sdk/openadsdk/e/a/y;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/e/a/y;->a(Lcom/bytedance/sdk/openadsdk/e/a/y;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/e/a/y$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_55

    .line 105
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invoking Jsb using loadUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/e/a/y$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/e/a/i;->a(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/y$1;->b:Lcom/bytedance/sdk/openadsdk/e/a/y;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/e/a/y;->a(Lcom/bytedance/sdk/openadsdk/e/a/y;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/e/a/y$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 108
    :goto_55
    return-void
.end method
