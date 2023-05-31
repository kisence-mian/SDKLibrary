.class Lcom/sigmob/sdk/base/views/BaseWebView$1;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/BaseWebView;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/BaseWebView;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/views/BaseWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/BaseWebView$1;->a:Lcom/sigmob/sdk/base/views/BaseWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    invoke-static {p3}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    const/4 v0, 0x1

    return v0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    invoke-static {p3}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    const/4 v0, 0x1

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    invoke-static {p3}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    const/4 v0, 0x1

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 7

    invoke-static {p3}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->confirm()V

    const/4 v0, 0x1

    return v0
.end method
