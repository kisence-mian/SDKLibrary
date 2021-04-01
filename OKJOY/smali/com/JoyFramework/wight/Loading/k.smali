.class Lcom/JoyFramework/wight/Loading/k;
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
    .line 686
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/k;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 689
    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/k;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->e(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    .line 690
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/k;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/k;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->k(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->d(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    .line 691
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/k;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->l(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 692
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/k;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->d(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    .line 699
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/k;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->invalidate()V

    .line 700
    return-void

    .line 694
    :cond_2f
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/k;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->m(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I

    move-result v0

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_29

    .line 695
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/k;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->d(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Z)Z

    goto :goto_29
.end method
