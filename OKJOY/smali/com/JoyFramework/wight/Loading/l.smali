.class Lcom/JoyFramework/wight/Loading/l;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V
    .registers 2

    .prologue
    .line 703
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/l;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 707
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 708
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/l;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0, v2}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->d(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Z)Z

    .line 709
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/l;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0, v2}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Z)Z

    .line 710
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/l;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;F)F

    .line 711
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/l;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0, v2}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->d(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    .line 712
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/l;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    sget-object v1, Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;->i:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;)V

    .line 713
    return-void
.end method
