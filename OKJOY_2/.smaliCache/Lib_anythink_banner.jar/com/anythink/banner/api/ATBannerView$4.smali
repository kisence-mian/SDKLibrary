.class final Lcom/anythink/banner/api/ATBannerView$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/api/ATBannerView;->notifyBannerImpression(Landroid/content/Context;Lcom/anythink/core/api/ATBaseAdAdapter;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/banner/api/ATBannerView;

.field final synthetic val$adTrackingInfo:Lcom/anythink/core/common/d/d;

.field final synthetic val$baseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isRefresh:Z


# direct methods
.method constructor <init>(Lcom/anythink/banner/api/ATBannerView;Lcom/anythink/core/common/d/d;Landroid/content/Context;Lcom/anythink/core/api/ATBaseAdAdapter;Z)V
    .registers 6

    .line 513
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iput-object p2, p0, Lcom/anythink/banner/api/ATBannerView$4;->val$adTrackingInfo:Lcom/anythink/core/common/d/d;

    iput-object p3, p0, Lcom/anythink/banner/api/ATBannerView$4;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/anythink/banner/api/ATBannerView$4;->val$baseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    iput-boolean p5, p0, Lcom/anythink/banner/api/ATBannerView$4;->val$isRefresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 518
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$4;->val$adTrackingInfo:Lcom/anythink/core/common/d/d;

    sget-object v1, Lcom/anythink/core/common/b/e$e;->c:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$4;->val$adTrackingInfo:Lcom/anythink/core/common/d/d;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 521
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/banner/api/ATBannerView$4$1;

    invoke-direct {v1, p0}, Lcom/anythink/banner/api/ATBannerView$4$1;-><init>(Lcom/anythink/banner/api/ATBannerView$4;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 534
    return-void
.end method
