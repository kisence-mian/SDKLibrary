.class Lcom/tencent/smtt/sdk/bl;
.super Lcom/tencent/smtt/export/external/extension/proxy/X5ProxyWebViewClientExtension;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/WebView;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/smtt/sdk/bl;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-direct {p0, p2}, Lcom/tencent/smtt/export/external/extension/proxy/X5ProxyWebViewClientExtension;-><init>(Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .registers 1

    return-void
.end method

.method public onScrollChanged(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/smtt/export/external/extension/proxy/X5ProxyWebViewClientExtension;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bl;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-static {v0, p3, p4, p1, p2}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/sdk/WebView;IIII)V

    return-void
.end method
