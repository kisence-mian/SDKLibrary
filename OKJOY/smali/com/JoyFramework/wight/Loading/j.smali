.class Lcom/JoyFramework/wight/Loading/j;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;

.field final synthetic b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;)V
    .registers 3

    .prologue
    .line 660
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/j;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    iput-object p2, p0, Lcom/JoyFramework/wight/Loading/j;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .prologue
    .line 663
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 664
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/j;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;

    if-eqz v0, :cond_c

    .line 665
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/j;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;

    invoke-interface {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;->a()V

    .line 667
    :cond_c
    return-void
.end method
