.class Lcom/kwad/sdk/b/c/d$b;
.super Lcom/kwad/sdk/b/e/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/b/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/b/c/d;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/b/c/d;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/c/d$b;->a:Lcom/kwad/sdk/b/c/d;

    invoke-direct {p0}, Lcom/kwad/sdk/b/e/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/b/e/b;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/d$b;->a:Lcom/kwad/sdk/b/c/d;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/d;->b(Lcom/kwad/sdk/b/c/d;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/d$b;->a:Lcom/kwad/sdk/b/c/d;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/d;->b(Lcom/kwad/sdk/b/c/d;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method
