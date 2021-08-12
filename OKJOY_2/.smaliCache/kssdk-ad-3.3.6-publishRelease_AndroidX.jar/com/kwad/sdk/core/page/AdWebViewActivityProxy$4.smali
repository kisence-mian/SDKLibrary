.class Lcom/kwad/sdk/core/page/AdWebViewActivityProxy$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy$4;->a:Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy$4;->a:Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;

    invoke-virtual {p1}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->finish()V

    return-void
.end method
