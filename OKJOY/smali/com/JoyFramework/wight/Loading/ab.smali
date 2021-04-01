.class Lcom/JoyFramework/wight/Loading/ab;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V
    .registers 2

    .prologue
    .line 478
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/ab;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 481
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/ab;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->b(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Z)Z

    .line 482
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/ab;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Z)Z

    .line 483
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/ab;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    sget-object v1, Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;->j:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;)V

    .line 484
    return-void
.end method
