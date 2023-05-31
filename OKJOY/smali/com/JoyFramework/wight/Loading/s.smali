.class Lcom/JoyFramework/wight/Loading/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/wight/Loading/OkGameLoadingView$b;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V
    .registers 2

    .prologue
    .line 791
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/s;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 794
    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/s;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    .line 795
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/s;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->invalidate()V

    .line 796
    return-void
.end method
