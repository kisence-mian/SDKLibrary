.class final Lcom/anythink/banner/api/ATBannerView$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/api/ATBannerView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/banner/api/ATBannerView$4;


# direct methods
.method constructor <init>(Lcom/anythink/banner/api/ATBannerView$4;)V
    .registers 2

    .line 521
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$4$1;->this$1:Lcom/anythink/banner/api/ATBannerView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 524
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$4$1;->this$1:Lcom/anythink/banner/api/ATBannerView$4;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 525
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$4$1;->this$1:Lcom/anythink/banner/api/ATBannerView$4;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$4;->val$baseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$4$1;->this$1:Lcom/anythink/banner/api/ATBannerView$4;

    iget-boolean v0, v0, Lcom/anythink/banner/api/ATBannerView$4;->val$isRefresh:Z

    if-eqz v0, :cond_2a

    .line 526
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$4$1;->this$1:Lcom/anythink/banner/api/ATBannerView$4;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$4$1;->this$1:Lcom/anythink/banner/api/ATBannerView$4;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView$4;->val$baseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/banner/api/ATBannerListener;->onBannerAutoRefreshed(Lcom/anythink/core/api/ATAdInfo;)V

    return-void

    .line 528
    :cond_2a
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$4$1;->this$1:Lcom/anythink/banner/api/ATBannerView$4;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$4$1;->this$1:Lcom/anythink/banner/api/ATBannerView$4;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView$4;->val$baseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/banner/api/ATBannerListener;->onBannerShow(Lcom/anythink/core/api/ATAdInfo;)V

    .line 531
    :cond_3d
    return-void
.end method
