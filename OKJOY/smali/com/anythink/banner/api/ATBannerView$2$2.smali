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

    .prologue
    .line 138
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iput-boolean p2, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->val$isRefresh:Z

    iput-object p3, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->val$adError:Lcom/anythink/core/api/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 142
    iget-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->val$isRefresh:Z

    if-eqz v0, :cond_74

    .line 143
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->val$adError:Lcom/anythink/core/api/AdError;

    invoke-interface {v0, v1}, Lcom/anythink/banner/api/ATBannerListener;->onBannerAutoRefreshFail(Lcom/anythink/core/api/AdError;)V

    .line 148
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$100(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/a/a;

    move-result-object v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-boolean v0, v0, Lcom/anythink/banner/api/ATBannerView;->hasCallbackShow:Z

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # invokes: Lcom/anythink/banner/api/ATBannerView;->isInView()Z
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$300(Lcom/anythink/banner/api/ATBannerView;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v0}, Lcom/anythink/banner/api/ATBannerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_73

    .line 149
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$500(Lcom/anythink/banner/api/ATBannerView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "in window load fail to countDown refresh!"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$100(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/a/a;

    move-result-object v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$100(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/banner/a/a;->e()Z

    move-result v0

    if-nez v0, :cond_73

    .line 151
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView;->mRefreshRunnable:Ljava/lang/Runnable;

    # invokes: Lcom/anythink/banner/api/ATBannerView;->startAutoRefresh(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/anythink/banner/api/ATBannerView;->access$600(Lcom/anythink/banner/api/ATBannerView;Ljava/lang/Runnable;)V

    .line 155
    :cond_73
    return-void

    .line 145
    :cond_74
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->val$adError:Lcom/anythink/core/api/AdError;

    invoke-interface {v0, v1}, Lcom/anythink/banner/api/ATBannerListener;->onBannerFailed(Lcom/anythink/core/api/AdError;)V

    goto :goto_1b
.end method
