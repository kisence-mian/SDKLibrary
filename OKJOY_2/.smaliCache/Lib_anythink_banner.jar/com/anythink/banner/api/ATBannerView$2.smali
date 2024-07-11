.class final Lcom/anythink/banner/api/ATBannerView$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/banner/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/banner/api/ATBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/banner/api/ATBannerView;


# direct methods
.method constructor <init>(Lcom/anythink/banner/api/ATBannerView;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBannerClicked(ZLcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V
    .registers 4

    .line 190
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    new-instance v0, Lcom/anythink/banner/api/ATBannerView$2$3;

    invoke-direct {v0, p0, p2}, Lcom/anythink/banner/api/ATBannerView$2$3;-><init>(Lcom/anythink/banner/api/ATBannerView$2;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method

.method public final onBannerClose(ZLcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V
    .registers 4

    .line 216
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    new-instance v0, Lcom/anythink/banner/api/ATBannerView$2$5;

    invoke-direct {v0, p0, p2}, Lcom/anythink/banner/api/ATBannerView$2$5;-><init>(Lcom/anythink/banner/api/ATBannerView$2;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 225
    iget-object p1, p0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    const/4 p2, 0x1

    # invokes: Lcom/anythink/banner/api/ATBannerView;->loadAd(Z)V
    invoke-static {p1, p2}, Lcom/anythink/banner/api/ATBannerView;->access$000(Lcom/anythink/banner/api/ATBannerView;Z)V

    .line 226
    return-void
.end method

.method public final onBannerFailed(ZLcom/anythink/core/api/AdError;)V
    .registers 5

    .line 164
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$100(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/a/a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 165
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mAdLoadManager:Lcom/anythink/banner/a/a;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$100(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/banner/a/a;->a()V

    .line 167
    :cond_11
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/banner/api/ATBannerView$2$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/banner/api/ATBannerView$2$2;-><init>(Lcom/anythink/banner/api/ATBannerView$2;ZLcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public final onBannerLoaded(Z)V
    .registers 4

    .line 89
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/banner/api/ATBannerView$2$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/banner/api/ATBannerView$2$1;-><init>(Lcom/anythink/banner/api/ATBannerView$2;Z)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method public final onBannerShow(ZLcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V
    .registers 5

    .line 202
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/banner/api/ATBannerView$2$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/anythink/banner/api/ATBannerView$2$4;-><init>(Lcom/anythink/banner/api/ATBannerView$2;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method

.method public final onDeeplinkCallback(ZLcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V
    .registers 6

    .line 230
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/banner/api/ATBannerView$2$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anythink/banner/api/ATBannerView$2$6;-><init>(Lcom/anythink/banner/api/ATBannerView$2;ZLcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 238
    return-void
.end method
