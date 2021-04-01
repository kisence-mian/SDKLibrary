.class public Lcom/anythink/hb/bidder/MtgBidder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/hb/Bidder;


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Z


# instance fields
.field private c:Lcom/anythink/hb/data/HiBidContext;

.field private d:Ljava/lang/Object;

.field private e:Lcom/anythink/hb/data/BidRequestInfo;

.field private f:Lcom/mintegral/msdk/mtgbid/out/BidResponsed;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/anythink/hb/bidder/MtgBidder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/hb/bidder/MtgBidder;->a:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anythink/hb/bidder/MtgBidder;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->e:Lcom/anythink/hb/data/BidRequestInfo;

    .line 49
    iput-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->f:Lcom/mintegral/msdk/mtgbid/out/BidResponsed;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->g:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/anythink/hb/bidder/MtgBidder;)Lcom/anythink/hb/data/BidRequestInfo;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->e:Lcom/anythink/hb/data/BidRequestInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/hb/bidder/MtgBidder;Lcom/mintegral/msdk/mtgbid/out/BidResponsed;)Lcom/mintegral/msdk/mtgbid/out/BidResponsed;
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/anythink/hb/bidder/MtgBidder;->f:Lcom/mintegral/msdk/mtgbid/out/BidResponsed;

    return-object p1
.end method


# virtual methods
.method public bid(Lcom/anythink/hb/data/BidRequestInfo;Ljava/lang/String;JLcom/anythink/hb/callback/BiddingCallback;)V
    .registers 12

    .prologue
    const/16 v1, 0x2d0

    .line 87
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    if-nez v0, :cond_10

    .line 88
    :cond_8
    new-instance v0, Lcom/anythink/hb/exception/BiddingException;

    const-string v1, "MtgBidder: bidRequestInfo == null || context == null"

    invoke-direct {v0, v1}, Lcom/anythink/hb/exception/BiddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_10
    invoke-virtual {p1}, Lcom/anythink/hb/data/BidRequestInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p1}, Lcom/anythink/hb/data/BidRequestInfo;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 92
    :cond_24
    new-instance v0, Lcom/anythink/hb/exception/BiddingException;

    const-string v1, "MtgBidder: appId == null || placementId == null"

    invoke-direct {v0, v1}, Lcom/anythink/hb/exception/BiddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2c
    const-string v0, "BANNER"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 96
    invoke-virtual {p1}, Lcom/anythink/hb/data/BidRequestInfo;->getBannerSize()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->h:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 98
    new-instance v0, Lcom/anythink/hb/exception/BiddingException;

    const-string v1, "facebook: banner size == null"

    invoke-direct {v0, v1}, Lcom/anythink/hb/exception/BiddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_4a
    :try_start_4a
    iput-object p1, p0, Lcom/anythink/hb/bidder/MtgBidder;->e:Lcom/anythink/hb/data/BidRequestInfo;

    .line 104
    invoke-virtual {p1}, Lcom/anythink/hb/data/BidRequestInfo;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->g:Ljava/lang/String;

    .line 106
    invoke-virtual {p0, p2}, Lcom/anythink/hb/bidder/MtgBidder;->getAdBidFormat(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->d:Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->d:Ljava/lang/Object;

    if-nez v0, :cond_6d

    .line 108
    new-instance v0, Lcom/anythink/hb/data/BiddingResponse;

    const-class v2, Lcom/anythink/hb/bidder/MtgBidder;

    const-string v3, "Unsupported MtgBidder AD format!"

    iget-object v4, p0, Lcom/anythink/hb/bidder/MtgBidder;->e:Lcom/anythink/hb/data/BidRequestInfo;

    invoke-direct {v0, v2, v3, p0, v4}, Lcom/anythink/hb/data/BiddingResponse;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/anythink/hb/Bidder;Lcom/anythink/hb/data/BidRequestInfo;)V

    .line 110
    if-eqz p5, :cond_6d

    .line 111
    invoke-interface {p5, v0}, Lcom/anythink/hb/callback/BiddingCallback;->onBiddingResponse(Lcom/anythink/hb/data/BiddingResponse;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_6c} :catch_c9

    .line 187
    :cond_6c
    :goto_6c
    return-void

    .line 117
    :cond_6d
    :try_start_6d
    invoke-static {}, Lcom/mintegral/msdk/out/CustomInfoManager;->getInstance()Lcom/mintegral/msdk/out/CustomInfoManager;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/hb/bidder/MtgBidder;->g:Ljava/lang/String;

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/anythink/hb/bidder/MtgBidder;->e:Lcom/anythink/hb/data/BidRequestInfo;

    invoke-virtual {v4}, Lcom/anythink/hb/data/BidRequestInfo;->getCustomInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/mintegral/msdk/out/CustomInfoManager;->setCustomInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_7d} :catch_118

    .line 123
    :goto_7d
    :try_start_7d
    const-string v0, "BANNER"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 124
    iget-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->h:Ljava/lang/String;

    const-string v2, "smart"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 125
    iget-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    invoke-virtual {v0}, Lcom/anythink/hb/data/HiBidContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 126
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 129
    if-ge v0, v1, :cond_e0

    .line 130
    const/16 v1, 0x140

    .line 131
    const/16 v0, 0x32

    move v2, v1

    move v1, v0

    .line 136
    :goto_a7
    new-instance v0, Lcom/mintegral/msdk/mtgbid/out/BidManager;

    new-instance v3, Lcom/mintegral/msdk/mtgbid/out/BannerBidRequestParams;

    iget-object v4, p0, Lcom/anythink/hb/bidder/MtgBidder;->e:Lcom/anythink/hb/data/BidRequestInfo;

    invoke-virtual {v4}, Lcom/anythink/hb/data/BidRequestInfo;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2, v1}, Lcom/mintegral/msdk/mtgbid/out/BannerBidRequestParams;-><init>(Ljava/lang/String;II)V

    invoke-direct {v0, v3}, Lcom/mintegral/msdk/mtgbid/out/BidManager;-><init>(Lcom/mintegral/msdk/mtgbid/out/CommonBidRequestParams;)V

    .line 144
    :goto_b7
    new-instance v1, Lcom/anythink/hb/bidder/MtgBidder$1;

    invoke-direct {v1, p0, p5}, Lcom/anythink/hb/bidder/MtgBidder$1;-><init>(Lcom/anythink/hb/bidder/MtgBidder;Lcom/anythink/hb/callback/BiddingCallback;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbid/out/BidManager;->setBidListener(Lcom/mintegral/msdk/mtgbid/out/BidListennning;)V

    .line 174
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 175
    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbid/out/BidManager;->bid()V

    .line 176
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_c8
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_c8} :catch_c9

    goto :goto_6c

    .line 178
    :catch_c9
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    new-instance v1, Lcom/anythink/hb/data/BiddingResponse;

    const-class v2, Lcom/anythink/hb/bidder/MtgBidder;

    .line 181
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/hb/bidder/MtgBidder;->e:Lcom/anythink/hb/data/BidRequestInfo;

    invoke-direct {v1, v2, v0, p0, v3}, Lcom/anythink/hb/data/BiddingResponse;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/anythink/hb/Bidder;Lcom/anythink/hb/data/BidRequestInfo;)V

    .line 182
    if-eqz p5, :cond_6c

    .line 183
    invoke-interface {p5, v1}, Lcom/anythink/hb/callback/BiddingCallback;->onBiddingResponse(Lcom/anythink/hb/data/BiddingResponse;)V

    goto :goto_6c

    .line 134
    :cond_e0
    const/16 v0, 0x5a

    move v2, v1

    move v1, v0

    goto :goto_a7

    .line 138
    :cond_e5
    :try_start_e5
    iget-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->h:Ljava/lang/String;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 139
    new-instance v0, Lcom/mintegral/msdk/mtgbid/out/BidManager;

    new-instance v2, Lcom/mintegral/msdk/mtgbid/out/BannerBidRequestParams;

    iget-object v3, p0, Lcom/anythink/hb/bidder/MtgBidder;->e:Lcom/anythink/hb/data/BidRequestInfo;

    invoke-virtual {v3}, Lcom/anythink/hb/data/BidRequestInfo;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v2, v3, v4, v1}, Lcom/mintegral/msdk/mtgbid/out/BannerBidRequestParams;-><init>(Ljava/lang/String;II)V

    invoke-direct {v0, v2}, Lcom/mintegral/msdk/mtgbid/out/BidManager;-><init>(Lcom/mintegral/msdk/mtgbid/out/CommonBidRequestParams;)V

    goto :goto_b7

    .line 142
    :cond_10c
    new-instance v0, Lcom/mintegral/msdk/mtgbid/out/BidManager;

    iget-object v1, p0, Lcom/anythink/hb/bidder/MtgBidder;->e:Lcom/anythink/hb/data/BidRequestInfo;

    invoke-virtual {v1}, Lcom/anythink/hb/data/BidRequestInfo;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/mtgbid/out/BidManager;-><init>(Ljava/lang/String;)V
    :try_end_117
    .catch Ljava/lang/Throwable; {:try_start_e5 .. :try_end_117} :catch_c9

    goto :goto_b7

    :catch_118
    move-exception v0

    goto/16 :goto_7d
.end method

.method public getAdBidFormat(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_36

    :cond_9
    :goto_9
    packed-switch v1, :pswitch_data_48

    move-object p1, v0

    .line 257
    :pswitch_d
    return-object p1

    .line 245
    :sswitch_e
    const-string v2, "NATIVE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x0

    goto :goto_9

    :sswitch_18
    const-string v2, "BANNER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x1

    goto :goto_9

    :sswitch_22
    const-string v2, "INTERSTITIAL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x2

    goto :goto_9

    :sswitch_2c
    const-string v2, "REWARDED_VIDEO"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x3

    goto :goto_9

    :sswitch_data_36
    .sparse-switch
        -0x772abbe9 -> :sswitch_e
        -0x51d5b0d4 -> :sswitch_22
        0x6352f8ea -> :sswitch_2c
        0x7458732c -> :sswitch_18
    .end sparse-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public getAdsRender()Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 212
    iget-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->d:Ljava/lang/Object;

    if-nez v0, :cond_d

    .line 213
    new-instance v0, Lcom/anythink/hb/exception/FailedToGetRenderException;

    const-string v1, "Unsupported MTG AD format!"

    invoke-direct {v0, v1}, Lcom/anythink/hb/exception/FailedToGetRenderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_d
    iget-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    if-nez v0, :cond_19

    .line 217
    new-instance v0, Lcom/anythink/hb/exception/FailedToGetRenderException;

    const-string v1, "HiBidContext == NULL!"

    invoke-direct {v0, v1}, Lcom/anythink/hb/exception/FailedToGetRenderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_19
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_82

    :cond_26
    move v0, v2

    :goto_27
    packed-switch v0, :pswitch_data_90

    move-object v0, v1

    .line 239
    :goto_2b
    return-object v0

    .line 221
    :sswitch_2c
    const-string v4, "NATIVE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    goto :goto_27

    :sswitch_36
    const-string v4, "INTERSTITIAL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v3

    goto :goto_27

    :sswitch_40
    const-string v4, "REWARDED_VIDEO"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x2

    goto :goto_27

    .line 223
    :pswitch_4a
    iget-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->getNativeProperties(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 224
    const-string v0, "ad_num"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;

    iget-object v2, p0, Lcom/anythink/hb/bidder/MtgBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    invoke-virtual {v2}, Lcom/anythink/hb/data/HiBidContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/out/MtgBidNativeHandler;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    goto :goto_2b

    .line 229
    :pswitch_65
    new-instance v0, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;

    iget-object v1, p0, Lcom/anythink/hb/bidder/MtgBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    invoke-virtual {v1}, Lcom/anythink/hb/data/HiBidContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/hb/bidder/MtgBidder;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2b

    .line 233
    :pswitch_73
    new-instance v0, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;

    iget-object v1, p0, Lcom/anythink/hb/bidder/MtgBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    invoke-virtual {v1}, Lcom/anythink/hb/data/HiBidContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/hb/bidder/MtgBidder;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2b

    .line 221
    nop

    :sswitch_data_82
    .sparse-switch
        -0x772abbe9 -> :sswitch_2c
        -0x51d5b0d4 -> :sswitch_36
        0x6352f8ea -> :sswitch_40
    .end sparse-switch

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_65
        :pswitch_73
    .end packed-switch
.end method

.method public getBidderClass()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 56
    const-class v0, Lcom/anythink/hb/bidder/MtgBidder;

    return-object v0
.end method

.method public getBidderRequestInfo()Lcom/anythink/hb/data/BidRequestInfo;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->e:Lcom/anythink/hb/data/BidRequestInfo;

    return-object v0
.end method

.method public init(Lcom/anythink/hb/data/HiBidContext;)V
    .registers 5

    .prologue
    .line 67
    :try_start_0
    iput-object p1, p0, Lcom/anythink/hb/bidder/MtgBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    .line 68
    sget-boolean v0, Lcom/anythink/hb/bidder/MtgBidder;->b:Z

    if-nez v0, :cond_26

    .line 69
    invoke-static {}, Lcom/mintegral/msdk/out/MIntegralSDKFactory;->getMIntegralSDK()Lcom/mintegral/msdk/system/a;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/anythink/hb/bidder/MtgBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    invoke-virtual {v1}, Lcom/anythink/hb/data/HiBidContext;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/hb/bidder/MtgBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    invoke-virtual {v2}, Lcom/anythink/hb/data/HiBidContext;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/MIntegralSDK;->getMTGConfigurationMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/anythink/hb/bidder/MtgBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    invoke-virtual {v2}, Lcom/anythink/hb/data/HiBidContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/MIntegralSDK;->init(Ljava/util/Map;Landroid/content/Context;)V

    .line 72
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anythink/hb/bidder/MtgBidder;->b:Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_26} :catch_34

    .line 79
    :cond_26
    return-void

    .line 75
    :catch_27
    move-exception v0

    .line 76
    new-instance v1, Lcom/anythink/hb/exception/BidderInitFailedException;

    const-string v2, "MtgBidder init failed"

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/anythink/hb/exception/BidderInitFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 77
    :catch_34
    move-exception v0

    .line 78
    new-instance v1, Lcom/anythink/hb/exception/SdkIntegratedException;

    const-string v2, "Mintegral sdk not integrated!"

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/anythink/hb/exception/SdkIntegratedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onAuctionNotification(Lcom/anythink/hb/data/AuctionNotification;)V
    .registers 5

    .prologue
    .line 191
    iget-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->f:Lcom/mintegral/msdk/mtgbid/out/BidResponsed;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    if-eqz v0, :cond_20

    .line 192
    invoke-virtual {p1}, Lcom/anythink/hb/data/AuctionNotification;->isWinner()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 193
    sget-object v0, Lcom/anythink/hb/bidder/MtgBidder;->a:Ljava/lang/String;

    const-string v1, "Mtg Bidder Wins"

    invoke-static {v0, v1}, Lcom/anythink/hb/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->f:Lcom/mintegral/msdk/mtgbid/out/BidResponsed;

    iget-object v1, p0, Lcom/anythink/hb/bidder/MtgBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    invoke-virtual {v1}, Lcom/anythink/hb/data/HiBidContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbid/out/BidResponsed;->sendWinNotice(Landroid/content/Context;)V

    .line 208
    :cond_20
    :goto_20
    return-void

    .line 196
    :cond_21
    invoke-virtual {p1}, Lcom/anythink/hb/data/AuctionNotification;->getReasonCode()Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    move-result-object v0

    sget-object v1, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;->Loss:Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    invoke-virtual {v0, v1}, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 197
    sget-object v0, Lcom/anythink/hb/bidder/MtgBidder;->a:Ljava/lang/String;

    const-string v1, "Mtg Bidder Loss"

    invoke-static {v0, v1}, Lcom/anythink/hb/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->f:Lcom/mintegral/msdk/mtgbid/out/BidResponsed;

    iget-object v1, p0, Lcom/anythink/hb/bidder/MtgBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    invoke-virtual {v1}, Lcom/anythink/hb/data/HiBidContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/mintegral/msdk/mtgbid/out/BidLossCode;->bidPriceNotHighest()Lcom/mintegral/msdk/mtgbid/out/BidLossCode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/mtgbid/out/BidResponsed;->sendLossNotice(Landroid/content/Context;Lcom/mintegral/msdk/mtgbid/out/BidLossCode;)V

    goto :goto_20

    .line 199
    :cond_44
    invoke-virtual {p1}, Lcom/anythink/hb/data/AuctionNotification;->getReasonCode()Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    move-result-object v0

    sget-object v1, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;->Timeout:Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    invoke-virtual {v0, v1}, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 200
    sget-object v0, Lcom/anythink/hb/bidder/MtgBidder;->a:Ljava/lang/String;

    const-string v1, "Mtg Bidder Timeout"

    invoke-static {v0, v1}, Lcom/anythink/hb/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/anythink/hb/bidder/MtgBidder;->f:Lcom/mintegral/msdk/mtgbid/out/BidResponsed;

    iget-object v1, p0, Lcom/anythink/hb/bidder/MtgBidder;->c:Lcom/anythink/hb/data/HiBidContext;

    invoke-virtual {v1}, Lcom/anythink/hb/data/HiBidContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/mintegral/msdk/mtgbid/out/BidLossCode;->bidTimeOut()Lcom/mintegral/msdk/mtgbid/out/BidLossCode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/mtgbid/out/BidResponsed;->sendLossNotice(Landroid/content/Context;Lcom/mintegral/msdk/mtgbid/out/BidLossCode;)V

    goto :goto_20

    .line 203
    :cond_67
    sget-object v0, Lcom/anythink/hb/bidder/MtgBidder;->a:Ljava/lang/String;

    const-string v1, "Mtg Bidder Loss"

    invoke-static {v0, v1}, Lcom/anythink/hb/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method
