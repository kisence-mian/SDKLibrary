.class public Lcom/anythink/core/api/ATAdInfo;
.super Ljava/lang/Object;


# instance fields
.field private mAdNetworkType:Ljava/lang/String;

.field private mAdsourceId:Ljava/lang/String;

.field private mAdsourceIndex:I

.field private mBaseAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

.field private mChannel:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mCurrency:Ljava/lang/String;

.field private mCustomRule:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mEcpm:D

.field private mEcpmLevel:I

.field private mEcpmPrecision:Ljava/lang/String;

.field private mExtInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

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
    .registers 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/core/api/ATAdInfo;->mNetworkFirmId:I

    .line 61
    const-string v1, ""

    iput-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mAdsourceId:Ljava/lang/String;

    .line 62
    iput v0, p0, Lcom/anythink/core/api/ATAdInfo;->mAdsourceIndex:I

    .line 63
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpm:D

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/api/ATAdInfo;->mIsHBAdsource:I

    .line 66
    iput-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mShowId:Ljava/lang/String;

    .line 67
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mPublisherRevenue:Ljava/lang/Double;

    .line 68
    iput-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mCurrency:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mCountry:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mTopOnPlacementId:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mTopOnAdFormat:Ljava/lang/String;

    .line 73
    const-string v2, "publisher_defined"

    iput-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpmPrecision:Ljava/lang/String;

    .line 74
    const-string v2, "Network"

    iput-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mAdNetworkType:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mNetworkPlacementId:Ljava/lang/String;

    .line 76
    const/4 v2, 0x1

    iput v2, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpmLevel:I

    .line 78
    iput v0, p0, Lcom/anythink/core/api/ATAdInfo;->mSegmentId:I

    .line 79
    iput-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioId:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardName:Ljava/lang/String;

    .line 81
    iput v0, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardNumber:I

    .line 83
    iput-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mSubChannel:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mChannel:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mCustomRule:Ljava/util/Map;

    .line 86
    return-void
.end method

.method private static fillData(Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/common/d/d;)Lcom/anythink/core/api/ATAdInfo;
    .registers 6

    .line 238
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->y()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/api/ATAdInfo;->mNetworkFirmId:I

    .line 239
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mAdsourceId:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->r()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/api/ATAdInfo;->mAdsourceIndex:I

    .line 241
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->n()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpm:D

    .line 242
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->m()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/api/ATAdInfo;->mIsHBAdsource:I

    .line 245
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mShowId:Ljava/lang/String;

    .line 246
    iget-wide v0, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpm:D

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mPublisherRevenue:Ljava/lang/Double;

    .line 247
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mCurrency:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mCountry:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/g/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mTopOnAdFormat:Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mTopOnPlacementId:Ljava/lang/String;

    .line 254
    iget v0, p0, Lcom/anythink/core/api/ATAdInfo;->mIsHBAdsource:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_58

    .line 255
    const-string v0, "exact"

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpmPrecision:Ljava/lang/String;

    goto :goto_68

    .line 256
    :cond_58
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 257
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpmPrecision:Ljava/lang/String;

    .line 261
    :cond_68
    :goto_68
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->y()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_75

    .line 262
    const-string v0, "Cross_Promotion"

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mAdNetworkType:Ljava/lang/String;

    goto :goto_79

    .line 264
    :cond_75
    const-string v0, "Network"

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mAdNetworkType:Ljava/lang/String;

    .line 267
    :goto_79
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mNetworkPlacementId:Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->d()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpmLevel:I

    .line 269
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->z()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/api/ATAdInfo;->mSegmentId:I

    .line 270
    nop

    .line 1225
    iget-object v0, p1, Lcom/anythink/core/common/d/d;->y:Ljava/lang/String;

    .line 270
    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioId:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mTopOnAdFormat:Ljava/lang/String;

    const-string v1, "RewardedVideo"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 274
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->h()Ljava/util/Map;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_ba

    iget-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 276
    iget-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/api/ATRewardInfo;

    .line 277
    if-eqz v0, :cond_ba

    .line 278
    iget-object v1, v0, Lcom/anythink/core/api/ATRewardInfo;->rewardName:Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardName:Ljava/lang/String;

    .line 279
    iget v0, v0, Lcom/anythink/core/api/ATRewardInfo;->rewardNumber:I

    iput v0, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardNumber:I

    .line 283
    :cond_ba
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c6

    iget v0, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardNumber:I

    if-nez v0, :cond_d4

    .line 284
    :cond_c6
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->i()Lcom/anythink/core/api/ATRewardInfo;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_d4

    .line 286
    iget-object v1, v0, Lcom/anythink/core/api/ATRewardInfo;->rewardName:Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardName:Ljava/lang/String;

    .line 287
    iget v0, v0, Lcom/anythink/core/api/ATRewardInfo;->rewardNumber:I

    iput v0, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardNumber:I

    .line 293
    :cond_d4
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mChannel:Ljava/lang/String;

    .line 294
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mSubChannel:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->j()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/api/ATAdInfo;->mCustomRule:Ljava/util/Map;

    .line 297
    return-object p0
.end method

.method public static fromAdTrackingInfo(Lcom/anythink/core/common/d/d;)Lcom/anythink/core/api/ATAdInfo;
    .registers 2

    .line 230
    new-instance v0, Lcom/anythink/core/api/ATAdInfo;

    invoke-direct {v0}, Lcom/anythink/core/api/ATAdInfo;-><init>()V

    .line 231
    if-eqz p0, :cond_c

    .line 232
    invoke-static {v0, p0}, Lcom/anythink/core/api/ATAdInfo;->fillData(Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/common/d/d;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object p0

    return-object p0

    .line 234
    :cond_c
    return-object v0
.end method

.method public static fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;
    .registers 3

    .line 206
    if-eqz p0, :cond_19

    .line 207
    invoke-virtual {p0}, Lcom/anythink/core/common/b/b;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/api/ATAdInfo;->fromAdTrackingInfo(Lcom/anythink/core/common/d/d;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v0

    .line 208
    instance-of v1, p0, Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v1, :cond_18

    .line 209
    check-cast p0, Lcom/anythink/core/api/ATBaseAdAdapter;

    iput-object p0, v0, Lcom/anythink/core/api/ATAdInfo;->mBaseAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    .line 210
    invoke-virtual {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object p0

    iput-object p0, v0, Lcom/anythink/core/api/ATAdInfo;->mExtInfoMap:Ljava/util/Map;

    .line 214
    :cond_18
    return-object v0

    .line 216
    :cond_19
    new-instance p0, Lcom/anythink/core/api/ATAdInfo;

    invoke-direct {p0}, Lcom/anythink/core/api/ATAdInfo;-><init>()V

    return-object p0
.end method

.method public static fromBaseAd(Lcom/anythink/core/api/BaseAd;)Lcom/anythink/core/api/ATAdInfo;
    .registers 2

    .line 220
    if-eqz p0, :cond_11

    .line 221
    invoke-virtual {p0}, Lcom/anythink/core/api/BaseAd;->getDetail()Lcom/anythink/core/common/d/d;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/api/ATAdInfo;->fromAdTrackingInfo(Lcom/anythink/core/common/d/d;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v0

    .line 222
    invoke-virtual {p0}, Lcom/anythink/core/api/BaseAd;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object p0

    iput-object p0, v0, Lcom/anythink/core/api/ATAdInfo;->mExtInfoMap:Ljava/util/Map;

    .line 223
    return-object v0

    .line 225
    :cond_11
    new-instance p0, Lcom/anythink/core/api/ATAdInfo;

    invoke-direct {p0}, Lcom/anythink/core/api/ATAdInfo;-><init>()V

    return-object p0
.end method


# virtual methods
.method public getAdNetworkType()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mAdNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method public getAdsourceId()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mAdsourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdsourceIndex()I
    .registers 2

    .line 98
    iget v0, p0, Lcom/anythink/core/api/ATAdInfo;->mAdsourceIndex:I

    return v0
.end method

.method public getChannel()Ljava/lang/String;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomRule()Ljava/lang/String;
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mCustomRule:Ljava/util/Map;

    if-eqz v0, :cond_10

    .line 188
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mCustomRule:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 190
    :cond_10
    const-string v0, ""

    return-object v0
.end method

.method public getEcpm()D
    .registers 3

    .line 102
    iget-wide v0, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpm:D

    return-wide v0
.end method

.method public getEcpmLevel()I
    .registers 2

    .line 151
    iget v0, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpmLevel:I

    return v0
.end method

.method public getEcpmPrecision()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpmPrecision:Ljava/lang/String;

    return-object v0
.end method

.method public getExtInfoMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mExtInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method public getNetworkFirmId()I
    .registers 2

    .line 90
    iget v0, p0, Lcom/anythink/core/api/ATAdInfo;->mNetworkFirmId:I

    return v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mNetworkPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisherRevenue()Ljava/lang/Double;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mPublisherRevenue:Ljava/lang/Double;

    return-object v0
.end method

.method public getRewardUserCustomData()Ljava/lang/String;
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mBaseAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v0, :cond_9

    .line 200
    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUserCustomData()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 202
    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public getScenarioId()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioId:Ljava/lang/String;

    return-object v0
.end method

.method public getScenarioRewardName()Ljava/lang/String;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardName:Ljava/lang/String;

    return-object v0
.end method

.method public getScenarioRewardNumber()I
    .registers 2

    .line 175
    iget v0, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardNumber:I

    return v0
.end method

.method public getSegmentId()I
    .registers 2

    .line 155
    iget v0, p0, Lcom/anythink/core/api/ATAdInfo;->mSegmentId:I

    return v0
.end method

.method public getShowId()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mShowId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubChannel()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mSubChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getTopOnAdFormat()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mTopOnAdFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getTopOnPlacementId()Ljava/lang/String;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/anythink/core/api/ATAdInfo;->mTopOnPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method public isHeaderBiddingAdsource()I
    .registers 2

    .line 111
    iget v0, p0, Lcom/anythink/core/api/ATAdInfo;->mIsHBAdsource:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 304
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 306
    :try_start_5
    const-string v1, "id"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mShowId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string v1, "publisher_revenue"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mPublisherRevenue:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string v1, "currency"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mCurrency:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    const-string v1, "country"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v1, "adunit_id"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mTopOnPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string v1, "adunit_format"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mTopOnAdFormat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string v1, "precision"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpmPrecision:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string v1, "network_type"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mAdNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v1, "network_placement_id"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mNetworkPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v1, "ecpm_level"

    iget v2, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpmLevel:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 318
    const-string v1, "segment_id"

    iget v2, p0, Lcom/anythink/core/api/ATAdInfo;->mSegmentId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 319
    iget-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 320
    const-string v1, "scenario_id"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    :cond_61
    iget-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7b

    iget v1, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardNumber:I

    if-eqz v1, :cond_7b

    .line 324
    const-string v1, "scenario_reward_name"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    const-string v1, "scenario_reward_number"

    iget v2, p0, Lcom/anythink/core/api/ATAdInfo;->mScenarioRewardNumber:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 328
    :cond_7b
    iget-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mChannel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8a

    .line 329
    const-string v1, "channel"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mChannel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    :cond_8a
    iget-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mSubChannel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_99

    .line 332
    const-string v1, "sub_channel"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mSubChannel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    :cond_99
    iget-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mCustomRule:Ljava/util/Map;

    if-eqz v1, :cond_af

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_af

    .line 335
    const-string v1, "custom_rule"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/anythink/core/api/ATAdInfo;->mCustomRule:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    :cond_af
    const-string v1, "network_firm_id"

    iget v2, p0, Lcom/anythink/core/api/ATAdInfo;->mNetworkFirmId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 339
    const-string v1, "adsource_id"

    iget-object v2, p0, Lcom/anythink/core/api/ATAdInfo;->mAdsourceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    const-string v1, "adsource_index"

    iget v2, p0, Lcom/anythink/core/api/ATAdInfo;->mAdsourceIndex:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 341
    const-string v1, "adsource_price"

    iget-wide v2, p0, Lcom/anythink/core/api/ATAdInfo;->mEcpm:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 342
    const-string v1, "adsource_isheaderbidding"

    iget v2, p0, Lcom/anythink/core/api/ATAdInfo;->mIsHBAdsource:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 344
    iget-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mExtInfoMap:Ljava/util/Map;

    if-eqz v1, :cond_e8

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_e8

    .line 345
    const-string v1, "ext_info"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/anythink/core/api/ATAdInfo;->mExtInfoMap:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    :cond_e8
    iget-object v1, p0, Lcom/anythink/core/api/ATAdInfo;->mBaseAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v1, :cond_f5

    .line 349
    const-string v2, "reward_custom_data"

    invoke-virtual {v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUserCustomData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f5
    .catchall {:try_start_5 .. :try_end_f5} :catchall_f6

    .line 354
    :cond_f5
    goto :goto_fa

    .line 353
    :catchall_f6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 356
    :goto_fa
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
