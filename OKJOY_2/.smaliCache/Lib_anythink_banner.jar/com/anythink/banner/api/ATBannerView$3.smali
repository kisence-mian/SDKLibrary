.class final Lcom/anythink/banner/api/ATBannerView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/api/ATBannerView;->notifyBannerShow(Landroid/content/Context;Lcom/anythink/core/common/d/b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/banner/api/ATBannerView;

.field final synthetic val$adCacheInfo:Lcom/anythink/core/common/d/b;

.field final synthetic val$adTrackingInfo:Lcom/anythink/core/common/d/d;

.field final synthetic val$baseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isRefresh:Z

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/anythink/banner/api/ATBannerView;Lcom/anythink/core/common/d/d;Landroid/content/Context;JLcom/anythink/core/common/d/b;Lcom/anythink/core/api/ATBaseAdAdapter;Z)V
    .registers 9

    .line 490
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$3;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iput-object p2, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$adTrackingInfo:Lcom/anythink/core/common/d/d;

    iput-object p3, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$context:Landroid/content/Context;

    iput-wide p4, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$timestamp:J

    iput-object p6, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$adCacheInfo:Lcom/anythink/core/common/d/b;

    iput-object p7, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$baseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    iput-boolean p8, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$isRefresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 493
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$adTrackingInfo:Lcom/anythink/core/common/d/d;

    if-eqz v0, :cond_40

    .line 496
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$3;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v0}, Lcom/anythink/banner/api/ATBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$adTrackingInfo:Lcom/anythink/core/common/d/d;

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/n;->a(Landroid/content/Context;Lcom/anythink/core/common/d/d;)V

    .line 499
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v0

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$adTrackingInfo:Lcom/anythink/core/common/d/d;

    iget-wide v3, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$timestamp:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;J)V

    .line 501
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$adCacheInfo:Lcom/anythink/core/common/d/b;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Lcom/anythink/core/common/d/b;)V

    .line 503
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$baseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->supportImpressionCallback()Z

    move-result v0

    if-nez v0, :cond_40

    .line 504
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$3;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$baseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    iget-boolean v3, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$isRefresh:Z

    # invokes: Lcom/anythink/banner/api/ATBannerView;->notifyBannerImpression(Landroid/content/Context;Lcom/anythink/core/api/ATBaseAdAdapter;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/anythink/banner/api/ATBannerView;->access$900(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Lcom/anythink/core/api/ATBaseAdAdapter;Z)V

    .line 507
    :cond_40
    return-void
.end method
