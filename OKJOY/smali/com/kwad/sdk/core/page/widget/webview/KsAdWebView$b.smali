.class Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$b;
.super Lcom/kwad/sdk/core/page/widget/webview/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/webview/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/core/page/widget/webview/a;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method
