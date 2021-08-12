.class final Lcom/anythink/banner/api/ATBannerView$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/api/ATBannerView$2;->onBannerFailed(ZLcom/anythink/core/api/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/banner/api/ATBannerView$2;

.field final synthetic val$adError:Lcom/anythink/core/api/AdError;

.field final synthetic val$isRefresh:Z


# direct methods
.method constructor <init>(Lcom/anythink/banner/api/ATBannerView$2;ZLcom/anythink/core/api/AdError;)V
    .registers 4

    .line 167
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iput-boolean p2, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->val$isRefresh:Z

    iput-object p3, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->val$adError:Lcom/anythink/core/api/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 171
    iget-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->val$isRefresh:Z

    if-eqz v0, :cond_1c

    .line 172
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->val$adError:Lcom/anythink/core/api/AdError;

    invoke-interface {v0, v1}, Lcom/anythink/banner/api/ATBannerListener;->onBannerAutoRefreshFail(Lcom/anythink/core/api/AdError;)V

    goto :goto_29

    .line 174
    :cond_1c
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->val$adError:Lcom/anythink/core/api/AdError;

    invoke-interface {v0, v1}, Lcom/anythink/banner/api/ATBannerListener;->onBannerFailed(Lcom/anythink/core/api/AdError;)V

    .line 177
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$100(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/a/a;

    move-result-object v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # invokes: Lcom/anythink/banner/api/ATBannerView;->isInView()Z
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$300(Lcom/anythink/banner/api/ATBannerView;)Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v0}, Lcom/anythink/banner/api/ATBannerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_79

    .line 178
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$700(Lcom/anythink/banner/api/ATBannerView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "in window load fail to countDown refresh!"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$100(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/a/a;

    move-result-object v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$100(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/banner/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_79

    .line 180
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    # invokes: Lcom/anythink/banner/api/ATBannerView;->startAutoRefresh(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/anythink/banner/api/ATBannerView;->access$800(Lcom/anythink/banner/api/ATBannerView;Ljava/lang/Runnable;)V

    .line 184
    :cond_79
    return-void
.end method
