.class public Lcom/bytedance/sdk/openadsdk/AdSlot;
.super Ljava/lang/Object;
.source "AdSlot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    }
.end annotation


# static fields
.field public static final TYPE_BANNER:I = 0x1

.field public static final TYPE_CACHED_SPLASH:I = 0x4

.field public static final TYPE_DRAW_FEED:I = 0x9

.field public static final TYPE_FEED:I = 0x5

.field public static final TYPE_FULL_SCREEN_VIDEO:I = 0x8

.field public static final TYPE_INTERACTION_AD:I = 0x2

.field public static final TYPE_REWARD_VIDEO:I = 0x7

.field public static final TYPE_SPLASH:I = 0x3

.field public static final TYPE_STREAM:I = 0x6


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:[I

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->m:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->p:Z

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/AdSlot$1;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F
    .registers 2

    .line 15
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->d:F

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .registers 2

    .line 15
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->f:I

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z
    .registers 2

    .line 15
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->g:Z

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/AdSlot;[I)[I
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->q:[I

    return-object p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F
    .registers 2

    .line 15
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->e:F

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .registers 2

    .line 15
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->b:I

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z
    .registers 2

    .line 15
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .registers 2

    .line 15
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->c:I

    return p1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z
    .registers 2

    .line 15
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->p:Z

    return p1
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .registers 2

    .line 15
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->j:I

    return p1
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .registers 2

    .line 15
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->m:I

    return p1
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->t:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .registers 2

    .line 15
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->o:I

    return p1
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .registers 2

    .line 15
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->s:I

    return p1
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->v:Ljava/lang/String;

    return-object p1
.end method

.method public static getPosition(I)I
    .registers 2

    .line 88
    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_c

    .line 102
    :pswitch_4
    return v0

    .line 98
    :pswitch_5
    return v0

    .line 95
    :pswitch_6
    const/4 p0, 0x5

    return p0

    .line 100
    :pswitch_8
    const/4 p0, 0x4

    return p0

    .line 90
    :pswitch_a
    const/4 p0, 0x2

    return p0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_a
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I
    .registers 2

    .line 15
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->n:I

    return p1
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->w:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->u:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getAdCount()I
    .registers 2

    .line 135
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->f:I

    return v0
.end method

.method public getAdId()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getAdType()I
    .registers 2

    .line 187
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->n:I

    return v0
.end method

.method public getAdloadSeq()I
    .registers 2

    .line 179
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->s:I

    return v0
.end method

.method public getBidAdm()Ljava/lang/String;
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeId()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getExpressViewAcceptedHeight()F
    .registers 2

    .line 123
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->e:F

    return v0
.end method

.method public getExpressViewAcceptedWidth()F
    .registers 2

    .line 119
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->d:F

    return v0
.end method

.method public getExternalABVid()[I
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->q:[I

    return-object v0
.end method

.method public getExtraSmartLookParam()Ljava/lang/String;
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getImgAcceptedHeight()I
    .registers 2

    .line 115
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->c:I

    return v0
.end method

.method public getImgAcceptedWidth()I
    .registers 2

    .line 111
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->b:I

    return v0
.end method

.method public getMediaExtra()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeAdType()I
    .registers 2

    .line 163
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->o:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .line 159
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->m:I

    return v0
.end method

.method public getPrimeRit()Ljava/lang/String;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->t:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getRewardAmount()I
    .registers 2

    .line 147
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->j:I

    return v0
.end method

.method public getRewardName()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->l:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoPlay()Z
    .registers 2

    .line 107
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->p:Z

    return v0
.end method

.method public isSupportDeepLink()Z
    .registers 2

    .line 127
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->g:Z

    return v0
.end method

.method public isSupportRenderConrol()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->h:Z

    return v0
.end method

.method public setAdCount(I)V
    .registers 2

    .line 139
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->f:I

    .line 140
    return-void
.end method

.method public varargs setExternalABVid([I)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->q:[I

    .line 176
    return-void
.end method

.method public setNativeAdType(I)V
    .registers 2

    .line 167
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->o:I

    .line 168
    return-void
.end method

.method public toJsonObj()Lorg/json/JSONObject;
    .registers 5

    .line 224
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 226
    :try_start_5
    const-string v1, "mCodeId"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string v1, "mIsAutoPlay"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->p:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 228
    const-string v1, "mImgAcceptedWidth"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 229
    const-string v1, "mImgAcceptedHeight"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 230
    const-string v1, "mExpressViewAcceptedWidth"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->d:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 231
    const-string v1, "mExpressViewAcceptedHeight"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->e:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 232
    const-string v1, "mAdCount"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 233
    const-string v1, "mSupportDeepLink"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->g:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 234
    const-string v1, "mSupportRenderControl"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->h:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 235
    const-string v1, "mRewardName"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    const-string v1, "mRewardAmount"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->j:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 237
    const-string v1, "mMediaExtra"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string v1, "mUserID"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string v1, "mOrientation"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->m:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 240
    const-string v1, "mNativeAdType"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->o:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 241
    const-string v1, "mAdloadSeq"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->s:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 242
    const-string v1, "mPrimeRit"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v1, "mExtraSmartLookParam"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v1, "mAdId"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string v1, "mCreativeId"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v1, "mBidAdm"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9a} :catch_9b

    .line 249
    goto :goto_9c

    .line 247
    :catch_9b
    move-exception v1

    .line 250
    :goto_9c
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdSlot{mCodeId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mImgAcceptedWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mImgAcceptedHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mExpressViewAcceptedWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->d:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mExpressViewAcceptedHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->e:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mAdCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mSupportDeepLink="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->g:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mSupportRenderControl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->h:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mRewardName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mRewardAmount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mMediaExtra=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mUserID=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNativeAdType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsAutoPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPrimeRit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdloadSeq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCreativeId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
