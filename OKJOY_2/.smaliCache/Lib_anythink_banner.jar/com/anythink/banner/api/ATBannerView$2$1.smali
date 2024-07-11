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

    .line 89
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iput-boolean p2, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->val$isRefresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 92
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$100(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/a/a;

    move-result-object v0

    monitor-enter v0

    .line 94
    :try_start_9
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v1, :cond_1a

    .line 95
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-virtual {v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->destory()V

    .line 98
    :cond_1a
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v2, v2, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v2}, Lcom/anythink/banner/api/ATBannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v3, v3, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mPlacementId:Ljava/lang/String;
    invoke-static {v3}, Lcom/anythink/banner/api/ATBannerView;->access$200(Lcom/anythink/banner/api/ATBannerView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/core/common/d/b;

    move-result-object v1

    .line 100
    const/4 v2, 0x0

    .line 101
    if-eqz v1, :cond_43

    invoke-virtual {v1}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v3

    instance-of v3, v3, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v3, :cond_43

    .line 102
    invoke-virtual {v1}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v2

    check-cast v2, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    .line 105
    :cond_43
    iget-object v3, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v3, v3, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/anythink/banner/api/ATBannerView;->hasCallbackShow:Z

    .line 107
    if-eqz v2, :cond_161

    .line 108
    iget-object v3, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v3, v3, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # invokes: Lcom/anythink/banner/api/ATBannerView;->isInView()Z
    invoke-static {v3}, Lcom/anythink/banner/api/ATBannerView;->access$300(Lcom/anythink/banner/api/ATBannerView;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v3, v3, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v3}, Lcom/anythink/banner/api/ATBannerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_141

    .line 109
    iget-object v3, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v3, v3, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/anythink/banner/api/ATBannerView;->hasCallbackShow:Z

    .line 110
    iget-object v3, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v3, v3, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iput-object v2, v3, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    .line 112
    iget-object v3, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v3, v3, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v3}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v3

    if-eqz v3, :cond_86

    iget-boolean v3, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->val$isRefresh:Z

    if-nez v3, :cond_86

    .line 113
    iget-object v3, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v3, v3, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v3}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/anythink/banner/api/ATBannerListener;->onBannerLoaded()V

    .line 117
    :cond_86
    invoke-virtual {v1}, Lcom/anythink/core/common/d/b;->e()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/anythink/core/common/d/b;->a(I)V

    .line 120
    invoke-virtual {v2}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v2

    .line 121
    iget-object v3, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v3, v3, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v3, v2}, Lcom/anythink/banner/api/ATBannerView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 123
    iget-object v5, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v5, v5, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-object v5, v5, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    new-instance v6, Lcom/anythink/banner/a/b;

    iget-object v7, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v7, v7, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mInnerBannerListener:Lcom/anythink/banner/a/d;
    invoke-static {v7}, Lcom/anythink/banner/api/ATBannerView;->access$500(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/a/d;

    move-result-object v7

    iget-object v8, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v8, v8, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-object v8, v8, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    iget-boolean v9, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->val$isRefresh:Z

    invoke-direct {v6, v7, v8, v9}, Lcom/anythink/banner/a/b;-><init>(Lcom/anythink/banner/a/d;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V

    invoke-virtual {v5, v6}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->setAdEventListener(Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;)V

    .line 124
    iget-object v5, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v5, v5, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-object v6, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v6, v6, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v6}, Lcom/anythink/banner/api/ATBannerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-boolean v7, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->val$isRefresh:Z

    # invokes: Lcom/anythink/banner/api/ATBannerView;->notifyBannerShow(Landroid/content/Context;Lcom/anythink/core/common/d/b;Z)V
    invoke-static {v5, v6, v1, v7}, Lcom/anythink/banner/api/ATBannerView;->access$600(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Lcom/anythink/core/common/d/b;Z)V

    .line 126
    if-gez v3, :cond_104

    .line 127
    iget-object v3, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v3, v3, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v3}, Lcom/anythink/banner/api/ATBannerView;->removeAllViews()V

    .line 128
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 129
    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 130
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_f9

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v5, v5, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    if-eq v4, v5, :cond_f9

    .line 131
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 133
    :cond_f9
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v4, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v4, v4, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v4, v2, v3}, Lcom/anythink/banner/api/ATBannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    goto :goto_111

    .line 136
    :cond_104
    sub-int/2addr v3, v4

    :goto_105
    if-ltz v3, :cond_111

    .line 137
    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v2, v2, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v2, v3}, Lcom/anythink/banner/api/ATBannerView;->removeViewAt(I)V

    .line 136
    add-int/lit8 v3, v3, -0x1

    goto :goto_105

    .line 141
    :cond_111
    :goto_111
    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v2, v2, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;
    invoke-static {v2}, Lcom/anythink/banner/api/ATBannerView;->access$100(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/a/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/anythink/banner/a/a;->a(Lcom/anythink/core/common/d/b;)V

    .line 144
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;
    invoke-static {v1}, Lcom/anythink/banner/api/ATBannerView;->access$100(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/a/a;

    move-result-object v1

    if-eqz v1, :cond_140

    .line 145
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/anythink/banner/api/ATBannerView;->access$700(Lcom/anythink/banner/api/ATBannerView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "in window load success to countDown refresh!"

    invoke-static {v1, v2}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v2, v2, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-object v2, v2, Lcom/anythink/banner/api/ATBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    # invokes: Lcom/anythink/banner/api/ATBannerView;->startAutoRefresh(Ljava/lang/Runnable;)V
    invoke-static {v1, v2}, Lcom/anythink/banner/api/ATBannerView;->access$800(Lcom/anythink/banner/api/ATBannerView;Ljava/lang/Runnable;)V

    .line 148
    :cond_140
    goto :goto_172

    .line 149
    :cond_141
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iput-boolean v4, v1, Lcom/anythink/banner/api/ATBannerView;->hasCallbackShow:Z

    .line 150
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v1}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v1

    if-eqz v1, :cond_172

    iget-boolean v1, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->val$isRefresh:Z

    if-nez v1, :cond_172

    .line 151
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v1}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/anythink/banner/api/ATBannerListener;->onBannerLoaded()V

    goto :goto_172

    .line 155
    :cond_161
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-boolean v2, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->val$isRefresh:Z

    const-string v3, "4001"

    const-string v4, ""

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/anythink/banner/api/ATBannerView$2;->onBannerFailed(ZLcom/anythink/core/api/AdError;)V

    .line 157
    :cond_172
    :goto_172
    monitor-exit v0

    return-void

    :catchall_174
    move-exception v1

    monitor-exit v0
    :try_end_176
    .catchall {:try_start_9 .. :try_end_176} :catchall_174

    throw v1
.end method
