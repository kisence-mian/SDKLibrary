.class final Lcom/anythink/banner/api/ATBannerView$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/api/ATBannerView$2;->onBannerLoaded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/banner/api/ATBannerView$2;

.field final synthetic val$isRefresh:Z


# direct methods
.method constructor <init>(Lcom/anythink/banner/api/ATBannerView$2;Z)V
    .registers 3

    .prologue
    .line 55
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iput-boolean p2, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->val$isRefresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;
    invoke-static {v1}, Lcom/anythink/banner/api/ATBannerView;->access$100(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/a/a;

    move-result-object v2

    monitor-enter v2

    .line 60
    :try_start_a
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v1, :cond_1b

    .line 61
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-virtual {v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->clean()V

    .line 64
    :cond_1b
    invoke-static {}, Lcom/anythink/core/b/a;->a()Lcom/anythink/core/b/a;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v3, v3, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v3}, Lcom/anythink/banner/api/ATBannerView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v4, v4, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mUnitId:Ljava/lang/String;
    invoke-static {v4}, Lcom/anythink/banner/api/ATBannerView;->access$200(Lcom/anythink/banner/api/ATBannerView;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/anythink/core/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Lcom/anythink/core/b/c/a;

    move-result-object v3

    .line 67
    if-eqz v3, :cond_19a

    invoke-virtual {v3}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v1

    instance-of v1, v1, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v1, :cond_19a

    .line 68
    invoke-virtual {v3}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v0

    check-cast v0, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    move-object v1, v0

    .line 71
    :goto_45
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/anythink/banner/api/ATBannerView;->hasCallbackShow:Z

    .line 73
    if-eqz v1, :cond_176

    .line 74
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-boolean v0, v0, Lcom/anythink/banner/api/ATBannerView;->hasCallbackShow:Z

    if-nez v0, :cond_155

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # invokes: Lcom/anythink/banner/api/ATBannerView;->isInView()Z
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$300(Lcom/anythink/banner/api/ATBannerView;)Z

    move-result v0

    if-eqz v0, :cond_155

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v0}, Lcom/anythink/banner/api/ATBannerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_155

    .line 75
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/anythink/banner/api/ATBannerView;->hasCallbackShow:Z

    .line 76
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iput-object v1, v0, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    .line 79
    invoke-virtual {v3}, Lcom/anythink/core/b/c/a;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Lcom/anythink/core/b/c/a;->a(I)V

    .line 82
    invoke-virtual {v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v4

    .line 83
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v0, v4}, Lcom/anythink/banner/api/ATBannerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 85
    if-gez v0, :cond_123

    .line 86
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v0}, Lcom/anythink/banner/api/ATBannerView;->removeAllViews()V

    .line 87
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v6, -0x2

    invoke-direct {v5, v0, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 88
    const/16 v0, 0x11

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 90
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_b9

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v6, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v6, v6, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    if-eq v0, v6, :cond_b9

    .line 91
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 94
    :cond_b9
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v0, v4, v5}, Lcom/anythink/banner/api/ATBannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    :cond_c0
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v0}, Lcom/anythink/banner/api/ATBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->notfiyShow(Landroid/content/Context;Lcom/anythink/core/b/c/a;)V

    .line 104
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    if-eqz v0, :cond_f2

    .line 105
    iget-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->val$isRefresh:Z

    if-eqz v0, :cond_131

    .line 106
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/b/a/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/banner/api/ATBannerListener;->onBannerAutoRefreshed(Lcom/anythink/core/api/ATAdInfo;)V

    .line 113
    :cond_f2
    :goto_f2
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$100(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/a/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/anythink/banner/a/a;->a(Lcom/anythink/core/b/c/a;)V

    .line 116
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$100(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/a/a;

    move-result-object v0

    if-eqz v0, :cond_121

    .line 117
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$500(Lcom/anythink/banner/api/ATBannerView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "in window load success to countDown refresh!"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    # invokes: Lcom/anythink/banner/api/ATBannerView;->startAutoRefresh(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/anythink/banner/api/ATBannerView;->access$600(Lcom/anythink/banner/api/ATBannerView;Ljava/lang/Runnable;)V

    .line 131
    :cond_121
    :goto_121
    monitor-exit v2

    return-void

    .line 96
    :cond_123
    add-int/lit8 v0, v0, -0x1

    :goto_125
    if-ltz v0, :cond_c0

    .line 97
    iget-object v4, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v4, v4, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v4, v0}, Lcom/anythink/banner/api/ATBannerView;->removeViewAt(I)V

    .line 96
    add-int/lit8 v0, v0, -0x1

    goto :goto_125

    .line 108
    :cond_131
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/banner/api/ATBannerListener;->onBannerLoaded()V

    .line 109
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/b/a/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/banner/api/ATBannerListener;->onBannerShow(Lcom/anythink/core/api/ATAdInfo;)V

    goto :goto_f2

    .line 131
    :catchall_152
    move-exception v0

    monitor-exit v2
    :try_end_154
    .catchall {:try_start_a .. :try_end_154} :catchall_152

    throw v0

    .line 121
    :cond_155
    :try_start_155
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anythink/banner/api/ATBannerView;->hasCallbackShow:Z

    .line 122
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    if-eqz v0, :cond_121

    iget-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->val$isRefresh:Z

    if-nez v0, :cond_121

    .line 123
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/banner/api/ATBannerListener;->onBannerLoaded()V

    goto :goto_121

    .line 127
    :cond_176
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    if-eqz v0, :cond_121

    iget-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->val$isRefresh:Z

    if-nez v0, :cond_121

    .line 128
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    const-string v1, "4001"

    const-string v3, ""

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/banner/api/ATBannerListener;->onBannerFailed(Lcom/anythink/core/api/AdError;)V
    :try_end_199
    .catchall {:try_start_155 .. :try_end_199} :catchall_152

    goto :goto_121

    :cond_19a
    move-object v1, v0

    goto/16 :goto_45
.end method
