.class Lcom/JoyFramework/wight/PullToRefresh/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;)V
    .registers 2

    .prologue
    .line 379
    iput-object p1, p0, Lcom/JoyFramework/wight/PullToRefresh/d;->a:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .prologue
    .line 381
    iget-object v1, p0, Lcom/JoyFramework/wight/PullToRefresh/d;->a:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->scrollTo(II)V

    .line 382
    return-void
.end method
