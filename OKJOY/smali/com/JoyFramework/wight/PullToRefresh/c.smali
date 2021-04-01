.class Lcom/JoyFramework/wight/PullToRefresh/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;)V
    .registers 2

    .prologue
    .line 352
    iput-object p1, p0, Lcom/JoyFramework/wight/PullToRefresh/c;->a:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 354
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/c;->a:Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;->a(Lcom/JoyFramework/wight/PullToRefresh/SwipeMenuLayout;Z)Z

    .line 355
    return-void
.end method
