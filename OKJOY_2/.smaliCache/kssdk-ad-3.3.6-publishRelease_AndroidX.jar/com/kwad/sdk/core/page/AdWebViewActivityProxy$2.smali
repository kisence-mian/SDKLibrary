.class Lcom/kwad/sdk/core/page/AdWebViewActivityProxy$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->registerWebCardHandler(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;Lcom/kwad/sdk/core/webview/a/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/webview/jshandler/m;

.field final synthetic b:Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;Lcom/kwad/sdk/core/webview/jshandler/m;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy$2;->b:Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;

    iput-object p2, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy$2;->a:Lcom/kwad/sdk/core/webview/jshandler/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy$2;->a:Lcom/kwad/sdk/core/webview/jshandler/m;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/jshandler/m;->c()V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy$2;->a:Lcom/kwad/sdk/core/webview/jshandler/m;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/jshandler/m;->d()V

    return-void
.end method
