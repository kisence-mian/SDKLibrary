.class Lcom/kwad/sdk/core/g/d$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/g/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/g/d;->loadRewardVideoAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;

.field final synthetic b:Lcom/kwad/sdk/api/KsScene;

.field final synthetic c:J

.field final synthetic d:Lcom/kwad/sdk/core/g/d;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/g/d;Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;Lcom/kwad/sdk/api/KsScene;J)V
    .registers 6

    iput-object p1, p0, Lcom/kwad/sdk/core/g/d$13;->d:Lcom/kwad/sdk/core/g/d;

    iput-object p2, p0, Lcom/kwad/sdk/core/g/d$13;->a:Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;

    iput-object p3, p0, Lcom/kwad/sdk/core/g/d$13;->b:Lcom/kwad/sdk/api/KsScene;

    iput-wide p4, p0, Lcom/kwad/sdk/core/g/d$13;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/kwad/sdk/core/g/d;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/core/g/d$13$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/kwad/sdk/core/g/d$13$1;-><init>(Lcom/kwad/sdk/core/g/d$13;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/response/model/AdResultData;)V
    .registers 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->w()I

    move-result v1

    iget-object v2, p1, Lcom/kwad/sdk/core/response/model/AdResultData;->adTemplateList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_11
    move v5, v4

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-nez v6, :cond_21

    goto :goto_12

    :cond_21
    iget-object v7, v6, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    if-nez v7, :cond_2f

    iget-object v7, p0, Lcom/kwad/sdk/core/g/d$13;->b:Lcom/kwad/sdk/api/KsScene;

    instance-of v8, v7, Lcom/kwad/sdk/internal/api/SceneImpl;

    if-eqz v8, :cond_2f

    check-cast v7, Lcom/kwad/sdk/internal/api/SceneImpl;

    iput-object v7, v6, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    :cond_2f
    invoke-static {v6}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3e

    goto :goto_12

    :cond_3e
    if-gez v1, :cond_47

    invoke-static {v6}, Lcom/kwad/sdk/reward/f;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v4

    if-nez v4, :cond_5f

    goto :goto_5d

    :cond_47
    if-lez v1, :cond_5f

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/kwad/sdk/core/videocache/c/a;->a(Landroid/content/Context;)Lcom/kwad/sdk/core/videocache/f;

    move-result-object v4

    mul-int/lit16 v8, v1, 0x400

    invoke-virtual {v4, v7, v8}, Lcom/kwad/sdk/core/videocache/f;->a(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_5f

    :goto_5d
    move v4, v3

    goto :goto_12

    :cond_5f
    new-instance v4, Lcom/kwad/sdk/reward/c;

    invoke-direct {v4, v6}, Lcom/kwad/sdk/reward/c;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v3

    goto :goto_11

    :cond_69
    if-nez v4, :cond_8a

    sget-object p1, Lcom/kwad/sdk/core/network/f;->c:Lcom/kwad/sdk/core/network/f;

    iget p1, p1, Lcom/kwad/sdk/core/network/f;->k:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kwad/sdk/core/network/f;->c:Lcom/kwad/sdk/core/network/f;

    iget-object v1, v1, Lcom/kwad/sdk/core/network/f;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\u65e0\u89c6\u9891\u8d44\u6e90)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/core/g/d$13;->a(ILjava/lang/String;)V

    return-void

    :cond_8a
    if-nez v5, :cond_98

    sget-object p1, Lcom/kwad/sdk/core/network/f;->d:Lcom/kwad/sdk/core/network/f;

    iget p1, p1, Lcom/kwad/sdk/core/network/f;->k:I

    sget-object v0, Lcom/kwad/sdk/core/network/f;->d:Lcom/kwad/sdk/core/network/f;

    iget-object v0, v0, Lcom/kwad/sdk/core/network/f;->l:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/core/g/d$13;->a(ILjava/lang/String;)V

    return-void

    :cond_98
    invoke-static {}, Lcom/kwad/sdk/core/g/d;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/kwad/sdk/core/g/d$13$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/kwad/sdk/core/g/d$13$2;-><init>(Lcom/kwad/sdk/core/g/d$13;Ljava/util/List;Lcom/kwad/sdk/core/response/model/AdResultData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
