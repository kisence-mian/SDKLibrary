.class final Lcom/mintegral/msdk/mtgbanner/common/c/c$9;
.super Ljava/lang/Object;
.source "BannerShowManager.java"

# interfaces
.implements Lcom/mintegral/msdk/out/NativeListener$TrackingExListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgbanner/common/c/c;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V
    .registers 2

    .prologue
    .line 841
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$9;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissLoading(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 2

    .prologue
    .line 855
    return-void
.end method

.method public final onDownloadFinish(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 2

    .prologue
    .line 880
    return-void
.end method

.method public final onDownloadProgress(I)V
    .registers 2

    .prologue
    .line 885
    return-void
.end method

.method public final onDownloadStart(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 2

    .prologue
    .line 875
    return-void
.end method

.method public final onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 865
    return-void
.end method

.method public final onInterceptDefaultLoadingDialog()Z
    .registers 2

    .prologue
    .line 844
    const/4 v0, 0x0

    return v0
.end method

.method public final onLeaveApp()V
    .registers 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$9;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/mintegral/msdk/mtgbanner/common/b/c;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 890
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$9;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/mintegral/msdk/mtgbanner/common/b/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgbanner/common/b/c;->b()V

    .line 892
    :cond_11
    return-void
.end method

.method public final onRedirectionFailed(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 870
    return-void
.end method

.method public final onShowLoading(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 2

    .prologue
    .line 850
    return-void
.end method

.method public final onStartRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 860
    return-void
.end method
