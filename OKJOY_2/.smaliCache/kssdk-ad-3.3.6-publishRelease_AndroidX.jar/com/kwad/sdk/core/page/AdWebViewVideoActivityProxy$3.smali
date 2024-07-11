.class Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$3;
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

    iput-object p1, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$3;->a:Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$3;->a:Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;

    invoke-virtual {p1}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->finish()V

    return-void
.end method
