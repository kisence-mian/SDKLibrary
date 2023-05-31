.class Lcom/kwad/sdk/reward/KSRewardVideoActivity$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/KSRewardVideoActivity;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/KSRewardVideoActivity;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/KSRewardVideoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivity$k;->a:Lcom/kwad/sdk/reward/KSRewardVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivity$k;->a:Lcom/kwad/sdk/reward/KSRewardVideoActivity;

    invoke-static {v1}, Lcom/kwad/sdk/reward/KSRewardVideoActivity;->f(Lcom/kwad/sdk/reward/KSRewardVideoActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivity$k;->a:Lcom/kwad/sdk/reward/KSRewardVideoActivity;

    invoke-static {v1}, Lcom/kwad/sdk/reward/KSRewardVideoActivity;->g(Lcom/kwad/sdk/reward/KSRewardVideoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
