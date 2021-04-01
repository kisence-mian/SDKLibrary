.class Lcom/JoyFramework/wight/Loading/o;
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
    .line 764
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/o;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 767
    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/o;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->f(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    .line 768
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/o;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->o(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1d

    .line 769
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 774
    :goto_1c
    return-void

    .line 771
    :cond_1d
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/o;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->invalidate()V

    goto :goto_1c
.end method
