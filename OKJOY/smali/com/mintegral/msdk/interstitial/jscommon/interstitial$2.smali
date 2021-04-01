.class final Lcom/mintegral/msdk/interstitial/jscommon/interstitial$2;
.super Ljava/lang/Object;
.source "interstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/interstitial/jscommon/interstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mintegral/msdk/interstitial/jscommon/interstitial;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/interstitial/jscommon/interstitial;Ljava/util/List;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 514
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial$2;->c:Lcom/mintegral/msdk/interstitial/jscommon/interstitial;

    iput-object p2, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial$2;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 519
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_53

    .line 520
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial$2;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 521
    if-eqz v0, :cond_4f

    .line 522
    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial$2;->c:Lcom/mintegral/msdk/interstitial/jscommon/interstitial;

    invoke-static {v2}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a(Lcom/mintegral/msdk/interstitial/jscommon/interstitial;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/m;

    move-result-object v2

    .line 523
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/base/b/m;->b(Ljava/lang/String;)V

    .line 524
    invoke-static {}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "======\u66f4\u65b0frequence\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " sUnitId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_4f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 527
    :cond_53
    return-void
.end method
