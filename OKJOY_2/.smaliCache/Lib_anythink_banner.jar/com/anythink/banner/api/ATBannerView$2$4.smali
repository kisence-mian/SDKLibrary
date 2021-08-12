.class final Lcom/anythink/banner/api/ATBannerView$2$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/api/ATBannerView$2;->onBannerShow(ZLcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/banner/api/ATBannerView$2;

.field final synthetic val$customBannerAdapter:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

.field final synthetic val$isRefresh:Z


# direct methods
.method constructor <init>(Lcom/anythink/banner/api/ATBannerView$2;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V
    .registers 4

    .line 202
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$2$4;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iput-object p2, p0, Lcom/anythink/banner/api/ATBannerView$2$4;->val$customBannerAdapter:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    iput-boolean p3, p0, Lcom/anythink/banner/api/ATBannerView$2$4;->val$isRefresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$4;->val$customBannerAdapter:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView$2$4;->val$isRefresh:Z

    if-eqz v0, :cond_1a

    .line 206
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$4;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$4;->val$customBannerAdapter:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/banner/api/ATBannerListener;->onBannerAutoRefreshed(Lcom/anythink/core/api/ATAdInfo;)V

    return-void

    .line 208
    :cond_1a
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$4;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$4;->val$customBannerAdapter:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/banner/api/ATBannerListener;->onBannerShow(Lcom/anythink/core/api/ATAdInfo;)V

    .line 210
    return-void
.end method
