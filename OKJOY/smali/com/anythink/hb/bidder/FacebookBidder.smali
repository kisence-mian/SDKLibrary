.class public Lcom/anythink/hb/bidder/FacebookBidder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/hb/Bidder;


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Z


# instance fields
.field private c:Lcom/anythink/hb/data/HiBidContext;

.field private d:Lcom/facebook/bidding/FBAdBidFormat;

.field private e:Lcom/facebook/bidding/FBAdBidResponse;

.field private f:Lcom/anythink/hb/data/BidRequestInfo;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/anythink/hb/bidder/FacebookBidder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/hb/bidder/FacebookBidder;->a:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anythink/hb/bidder/FacebookBidder;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/anythink/hb/bidder/FacebookBidder;->e:Lcom/facebook/bidding/FBAdBidResponse;

    .line 39
    iput-object v0, p0, Lcom/anythink/hb/bidder/FacebookBidder;->f:Lcom/anythink/hb/data/BidRequestInfo;

    return-void
.end method

.method static synthetic a(Lcom/anythink/hb/bidder/FacebookBidder;)Lcom/anythink/hb/data/BidRequestInfo;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/hb/bidder/FacebookBidder;->f:Lcom/anythink/hb/data/BidRequestInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/hb/bidder/FacebookBidder;Lcom/facebook/bidding/FBAdBidResponse;)Lcom/facebook/bidding/FBAdBidResponse;
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/anythink/hb/bidder/FacebookBidder;->e:Lcom/facebook/bidding/FBAdBidResponse;

    return-object p1
.end method


# virtual methods
.method public bid(Lcom/anythink/hb/data/BidRequestInfo;Ljava/lang/String;JLcom/anythink/hb/callback/BiddingCallback;)V
    .registers 13

    .prologue
    .line 73
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/anythink/hb/bidder/FacebookBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    if-nez v0, :cond_e

    .line 74
    :cond_6
    new-instance v0, Lcom/anythink/hb/exception/BiddingException;

    const-string v1, "facebook: bidRequestInfo == null || context == null"

    invoke-direct {v0, v1}, Lcom/anythink/hb/exception/BiddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_e
    invoke-virtual {p1}, Lcom/anythink/hb/data/BidRequestInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p1}, Lcom/anythink/hb/data/BidRequestInfo;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 78
    :cond_22
    new-instance v0, Lcom/anythink/hb/exception/BiddingException;

    const-string v1, "facebook: appId == null || placementId == null"

    invoke-direct {v0, v1}, Lcom/anythink/hb/exception/BiddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_2a
    const-string v0, "BANNER"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 82
    invoke-virtual {p1}, Lcom/anythink/hb/data/BidRequestInfo;->getBannerSize()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/hb/bidder/FacebookBidder;->g:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/anythink/hb/bidder/FacebookBidder;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 84
    new-instance v0, Lcom/anythink/hb/exception/BiddingException;

    const-string v1, "facebook: banner size == null"

    invoke-direct {v0, v1}, Lcom/anythink/hb/exception/BiddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_48
    :try_start_48
    iput-object p1, p0, Lcom/anythink/hb/bidder/FacebookBidder;->f:Lcom/anythink/hb/data/BidRequestInfo;

    .line 90
    invoke-virtual {p0, p2}, Lcom/anythink/hb/bidder/FacebookBidder;->getAdBidFormat(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_97

    .line 92
    check-cast v0, Lcom/facebook/bidding/FBAdBidFormat;

    iput-object v0, p0, Lcom/anythink/hb/bidder/FacebookBidder;->d:Lcom/facebook/bidding/FBAdBidFormat;

    .line 102
    :cond_54
    const-string v0, "isTest"

    invoke-virtual {p1, v0}, Lcom/anythink/hb/data/BidRequestInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_bd

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 106
    :goto_62
    new-instance v1, Lcom/facebook/bidding/FBAdBidRequest;

    iget-object v2, p0, Lcom/anythink/hb/bidder/FacebookBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    .line 107
    invoke-virtual {v2}, Lcom/anythink/hb/data/HiBidContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/hb/bidder/FacebookBidder;->f:Lcom/anythink/hb/data/BidRequestInfo;

    .line 108
    invoke-virtual {v3}, Lcom/anythink/hb/data/BidRequestInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/hb/bidder/FacebookBidder;->f:Lcom/anythink/hb/data/BidRequestInfo;

    .line 109
    invoke-virtual {v4}, Lcom/anythink/hb/data/BidRequestInfo;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/hb/bidder/FacebookBidder;->d:Lcom/facebook/bidding/FBAdBidFormat;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/bidding/FBAdBidRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/bidding/FBAdBidFormat;)V

    iget-object v2, p0, Lcom/anythink/hb/bidder/FacebookBidder;->f:Lcom/anythink/hb/data/BidRequestInfo;

    .line 111
    invoke-virtual {v2}, Lcom/anythink/hb/data/BidRequestInfo;->getPlatformId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/bidding/FBAdBidRequest;->withPlatformId(Ljava/lang/String;)Lcom/facebook/bidding/FBAdBidRequest;

    move-result-object v1

    long-to-int v2, p3

    .line 112
    invoke-virtual {v1, v2}, Lcom/facebook/bidding/FBAdBidRequest;->withTimeoutMS(I)Lcom/facebook/bidding/FBAdBidRequest;

    move-result-object v1

    .line 113
    invoke-virtual {v1, v0}, Lcom/facebook/bidding/FBAdBidRequest;->withTestMode(Z)Lcom/facebook/bidding/FBAdBidRequest;

    move-result-object v0

    .line 115
    new-instance v1, Lcom/anythink/hb/bidder/FacebookBidder$1;

    invoke-direct {v1, p0, p5}, Lcom/anythink/hb/bidder/FacebookBidder$1;-><init>(Lcom/anythink/hb/bidder/FacebookBidder;Lcom/anythink/hb/callback/BiddingCallback;)V

    invoke-virtual {v0, v1}, Lcom/facebook/bidding/FBAdBidRequest;->getFBBid(Lcom/facebook/bidding/FBAdBidRequest$BidResponseCallback;)V

    .line 148
    :cond_96
    :goto_96
    return-void

    .line 94
    :cond_97
    new-instance v0, Lcom/anythink/hb/data/BiddingResponse;

    const-class v1, Lcom/anythink/hb/bidder/FacebookBidder;

    const-string v2, "Unsupported facebook AD format!"

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/anythink/hb/data/BiddingResponse;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/anythink/hb/Bidder;Lcom/anythink/hb/data/BidRequestInfo;)V

    .line 96
    if-eqz p5, :cond_54

    .line 97
    invoke-interface {p5, v0}, Lcom/anythink/hb/callback/BiddingCallback;->onBiddingResponse(Lcom/anythink/hb/data/BiddingResponse;)V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_a5} :catch_a6

    goto :goto_96

    .line 139
    :catch_a6
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    new-instance v1, Lcom/anythink/hb/data/BiddingResponse;

    const-class v2, Lcom/anythink/hb/bidder/MtgBidder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/hb/bidder/FacebookBidder;->f:Lcom/anythink/hb/data/BidRequestInfo;

    invoke-direct {v1, v2, v0, p0, v3}, Lcom/anythink/hb/data/BiddingResponse;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/anythink/hb/Bidder;Lcom/anythink/hb/data/BidRequestInfo;)V

    .line 143
    if-eqz p5, :cond_96

    .line 144
    invoke-interface {p5, v1}, Lcom/anythink/hb/callback/BiddingCallback;->onBiddingResponse(Lcom/anythink/hb/data/BiddingResponse;)V

    goto :goto_96

    .line 103
    :cond_bd
    const/4 v0, 0x0

    goto :goto_62
.end method

.method public getAdBidFormat(Ljava/lang/String;)Ljava/lang/Object;
    .registers 9

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 196
    const/4 v0, 0x0

    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_76

    :cond_c
    move v5, v2

    :goto_d
    packed-switch v5, :pswitch_data_88

    .line 230
    :goto_10
    return-object v0

    .line 197
    :sswitch_11
    const-string v5, "NATIVE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v1

    goto :goto_d

    :sswitch_1b
    const-string v5, "BANNER"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v3

    goto :goto_d

    :sswitch_25
    const-string v5, "INTERSTITIAL"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v4

    goto :goto_d

    :sswitch_2f
    const-string v5, "REWARDED_VIDEO"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x3

    goto :goto_d

    .line 199
    :pswitch_39
    sget-object v0, Lcom/facebook/bidding/FBAdBidFormat;->NATIVE:Lcom/facebook/bidding/FBAdBidFormat;

    goto :goto_10

    .line 203
    :pswitch_3c
    iget-object v5, p0, Lcom/anythink/hb/bidder/FacebookBidder;->g:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_94

    :cond_45
    move v1, v2

    :goto_46
    packed-switch v1, :pswitch_data_a2

    goto :goto_10

    .line 205
    :pswitch_4a
    sget-object v0, Lcom/facebook/bidding/FBAdBidFormat;->BANNER_HEIGHT_50:Lcom/facebook/bidding/FBAdBidFormat;

    goto :goto_10

    .line 203
    :sswitch_4d
    const-string v3, "320x50"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    goto :goto_46

    :sswitch_56
    const-string v1, "320x90"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    move v1, v3

    goto :goto_46

    :sswitch_60
    const-string v1, "320x250"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    move v1, v4

    goto :goto_46

    .line 208
    :pswitch_6a
    sget-object v0, Lcom/facebook/bidding/FBAdBidFormat;->BANNER_HEIGHT_90:Lcom/facebook/bidding/FBAdBidFormat;

    goto :goto_10

    .line 211
    :pswitch_6d
    sget-object v0, Lcom/facebook/bidding/FBAdBidFormat;->BANNER_HEIGHT_250:Lcom/facebook/bidding/FBAdBidFormat;

    goto :goto_10

    .line 219
    :pswitch_70
    sget-object v0, Lcom/facebook/bidding/FBAdBidFormat;->INTERSTITIAL:Lcom/facebook/bidding/FBAdBidFormat;

    goto :goto_10

    .line 223
    :pswitch_73
    sget-object v0, Lcom/facebook/bidding/FBAdBidFormat;->REWARDED_VIDEO:Lcom/facebook/bidding/FBAdBidFormat;

    goto :goto_10

    .line 197
    :sswitch_data_76
    .sparse-switch
        -0x772abbe9 -> :sswitch_11
        -0x51d5b0d4 -> :sswitch_25
        0x6352f8ea -> :sswitch_2f
        0x7458732c -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_39
        :pswitch_3c
        :pswitch_70
        :pswitch_73
    .end packed-switch

    .line 203
    :sswitch_data_94
    .sparse-switch
        -0x1df42bfa -> :sswitch_60
        0x59df59c2 -> :sswitch_4d
        0x59df5a3e -> :sswitch_56
    .end sparse-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_6a
        :pswitch_6d
    .end packed-switch
.end method

.method public getAdsRender()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/anythink/hb/bidder/FacebookBidder;->d:Lcom/facebook/bidding/FBAdBidFormat;

    if-nez v0, :cond_c

    .line 167
    new-instance v0, Lcom/anythink/hb/exception/FailedToGetRenderException;

    const-string v1, "Unsupported FACEBOOK AD format!"

    invoke-direct {v0, v1}, Lcom/anythink/hb/exception/FailedToGetRenderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_c
    iget-object v0, p0, Lcom/anythink/hb/bidder/FacebookBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    if-nez v0, :cond_18

    .line 171
    new-instance v0, Lcom/anythink/hb/exception/FailedToGetRenderException;

    const-string v1, "HiBidContext == NULL!"

    invoke-direct {v0, v1}, Lcom/anythink/hb/exception/FailedToGetRenderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_18
    const/4 v0, 0x0

    .line 175
    sget-object v1, Lcom/anythink/hb/bidder/FacebookBidder$2;->a:[I

    iget-object v2, p0, Lcom/anythink/hb/bidder/FacebookBidder;->d:Lcom/facebook/bidding/FBAdBidFormat;

    invoke-virtual {v2}, Lcom/facebook/bidding/FBAdBidFormat;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5e

    .line 191
    :goto_26
    return-object v0

    .line 177
    :pswitch_27
    new-instance v0, Lcom/facebook/ads/NativeAd;

    iget-object v1, p0, Lcom/anythink/hb/bidder/FacebookBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    invoke-virtual {v1}, Lcom/anythink/hb/data/HiBidContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/hb/bidder/FacebookBidder;->e:Lcom/facebook/bidding/FBAdBidResponse;

    invoke-virtual {v2}, Lcom/facebook/bidding/FBAdBidResponse;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_26

    .line 181
    :pswitch_39
    new-instance v0, Lcom/facebook/ads/InterstitialAd;

    iget-object v1, p0, Lcom/anythink/hb/bidder/FacebookBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    invoke-virtual {v1}, Lcom/anythink/hb/data/HiBidContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/hb/bidder/FacebookBidder;->e:Lcom/facebook/bidding/FBAdBidResponse;

    invoke-virtual {v2}, Lcom/facebook/bidding/FBAdBidResponse;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_26

    .line 185
    :pswitch_4b
    new-instance v0, Lcom/facebook/ads/RewardedVideoAd;

    iget-object v1, p0, Lcom/anythink/hb/bidder/FacebookBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    invoke-virtual {v1}, Lcom/anythink/hb/data/HiBidContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/hb/bidder/FacebookBidder;->e:Lcom/facebook/bidding/FBAdBidResponse;

    invoke-virtual {v2}, Lcom/facebook/bidding/FBAdBidResponse;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/RewardedVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_26

    .line 175
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_27
        :pswitch_39
        :pswitch_4b
    .end packed-switch
.end method

.method public getBidderClass()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 45
    const-class v0, Lcom/anythink/hb/bidder/FacebookBidder;

    return-object v0
.end method

.method public getBidderRequestInfo()Lcom/anythink/hb/data/BidRequestInfo;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/anythink/hb/bidder/FacebookBidder;->f:Lcom/anythink/hb/data/BidRequestInfo;

    return-object v0
.end method

.method public init(Lcom/anythink/hb/data/HiBidContext;)V
    .registers 5

    .prologue
    .line 56
    :try_start_0
    iput-object p1, p0, Lcom/anythink/hb/bidder/FacebookBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    .line 57
    sget-boolean v0, Lcom/anythink/hb/bidder/FacebookBidder;->b:Z

    if-nez v0, :cond_12

    .line 58
    iget-object v0, p0, Lcom/anythink/hb/bidder/FacebookBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    invoke-virtual {v0}, Lcom/anythink/hb/data/HiBidContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkAds;->initialize(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anythink/hb/bidder/FacebookBidder;->b:Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_12} :catch_20

    .line 65
    :cond_12
    return-void

    .line 61
    :catch_13
    move-exception v0

    .line 62
    new-instance v1, Lcom/anythink/hb/exception/BidderInitFailedException;

    const-string v2, "Facebook Bidder init failed"

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/anythink/hb/exception/BidderInitFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 63
    :catch_20
    move-exception v0

    .line 64
    new-instance v1, Lcom/anythink/hb/exception/SdkIntegratedException;

    const-string v2, "Facebook sdk not integrated!"

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/anythink/hb/exception/SdkIntegratedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onAuctionNotification(Lcom/anythink/hb/data/AuctionNotification;)V
    .registers 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/anythink/hb/bidder/FacebookBidder;->e:Lcom/facebook/bidding/FBAdBidResponse;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/anythink/hb/bidder/FacebookBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    if-eqz v0, :cond_1a

    .line 153
    invoke-virtual {p1}, Lcom/anythink/hb/data/AuctionNotification;->isWinner()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 154
    sget-object v0, Lcom/anythink/hb/bidder/FacebookBidder;->a:Ljava/lang/String;

    const-string v1, "Facebook Bidder Wins"

    invoke-static {v0, v1}, Lcom/anythink/hb/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/anythink/hb/bidder/FacebookBidder;->e:Lcom/facebook/bidding/FBAdBidResponse;

    invoke-virtual {v0}, Lcom/facebook/bidding/FBAdBidResponse;->notifyWin()V

    .line 162
    :cond_1a
    :goto_1a
    return-void

    .line 157
    :cond_1b
    sget-object v0, Lcom/anythink/hb/bidder/FacebookBidder;->a:Ljava/lang/String;

    const-string v1, "Facebook Bidder Loss"

    invoke-static {v0, v1}, Lcom/anythink/hb/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/anythink/hb/bidder/FacebookBidder;->e:Lcom/facebook/bidding/FBAdBidResponse;

    invoke-virtual {v0}, Lcom/facebook/bidding/FBAdBidResponse;->notifyLoss()V

    goto :goto_1a
.end method
