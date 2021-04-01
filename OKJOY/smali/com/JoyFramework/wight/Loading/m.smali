.class Lcom/JoyFramework/wight/Loading/m;
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
    .line 725
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/m;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 728
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/m;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->n(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 729
    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/m;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;F)F

    .line 731
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/m;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->d(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2f

    .line 732
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/m;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->e(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Z)Z

    .line 733
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/m;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0, v2}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;F)F

    .line 735
    :cond_2f
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/m;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->invalidate()V

    .line 740
    :goto_34
    return-void

    .line 737
    :cond_35
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/m;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0, v2}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;F)F

    .line 738
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_34
.end method
