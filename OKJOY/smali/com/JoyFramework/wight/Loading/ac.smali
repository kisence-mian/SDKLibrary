.class Lcom/JoyFramework/wight/Loading/ac;
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
    .line 495
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/ac;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 498
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/ac;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->e(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 499
    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/ac;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->d(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;F)F

    .line 500
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/ac;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/ac;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->f(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->e(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;F)F

    .line 501
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/ac;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->f(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)F

    move-result v0

    const/high16 v1, 0x42100000    # 36.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_35

    .line 502
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/ac;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Z)Z

    .line 504
    :cond_35
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/ac;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->invalidate()V

    .line 508
    :goto_3a
    return-void

    .line 506
    :cond_3b
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_3a
.end method
