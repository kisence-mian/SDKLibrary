.class public Lcom/anythink/core/api/ATAdInfo;
.super Ljava/lang/Object;


# instance fields
.field private mAdNetworkType:Ljava/lang/String;

.field private mAdsourceId:Ljava/lang/String;

.field private mAdsourceIndex:I

.field private mChannel:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mCurrency:Ljava/lang/String;

.field private mCustomRule:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mEcpm:D

.field private mEcpmLevel:I

.field private mEcpmPrecision:Ljava/lang/String;

.field private mIsHBAdsource:I

.field private mNetworkFirmId:I

.field private mNetworkPlacementId:Ljava/lang/String;

.field private mPublisherRevenue:Ljava/lang/Double;

.field private mScenarioId:Ljava/lang/String;

.field private mScenarioRewardName:Ljava/lang/String;

.field private mScenarioRewardNumber:I

.field private mSegmentId:I

.field private mShowId:Ljava/lang/String;

.field private mSubChannel:Ljava/lang/String;

.field private mTopOnAdFormat:Ljava/lang/String;

.field private mTopOnPlacementId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v4, p0, Lcom/anythink/core/api/ATAdInfo;->mNetworkFirmId:I

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mAdsourceId:Ljava/lang/String;

    .line 51
    iput v4, p0, Lcom/anythink/core/api/ATAdInfo;->mAdsourceIndex:I

    .line 52
    iput-wide v2, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpm:D

    .line 53
    iput v1, p0, Lcom/anythink/core/api/ATAdInfo;->mIsHBAdsource:I

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mShowId:Ljava/lang/String;

    .line 56
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mPublisherRevenue:Ljava/lang/Double;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mCurrency:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mCountry:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mTopOnPlacementId:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mTopOnAdFormat:Ljava/lang/String;

    .line 62
    const-string v0, "publisher_defined"

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpmPrecision:Ljava/lang/String;

    .line 63
    const-string v0, "Network"

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mAdNetworkType:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mNetworkPlacementId:Ljava/lang/String;

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpmLevel:I

    .line 67
    iput v1, p0, Lcom/anythink/core/api/ATAdInfo;->mSegmentId:I

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioId:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardName:Ljava/lang/String;

    .line 70
    iput v1, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardNumber:I

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mSubChannel:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mChannel:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mCustomRule:Ljava/util/Map;

    .line 75
    return-void
.end method

.method private static fillData(Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/b/c/b;)Lcom/anythink/core/api/ATAdInfo;
    .registers 6

    .prologue
    .line 239
    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->x()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/api/ATAdInfo;->mNetworkFirmId:I

    .line 240
    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mAdsourceId:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->q()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/api/ATAdInfo;->mAdsourceIndex:I

    .line 242
    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->m()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpm:D

    .line 243
    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->l()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/api/ATAdInfo;->mIsHBAdsource:I

    .line 246
    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mShowId:Ljava/lang/String;

    .line 247
    iget-wide v0, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpm:D

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mPublisherRevenue:Ljava/lang/Double;

    .line 248
    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mCurrency:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mCountry:Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mTopOnAdFormat:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mTopOnPlacementId:Ljava/lang/String;

    .line 255
    iget v0, p0, Lcom/anythink/core/api/ATAdInfo;->mIsHBAdsource:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d8

    .line 256
    const-string v0, "exact"

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpmPrecision:Ljava/lang/String;

    .line 262
    :cond_57
    :goto_57
    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->x()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_ea

    .line 263
    const-string v0, "Cross_Promotion"

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mAdNetworkType:Ljava/lang/String;

    .line 268
    :goto_63
    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mNetworkPlacementId:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->c()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpmLevel:I

    .line 270
    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->y()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/api/ATAdInfo;->mSegmentId:I

    .line 1178
    iget-object v0, p1, Lcom/anythink/core/b/c/b;->v:Ljava/lang/String;

    .line 271
    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioId:Ljava/lang/String;

    .line 274
    const-string v0, "RewardedVideo"

    iget-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mTopOnAdFormat:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 275
    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->g()Ljava/util/Map;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_a3

    iget-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 277
    iget-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/api/ATRewardInfo;

    .line 278
    if-eqz v0, :cond_a3

    .line 279
    iget-object v1, v0, Lcom/anythink/core/api/ATRewardInfo;->rewardName:Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardName:Ljava/lang/String;

    .line 280
    iget v0, v0, Lcom/anythink/core/api/ATRewardInfo;->rewardNumber:I

    iput v0, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardNumber:I

    .line 284
    :cond_a3
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_af

    iget v0, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardNumber:I

    if-nez v0, :cond_bd

    .line 285
    :cond_af
    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->h()Lcom/anythink/core/api/ATRewardInfo;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_bd

    .line 287
    iget-object v1, v0, Lcom/anythink/core/api/ATRewardInfo;->rewardName:Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardName:Ljava/lang/String;

    .line 288
    iget v0, v0, Lcom/anythink/core/api/ATRewardInfo;->rewardNumber:I

    iput v0, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardNumber:I

    .line 294
    :cond_bd
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mChannel:Ljava/lang/String;

    .line 295
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mSubChannel:Ljava/lang/String;

    .line 296
    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->i()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mCustomRule:Ljava/util/Map;

    .line 298
    return-object p0

    .line 257
    :cond_d8
    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 258
    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpmPrecision:Ljava/lang/String;

    goto/16 :goto_57

    .line 265
    :cond_ea
    const-string v0, "Network"

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mAdNetworkType:Ljava/lang/String;

    goto/16 :goto_63
.end method

.method public static fromAdTrackingInfo(Lcom/anythink/core/b/c/b;)Lcom/anythink/core/api/ATAdInfo;
    .registers 2

    .prologue
    .line 231
    new-instance v0, Lcom/anythink/core/api/ATAdInfo;

    invoke-direct {v0}, Lcom/anythink/core/api/ATAdInfo;-><init>()V

    .line 232
    if-eqz p0, :cond_b

    .line 233
    invoke-static {v0, p0}, Lcom/anythink/core/api/ATAdInfo;->fillData(Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/b/c/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v0

    .line 235
    :cond_b
    return-object v0
.end method

.method public static fromAdapter(Lcom/anythink/core/b/a/b;)Lcom/anythink/core/api/ATAdInfo;
    .registers 2

    .prologue
    .line 224
    if-eqz p0, :cond_b

    .line 225
    invoke-virtual {p0}, Lcom/anythink/core/b/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/api/ATAdInfo;->fromAdTrackingInfo(Lcom/anythink/core/b/c/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v0

    .line 227
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/anythink/core/api/ATAdInfo;

    invoke-direct {v0}, Lcom/anythink/core/api/ATAdInfo;-><init>()V

    goto :goto_a
.end method


# virtual methods
.method public getAdNetworkType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mAdNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method public getAdsourceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mAdsourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdsourceIndex()I
    .registers 2

    .prologue
    .line 103
    iget v0, p0, Lcom/anythink/core/api/ATAdInfo;->mAdsourceIndex:I

    return v0
.end method

.method public getChannel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomRule()Ljava/lang/String;
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mCustomRule:Ljava/util/Map;

    if-eqz v0, :cond_10

    .line 217
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mCustomRule:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_f
    return-object v0

    :cond_10
    const-string v0, ""

    goto :goto_f
.end method

.method public getEcpm()D
    .registers 3

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpm:D

    return-wide v0
.end method

.method public getEcpmLevel()I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpmLevel:I

    return v0
.end method

.method public getEcpmPrecision()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpmPrecision:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    iget v0, p0, Lcom/anythink/core/api/ATAdInfo;->mAdsourceIndex:I

    return v0
.end method

.method public getNetworkFirmId()I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Lcom/anythink/core/api/ATAdInfo;->mNetworkFirmId:I

    return v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mNetworkPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    iget v0, p0, Lcom/anythink/core/api/ATAdInfo;->mNetworkFirmId:I

    return v0
.end method

.method public getPlacementRewardName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 196
    const-string v0, ""

    return-object v0
.end method

.method public getPlacementRewardNumber()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public getPublisherRevenue()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mPublisherRevenue:Ljava/lang/Double;

    return-object v0
.end method

.method public getScenarioId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioId:Ljava/lang/String;

    return-object v0
.end method

.method public getScenarioRewardName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardName:Ljava/lang/String;

    return-object v0
.end method

.method public getScenarioRewardNumber()I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardNumber:I

    return v0
.end method

.method public getSegmentId()I
    .registers 2

    .prologue
    .line 168
    iget v0, p0, Lcom/anythink/core/api/ATAdInfo;->mSegmentId:I

    return v0
.end method

.method public getShowId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mShowId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubChannel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mSubChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getTopOnAdFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mTopOnAdFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getTopOnPlacementId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mTopOnPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method public isHBAdsource()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 116
    iget v1, p0, Lcom/anythink/core/api/ATAdInfo;->mIsHBAdsource:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isHeaderBiddingAdsource()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Lcom/anythink/core/api/ATAdInfo;->mIsHBAdsource:I

    return v0
.end method

.method public printInfo()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 306
    const-string v0, ""

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 312
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 314
    :try_start_5
    const-string v0, "id"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mShowId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v0, "publisher_revenue"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mPublisherRevenue:Ljava/lang/Double;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v0, "currency"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mCurrency:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v0, "country"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v0, "adunit_id"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mTopOnPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    const-string v0, "adunit_format"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mTopOnAdFormat:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-string v0, "precision"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpmPrecision:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    const-string v0, "network_type"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mAdNetworkType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    const-string v0, "network_placement_id"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mNetworkPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    const-string v0, "ecpm_level"

    iget v2, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpmLevel:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 326
    const-string v0, "segment_id"

    iget v2, p0, Lcom/anythink/core/api/ATAdInfo;->mSegmentId:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 327
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 328
    const-string v0, "scenario_id"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    :cond_61
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7b

    iget v0, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardNumber:I

    if-eqz v0, :cond_7b

    .line 332
    const-string v0, "scenario_reward_name"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string v0, "scenario_reward_number"

    iget v2, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardNumber:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 336
    :cond_7b
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mChannel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8a

    .line 337
    const-string v0, "channel"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mChannel:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    :cond_8a
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mSubChannel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_99

    .line 340
    const-string v0, "sub_channel"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mSubChannel:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    :cond_99
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mCustomRule:Ljava/util/Map;

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mCustomRule:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_b1

    .line 343
    const-string v0, "custom_rule"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/anythink/core/api/ATAdInfo;->mCustomRule:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    :cond_b1
    const-string v0, "network_firm_id"

    iget v2, p0, Lcom/anythink/core/api/ATAdInfo;->mNetworkFirmId:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 347
    const-string v0, "adsource_id"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mAdsourceId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    const-string v0, "adsource_index"

    iget v2, p0, Lcom/anythink/core/api/ATAdInfo;->mAdsourceIndex:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 349
    const-string v0, "adsource_price"

    iget-wide v2, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpm:D

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 350
    const-string v0, "adsource_isheaderbidding"

    iget v2, p0, Lcom/anythink/core/api/ATAdInfo;->mIsHBAdsource:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_d4
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_d4} :catch_d9

    .line 355
    :goto_d4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 352
    :catch_d9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d4
.end method
