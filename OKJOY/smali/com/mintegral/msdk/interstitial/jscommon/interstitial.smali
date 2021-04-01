.class public Lcom/mintegral/msdk/interstitial/jscommon/interstitial;
.super Lcom/mintegral/msdk/mtgjscommon/windvane/i;
.source "interstitial.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/i;-><init>()V

    .line 37
    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 314
    const/4 v0, -0x1

    .line 317
    if-eqz p0, :cond_8

    instance-of v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    if-eqz v1, :cond_8

    .line 318
    const/4 v0, 0x1

    .line 348
    :cond_8
    return v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/interstitial/jscommon/interstitial;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 246
    const-string v0, ""

    .line 248
    if-eqz p0, :cond_3f

    :try_start_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3f

    .line 249
    invoke-static {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->parseCamplistToJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    .line 250
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 251
    const-string v3, "campaignList"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    sget-object v2, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "===========campListJson:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 256
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3e} :catch_40

    move-result-object v0

    .line 266
    :cond_3f
    :goto_3f
    return-object v0

    .line 264
    :catch_40
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f
.end method

.method private static a(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 203
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {}, Lcom/mintegral/msdk/interstitial/b/a;->a()Lcom/mintegral/msdk/interstitial/b/a;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 204
    invoke-static {}, Lcom/mintegral/msdk/interstitial/b/a;->a()Lcom/mintegral/msdk/interstitial/b/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mintegral/msdk/interstitial/b/a;->a(Ljava/lang/String;)Ljava/util/List;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_16

    move-result-object v0

    .line 209
    :cond_15
    :goto_15
    return-object v0

    .line 207
    :catch_16
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 540
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 556
    :cond_6
    :goto_6
    return-void

    .line 543
    :cond_7
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 546
    const/4 v0, 0x0

    move v1, v0

    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 547
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 548
    if-eqz v0, :cond_3c

    .line 549
    sget-object v2, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "======\u66f4\u65b0displayid\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v2, "interstitial"

    invoke-static {p0, v0, v2}, Lcom/mintegral/msdk/base/common/a/c;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_40

    .line 546
    :cond_3c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 554
    :catch_40
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method private b()V
    .registers 3

    .prologue
    .line 192
    :try_start_0
    sget-object v0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a:Ljava/lang/String;

    const-string v1, "\u901a\u77e5h5 \u6ca1\u6709\u6570\u636e"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->b:Ljava/lang/Object;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 197
    :goto_11
    return-void

    .line 195
    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method private c()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 357
    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    move-object v0, v1

    .line 377
    :goto_6
    return-object v0

    .line 361
    :cond_7
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a(Landroid/content/Context;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_29

    move-result v0

    .line 362
    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    .line 364
    :try_start_10
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    if-eqz v0, :cond_27

    .line 365
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    .line 366
    if-eqz v0, :cond_27

    .line 367
    iget-object v0, v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mUnitid:Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_22} :catch_23

    goto :goto_6

    .line 371
    :catch_23
    move-exception v0

    :try_start_24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_29

    :cond_27
    :goto_27
    move-object v0, v1

    .line 377
    goto :goto_6

    .line 375
    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method


# virtual methods
.method public getExcludeIdList(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 274
    .line 277
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 304
    :goto_7
    return-object v1

    .line 281
    :cond_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 283
    const-string v2, "exclude_ids"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 285
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4f

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_44

    .line 289
    const/4 v1, 0x0

    :goto_2a
    :try_start_2a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_4b

    .line 291
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 292
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_41} :catch_4d

    .line 289
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 301
    :catch_44
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_48
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4b
    :goto_4b
    move-object v1, v0

    .line 304
    goto :goto_7

    .line 301
    :catch_4d
    move-exception v1

    goto :goto_48

    :cond_4f
    move-object v0, v1

    goto :goto_4b
.end method

.method public getInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 49
    :try_start_1
    sget-object v0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "======\u524d\u7aef\u8c03\u7528 getInfo() \u83b7\u53d6campaign\u6570\u636e params:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->b:Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->mContext:Landroid/content/Context;

    if-nez v0, :cond_26

    .line 53
    sget-object v0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a:Ljava/lang/String;

    const-string v1, "getInfo() context \u4e3a\u7a7a return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->b()V

    .line 2234
    :cond_25
    :goto_25
    return-void

    .line 58
    :cond_26
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a(Landroid/content/Context;)I

    move-result v0

    .line 60
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->c()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 62
    sget-object v0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a:Ljava/lang/String;

    const-string v1, "getInfo() unitid is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->b()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_41

    goto :goto_25

    .line 76
    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->b()V

    goto :goto_25

    .line 67
    :cond_49
    :try_start_49
    sget-object v2, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getInfo() mCurrentCallState:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " unitid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_67} :catch_41

    .line 69
    if-ne v0, v5, :cond_25

    .line 1091
    :try_start_69
    sget-object v0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a:Ljava/lang/String;

    const-string v1, "instersGetInfo hideLoading"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_70} :catch_87

    .line 1385
    :try_start_70
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->mContext:Landroid/content/Context;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_72} :catch_a6

    if-nez v0, :cond_8f

    .line 1409
    :cond_74
    :goto_74
    :try_start_74
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->mContext:Landroid/content/Context;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_76} :catch_bd

    if-nez v0, :cond_ab

    .line 1096
    :cond_78
    :goto_78
    :try_start_78
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c2

    .line 1097
    sget-object v0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a:Ljava/lang/String;

    const-string v1, "instersGetInfo context \u4e3a\u7a7a \u901a\u77e5\u524d\u7aef\u6ca1\u6709\u6570\u636e"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->b()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_86} :catch_87

    goto :goto_25

    .line 1154
    :catch_87
    move-exception v0

    :try_start_88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1155
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->b()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8e} :catch_41

    goto :goto_25

    .line 1388
    :cond_8f
    :try_start_8f
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a(Landroid/content/Context;)I
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_94} :catch_a6

    move-result v0

    .line 1389
    if-ne v0, v5, :cond_74

    .line 1392
    :try_start_97
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    .line 1393
    if-eqz v0, :cond_74

    .line 1394
    invoke-virtual {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->hideLoading()V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a0} :catch_a1

    goto :goto_74

    .line 1397
    :catch_a1
    move-exception v0

    :try_start_a2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a5} :catch_a6

    goto :goto_74

    .line 1401
    :catch_a6
    move-exception v0

    :try_start_a7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_aa} :catch_87

    goto :goto_74

    .line 1412
    :cond_ab
    :try_start_ab
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v5, :cond_78

    .line 1413
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    .line 1414
    if-eqz v0, :cond_78

    .line 1415
    invoke-virtual {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->showWebView()V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_bc} :catch_bd

    goto :goto_78

    .line 1419
    :catch_bd
    move-exception v0

    :try_start_be
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_78

    .line 1102
    :cond_c2
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v5, :cond_d6

    .line 1103
    sget-object v0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a:Ljava/lang/String;

    const-string v1, "instersGetInfo mCurrentCallState!=INTERSTITIAL_CALL"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->b()V

    goto/16 :goto_25

    .line 1108
    :cond_d6
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    if-eqz v0, :cond_ea

    .line 1109
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    .line 1110
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->mIsMtgPage:Z

    .line 1111
    sget-object v0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a:Ljava/lang/String;

    const-string v1, "set mIsMtgPage true"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    :cond_ea
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->c()Ljava/lang/String;

    move-result-object v1

    .line 1115
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 1116
    sget-object v0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a:Ljava/lang/String;

    const-string v1, "instersGetInfo unitid is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->b()V

    goto/16 :goto_25

    .line 1121
    :cond_100
    invoke-static {v1}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1122
    sget-object v0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a:Ljava/lang/String;

    const-string v3, "instersGetInfo \u5f00\u59cb\u4ece\u7f13\u5b58\u91cc\u53d6\u6570\u636e"

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    if-eqz v2, :cond_17a

    .line 1126
    sget-object v0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "instersGetInfo \u4ece\u7f13\u5b58\u91cc\u53d6\u5230\u7684\u6570\u636e \u4e0d\u4e3a\u7a7a size\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    invoke-static {v2}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1129
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13b

    .line 1130
    sget-object v0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a:Ljava/lang/String;

    const-string v1, "instersGetInfo campListJson is null return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->b()V

    goto/16 :goto_25

    .line 1136
    :cond_13b
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1142
    invoke-static {v1, v2}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_144} :catch_87

    .line 1508
    :try_start_144
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_147} :catch_175

    move-result v0

    if-eqz v0, :cond_15f

    .line 2220
    :cond_14a
    :goto_14a
    :try_start_14a
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/mintegral/msdk/interstitial/jscommon/interstitial$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial$1;-><init>(Lcom/mintegral/msdk/interstitial/jscommon/interstitial;Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2231
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_157} :catch_159

    goto/16 :goto_25

    .line 2233
    :catch_159
    move-exception v0

    :try_start_15a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_15d} :catch_87

    goto/16 :goto_25

    .line 1511
    :cond_15f
    if-eqz v2, :cond_14a

    :try_start_161
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_14a

    .line 1514
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/mintegral/msdk/interstitial/jscommon/interstitial$2;

    invoke-direct {v3, p0, v2, v1}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial$2;-><init>(Lcom/mintegral/msdk/interstitial/jscommon/interstitial;Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1528
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_174} :catch_175

    goto :goto_14a

    .line 1530
    :catch_175
    move-exception v0

    :try_start_176
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14a

    .line 1151
    :cond_17a
    invoke-direct {p0}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->b()V
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_17d} :catch_87

    goto/16 :goto_25
.end method

.method public install(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 169
    :try_start_0
    sget-object v0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "======\u524d\u7aef\u8c03\u7528 install()  params:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->mContext:Landroid/content/Context;

    if-nez v0, :cond_20

    .line 172
    sget-object v0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a:Ljava/lang/String;

    const-string v1, "install() context \u4e3a\u7a7a return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_1f
    :goto_1f
    return-void

    .line 176
    :cond_20
    sget-object v0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a:Ljava/lang/String;

    const-string v1, "install() \u5f00\u59cbtracking\u8df3\u8f6c"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    if-eqz v0, :cond_1f

    .line 179
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    .line 180
    invoke-virtual {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->clickTracking()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_1f

    .line 183
    :catch_35
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method
