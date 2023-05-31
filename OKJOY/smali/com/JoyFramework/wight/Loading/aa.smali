.class Lcom/JoyFramework/wight/Loading/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V
    .registers 2

    .prologue
    .line 458
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/aa;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    .prologue
    const/high16 v2, 0x40f00000    # 7.5f

    const/high16 v3, 0x40d00000    # 6.5f

    .line 461
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/aa;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 462
    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/aa;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;F)F

    .line 463
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/aa;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/aa;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->d(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)F

    move-result v1

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->b(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;F)F

    .line 464
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/aa;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/aa;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->d(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)F

    move-result v1

    div-float/2addr v1, v3

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;F)F

    .line 465
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/aa;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->d(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)F

    move-result v0

    const/high16 v1, 0x43af0000    # 350.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_45

    .line 466
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/aa;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->b(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Z)Z

    .line 474
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/aa;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->invalidate()V

    .line 475
    return-void

    .line 469
    :cond_4b
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/aa;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;F)F

    .line 470
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 471
    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/aa;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    div-float v2, v0, v2

    invoke-static {v1, v2}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->b(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;F)F

    .line 472
    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/aa;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    div-float/2addr v0, v3

    invoke-static {v1, v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;F)F

    goto :goto_45
.end method
