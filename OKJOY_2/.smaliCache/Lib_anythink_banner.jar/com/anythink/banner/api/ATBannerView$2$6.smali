.class final Lcom/anythink/banner/api/ATBannerView$2$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/api/ATBannerView$2;->onDeeplinkCallback(ZLcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/banner/api/ATBannerView$2;

.field final synthetic val$customBannerAdapter:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

.field final synthetic val$isRefresh:Z

.field final synthetic val$isSuccess:Z


# direct methods
.method constructor <init>(Lcom/anythink/banner/api/ATBannerView$2;ZLcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V
    .registers 5

    .line 230
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$2$6;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iput-boolean p2, p0, Lcom/anythink/banner/api/ATBannerView$2$6;->val$isRefresh:Z

    iput-object p3, p0, Lcom/anythink/banner/api/ATBannerView$2$6;->val$customBannerAdapter:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    iput-boolean p4, p0, Lcom/anythink/banner/api/ATBannerView$2$6;->val$isSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 233
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$6;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$6;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    instance-of v0, v0, Lcom/anythink/banner/api/ATBannerExListener;

    if-eqz v0, :cond_2d

    .line 234
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$6;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    check-cast v0, Lcom/anythink/banner/api/ATBannerExListener;

    iget-boolean v1, p0, Lcom/anythink/banner/api/ATBannerView$2$6;->val$isRefresh:Z

    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView$2$6;->val$customBannerAdapter:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-static {v2}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v2

    iget-boolean v3, p0, Lcom/anythink/banner/api/ATBannerView$2$6;->val$isSuccess:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/anythink/banner/api/ATBannerExListener;->onDeeplinkCallback(ZLcom/anythink/core/api/ATAdInfo;Z)V

    .line 236
    :cond_2d
    return-void
.end method
