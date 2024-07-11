.class Lcom/kwad/sdk/reward/b/b/b/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/b/b/b/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/b/b/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/b/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/a$3;->a:Lcom/kwad/sdk/reward/b/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a$3;->a:Lcom/kwad/sdk/reward/b/b/b/a;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/b/b/a;->c(Lcom/kwad/sdk/reward/b/b/b/a;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a$3;->a:Lcom/kwad/sdk/reward/b/b/b/a;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/b/b/a;->d(Lcom/kwad/sdk/reward/b/b/b/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
