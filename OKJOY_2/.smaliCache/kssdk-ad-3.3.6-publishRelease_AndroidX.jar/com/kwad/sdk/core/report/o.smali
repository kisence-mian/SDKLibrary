.class public Lcom/kwad/sdk/core/report/o;
.super Lcom/kwad/sdk/core/network/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/report/o$a;
    }
.end annotation


# instance fields
.field b:I

.field private c:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private d:Lcom/kwad/sdk/core/report/o$a;

.field private e:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V
    .registers 5

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/b;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/report/o;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput p2, p0, Lcom/kwad/sdk/core/report/o;->b:I

    iput-object p3, p0, Lcom/kwad/sdk/core/report/o;->d:Lcom/kwad/sdk/core/report/o$a;

    iput-object p4, p0, Lcom/kwad/sdk/core/report/o;->e:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/kwad/sdk/core/report/o$a;)V
    .registers 4

    if-eqz p2, :cond_23

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_23

    :cond_9
    iget p1, p2, Lcom/kwad/sdk/core/report/o$a;->b:I

    if-eqz p1, :cond_14

    iget p1, p2, Lcom/kwad/sdk/core/report/o$a;->b:I

    const-string v0, "itemClickType"

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/report/o;->a(Ljava/lang/String;I)V

    :cond_14
    iget-object p1, p2, Lcom/kwad/sdk/core/report/o$a;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_23

    iget-object p1, p2, Lcom/kwad/sdk/core/report/o$a;->f:Ljava/lang/String;

    const-string p2, "payload"

    invoke-virtual {p0, p2, p1}, Lcom/kwad/sdk/core/report/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14

    if-nez p2, :cond_9

    goto :goto_14

    :cond_9
    iget p1, p2, Lcom/kwad/sdk/core/response/model/AdTemplate;->mInitVoiceStatus:I

    if-eqz p1, :cond_14

    iget p1, p2, Lcom/kwad/sdk/core/response/model/AdTemplate;->mInitVoiceStatus:I

    const-string p2, "initVoiceStatus"

    invoke-virtual {p0, p2, p1}, Lcom/kwad/sdk/core/report/o;->a(Ljava/lang/String;I)V

    :cond_14
    :goto_14
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 5

    if-nez p1, :cond_7

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_7
    :try_start_7
    const-string v0, "clientTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_15
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "extData"

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/report/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/kwad/sdk/core/report/o$a;)V
    .registers 4

    if-eqz p2, :cond_af

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto/16 :goto_af

    :cond_a
    iget p1, p2, Lcom/kwad/sdk/core/report/o$a;->c:I

    if-eqz p1, :cond_15

    iget p1, p2, Lcom/kwad/sdk/core/report/o$a;->c:I

    const-string v0, "itemCloseType"

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/report/o;->a(Ljava/lang/String;I)V

    :cond_15
    iget p1, p2, Lcom/kwad/sdk/core/report/o$a;->a:I

    if-lez p1, :cond_20

    iget p1, p2, Lcom/kwad/sdk/core/report/o$a;->a:I

    const-string v0, "photoPlaySecond"

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/report/o;->a(Ljava/lang/String;I)V

    :cond_20
    iget p1, p2, Lcom/kwad/sdk/core/report/o$a;->d:I

    if-eqz p1, :cond_2b

    iget p1, p2, Lcom/kwad/sdk/core/report/o$a;->d:I

    const-string v0, "elementType"

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/report/o;->a(Ljava/lang/String;I)V

    :cond_2b
    iget-object p1, p2, Lcom/kwad/sdk/core/report/o$a;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3a

    iget-object p1, p2, Lcom/kwad/sdk/core/report/o$a;->f:Ljava/lang/String;

    const-string v0, "payload"

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/report/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    iget p1, p2, Lcom/kwad/sdk/core/report/o$a;->g:I

    if-lez p1, :cond_45

    iget p1, p2, Lcom/kwad/sdk/core/report/o$a;->g:I

    const-string v0, "deeplinkType"

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/report/o;->a(Ljava/lang/String;I)V

    :cond_45
    iget p1, p2, Lcom/kwad/sdk/core/report/o$a;->h:I

    if-lez p1, :cond_50

    iget p1, p2, Lcom/kwad/sdk/core/report/o$a;->h:I

    const-string v0, "download_source"

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/report/o;->a(Ljava/lang/String;I)V

    :cond_50
    iget p1, p2, Lcom/kwad/sdk/core/report/o$a;->i:I

    const-string v0, "is_package_changed"

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/report/o;->a(Ljava/lang/String;I)V

    iget-object p1, p2, Lcom/kwad/sdk/core/report/o$a;->j:Ljava/lang/String;

    const-string v0, "installed_from"

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/report/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p2, Lcom/kwad/sdk/core/report/o$a;->l:I

    const-string v0, "isChangedEndcard"

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/report/o;->a(Ljava/lang/String;I)V

    iget-object p1, p2, Lcom/kwad/sdk/core/report/o$a;->k:Ljava/lang/String;

    if-eqz p1, :cond_70

    iget-object p1, p2, Lcom/kwad/sdk/core/report/o$a;->k:Ljava/lang/String;

    const-string v0, "downloadFailedReason"

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/report/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    iget-object p1, p2, Lcom/kwad/sdk/core/report/o$a;->n:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/utils/ab;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7f

    iget-object p1, p2, Lcom/kwad/sdk/core/report/o$a;->n:Ljava/lang/String;

    const-string v0, "installedPackageName"

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/report/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7f
    iget-object p1, p2, Lcom/kwad/sdk/core/report/o$a;->m:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/utils/ab;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8e

    iget-object p1, p2, Lcom/kwad/sdk/core/report/o$a;->m:Ljava/lang/String;

    const-string v0, "serverPackageName"

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/report/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8e
    iget p1, p2, Lcom/kwad/sdk/core/report/o$a;->p:I

    if-lez p1, :cond_99

    iget p1, p2, Lcom/kwad/sdk/core/report/o$a;->p:I

    const-string v0, "closeButtonClickTime"

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/report/o;->a(Ljava/lang/String;I)V

    :cond_99
    iget p1, p2, Lcom/kwad/sdk/core/report/o$a;->o:I

    if-lez p1, :cond_a4

    iget p1, p2, Lcom/kwad/sdk/core/report/o$a;->o:I

    const-string v0, "closeButtonImpressionTime"

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/report/o;->a(Ljava/lang/String;I)V

    :cond_a4
    iget p1, p2, Lcom/kwad/sdk/core/report/o$a;->q:I

    if-ltz p1, :cond_af

    iget p1, p2, Lcom/kwad/sdk/core/report/o$a;->q:I

    const-string p2, "downloadStatus"

    invoke-virtual {p0, p2, p1}, Lcom/kwad/sdk/core/report/o;->a(Ljava/lang/String;I)V

    :cond_af
    :goto_af
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/kwad/sdk/core/report/o;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/core/report/o;->b:I

    const-string v2, "__BEHAVIOR__"

    const-string v3, "__TYPE__"

    const-string v4, "__PR__"

    const/4 v5, 0x1

    if-ne v1, v5, :cond_44

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->showUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/kwad/sdk/core/report/o;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mBidEcpm:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/report/o;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    iget v1, v1, Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;->mVideoPlayerType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/report/o;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    iget v1, v1, Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;->mVideoPlayerBehavior:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3d
    iget-object v1, p0, Lcom/kwad/sdk/core/report/o;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/core/report/o;->a(Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    goto/16 :goto_be

    :cond_44
    const/4 v5, 0x2

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    if-ne v1, v5, :cond_83

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->clickUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/kwad/sdk/core/report/o;->d:Lcom/kwad/sdk/core/report/o$a;

    if-eqz v1, :cond_55

    iget-object v1, v1, Lcom/kwad/sdk/core/report/o$a;->e:Lcom/kwad/sdk/utils/o$a;

    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/o;->b(Ljava/lang/String;Lcom/kwad/sdk/utils/o$a;)Ljava/lang/String;

    move-result-object v0

    :cond_55
    iget-object v1, p0, Lcom/kwad/sdk/core/report/o;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mBidEcpm:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/report/o;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    iget v1, v1, Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;->mVideoPlayerType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/report/o;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    iget v1, v1, Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;->mVideoPlayerBehavior:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/report/o;->d:Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/core/report/o;->a(Ljava/lang/String;Lcom/kwad/sdk/core/report/o$a;)V

    goto :goto_3d

    :cond_83
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->convUrl:Ljava/lang/String;

    iget v1, p0, Lcom/kwad/sdk/core/report/o;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "__ACTION__"

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/report/o;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mBidEcpm:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/report/o;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    iget v1, v1, Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;->mVideoPlayerType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/report/o;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    iget v1, v1, Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;->mVideoPlayerBehavior:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/report/o;->d:Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/core/report/o;->b(Ljava/lang/String;Lcom/kwad/sdk/core/report/o$a;)V

    :goto_be
    iget-object v1, p0, Lcom/kwad/sdk/core/report/o;->e:Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lcom/kwad/sdk/core/report/o;->a(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public d()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/report/o;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method protected e()V
    .registers 1

    return-void
.end method

.method protected f()V
    .registers 1

    return-void
.end method

.method g()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/core/report/o;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    iget-object v2, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->adTrackInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_51

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->adTrackInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;

    iget v4, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;->type:I

    iget v5, p0, Lcom/kwad/sdk/core/report/o;->b:I

    if-ne v4, v5, :cond_19

    iget-object v4, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;->urls:[Ljava/lang/String;

    if-eqz v4, :cond_19

    goto :goto_32

    :cond_31
    move-object v2, v3

    :goto_32
    if-eqz v2, :cond_51

    iget v1, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;->type:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3f

    iget-object v1, p0, Lcom/kwad/sdk/core/report/o;->d:Lcom/kwad/sdk/core/report/o$a;

    if-eqz v1, :cond_3f

    iget-object v3, v1, Lcom/kwad/sdk/core/report/o$a;->e:Lcom/kwad/sdk/utils/o$a;

    :cond_3f
    iget-object v1, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;->urls:[Ljava/lang/String;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_43
    if-ge v4, v2, :cond_51

    aget-object v5, v1, v4

    invoke-static {v5, v3}, Lcom/kwad/sdk/utils/o;->a(Ljava/lang/String;Lcom/kwad/sdk/utils/o$a;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    :cond_51
    return-object v0
.end method
