.class Lcom/ssjj/fnsdk/core/bw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private final synthetic a:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Landroid/widget/FrameLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/bw;->a:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/bw;->a:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/ssjj/fnsdk/core/bx;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bw;->a:Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1}, Lcom/ssjj/fnsdk/core/bx;-><init>(Lcom/ssjj/fnsdk/core/bw;Landroid/widget/FrameLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
