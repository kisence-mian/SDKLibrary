.class Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$a;
.super Lcom/kwad/sdk/core/page/widget/webview/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$a;->a:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/webview/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/core/page/widget/webview/c;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$a;->a:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    iget-boolean v1, v0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->f:Z

    if-nez v1, :cond_13

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->f:Z

    invoke-static {v0}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->a(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/f/b;->l(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    :cond_13
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/core/page/widget/webview/c;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    const-string v1, "http"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "https"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_11
    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/core/page/widget/webview/c;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    :cond_15
    :goto_15
    return v0

    :cond_16
    const-string v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "sms:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    :cond_26
    new-instance v1, Landroid/content/Intent;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_3b

    const-string v2, "android.intent.action.VIEW"

    :try_start_2a
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$a;->a:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3a} :catch_3b

    goto :goto_15

    :catch_3b
    move-exception v1

    invoke-static {v1}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/Exception;)V

    goto :goto_15

    :cond_40
    :try_start_40
    iget-object v1, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$a;->a:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/kwad/sdk/core/download/g/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_56

    iget-object v1, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$a;->a:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-static {v1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->a(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/c/f/b;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    goto :goto_15

    :cond_56
    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    iget-object v1, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$a;->a:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-static {v1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->a(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/c/f/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_62} :catch_3b

    goto :goto_15
.end method
