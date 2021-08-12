.class Lcom/kwad/sdk/splashscreen/a/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/splashscreen/a/b;->a_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/splashscreen/a/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/splashscreen/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/splashscreen/a/b$2;->a:Lcom/kwad/sdk/splashscreen/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/b$2;->a:Lcom/kwad/sdk/splashscreen/a/b;

    invoke-static {v0}, Lcom/kwad/sdk/splashscreen/a/b;->b(Lcom/kwad/sdk/splashscreen/a/b;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/b$2;->a:Lcom/kwad/sdk/splashscreen/a/b;

    invoke-static {v0}, Lcom/kwad/sdk/splashscreen/a/b;->b(Lcom/kwad/sdk/splashscreen/a/b;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/b$2;->a:Lcom/kwad/sdk/splashscreen/a/b;

    invoke-static {v0}, Lcom/kwad/sdk/splashscreen/a/b;->b(Lcom/kwad/sdk/splashscreen/a/b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/b$2;->a:Lcom/kwad/sdk/splashscreen/a/b;

    invoke-static {v0, v1}, Lcom/kwad/sdk/splashscreen/a/b;->a(Lcom/kwad/sdk/splashscreen/a/b;I)I

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/b$2;->a:Lcom/kwad/sdk/splashscreen/a/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/splashscreen/a/b;->a(Lcom/kwad/sdk/splashscreen/a/b;Z)Z

    return-void
.end method
