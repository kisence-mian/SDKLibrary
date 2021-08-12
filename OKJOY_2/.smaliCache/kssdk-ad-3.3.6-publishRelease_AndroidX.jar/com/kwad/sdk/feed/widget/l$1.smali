.class Lcom/kwad/sdk/feed/widget/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/feed/widget/l;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/feed/widget/l$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/feed/widget/l;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/feed/widget/l;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/l$1;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$1;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->a(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->stopLoading()V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$1;->a:Lcom/kwad/sdk/feed/widget/l;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/l;->a(Lcom/kwad/sdk/feed/widget/l;)Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/l$1;->a:Lcom/kwad/sdk/feed/widget/l;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/kwad/sdk/feed/widget/l;->a(Lcom/kwad/sdk/feed/widget/l;Ljava/lang/String;)V

    return-void
.end method
