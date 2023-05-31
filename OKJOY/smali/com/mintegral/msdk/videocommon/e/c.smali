.class public final Lcom/mintegral/msdk/videocommon/e/c;
.super Ljava/lang/Object;
.source "RewardUnitSetting.java"


# static fields
.field private static G:Lcom/mintegral/msdk/base/b/i;

.field public static a:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private H:I

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/videocommon/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:D

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Lcom/mintegral/msdk/videocommon/b/c;

.field private u:D

.field private v:I

.field private w:I

.field private x:D

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 240
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/videocommon/e/c;->G:Lcom/mintegral/msdk/base/b/i;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v1, p0, Lcom/mintegral/msdk/videocommon/e/c;->e:I

    .line 60
    iput v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->f:I

    .line 65
    iput v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->g:I

    .line 69
    iput v3, p0, Lcom/mintegral/msdk/videocommon/e/c;->h:I

    .line 71
    iput v3, p0, Lcom/mintegral/msdk/videocommon/e/c;->i:I

    .line 73
    iput v3, p0, Lcom/mintegral/msdk/videocommon/e/c;->j:I

    .line 75
    iput v3, p0, Lcom/mintegral/msdk/videocommon/e/c;->k:I

    .line 77
    iput-wide v4, p0, Lcom/mintegral/msdk/videocommon/e/c;->l:D

    .line 79
    iput v6, p0, Lcom/mintegral/msdk/videocommon/e/c;->m:I

    .line 81
    const/4 v0, 0x5

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->n:I

    .line 86
    iput v3, p0, Lcom/mintegral/msdk/videocommon/e/c;->o:I

    .line 88
    const/4 v0, 0x3

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->p:I

    .line 90
    const/16 v0, 0x50

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->q:I

    .line 92
    const/16 v0, 0x64

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->r:I

    .line 94
    iput v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->s:I

    .line 101
    iput-wide v4, p0, Lcom/mintegral/msdk/videocommon/e/c;->u:D

    .line 103
    iput v1, p0, Lcom/mintegral/msdk/videocommon/e/c;->v:I

    .line 114
    iput v6, p0, Lcom/mintegral/msdk/videocommon/e/c;->w:I

    .line 120
    iput-wide v4, p0, Lcom/mintegral/msdk/videocommon/e/c;->x:D

    .line 150
    iput v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->z:I

    .line 212
    iput v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->A:I

    .line 213
    iput v1, p0, Lcom/mintegral/msdk/videocommon/e/c;->B:I

    .line 214
    iput v1, p0, Lcom/mintegral/msdk/videocommon/e/c;->C:I

    .line 215
    iput v1, p0, Lcom/mintegral/msdk/videocommon/e/c;->D:I

    .line 220
    const/16 v0, 0x14

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->F:I

    return-void
.end method

.method public static M()Ljava/lang/String;
    .registers 1

    .prologue
    .line 441
    sget-object v0, Lcom/mintegral/msdk/videocommon/e/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/e/c;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 540
    const/4 v1, 0x0

    .line 541
    sget-object v0, Lcom/mintegral/msdk/videocommon/e/c;->G:Lcom/mintegral/msdk/base/b/i;

    if-nez v0, :cond_15

    .line 542
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/videocommon/e/c;->G:Lcom/mintegral/msdk/base/b/i;

    .line 544
    :cond_15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1bb

    .line 546
    :try_start_1b
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 547
    const-string v0, "unitSetting"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_1bf

    .line 549
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 550
    if-eqz v5, :cond_1bf

    .line 551
    const-string v0, "unitId"

    .line 552
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 553
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1bf

    .line 554
    new-instance v0, Lcom/mintegral/msdk/videocommon/e/c;

    invoke-direct {v0}, Lcom/mintegral/msdk/videocommon/e/c;-><init>()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_40} :catch_1bd

    .line 555
    :try_start_40
    const-string v1, "adSourceList"

    .line 557
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 556
    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/b/b;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 1413
    iput-object v6, v0, Lcom/mintegral/msdk/videocommon/e/c;->b:Ljava/lang/String;

    .line 1421
    iput-object v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->c:Ljava/util/List;

    .line 562
    const-string v1, "callbackType"

    .line 563
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 2397
    iput v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->h:I

    .line 564
    const-string v1, "aqn"

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 566
    if-gtz v1, :cond_60

    move v1, v3

    .line 3341
    :cond_60
    iput v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->i:I

    .line 570
    const-string v1, "acn"

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 572
    if-gez v1, :cond_6c

    move v1, v3

    .line 3349
    :cond_6c
    iput v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->j:I

    .line 576
    const-string v1, "vcn"

    const/4 v3, 0x5

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 3357
    iput v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->k:I

    .line 578
    const-string v1, "cbp"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v5, v1, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 3361
    iput-wide v6, v0, Lcom/mintegral/msdk/videocommon/e/c;->l:D

    .line 580
    const-string v1, "ttc_type"

    const/4 v3, 0x2

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 3373
    iput v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->m:I

    .line 582
    const-string v1, "offset"

    const/4 v3, 0x5

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 3381
    iput v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->n:I

    .line 584
    const-string v1, "dlnet"

    const/4 v3, 0x1

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 3389
    iput v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->o:I

    .line 586
    const-string v1, "endscreen_type"

    const/4 v3, 0x1

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 4281
    iput v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->H:I

    .line 588
    const-string v1, "tv_start"

    const/4 v3, 0x3

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 4289
    iput v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->p:I

    .line 589
    const-string v1, "tv_end"

    const/16 v3, 0x50

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 4297
    iput v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->q:I

    .line 590
    const-string v1, "ready_rate"

    const/16 v3, 0x64

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/e/c;->b(I)V

    .line 591
    const-string v1, "cd_rate"

    const/4 v3, 0x0

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/e/c;->c(I)V

    .line 592
    const-string v1, "current_time"

    .line 593
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 4405
    iput-wide v6, v0, Lcom/mintegral/msdk/videocommon/e/c;->d:J

    .line 596
    const-string v1, "orientation"

    const/4 v3, 0x0

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 5146
    iput v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->z:I

    .line 597
    const-string v1, "daily_play_cap"

    const/4 v3, 0x0

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 5160
    iput v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->A:I

    .line 599
    const-string v1, "video_skip_time"

    const/4 v3, -0x1

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 5168
    iput v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->B:I

    .line 600
    const-string v1, "video_skip_result"

    const/4 v3, 0x1

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 5176
    iput v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->C:I

    .line 601
    const-string v1, "video_interactive_type"

    const/4 v3, -0x1

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 5184
    iput v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->D:I

    .line 602
    const-string v1, "close_button_delay"

    const/4 v3, 0x1

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 5273
    iput v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->E:I

    .line 604
    const-string v1, "playclosebtn_tm"

    const/4 v3, -0x1

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 6192
    iput v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->e:I

    .line 605
    const-string v1, "play_ctdown"

    const/4 v3, 0x0

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 6200
    iput v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->f:I

    .line 606
    const-string v1, "close_alert"

    const/4 v3, 0x0

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 6208
    iput v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->g:I

    .line 608
    const-string v1, "rdrct"

    const/16 v3, 0x14

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 6265
    iput v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->F:I

    .line 612
    const-string v1, "rfpv"

    const/4 v3, -0x1

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 6490
    iput v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->v:I

    .line 613
    const-string v1, "vdcmp"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v5, v1, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 7437
    iput-wide v6, v0, Lcom/mintegral/msdk/videocommon/e/c;->u:D

    .line 614
    const-string v1, "cbprule"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/videocommon/b/c;->a(Lorg/json/JSONObject;)Lcom/mintegral/msdk/videocommon/b/c;

    move-result-object v1

    .line 8429
    iput-object v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->t:Lcom/mintegral/msdk/videocommon/b/c;

    .line 617
    const-string v1, "ccbprule"

    const/4 v3, 0x2

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 8464
    iput v1, v0, Lcom/mintegral/msdk/videocommon/e/c;->w:I

    .line 618
    const-string v1, "ccbp"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v5, v1, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 8472
    iput-wide v6, v0, Lcom/mintegral/msdk/videocommon/e/c;->x:D

    .line 619
    const-string v1, "atzu"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9445
    sput-object v1, Lcom/mintegral/msdk/videocommon/e/c;->a:Ljava/lang/String;

    .line 622
    const-string v1, "atl_type"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 623
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_175} :catch_1b4

    .line 625
    if-eqz v3, :cond_18c

    move v1, v2

    .line 626
    :goto_178
    :try_start_178
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1ac

    .line 627
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_178

    .line 630
    :cond_18c
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10138
    :cond_1ac
    iput-object v4, v0, Lcom/mintegral/msdk/videocommon/e/c;->y:Ljava/util/ArrayList;
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_178 .. :try_end_1ae} :catch_1af

    .line 651
    :goto_1ae
    return-object v0

    .line 638
    :catch_1af
    move-exception v1

    :try_start_1b0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b3
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1b3} :catch_1b4

    goto :goto_1ae

    .line 648
    :catch_1b4
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_1b8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1bb
    move-object v0, v1

    .line 651
    goto :goto_1ae

    .line 648
    :catch_1bd
    move-exception v0

    goto :goto_1b8

    :cond_1bf
    move-object v0, v1

    goto :goto_1ae
.end method


# virtual methods
.method public final A()V
    .registers 3

    .prologue
    .line 361
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->l:D

    .line 362
    return-void
.end method

.method public final B()D
    .registers 3

    .prologue
    .line 365
    iget-wide v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->l:D

    return-wide v0
.end method

.method public final C()V
    .registers 2

    .prologue
    .line 373
    const/4 v0, 0x2

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->m:I

    .line 374
    return-void
.end method

.method public final D()I
    .registers 2

    .prologue
    .line 377
    iget v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->n:I

    return v0
.end method

.method public final E()V
    .registers 2

    .prologue
    .line 381
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->n:I

    .line 382
    return-void
.end method

.method public final F()I
    .registers 2

    .prologue
    .line 385
    iget v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->o:I

    return v0
.end method

.method public final G()V
    .registers 2

    .prologue
    .line 389
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->o:I

    .line 390
    return-void
.end method

.method public final H()V
    .registers 2

    .prologue
    .line 397
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->h:I

    .line 398
    return-void
.end method

.method public final I()J
    .registers 3

    .prologue
    .line 401
    iget-wide v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->d:J

    return-wide v0
.end method

.method public final J()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/videocommon/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->c:Ljava/util/List;

    return-object v0
.end method

.method public final K()Lcom/mintegral/msdk/videocommon/b/c;
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->t:Lcom/mintegral/msdk/videocommon/b/c;

    return-object v0
.end method

.method public final L()D
    .registers 3

    .prologue
    .line 433
    iget-wide v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->u:D

    return-wide v0
.end method

.method public final N()I
    .registers 2

    .prologue
    .line 460
    iget v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->w:I

    return v0
.end method

.method public final O()V
    .registers 2

    .prologue
    .line 464
    const/4 v0, 0x2

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->w:I

    .line 465
    return-void
.end method

.method public final P()D
    .registers 3

    .prologue
    .line 468
    iget-wide v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->x:D

    return-wide v0
.end method

.method public final Q()V
    .registers 3

    .prologue
    .line 472
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->x:D

    .line 473
    return-void
.end method

.method public final R()Ljava/util/Queue;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 522
    const/4 v0, 0x0

    .line 524
    :try_start_1
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/e/c;->c:Ljava/util/List;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/e/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_37

    .line 525
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_33

    .line 526
    const/4 v0, 0x0

    move v2, v0

    :goto_14
    :try_start_14
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3d

    .line 527
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/b/b;

    .line 528
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/b/b;->b()I

    move-result v0

    .line 529
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2f} :catch_38

    .line 526
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    .line 534
    :catch_33
    move-exception v1

    :goto_34
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 536
    :cond_37
    :goto_37
    return-object v0

    .line 534
    :catch_38
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_34

    :cond_3d
    move-object v0, v1

    goto :goto_37
.end method

.method public final S()Lorg/json/JSONObject;
    .registers 8

    .prologue
    .line 655
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 657
    :try_start_5
    const-string v0, "unitId"

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 658
    const-string v0, "callbackType"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->h:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 659
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->c:Ljava/util/List;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5b

    .line 660
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 661
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/b/b;

    .line 662
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 663
    const-string v5, "id"

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/b/b;->a()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 664
    const-string v5, "timeout"

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/b/b;->b()I

    move-result v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 665
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_50} :catch_51

    goto :goto_2a

    .line 722
    :catch_51
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 724
    :cond_55
    :goto_55
    return-object v1

    .line 667
    :cond_56
    :try_start_56
    const-string v0, "adSourceList"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 669
    :cond_5b
    const-string v0, "aqn"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->i:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 670
    const-string v0, "acn"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->j:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 671
    const-string v0, "vcn"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->k:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 672
    const-string v0, "cbp"

    iget-wide v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->l:D

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 673
    const-string v0, "ttc_type"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->m:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 674
    const-string v0, "offset"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->n:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 675
    const-string v0, "dlnet"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->o:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 676
    const-string v0, "tv_start"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->p:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 677
    const-string v0, "tv_end"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->q:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 678
    const-string v0, "ready_rate"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->r:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 679
    const-string v0, "endscreen_type"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->H:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 680
    const-string v0, "daily_play_cap"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->A:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 681
    const-string v0, "video_skip_time"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->B:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 682
    const-string v0, "video_skip_result"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->C:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 683
    const-string v0, "video_interactive_type"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->D:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 684
    const-string v0, "orientation"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->z:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 685
    const-string v0, "close_button_delay"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->E:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 687
    const-string v0, "playclosebtn_tm"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->e:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 688
    const-string v0, "play_ctdown"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->f:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 689
    const-string v0, "close_alert"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->g:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 692
    const-string v0, "rfpv"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->v:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 693
    const-string v0, "vdcmp"

    iget-wide v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->u:D

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 694
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->t:Lcom/mintegral/msdk/videocommon/b/c;

    if-eqz v0, :cond_132

    .line 695
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 696
    const-string v0, "type"

    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/e/c;->t:Lcom/mintegral/msdk/videocommon/b/c;

    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/b/c;->a()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 697
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 698
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->t:Lcom/mintegral/msdk/videocommon/b/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/b/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_118
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_128

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 699
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_118

    .line 701
    :cond_128
    const-string v0, "value"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 702
    const-string v0, "cbprule"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 706
    :cond_132
    const-string v0, "ccbprule"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->w:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 707
    const-string v0, "ccbp"

    iget-wide v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->x:D

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 710
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 711
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->y:Ljava/util/ArrayList;

    if-eqz v0, :cond_55

    .line 712
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_167

    .line 713
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_157
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_167

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 714
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_157

    .line 717
    :cond_167
    const-string v0, "atl_type"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_16c} :catch_51

    goto/16 :goto_55
.end method

.method public final a()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->z:I

    return v0
.end method

.method public final a(I)V
    .registers 2

    .prologue
    .line 168
    iput p1, p0, Lcom/mintegral/msdk/videocommon/e/c;->B:I

    .line 169
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/videocommon/b/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 421
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/e/c;->c:Ljava/util/List;

    .line 422
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->z:I

    .line 147
    return-void
.end method

.method public final b(I)V
    .registers 5

    .prologue
    const/16 v2, 0x64

    .line 306
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

    .line 307
    if-eqz p1, :cond_33

    .line 308
    const/16 v0, 0x64

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->r:I

    .line 318
    :goto_32
    return-void

    .line 310
    :cond_33
    iput p1, p0, Lcom/mintegral/msdk/videocommon/e/c;->r:I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_36

    goto :goto_32

    .line 316
    :catch_36
    move-exception v0

    iput v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->r:I

    goto :goto_32

    .line 313
    :cond_3a
    :try_start_3a
    iput p1, p0, Lcom/mintegral/msdk/videocommon/e/c;->r:I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3c} :catch_36

    goto :goto_32
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->A:I

    return v0
.end method

.method public final c(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 326
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

    .line 327
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->s:I

    .line 334
    :goto_2e
    return-void

    .line 329
    :cond_2f
    iput p1, p0, Lcom/mintegral/msdk/videocommon/e/c;->s:I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_32

    goto :goto_2e

    .line 332
    :catch_32
    move-exception v0

    iput v2, p0, Lcom/mintegral/msdk/videocommon/e/c;->s:I

    goto :goto_2e
.end method

.method public final d(I)I
    .registers 4

    .prologue
    .line 449
    iget v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->v:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 450
    const/16 v0, 0x5e

    if-ne p1, v0, :cond_b

    .line 451
    const/4 v0, 0x2

    .line 456
    :goto_a
    return v0

    .line 452
    :cond_b
    const/16 v0, 0x11f

    if-ne p1, v0, :cond_11

    .line 453
    const/4 v0, 0x3

    goto :goto_a

    .line 456
    :cond_11
    iget v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->v:I

    goto :goto_a
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->A:I

    .line 161
    return-void
.end method

.method public final e()I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->B:I

    return v0
.end method

.method public final e(I)Z
    .registers 4

    .prologue
    .line 482
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->y:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 483
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->y:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 486
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public final f()I
    .registers 2

    .prologue
    .line 172
    iget v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->C:I

    return v0
.end method

.method public final g()V
    .registers 2

    .prologue
    .line 176
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->C:I

    .line 177
    return-void
.end method

.method public final h()I
    .registers 2

    .prologue
    .line 180
    iget v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->D:I

    return v0
.end method

.method public final i()V
    .registers 2

    .prologue
    .line 184
    const/4 v0, -0x1

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->D:I

    .line 185
    return-void
.end method

.method public final j()I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->e:I

    return v0
.end method

.method public final k()I
    .registers 2

    .prologue
    .line 204
    iget v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->g:I

    return v0
.end method

.method public final l()I
    .registers 2

    .prologue
    .line 261
    iget v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->F:I

    return v0
.end method

.method public final m()I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->E:I

    return v0
.end method

.method public final n()V
    .registers 2

    .prologue
    .line 273
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->E:I

    .line 274
    return-void
.end method

.method public final o()I
    .registers 2

    .prologue
    .line 277
    iget v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->H:I

    return v0
.end method

.method public final p()V
    .registers 2

    .prologue
    .line 281
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->H:I

    .line 282
    return-void
.end method

.method public final q()V
    .registers 2

    .prologue
    .line 289
    const/4 v0, 0x3

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->p:I

    .line 290
    return-void
.end method

.method public final r()V
    .registers 2

    .prologue
    .line 297
    const/16 v0, 0x50

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->q:I

    .line 298
    return-void
.end method

.method public final s()I
    .registers 2

    .prologue
    .line 301
    iget v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->r:I

    return v0
.end method

.method public final t()I
    .registers 2

    .prologue
    .line 321
    iget v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->s:I

    return v0
.end method

.method public final u()I
    .registers 2

    .prologue
    .line 337
    iget v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->i:I

    return v0
.end method

.method public final v()V
    .registers 2

    .prologue
    .line 341
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->i:I

    .line 342
    return-void
.end method

.method public final w()I
    .registers 2

    .prologue
    .line 345
    iget v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->j:I

    return v0
.end method

.method public final x()V
    .registers 2

    .prologue
    .line 349
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->j:I

    .line 350
    return-void
.end method

.method public final y()I
    .registers 2

    .prologue
    .line 353
    iget v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->k:I

    return v0
.end method

.method public final z()V
    .registers 2

    .prologue
    .line 357
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/videocommon/e/c;->k:I

    .line 358
    return-void
.end method
