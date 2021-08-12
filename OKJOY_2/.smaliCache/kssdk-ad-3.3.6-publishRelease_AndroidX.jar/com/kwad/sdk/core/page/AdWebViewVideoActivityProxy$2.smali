.class Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$2;->a:Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$2;->a:Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;

    # getter for: Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mApkDownloadHelper:Lcom/kwad/sdk/core/download/b/b;
    invoke-static {p1}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->access$200(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;)Lcom/kwad/sdk/core/download/b/b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/download/b/b;->a(Lcom/kwad/sdk/core/download/b/b;Z)V

    iget-object p1, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$2;->a:Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;

    # getter for: Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mApkDownloadHelper:Lcom/kwad/sdk/core/download/b/b;
    invoke-static {p1}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->access$200(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;)Lcom/kwad/sdk/core/download/b/b;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$2;->a:Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/download/b/b;->a(Landroid/content/Context;)V

    return-void
.end method
