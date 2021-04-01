.class Lcom/JoyFramework/wight/Loading/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$b;

.field final synthetic b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Lcom/JoyFramework/wight/Loading/OkGameLoadingView$b;)V
    .registers 3

    .prologue
    .line 650
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/i;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    iput-object p2, p0, Lcom/JoyFramework/wight/Loading/i;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .prologue
    .line 653
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/i;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$b;

    if-eqz v0, :cond_9

    .line 654
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/i;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$b;

    invoke-interface {v0, p1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView$b;->a(Landroid/animation/ValueAnimator;)V

    .line 657
    :cond_9
    return-void
.end method
