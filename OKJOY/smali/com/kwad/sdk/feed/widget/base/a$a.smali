.class Lcom/kwad/sdk/feed/widget/base/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/page/widget/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/feed/widget/base/a;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/feed/widget/base/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/feed/widget/base/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/base/a$a;->a:Lcom/kwad/sdk/feed/widget/base/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a$a;->a:Lcom/kwad/sdk/feed/widget/base/a;

    iget-object v1, v0, Lcom/kwad/sdk/feed/widget/base/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-boolean v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    if-nez v1, :cond_12

    invoke-virtual {v0}, Lcom/kwad/sdk/feed/widget/base/a;->d()V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a$a;->a:Lcom/kwad/sdk/feed/widget/base/a;

    iget-object v0, v0, Lcom/kwad/sdk/feed/widget/base/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    :cond_12
    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    return-void
.end method
