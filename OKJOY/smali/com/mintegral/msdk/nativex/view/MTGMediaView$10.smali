.class final Lcom/mintegral/msdk/nativex/view/MTGMediaView$10;
.super Ljava/lang/Object;
.source "MTGMediaView.java"

# interfaces
.implements Lcom/mintegral/msdk/mtgjscommon/mraid/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/nativex/view/MTGMediaView;->setNativeAd(Lcom/mintegral/msdk/out/Campaign;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 2

    .prologue
    .line 593
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$10;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)V
    .registers 6

    .prologue
    .line 596
    const-string v0, "MTGMediaView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "volume is : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :try_start_14
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$10;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->c(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isActiveOm()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$10;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->d(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 599
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$10;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->d(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    move-result-object v0

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->volumeChange(F)V

    .line 600
    const-string v0, "omsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NV videoEvents.volumeChange "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_46} :catch_47

    .line 605
    :cond_46
    :goto_46
    return-void

    .line 602
    :catch_47
    move-exception v0

    .line 603
    const-string v1, "MTGMediaView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46
.end method
