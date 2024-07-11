.class public Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;
.super Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

.field b:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;

.field c:Ljava/lang/String;

.field d:Z

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->d:Z

    .line 34
    const-string v1, "0"

    iput-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->f:Ljava/lang/String;

    .line 35
    iput v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->g:I

    return-void
.end method

.method static synthetic A(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic B(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic C(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic D(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic E(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic F(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic G(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic H(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic I(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic J(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic K(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic L(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic a(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 8

    .line 85
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_94

    :cond_b
    goto :goto_20

    :pswitch_c
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    goto :goto_21

    :pswitch_16
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v3

    goto :goto_21

    :goto_20
    const/4 v0, -0x1

    :goto_21
    packed-switch v0, :pswitch_data_9c

    .line 92
    nop

    .line 2098
    new-instance v0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->c:Ljava/lang/String;

    new-instance v4, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;

    invoke-direct {v4, p0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;-><init>(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)V

    iget v5, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->g:I

    if-eq v5, v3, :cond_6f

    move v2, v3

    goto :goto_6f

    .line 87
    :pswitch_38
    nop

    .line 1195
    new-instance v0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->c:Ljava/lang/String;

    new-instance v4, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;

    invoke-direct {v4, p0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;-><init>(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)V

    invoke-direct {v0, p1, v1, v4}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;)V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;

    .line 1279
    iget p1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->g:I

    if-eq p1, v3, :cond_4c

    move v2, v3

    :cond_4c
    invoke-virtual {v0, v2}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->setVolumeOn(Z)V

    .line 1281
    :try_start_4f
    new-instance p1, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    invoke-direct {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;-><init>()V

    .line 1282
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->setUserId(Ljava/lang/String;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    .line 1283
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mUserData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->setCustomData(Ljava/lang/String;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    .line 1284
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->build()Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V
    :try_end_67
    .catchall {:try_start_4f .. :try_end_67} :catchall_68

    .line 1286
    goto :goto_69

    .line 1285
    :catchall_68
    move-exception p1

    .line 1288
    :goto_69
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->loadAD()V

    .line 88
    return-void

    .line 2098
    :cond_6f
    :goto_6f
    invoke-direct {v0, p1, v1, v4, v2}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;Z)V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 2184
    :try_start_74
    new-instance p1, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    invoke-direct {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;-><init>()V

    .line 2185
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->setUserId(Ljava/lang/String;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    .line 2186
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mUserData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->setCustomData(Ljava/lang/String;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    .line 2187
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->build()Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V
    :try_end_8c
    .catchall {:try_start_74 .. :try_end_8c} :catchall_8d

    .line 2189
    goto :goto_8e

    .line 2188
    :catchall_8d
    move-exception p1

    .line 2191
    :goto_8e
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->loadAD()V

    .line 95
    return-void

    :pswitch_data_94
    .packed-switch 0x30
        :pswitch_16
        :pswitch_c
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_38
    .end packed-switch
.end method

.method static synthetic a(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;Landroid/content/Context;)V
    .registers 8

    .line 26
    nop

    .line 3085
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_96

    :cond_c
    goto :goto_21

    :pswitch_d
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_22

    :pswitch_17
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_22

    :goto_21
    const/4 v0, -0x1

    :goto_22
    packed-switch v0, :pswitch_data_9e

    .line 3092
    nop

    .line 4098
    new-instance v0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->c:Ljava/lang/String;

    new-instance v4, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;

    invoke-direct {v4, p0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;-><init>(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)V

    iget v5, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->g:I

    if-eq v5, v3, :cond_70

    move v2, v3

    goto :goto_70

    .line 3087
    :pswitch_39
    nop

    .line 3195
    new-instance v0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->c:Ljava/lang/String;

    new-instance v4, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;

    invoke-direct {v4, p0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;-><init>(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)V

    invoke-direct {v0, p1, v1, v4}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;)V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;

    .line 3279
    iget p1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->g:I

    if-eq p1, v3, :cond_4d

    move v2, v3

    :cond_4d
    invoke-virtual {v0, v2}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->setVolumeOn(Z)V

    .line 3281
    :try_start_50
    new-instance p1, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    invoke-direct {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;-><init>()V

    .line 3282
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->setUserId(Ljava/lang/String;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    .line 3283
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mUserData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->setCustomData(Ljava/lang/String;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    .line 3284
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->build()Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V
    :try_end_68
    .catchall {:try_start_50 .. :try_end_68} :catchall_69

    .line 3286
    goto :goto_6a

    .line 3285
    :catchall_69
    move-exception p1

    .line 3288
    :goto_6a
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;

    invoke-virtual {p0}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->loadAD()V

    .line 3088
    return-void

    .line 4098
    :cond_70
    :goto_70
    invoke-direct {v0, p1, v1, v4, v2}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;Z)V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 4184
    :try_start_75
    new-instance p1, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    invoke-direct {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;-><init>()V

    .line 4185
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->setUserId(Ljava/lang/String;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    .line 4186
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mUserData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->setCustomData(Ljava/lang/String;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    .line 4187
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->build()Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V
    :try_end_8d
    .catchall {:try_start_75 .. :try_end_8d} :catchall_8e

    .line 4189
    goto :goto_8f

    .line 4188
    :catchall_8e
    move-exception p1

    .line 4191
    :goto_8f
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {p0}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->loadAD()V

    .line 26
    return-void

    nop

    :pswitch_data_96
    .packed-switch 0x30
        :pswitch_17
        :pswitch_d
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_39
    .end packed-switch
.end method

.method static synthetic b(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .registers 7

    .line 98
    new-instance v0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->c:Ljava/lang/String;

    new-instance v2, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;

    invoke-direct {v2, p0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;-><init>(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)V

    iget v3, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->g:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_13

    goto :goto_14

    :cond_13
    const/4 v4, 0x0

    :goto_14
    invoke-direct {v0, p1, v1, v2, v4}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;Z)V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 184
    :try_start_19
    new-instance p1, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    invoke-direct {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;-><init>()V

    .line 185
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->setUserId(Ljava/lang/String;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    .line 186
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mUserData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->setCustomData(Ljava/lang/String;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    .line 187
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->build()Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_32

    .line 189
    goto :goto_33

    .line 188
    :catchall_32
    move-exception p1

    .line 191
    :goto_33
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->loadAD()V

    .line 192
    return-void
.end method

.method static synthetic c(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .registers 5

    .line 195
    new-instance v0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->c:Ljava/lang/String;

    new-instance v2, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;

    invoke-direct {v2, p0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;-><init>(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;)V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;

    .line 279
    iget p1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->g:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->setVolumeOn(Z)V

    .line 281
    :try_start_18
    new-instance p1, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    invoke-direct {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;-><init>()V

    .line 282
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->setUserId(Ljava/lang/String;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    .line 283
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mUserData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->setCustomData(Ljava/lang/String;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    .line 284
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->build()Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_31

    .line 286
    goto :goto_32

    .line 285
    :catchall_31
    move-exception p1

    .line 288
    :goto_32
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->loadAD()V

    .line 290
    return-void
.end method

.method static synthetic d(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic m(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic n(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic o(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic p(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic q(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic r(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic s(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic t(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic u(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic v(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic w(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic x(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic y(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic z(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 3

    .line 300
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 301
    iput-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 304
    :cond_7
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;

    if-eqz v0, :cond_10

    .line 305
    invoke-virtual {v0}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->destroy()V

    .line 306
    iput-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;

    .line 308
    :cond_10
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 295
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 317
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATInitManager;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReady()Z
    .registers 5

    .line 323
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    .line 324
    iget-boolean v3, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->d:Z

    if-eqz v3, :cond_11

    invoke-virtual {v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->hasShown()Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    :cond_11
    return v2

    .line 327
    :cond_12
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;

    if-eqz v0, :cond_22

    .line 328
    iget-boolean v3, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->d:Z

    if-eqz v3, :cond_21

    invoke-virtual {v0}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->hasShown()Z

    move-result v0

    if-nez v0, :cond_21

    return v1

    :cond_21
    return v2

    .line 331
    :cond_22
    return v2
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 39
    nop

    .line 40
    nop

    .line 42
    const-string p3, "app_id"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_15

    .line 43
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_16

    .line 42
    :cond_15
    move-object p3, v1

    .line 46
    :goto_16
    const-string v0, "unit_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 47
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 46
    :cond_27
    move-object v0, v1

    .line 50
    :goto_28
    const-string v2, "personalized_template"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 51
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->f:Ljava/lang/String;

    .line 54
    :cond_3a
    const-string v2, "video_muted"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 55
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->g:I

    .line 58
    :cond_50
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5d

    goto :goto_6f

    .line 66
    :cond_5d
    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->c:Ljava/lang/String;

    .line 67
    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->d:Z

    .line 69
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object p3

    new-instance v0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;-><init>(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;Landroid/content/Context;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/anythink/network/gdt/GDTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/gdt/GDTATInitManager$OnInitCallback;)V

    .line 82
    return-void

    .line 59
    :cond_6f
    :goto_6f
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_7a

    .line 60
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const-string p2, "GTD appid or unitId is empty."

    invoke-interface {p1, v1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_7a
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 3

    .line 337
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    if-eqz v0, :cond_13

    .line 339
    if-eqz p1, :cond_a

    .line 340
    :try_start_6
    invoke-virtual {v0, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->showAD(Landroid/app/Activity;)V

    goto :goto_24

    .line 342
    :cond_a
    invoke-virtual {v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->showAD()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_12

    .line 345
    :catch_e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 346
    :goto_12
    goto :goto_24

    .line 347
    :cond_13
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;

    if-eqz v0, :cond_24

    .line 349
    if-eqz p1, :cond_1d

    .line 350
    invoke-virtual {v0, p1}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->showAD(Landroid/app/Activity;)V

    goto :goto_24

    .line 352
    :cond_1d
    sget-object p1, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->e:Ljava/lang/String;

    const-string v0, "GDT native express reward video, show: activity = null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_24
    :goto_24
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->d:Z

    .line 357
    return-void
.end method
