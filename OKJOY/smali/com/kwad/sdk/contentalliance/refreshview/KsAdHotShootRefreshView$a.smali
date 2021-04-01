.class Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView$a;->a:Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView$a;->a:Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotShootRefreshView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setTop(I)V

    return-void
.end method
