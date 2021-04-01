.class Lcom/ksad/lottie/f$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksad/lottie/f;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksad/lottie/f;


# direct methods
.method constructor <init>(Lcom/ksad/lottie/f;)V
    .registers 2

    iput-object p1, p0, Lcom/ksad/lottie/f$c;->a:Lcom/ksad/lottie/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/ksad/lottie/f$c;->a:Lcom/ksad/lottie/f;

    invoke-static {v0}, Lcom/ksad/lottie/f;->a(Lcom/ksad/lottie/f;)Lcom/ksad/lottie/model/layer/b;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/ksad/lottie/f$c;->a:Lcom/ksad/lottie/f;

    invoke-static {v0}, Lcom/ksad/lottie/f;->a(Lcom/ksad/lottie/f;)Lcom/ksad/lottie/model/layer/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/f$c;->a:Lcom/ksad/lottie/f;

    invoke-static {v1}, Lcom/ksad/lottie/f;->b(Lcom/ksad/lottie/f;)Lcom/ksad/lottie/r/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksad/lottie/r/c;->f()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ksad/lottie/model/layer/b;->a(F)V

    :cond_1b
    return-void
.end method
