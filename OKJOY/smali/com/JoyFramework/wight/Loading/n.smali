.class Lcom/JoyFramework/wight/Loading/n;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V
    .registers 2

    .prologue
    .line 743
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/n;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 747
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/n;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->e(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Z)Z

    .line 748
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/n;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Z)Z

    .line 750
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/n;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    sget-object v1, Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;->c:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;)V

    .line 752
    return-void
.end method
