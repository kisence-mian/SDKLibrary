.class Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView$c;->a:Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView$c;->a:Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->c(Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;F)F

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView$c;->a:Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
