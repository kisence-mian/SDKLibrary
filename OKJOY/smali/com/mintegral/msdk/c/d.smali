.class public final Lcom/mintegral/msdk/c/d;
.super Ljava/lang/Object;
.source "UnitSetting.java"


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:I

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:D

.field private q:Ljava/lang/String;

.field private r:I

.field private s:I

.field private t:I

.field private u:J

.field private v:Ljava/lang/String;

.field private w:I

.field private x:J

.field private y:J

.field private z:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x1e

    iput v0, p0, Lcom/mintegral/msdk/c/d;->d:I

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/c/d;->i:I

    .line 64
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/mintegral/msdk/c/d;->p:D

    .line 103
    const/16 v0, 0x3c

    iput v0, p0, Lcom/mintegral/msdk/c/d;->z:I

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/c/d;->C:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 413
    const/4 v1, 0x0

    .line 415
    :try_start_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_186

    .line 416
    new-instance v0, Lcom/mintegral/msdk/c/d;

    invoke-direct {v0}, Lcom/mintegral/msdk/c/d;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_17c

    .line 419
    :try_start_d
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 420
    const-string v1, "unitId"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2385
    iput-object v1, v0, Lcom/mintegral/msdk/c/d;->e:Ljava/lang/String;

    .line 421
    const-string v1, "adSourceList"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 422
    if-eqz v4, :cond_44

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_44

    .line 423
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 424
    :goto_2e
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_42

    .line 425
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 2401
    :cond_42
    iput-object v5, v0, Lcom/mintegral/msdk/c/d;->g:Ljava/util/List;

    .line 429
    :cond_44
    const-string v1, "ad_source_timeout"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 430
    if-eqz v4, :cond_6e

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_6e

    .line 431
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 432
    :goto_58
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6c

    .line 433
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 2409
    :cond_6c
    iput-object v5, v0, Lcom/mintegral/msdk/c/d;->k:Ljava/util/List;

    .line 437
    :cond_6e
    const-string v1, "tpqn"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 3341
    iput v1, v0, Lcom/mintegral/msdk/c/d;->l:I

    .line 438
    const-string v1, "aqn"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 3349
    iput v1, v0, Lcom/mintegral/msdk/c/d;->m:I

    .line 439
    const-string v1, "acn"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 3357
    iput v1, v0, Lcom/mintegral/msdk/c/d;->n:I

    .line 440
    const-string v1, "wt"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 4314
    iput v1, v0, Lcom/mintegral/msdk/c/d;->o:I

    .line 441
    const-string v1, "ttc_type"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 4377
    iput v1, v0, Lcom/mintegral/msdk/c/d;->j:I

    .line 442
    const-string v1, "fbPlacementId"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4393
    iput-object v1, v0, Lcom/mintegral/msdk/c/d;->f:Ljava/lang/String;

    .line 443
    const-string v1, "current_time"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 4538
    iput-wide v4, v0, Lcom/mintegral/msdk/c/d;->h:J

    .line 444
    const-string v1, "offset"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 4546
    iput v1, v0, Lcom/mintegral/msdk/c/d;->i:I

    .line 445
    const-string v1, "admobUnitId"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5333
    iput-object v1, v0, Lcom/mintegral/msdk/c/d;->F:Ljava/lang/String;

    .line 446
    const-string v1, "myTargetSlotId"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6325
    iput-object v1, v0, Lcom/mintegral/msdk/c/d;->G:Ljava/lang/String;

    .line 447
    const-string v1, "dlct"

    const-wide/16 v4, 0xe10

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 7266
    iput-wide v4, v0, Lcom/mintegral/msdk/c/d;->u:J

    .line 448
    const-string v1, "autoplay"

    const/4 v2, 0x1

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 8258
    iput v1, v0, Lcom/mintegral/msdk/c/d;->s:I

    .line 449
    const-string v1, "dlnet"

    const/4 v2, 0x2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 9250
    iput v1, v0, Lcom/mintegral/msdk/c/d;->t:I

    .line 450
    const-string v1, "no_offer"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10234
    iput-object v1, v0, Lcom/mintegral/msdk/c/d;->v:Ljava/lang/String;

    .line 451
    const-string v1, "cb_type"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 10242
    iput v1, v0, Lcom/mintegral/msdk/c/d;->w:I

    .line 452
    const-string v1, "clct"

    const-wide/32 v4, 0x15180

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 11218
    iput-wide v4, v0, Lcom/mintegral/msdk/c/d;->x:J

    .line 453
    const-string v1, "clcq"

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 11226
    iput-wide v4, v0, Lcom/mintegral/msdk/c/d;->y:J

    .line 455
    const-string v1, "ready_rate"

    const/16 v2, 0x64

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/c/d;->a(I)V

    .line 456
    const-string v1, "cd_rate"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/c/d;->b(I)V

    .line 457
    const-string v1, "content"

    const/4 v2, 0x1

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 12210
    iput v1, v0, Lcom/mintegral/msdk/c/d;->D:I

    .line 458
    const-string v1, "impt"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 13141
    iput v1, v0, Lcom/mintegral/msdk/c/d;->E:I

    .line 459
    const-string v1, "cbp"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 13149
    iput-wide v4, v0, Lcom/mintegral/msdk/c/d;->p:D

    .line 461
    const-string v1, "icon_type"

    const/4 v2, 0x1

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 13165
    iput v1, v0, Lcom/mintegral/msdk/c/d;->r:I

    .line 462
    const-string v1, "no_ads_url"

    const-string v2, ""

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14157
    iput-object v1, v0, Lcom/mintegral/msdk/c/d;->q:Ljava/lang/String;

    .line 464
    const-string v1, "playclosebtn_tm"

    const/4 v2, -0x1

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 14274
    iput v1, v0, Lcom/mintegral/msdk/c/d;->a:I

    .line 465
    const-string v1, "play_ctdown"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 14282
    iput v1, v0, Lcom/mintegral/msdk/c/d;->b:I

    .line 466
    const-string v1, "close_alert"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 14290
    iput v1, v0, Lcom/mintegral/msdk/c/d;->c:I

    .line 467
    const-string v1, "intershowlimit"

    const/16 v2, 0x1e

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 14301
    iput v1, v0, Lcom/mintegral/msdk/c/d;->d:I

    .line 468
    const-string v1, "refreshFq"

    const/16 v2, 0x3c

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 15116
    iput v1, v0, Lcom/mintegral/msdk/c/d;->z:I

    .line 469
    const-string v1, "closeBtn"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 15124
    iput v1, v0, Lcom/mintegral/msdk/c/d;->A:I
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17b} :catch_184

    .line 474
    :goto_17b
    return-object v0

    .line 472
    :catch_17c
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_180
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17b

    :catch_184
    move-exception v1

    goto :goto_180

    :cond_186
    move-object v0, v1

    goto :goto_17b
.end method

.method public static a(Ljava/util/List;)Ljava/util/Queue;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 678
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 680
    if-eqz p0, :cond_27

    :try_start_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 681
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 682
    if-eqz v0, :cond_11

    .line 683
    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_23

    goto :goto_11

    .line 688
    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 690
    :cond_27
    return-object v1
.end method

.method private a(I)V
    .registers 5

    .prologue
    const/16 v2, 0x64

    .line 174
    :try_start_2
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_3a

    .line 175
    if-eqz p1, :cond_33

    .line 176
    const/16 v0, 0x64

    iput v0, p0, Lcom/mintegral/msdk/c/d;->B:I

    .line 186
    :goto_32
    return-void

    .line 178
    :cond_33
    iput p1, p0, Lcom/mintegral/msdk/c/d;->B:I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_36

    goto :goto_32

    .line 184
    :catch_36
    move-exception v0

    iput v2, p0, Lcom/mintegral/msdk/c/d;->B:I

    goto :goto_32

    .line 181
    :cond_3a
    :try_start_3a
    iput p1, p0, Lcom/mintegral/msdk/c/d;->B:I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3c} :catch_36

    goto :goto_32
.end method

.method public static b(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, 0x1

    .line 553
    new-instance v0, Lcom/mintegral/msdk/c/d;

    invoke-direct {v0}, Lcom/mintegral/msdk/c/d;-><init>()V

    .line 554
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 555
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 557
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15377
    iput v7, v0, Lcom/mintegral/msdk/c/d;->j:I

    .line 15546
    iput v4, v0, Lcom/mintegral/msdk/c/d;->i:I

    .line 16385
    iput-object p0, v0, Lcom/mintegral/msdk/c/d;->e:Ljava/lang/String;

    .line 16401
    iput-object v1, v0, Lcom/mintegral/msdk/c/d;->g:Ljava/util/List;

    .line 16409
    iput-object v2, v0, Lcom/mintegral/msdk/c/d;->k:Ljava/util/List;

    .line 17341
    iput v4, v0, Lcom/mintegral/msdk/c/d;->l:I

    .line 17357
    iput v5, v0, Lcom/mintegral/msdk/c/d;->n:I

    .line 18349
    iput v5, v0, Lcom/mintegral/msdk/c/d;->m:I

    .line 19314
    const/4 v1, 0x5

    iput v1, v0, Lcom/mintegral/msdk/c/d;->o:I

    .line 20266
    const-wide/16 v2, 0xe10

    iput-wide v2, v0, Lcom/mintegral/msdk/c/d;->u:J

    .line 21250
    iput v7, v0, Lcom/mintegral/msdk/c/d;->t:I

    .line 21258
    iput v4, v0, Lcom/mintegral/msdk/c/d;->s:I

    .line 571
    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/c/d;->a(I)V

    .line 572
    invoke-direct {v0, v6}, Lcom/mintegral/msdk/c/d;->b(I)V

    .line 22210
    iput v4, v0, Lcom/mintegral/msdk/c/d;->D:I

    .line 23141
    iput v6, v0, Lcom/mintegral/msdk/c/d;->E:I

    .line 24116
    const/16 v1, 0x3c

    iput v1, v0, Lcom/mintegral/msdk/c/d;->z:I

    .line 576
    return-object v0
.end method

.method private b(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 194
    :try_start_1
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2f

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/c/d;->C:I

    .line 203
    :goto_2e
    return-void

    .line 197
    :cond_2f
    iput p1, p0, Lcom/mintegral/msdk/c/d;->C:I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_32

    goto :goto_2e

    .line 200
    :catch_32
    move-exception v0

    iput v2, p0, Lcom/mintegral/msdk/c/d;->C:I

    goto :goto_2e
.end method

.method public static c(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;
    .registers 5

    .prologue
    .line 582
    new-instance v1, Lcom/mintegral/msdk/c/d;

    invoke-direct {v1}, Lcom/mintegral/msdk/c/d;-><init>()V

    .line 584
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 585
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24401
    iput-object v0, v1, Lcom/mintegral/msdk/c/d;->g:Ljava/util/List;

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 589
    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24409
    iput-object v0, v1, Lcom/mintegral/msdk/c/d;->k:Ljava/util/List;

    .line 25385
    iput-object p0, v1, Lcom/mintegral/msdk/c/d;->e:Ljava/lang/String;

    .line 26377
    const/4 v0, 0x2

    iput v0, v1, Lcom/mintegral/msdk/c/d;->j:I

    .line 26546
    const/4 v0, 0x1

    iput v0, v1, Lcom/mintegral/msdk/c/d;->i:I

    .line 27341
    const/4 v0, 0x1

    iput v0, v1, Lcom/mintegral/msdk/c/d;->l:I

    .line 27357
    const/4 v0, -0x2

    iput v0, v1, Lcom/mintegral/msdk/c/d;->n:I

    .line 28349
    const/4 v0, -0x2

    iput v0, v1, Lcom/mintegral/msdk/c/d;->m:I

    .line 29314
    const/4 v0, 0x5

    iput v0, v1, Lcom/mintegral/msdk/c/d;->o:I

    .line 30266
    const-wide/16 v2, 0xe10

    iput-wide v2, v1, Lcom/mintegral/msdk/c/d;->u:J

    .line 31250
    const/4 v0, 0x2

    iput v0, v1, Lcom/mintegral/msdk/c/d;->t:I

    .line 31258
    const/4 v0, 0x3

    iput v0, v1, Lcom/mintegral/msdk/c/d;->s:I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_42} :catch_43

    .line 607
    :goto_42
    return-object v1

    .line 605
    :catch_43
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_42
.end method

.method public static d(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;
    .registers 5

    .prologue
    .line 618
    new-instance v1, Lcom/mintegral/msdk/c/d;

    invoke-direct {v1}, Lcom/mintegral/msdk/c/d;-><init>()V

    .line 31385
    :try_start_5
    iput-object p0, v1, Lcom/mintegral/msdk/c/d;->e:Ljava/lang/String;

    .line 32377
    const/4 v0, 0x2

    iput v0, v1, Lcom/mintegral/msdk/c/d;->j:I

    .line 32546
    const/4 v0, 0x1

    iput v0, v1, Lcom/mintegral/msdk/c/d;->i:I

    .line 33341
    const/4 v0, 0x1

    iput v0, v1, Lcom/mintegral/msdk/c/d;->l:I

    .line 33357
    const/16 v0, 0xa

    iput v0, v1, Lcom/mintegral/msdk/c/d;->n:I

    .line 34349
    const/16 v0, 0x14

    iput v0, v1, Lcom/mintegral/msdk/c/d;->m:I

    .line 35314
    const/4 v0, 0x5

    iput v0, v1, Lcom/mintegral/msdk/c/d;->o:I

    .line 36242
    const/4 v0, 0x3

    iput v0, v1, Lcom/mintegral/msdk/c/d;->w:I

    .line 37218
    const-wide/32 v2, 0x15180

    iput-wide v2, v1, Lcom/mintegral/msdk/c/d;->x:J

    .line 37226
    const-wide/16 v2, 0x12c

    iput-wide v2, v1, Lcom/mintegral/msdk/c/d;->y:J
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_28

    .line 635
    :goto_27
    return-object v1

    .line 632
    :catch_28
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method

.method public static e(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;
    .registers 3

    .prologue
    .line 640
    new-instance v1, Lcom/mintegral/msdk/c/d;

    invoke-direct {v1}, Lcom/mintegral/msdk/c/d;-><init>()V

    .line 37385
    :try_start_5
    iput-object p0, v1, Lcom/mintegral/msdk/c/d;->e:Ljava/lang/String;

    .line 38377
    const/4 v0, 0x2

    iput v0, v1, Lcom/mintegral/msdk/c/d;->j:I

    .line 38546
    const/4 v0, 0x1

    iput v0, v1, Lcom/mintegral/msdk/c/d;->i:I

    .line 39341
    const/4 v0, 0x1

    iput v0, v1, Lcom/mintegral/msdk/c/d;->l:I

    .line 40314
    const/4 v0, 0x5

    iput v0, v1, Lcom/mintegral/msdk/c/d;->o:I

    .line 40377
    const/4 v0, 0x2

    iput v0, v1, Lcom/mintegral/msdk/c/d;->j:I

    .line 41357
    const/4 v0, 0x1

    iput v0, v1, Lcom/mintegral/msdk/c/d;->n:I

    .line 42349
    const/4 v0, 0x1

    iput v0, v1, Lcom/mintegral/msdk/c/d;->m:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_1d

    .line 655
    :goto_1c
    return-object v1

    .line 652
    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c
.end method

.method public static f(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;
    .registers 5

    .prologue
    .line 660
    invoke-static {p0}, Lcom/mintegral/msdk/c/d;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v1

    .line 43149
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :try_start_6
    iput-wide v2, v1, Lcom/mintegral/msdk/c/d;->p:D

    .line 43165
    const/4 v0, 0x1

    iput v0, v1, Lcom/mintegral/msdk/c/d;->r:I

    .line 664
    const-string v0, ""

    .line 44157
    iput-object v0, v1, Lcom/mintegral/msdk/c/d;->q:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_10

    .line 668
    :goto_f
    return-object v1

    .line 666
    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method


# virtual methods
.method public final A()I
    .registers 2

    .prologue
    .line 542
    iget v0, p0, Lcom/mintegral/msdk/c/d;->i:I

    return v0
.end method

.method public final a()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lcom/mintegral/msdk/c/d;->z:I

    return v0
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 120
    iget v0, p0, Lcom/mintegral/msdk/c/d;->A:I

    return v0
.end method

.method public final b(Ljava/util/List;)Ljava/util/Queue;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 699
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 701
    :try_start_5
    iget-object v0, p0, Lcom/mintegral/msdk/c/d;->g:Ljava/util/List;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/mintegral/msdk/c/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_35

    .line 702
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 703
    if-eqz v0, :cond_15

    .line 704
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_30} :catch_31

    goto :goto_15

    .line 709
    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 711
    :cond_35
    return-object v1
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Lcom/mintegral/msdk/c/d;->E:I

    return v0
.end method

.method public final d()D
    .registers 3

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/mintegral/msdk/c/d;->p:D

    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mintegral/msdk/c/d;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .registers 2

    .prologue
    .line 169
    iget v0, p0, Lcom/mintegral/msdk/c/d;->B:I

    return v0
.end method

.method public final g()I
    .registers 2

    .prologue
    .line 189
    iget v0, p0, Lcom/mintegral/msdk/c/d;->C:I

    return v0
.end method

.method public final h()I
    .registers 2

    .prologue
    .line 206
    iget v0, p0, Lcom/mintegral/msdk/c/d;->D:I

    return v0
.end method

.method public final i()J
    .registers 3

    .prologue
    .line 214
    iget-wide v0, p0, Lcom/mintegral/msdk/c/d;->x:J

    return-wide v0
.end method

.method public final j()J
    .registers 3

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/mintegral/msdk/c/d;->y:J

    return-wide v0
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mintegral/msdk/c/d;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final l()I
    .registers 2

    .prologue
    .line 238
    iget v0, p0, Lcom/mintegral/msdk/c/d;->w:I

    return v0
.end method

.method public final m()J
    .registers 3

    .prologue
    .line 246
    iget-wide v0, p0, Lcom/mintegral/msdk/c/d;->u:J

    return-wide v0
.end method

.method public final n()I
    .registers 2

    .prologue
    .line 254
    iget v0, p0, Lcom/mintegral/msdk/c/d;->s:I

    return v0
.end method

.method public final o()I
    .registers 2

    .prologue
    .line 262
    iget v0, p0, Lcom/mintegral/msdk/c/d;->t:I

    return v0
.end method

.method public final p()I
    .registers 3

    .prologue
    .line 294
    iget v0, p0, Lcom/mintegral/msdk/c/d;->d:I

    if-lez v0, :cond_a

    iget v0, p0, Lcom/mintegral/msdk/c/d;->d:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_e

    .line 295
    :cond_a
    const/16 v0, 0x1e

    iput v0, p0, Lcom/mintegral/msdk/c/d;->d:I

    .line 297
    :cond_e
    iget v0, p0, Lcom/mintegral/msdk/c/d;->d:I

    return v0
.end method

.method public final q()I
    .registers 2

    .prologue
    .line 310
    iget v0, p0, Lcom/mintegral/msdk/c/d;->o:I

    return v0
.end method

.method public final r()Ljava/lang/String;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/mintegral/msdk/c/d;->G:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/mintegral/msdk/c/d;->F:Ljava/lang/String;

    return-object v0
.end method

.method public final t()I
    .registers 2

    .prologue
    .line 345
    iget v0, p0, Lcom/mintegral/msdk/c/d;->m:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 363
    const-string v0, ""

    .line 364
    iget-object v1, p0, Lcom/mintegral/msdk/c/d;->g:Ljava/util/List;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/mintegral/msdk/c/d;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3b

    .line 365
    iget-object v1, p0, Lcom/mintegral/msdk/c/d;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 367
    goto :goto_15

    :cond_3a
    move-object v0, v1

    .line 369
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "offset = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1542
    iget v2, p0, Lcom/mintegral/msdk/c/d;->i:I

    .line 369
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unitId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/c/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fbPlacementId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/c/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()I
    .registers 2

    .prologue
    .line 353
    iget v0, p0, Lcom/mintegral/msdk/c/d;->n:I

    return v0
.end method

.method public final v()Ljava/lang/String;
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/mintegral/msdk/c/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final w()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lcom/mintegral/msdk/c/d;->g:Ljava/util/List;

    return-object v0
.end method

.method public final x()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lcom/mintegral/msdk/c/d;->k:Ljava/util/List;

    return-object v0
.end method

.method public final y()Lorg/json/JSONObject;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 478
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 480
    :try_start_6
    iget-object v1, p0, Lcom/mintegral/msdk/c/d;->g:Ljava/util/List;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/mintegral/msdk/c/d;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_31

    .line 481
    iget-object v1, p0, Lcom/mintegral/msdk/c/d;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 482
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move v1, v0

    .line 483
    :goto_1e
    if-ge v1, v3, :cond_2c

    .line 484
    iget-object v5, p0, Lcom/mintegral/msdk/c/d;->g:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 483
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 486
    :cond_2c
    const-string v1, "adSourceList"

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    :cond_31
    iget-object v1, p0, Lcom/mintegral/msdk/c/d;->k:Ljava/util/List;

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/mintegral/msdk/c/d;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5b

    .line 490
    iget-object v1, p0, Lcom/mintegral/msdk/c/d;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 491
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 492
    :goto_48
    if-ge v0, v1, :cond_56

    .line 493
    iget-object v4, p0, Lcom/mintegral/msdk/c/d;->g:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 495
    :cond_56
    const-string v0, "ad_source_timeout"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    :cond_5b
    const-string v0, "tpqn"

    iget v1, p0, Lcom/mintegral/msdk/c/d;->l:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 499
    const-string v0, "aqn"

    iget v1, p0, Lcom/mintegral/msdk/c/d;->m:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 500
    const-string v0, "acn"

    iget v1, p0, Lcom/mintegral/msdk/c/d;->n:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 501
    const-string v0, "wt"

    iget v1, p0, Lcom/mintegral/msdk/c/d;->o:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 502
    const-string v0, "ttc_type"

    iget v1, p0, Lcom/mintegral/msdk/c/d;->j:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 503
    const-string v0, "fbPlacementId"

    iget-object v1, p0, Lcom/mintegral/msdk/c/d;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 504
    const-string v0, "current_time"

    iget-wide v4, p0, Lcom/mintegral/msdk/c/d;->h:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 505
    const-string v0, "offset"

    iget v1, p0, Lcom/mintegral/msdk/c/d;->i:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 506
    const-string v0, "admobUnitId"

    iget-object v1, p0, Lcom/mintegral/msdk/c/d;->F:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 507
    const-string v0, "myTargetSlotId"

    iget-object v1, p0, Lcom/mintegral/msdk/c/d;->G:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 508
    const-string v0, "dlct"

    iget-wide v4, p0, Lcom/mintegral/msdk/c/d;->u:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 509
    const-string v0, "autoplay"

    iget v1, p0, Lcom/mintegral/msdk/c/d;->s:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 510
    const-string v0, "dlnet"

    iget v1, p0, Lcom/mintegral/msdk/c/d;->t:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 511
    const-string v0, "no_offer"

    iget-object v1, p0, Lcom/mintegral/msdk/c/d;->v:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 512
    const-string v0, "cb_type"

    iget v1, p0, Lcom/mintegral/msdk/c/d;->w:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 513
    const-string v0, "clct"

    iget-wide v4, p0, Lcom/mintegral/msdk/c/d;->x:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 514
    const-string v0, "clcq"

    iget-wide v4, p0, Lcom/mintegral/msdk/c/d;->y:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 515
    const-string v0, "ready_rate"

    iget v1, p0, Lcom/mintegral/msdk/c/d;->B:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 516
    const-string v0, "content"

    iget v1, p0, Lcom/mintegral/msdk/c/d;->D:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 517
    const-string v0, "impt"

    iget v1, p0, Lcom/mintegral/msdk/c/d;->E:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 518
    const-string v0, "cbp"

    iget-wide v4, p0, Lcom/mintegral/msdk/c/d;->p:D

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 519
    const-string v0, "icon_type"

    iget v1, p0, Lcom/mintegral/msdk/c/d;->r:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 520
    const-string v0, "no_ads_url"

    iget-object v1, p0, Lcom/mintegral/msdk/c/d;->q:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    const-string v0, "playclosebtn_tm"

    iget v1, p0, Lcom/mintegral/msdk/c/d;->a:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 523
    const-string v0, "play_ctdown"

    iget v1, p0, Lcom/mintegral/msdk/c/d;->b:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 524
    const-string v0, "close_alert"

    iget v1, p0, Lcom/mintegral/msdk/c/d;->c:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 525
    const-string v0, "closeBtn"

    iget v1, p0, Lcom/mintegral/msdk/c/d;->A:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 526
    const-string v0, "refreshFq"

    iget v1, p0, Lcom/mintegral/msdk/c/d;->z:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11f} :catch_120

    .line 530
    :goto_11f
    return-object v2

    .line 528
    :catch_120
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11f
.end method

.method public final z()J
    .registers 3

    .prologue
    .line 534
    iget-wide v0, p0, Lcom/mintegral/msdk/c/d;->h:J

    return-wide v0
.end method
