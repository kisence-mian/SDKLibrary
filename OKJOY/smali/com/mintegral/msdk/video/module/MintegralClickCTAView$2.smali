.class final Lcom/mintegral/msdk/video/module/MintegralClickCTAView$2;
.super Lcom/mintegral/msdk/video/module/a/a/e;
.source "MintegralClickCTAView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->preLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/video/module/MintegralClickCTAView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/video/module/MintegralClickCTAView;Landroid/widget/ImageView;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView$2;->a:Lcom/mintegral/msdk/video/module/MintegralClickCTAView;

    invoke-direct {p0, p2, p3, p4}, Lcom/mintegral/msdk/video/module/a/a/e;-><init>(Landroid/widget/ImageView;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/module/a/a/e;->onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralClickCTAView$2;->a:Lcom/mintegral/msdk/video/module/MintegralClickCTAView;

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/MintegralClickCTAView;->a(Lcom/mintegral/msdk/video/module/MintegralClickCTAView;)V

    .line 103
    return-void
.end method
