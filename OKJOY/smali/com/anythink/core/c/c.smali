.class public final Lcom/anythink/core/c/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/c/c$b;,
        Lcom/anythink/core/c/c$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:I

.field private E:Ljava/lang/String;

.field private F:Ljava/util/Map;
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

.field private G:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/api/ATRewardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private H:Lcom/anythink/core/api/ATRewardInfo;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:J

.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:J

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:J

.field private i:J

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:I

.field private s:J

.field private t:J

.field private u:J

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Lcom/anythink/core/b/c/m;

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/c/c;->a:Ljava/util/List;

    return-void
.end method

.method private H()I
    .registers 2

    .prologue
    .line 318
    iget v0, p0, Lcom/anythink/core/c/c;->e:I

    return v0
.end method

.method private I()I
    .registers 2

    .prologue
    .line 367
    iget v0, p0, Lcom/anythink/core/c/c;->k:I

    return v0
.end method

.method private J()I
    .registers 2

    .prologue
    .line 376
    iget v0, p0, Lcom/anythink/core/c/c;->l:I

    return v0
.end method

.method private K()J
    .registers 3

    .prologue
    .line 445
    iget-wide v0, p0, Lcom/anythink/core/c/c;->K:J

    return-wide v0
.end method

.method public static a(Ljava/lang/String;)Lcom/anythink/core/c/c;
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 821
    if-nez p0, :cond_7

    move-object v0, v1

    .line 1104
    :goto_6
    return-object v0

    .line 826
    :cond_7
    :try_start_7
    new-instance v2, Lcom/anythink/core/c/c;

    invoke-direct {v2}, Lcom/anythink/core/c/c;-><init>()V

    .line 827
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 829
    const-string v4, "ps_ct"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d8

    .line 2298
    const-wide/16 v6, 0x0

    iput-wide v6, v2, Lcom/anythink/core/c/c;->b:J

    .line 835
    :goto_1d
    const-string v4, "ps_ct_out"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e2

    .line 3306
    const-wide/16 v6, 0x0

    iput-wide v6, v2, Lcom/anythink/core/c/c;->c:J

    .line 841
    :goto_29
    const-string v4, "pucs"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1ec

    .line 4314
    const/4 v4, 0x1

    iput v4, v2, Lcom/anythink/core/c/c;->d:I

    .line 847
    :goto_34
    const-string v4, "ad_delivery_sw"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f6

    .line 5322
    const/4 v4, 0x1

    iput v4, v2, Lcom/anythink/core/c/c;->e:I

    .line 853
    :goto_3f
    const-string v4, "req_ug_num"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_200

    .line 6330
    const/4 v4, -0x1

    iput v4, v2, Lcom/anythink/core/c/c;->f:I

    .line 859
    :goto_4a
    const-string v4, "unit_caps_d"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20a

    .line 7338
    const-wide/16 v6, -0x1

    iput-wide v6, v2, Lcom/anythink/core/c/c;->g:J

    .line 865
    :goto_56
    const-string v4, "unit_caps_h"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_214

    .line 8346
    const-wide/16 v6, -0x1

    iput-wide v6, v2, Lcom/anythink/core/c/c;->h:J

    .line 871
    :goto_62
    const-string v4, "unit_pacing"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21e

    .line 9354
    const-wide/16 v6, -0x1

    iput-wide v6, v2, Lcom/anythink/core/c/c;->i:J

    .line 877
    :goto_6e
    const-string v4, "wifi_auto_sw"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_228

    .line 10362
    const/4 v4, 0x0

    iput v4, v2, Lcom/anythink/core/c/c;->j:I

    .line 883
    :goto_79
    const-string v4, "show_type"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_232

    .line 11371
    const/4 v4, 0x0

    iput v4, v2, Lcom/anythink/core/c/c;->k:I

    .line 890
    :goto_84
    const-string v4, "refresh"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23c

    .line 12380
    const/4 v4, 0x0

    iput v4, v2, Lcom/anythink/core/c/c;->l:I

    .line 896
    :goto_8f
    const-string v4, "gro_id"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_246

    .line 13388
    const/4 v4, 0x0

    iput v4, v2, Lcom/anythink/core/c/c;->m:I

    .line 903
    :goto_9a
    const-string v4, "format"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_250

    .line 15293
    const/4 v4, 0x0

    iput v4, v2, Lcom/anythink/core/c/c;->q:I

    .line 909
    :goto_a5
    const-string v4, "auto_refresh"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25a

    .line 17277
    const/4 v4, 0x0

    iput v4, v2, Lcom/anythink/core/c/c;->r:I

    .line 916
    :goto_b0
    const-string v4, "auto_refresh_time"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_264

    .line 19277
    const/4 v4, 0x0

    iput v4, v2, Lcom/anythink/core/c/c;->r:I

    .line 924
    :goto_bb
    const-string v4, "s_t"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26e

    .line 20245
    const-wide/32 v6, 0xdbba0

    iput-wide v6, v2, Lcom/anythink/core/c/c;->t:J

    .line 930
    :goto_c8
    const-string v4, "l_s_t"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_278

    .line 21253
    const-wide/32 v6, 0x1b7740

    iput-wide v6, v2, Lcom/anythink/core/c/c;->u:J

    .line 936
    :goto_d5
    const-string v4, "ra"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_282

    .line 22261
    const/4 v4, -0x1

    iput v4, v2, Lcom/anythink/core/c/c;->v:I

    .line 942
    :goto_e0
    const-string v4, "asid"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28c

    .line 943
    const-string v4, ""

    .line 23269
    iput-object v4, v2, Lcom/anythink/core/c/c;->w:Ljava/lang/String;

    .line 948
    :goto_ec
    const-string v4, "tp_ps"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_296

    .line 24412
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/anythink/core/c/c;->x:Lcom/anythink/core/b/c/m;

    .line 968
    :goto_f7
    const-string v3, "ug_list"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f3

    .line 969
    const-string v3, "[]"

    .line 25420
    iput-object v3, v2, Lcom/anythink/core/c/c;->n:Ljava/lang/String;

    .line 974
    :goto_103
    const-string v3, "hb_list"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2fd

    .line 975
    const-string v0, "[]"

    .line 26428
    iput-object v0, v2, Lcom/anythink/core/c/c;->o:Ljava/lang/String;

    .line 986
    :goto_10f
    const-string v0, "updateTime"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_321

    .line 27449
    const-wide/16 v6, 0x0

    iput-wide v6, v2, Lcom/anythink/core/c/c;->K:J

    .line 995
    :goto_11b
    const-string v0, "t_g_id"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32b

    .line 29205
    const/4 v0, -0x1

    iput v0, v2, Lcom/anythink/core/c/c;->y:I

    .line 1001
    :goto_126
    const-string v0, "s_id"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_335

    .line 1002
    const-string v0, ""

    .line 30213
    iput-object v0, v2, Lcom/anythink/core/c/c;->z:Ljava/lang/String;

    .line 1007
    :goto_132
    const-string v0, "u_n_f_sw"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33f

    .line 31221
    const/4 v0, 0x0

    iput v0, v2, Lcom/anythink/core/c/c;->A:I

    .line 1013
    :goto_13d
    const-string v0, "m_o"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_349

    .line 1014
    const-string v0, ""

    .line 32229
    iput-object v0, v2, Lcom/anythink/core/c/c;->B:Ljava/lang/String;

    .line 1019
    :goto_149
    const-string v0, "m_o_s"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_353

    .line 1020
    const-string v0, ""

    .line 33237
    iput-object v0, v2, Lcom/anythink/core/c/c;->C:Ljava/lang/String;

    .line 1025
    :goto_155
    const-string v0, "m_o_ks"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35d

    .line 1026
    const-string v0, ""

    .line 35189
    iput-object v0, v2, Lcom/anythink/core/c/c;->E:Ljava/lang/String;

    .line 1031
    :goto_161
    const-string v0, "p_m_o"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_367

    .line 36197
    const/4 v0, 0x0

    iput v0, v2, Lcom/anythink/core/c/c;->D:I

    .line 1038
    :goto_16c
    const-string v0, "sdk_custom"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_371

    .line 38181
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/anythink/core/c/c;->F:Ljava/util/Map;

    .line 1053
    :goto_177
    const-string v0, "callback"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f9

    .line 1054
    new-instance v3, Lorg/json/JSONObject;

    const-string v0, "callback"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1056
    const-string v0, "sc_list"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39f

    .line 1057
    new-instance v4, Lorg/json/JSONObject;

    const-string v0, "sc_list"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1058
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1061
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 1063
    :goto_1a6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39d

    .line 1064
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1066
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1068
    new-instance v8, Lcom/anythink/core/api/ATRewardInfo;

    invoke-direct {v8}, Lcom/anythink/core/api/ATRewardInfo;-><init>()V

    .line 1069
    const-string v9, "rw_n"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/anythink/core/api/ATRewardInfo;->rewardName:Ljava/lang/String;

    .line 1070
    const-string v9, "rw_num"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v8, Lcom/anythink/core/api/ATRewardInfo;->rewardNumber:I

    .line 1071
    invoke-virtual {v5, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a6

    .line 1104
    :catch_1d4
    move-exception v0

    move-object v0, v1

    goto/16 :goto_6

    .line 832
    :cond_1d8
    const-string v4, "ps_ct"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 3298
    iput-wide v6, v2, Lcom/anythink/core/c/c;->b:J

    goto/16 :goto_1d

    .line 838
    :cond_1e2
    const-string v4, "ps_ct_out"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 4306
    iput-wide v6, v2, Lcom/anythink/core/c/c;->c:J

    goto/16 :goto_29

    .line 844
    :cond_1ec
    const-string v4, "pucs"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 5314
    iput v4, v2, Lcom/anythink/core/c/c;->d:I

    goto/16 :goto_34

    .line 850
    :cond_1f6
    const-string v4, "ad_delivery_sw"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 6322
    iput v4, v2, Lcom/anythink/core/c/c;->e:I

    goto/16 :goto_3f

    .line 856
    :cond_200
    const-string v4, "req_ug_num"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 7330
    iput v4, v2, Lcom/anythink/core/c/c;->f:I

    goto/16 :goto_4a

    .line 862
    :cond_20a
    const-string v4, "unit_caps_d"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 8338
    iput-wide v6, v2, Lcom/anythink/core/c/c;->g:J

    goto/16 :goto_56

    .line 868
    :cond_214
    const-string v4, "unit_caps_h"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 9346
    iput-wide v6, v2, Lcom/anythink/core/c/c;->h:J

    goto/16 :goto_62

    .line 874
    :cond_21e
    const-string v4, "unit_pacing"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 10354
    iput-wide v6, v2, Lcom/anythink/core/c/c;->i:J

    goto/16 :goto_6e

    .line 880
    :cond_228
    const-string v4, "wifi_auto_sw"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 11362
    iput v4, v2, Lcom/anythink/core/c/c;->j:I

    goto/16 :goto_79

    .line 886
    :cond_232
    const-string v4, "show_type"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 12371
    iput v4, v2, Lcom/anythink/core/c/c;->k:I

    goto/16 :goto_84

    .line 893
    :cond_23c
    const-string v4, "refresh"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 13380
    iput v4, v2, Lcom/anythink/core/c/c;->l:I

    goto/16 :goto_8f

    .line 899
    :cond_246
    const-string v4, "gro_id"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 14388
    iput v4, v2, Lcom/anythink/core/c/c;->m:I

    goto/16 :goto_9a

    .line 906
    :cond_250
    const-string v4, "format"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 16293
    iput v4, v2, Lcom/anythink/core/c/c;->q:I

    goto/16 :goto_a5

    .line 912
    :cond_25a
    const-string v4, "auto_refresh"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 18277
    iput v4, v2, Lcom/anythink/core/c/c;->r:I

    goto/16 :goto_b0

    .line 919
    :cond_264
    const-string v4, "auto_refresh_time"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 19285
    iput-wide v6, v2, Lcom/anythink/core/c/c;->s:J

    goto/16 :goto_bb

    .line 927
    :cond_26e
    const-string v4, "s_t"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 21245
    iput-wide v6, v2, Lcom/anythink/core/c/c;->t:J

    goto/16 :goto_c8

    .line 933
    :cond_278
    const-string v4, "l_s_t"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 22253
    iput-wide v6, v2, Lcom/anythink/core/c/c;->u:J

    goto/16 :goto_d5

    .line 939
    :cond_282
    const-string v4, "ra"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 23261
    iput v4, v2, Lcom/anythink/core/c/c;->v:I

    goto/16 :goto_e0

    .line 945
    :cond_28c
    const-string v4, "asid"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 24269
    iput-object v4, v2, Lcom/anythink/core/c/c;->w:Ljava/lang/String;
    :try_end_294
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_294} :catch_1d4

    goto/16 :goto_ec

    .line 952
    :cond_296
    :try_start_296
    new-instance v6, Lcom/anythink/core/b/c/m;

    invoke-direct {v6}, Lcom/anythink/core/b/c/m;-><init>()V

    .line 953
    const-string v4, "tp_ps"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 954
    const-string v4, "pucs"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_2eb

    move v4, v3

    :goto_2aa
    iput-boolean v4, v6, Lcom/anythink/core/b/c/m;->a:Z

    .line 955
    const-string v4, "apdt"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/anythink/core/b/c/m;->b:J

    .line 956
    const-string v4, "aprn"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v6, Lcom/anythink/core/b/c/m;->c:I

    .line 957
    const-string v4, "puas"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_2ed

    move v4, v3

    :goto_2c5
    iput-boolean v4, v6, Lcom/anythink/core/b/c/m;->d:Z

    .line 958
    const-string v4, "cdt"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/anythink/core/b/c/m;->e:J

    .line 959
    const-string v4, "ski_swt"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_2ef

    move v4, v3

    :goto_2d8
    iput-boolean v4, v6, Lcom/anythink/core/b/c/m;->f:Z

    .line 960
    const-string v4, "aut_swt"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_2f1

    :goto_2e2
    iput-boolean v3, v6, Lcom/anythink/core/b/c/m;->g:Z

    .line 25412
    iput-object v6, v2, Lcom/anythink/core/c/c;->x:Lcom/anythink/core/b/c/m;
    :try_end_2e6
    .catch Ljava/lang/Exception; {:try_start_296 .. :try_end_2e6} :catch_2e8

    goto/16 :goto_f7

    :catch_2e8
    move-exception v3

    goto/16 :goto_f7

    :cond_2eb
    move v4, v0

    .line 954
    goto :goto_2aa

    :cond_2ed
    move v4, v0

    .line 957
    goto :goto_2c5

    :cond_2ef
    move v4, v0

    .line 959
    goto :goto_2d8

    :cond_2f1
    move v3, v0

    .line 960
    goto :goto_2e2

    .line 971
    :cond_2f3
    :try_start_2f3
    const-string v3, "ug_list"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 26420
    iput-object v3, v2, Lcom/anythink/core/c/c;->n:Ljava/lang/String;

    goto/16 :goto_103

    .line 977
    :cond_2fd
    const-string v3, "hb_list"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 978
    :goto_303
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_319

    .line 979
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 980
    const-string v6, "bid_type"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 981
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 978
    add-int/lit8 v0, v0, 0x1

    goto :goto_303

    .line 983
    :cond_319
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27428
    iput-object v0, v2, Lcom/anythink/core/c/c;->o:Ljava/lang/String;

    goto/16 :goto_10f

    .line 989
    :cond_321
    const-string v0, "updateTime"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 28449
    iput-wide v6, v2, Lcom/anythink/core/c/c;->K:J

    goto/16 :goto_11b

    .line 998
    :cond_32b
    const-string v0, "t_g_id"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 30205
    iput v0, v2, Lcom/anythink/core/c/c;->y:I

    goto/16 :goto_126

    .line 1004
    :cond_335
    const-string v0, "s_id"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31213
    iput-object v0, v2, Lcom/anythink/core/c/c;->z:Ljava/lang/String;

    goto/16 :goto_132

    .line 1010
    :cond_33f
    const-string v0, "u_n_f_sw"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 32221
    iput v0, v2, Lcom/anythink/core/c/c;->A:I

    goto/16 :goto_13d

    .line 1016
    :cond_349
    const-string v0, "m_o"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33229
    iput-object v0, v2, Lcom/anythink/core/c/c;->B:Ljava/lang/String;

    goto/16 :goto_149

    .line 1022
    :cond_353
    const-string v0, "m_o_s"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34237
    iput-object v0, v2, Lcom/anythink/core/c/c;->C:Ljava/lang/String;

    goto/16 :goto_155

    .line 1028
    :cond_35d
    const-string v0, "m_o_ks"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36189
    iput-object v0, v2, Lcom/anythink/core/c/c;->E:Ljava/lang/String;

    goto/16 :goto_161

    .line 1034
    :cond_367
    const-string v0, "p_m_o"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 37197
    iput v0, v2, Lcom/anythink/core/c/c;->D:I

    goto/16 :goto_16c

    .line 1041
    :cond_371
    new-instance v3, Lorg/json/JSONObject;

    const-string v0, "sdk_custom"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1042
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1043
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 1044
    :goto_385
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_399

    .line 1045
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1046
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_385

    .line 39181
    :cond_399
    iput-object v4, v2, Lcom/anythink/core/c/c;->F:Ljava/util/Map;

    goto/16 :goto_177

    .line 40165
    :cond_39d
    iput-object v5, v2, Lcom/anythink/core/c/c;->G:Ljava/util/Map;

    .line 1076
    :cond_39f
    const-string v0, "reward"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d9

    .line 1077
    new-instance v0, Lorg/json/JSONObject;

    const-string v4, "reward"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1078
    new-instance v4, Lcom/anythink/core/api/ATRewardInfo;

    invoke-direct {v4}, Lcom/anythink/core/api/ATRewardInfo;-><init>()V

    .line 1079
    const-string v5, "rw_n"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3c7

    .line 1080
    const-string v5, "rw_n"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/anythink/core/api/ATRewardInfo;->rewardName:Ljava/lang/String;

    .line 1082
    :cond_3c7
    const-string v5, "rw_num"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3d7

    .line 1083
    const-string v5, "rw_num"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/anythink/core/api/ATRewardInfo;->rewardNumber:I

    .line 40173
    :cond_3d7
    iput-object v4, v2, Lcom/anythink/core/c/c;->H:Lcom/anythink/core/api/ATRewardInfo;

    .line 1088
    :cond_3d9
    const-string v0, "currency"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e9

    .line 1089
    const-string v0, "currency"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41153
    iput-object v0, v2, Lcom/anythink/core/c/c;->I:Ljava/lang/String;

    .line 1092
    :cond_3e9
    const-string v0, "cc"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f9

    .line 1093
    const-string v0, "cc"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41161
    iput-object v0, v2, Lcom/anythink/core/c/c;->J:Ljava/lang/String;
    :try_end_3f9
    .catch Ljava/lang/Exception; {:try_start_2f3 .. :try_end_3f9} :catch_1d4

    :cond_3f9
    move-object v0, v2

    .line 1097
    goto/16 :goto_6
.end method

.method public static a(Ljava/lang/String;Lcom/anythink/core/c/c$b;Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/anythink/core/c/c$b;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1378
    iget-object v0, p1, Lcom/anythink/core/c/c$b;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/core/c/c;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1380
    const-string v1, "payload"

    .line 50780
    iget-object v2, p1, Lcom/anythink/core/c/c$b;->n:Ljava/lang/String;

    .line 1380
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    iget v1, p1, Lcom/anythink/core/c/c$b;->b:I

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1d

    .line 1382
    const-string v1, "myoffer_setting"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    const-string v1, "topon_placement"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    :cond_1d
    invoke-static {v0}, Lcom/anythink/core/c/a;->a(Ljava/util/Map;)V

    .line 1387
    return-object v0
.end method

.method private a(I)V
    .registers 2

    .prologue
    .line 197
    iput p1, p0, Lcom/anythink/core/c/c;->D:I

    .line 198
    return-void
.end method

.method private a(J)V
    .registers 4

    .prologue
    .line 245
    iput-wide p1, p0, Lcom/anythink/core/c/c;->t:J

    .line 246
    return-void
.end method

.method private a(Lcom/anythink/core/api/ATRewardInfo;)V
    .registers 2

    .prologue
    .line 173
    iput-object p1, p0, Lcom/anythink/core/c/c;->H:Lcom/anythink/core/api/ATRewardInfo;

    .line 174
    return-void
.end method

.method private a(Lcom/anythink/core/b/c/m;)V
    .registers 2

    .prologue
    .line 412
    iput-object p1, p0, Lcom/anythink/core/c/c;->x:Lcom/anythink/core/b/c/m;

    .line 413
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/api/ATRewardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    iput-object p1, p0, Lcom/anythink/core/c/c;->G:Ljava/util/Map;

    .line 166
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1173
    :try_start_6
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1177
    :goto_b
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_179

    .line 1178
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1179
    if-eqz v3, :cond_16a

    .line 1182
    new-instance v4, Lcom/anythink/core/c/c$b;

    invoke-direct {v4}, Lcom/anythink/core/c/c$b;-><init>()V

    .line 1183
    const/4 v5, -0x1

    iput v5, v4, Lcom/anythink/core/c/c$b;->a:I

    .line 1184
    const-string v5, "bid_type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/anythink/core/c/c$b;->m:I

    .line 1185
    const-string v5, "adapter_class"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16e

    .line 1186
    const-string v5, ""

    iput-object v5, v4, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    .line 1192
    :goto_33
    const-string v5, "caps_d"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17a

    .line 1193
    const/4 v5, -0x1

    iput v5, v4, Lcom/anythink/core/c/c$b;->c:I

    .line 1198
    :goto_3e
    const-string v5, "caps_h"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_184

    .line 1199
    const/4 v5, -0x1

    iput v5, v4, Lcom/anythink/core/c/c$b;->d:I

    .line 1204
    :goto_49
    const-string v5, "content"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18e

    .line 1205
    const-string v5, ""

    iput-object v5, v4, Lcom/anythink/core/c/c$b;->e:Ljava/lang/String;

    .line 1210
    :goto_55
    const-string v5, "nw_firm_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_198

    .line 1211
    const/4 v5, -0x1

    iput v5, v4, Lcom/anythink/core/c/c$b;->b:I

    .line 1216
    :goto_60
    const-string v5, "ug_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a2

    .line 1217
    const-string v5, "unkwon"

    iput-object v5, v4, Lcom/anythink/core/c/c$b;->g:Ljava/lang/String;

    .line 1222
    :goto_6c
    const-string v5, "nw_cache_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1ac

    .line 1223
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/anythink/core/c/c$b;->a(J)V

    .line 1229
    :goto_79
    const-string v5, "nw_timeout"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b8

    .line 1230
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/anythink/core/c/c$b;->b(J)V

    .line 1235
    :goto_86
    const-string v5, "nw_req_num"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c4

    .line 1236
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/anythink/core/c/c$b;->a(I)V

    .line 1241
    :goto_92
    const-string v5, "pacing"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1cf

    .line 41682
    const-wide/16 v6, -0x1

    iput-wide v6, v4, Lcom/anythink/core/c/c$b;->h:J

    .line 1247
    :goto_9e
    const-string v5, "unit_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d9

    .line 1248
    const-string v5, ""

    .line 42690
    iput-object v5, v4, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    .line 1253
    :goto_aa
    const-string v5, "ecpm"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e3

    .line 43722
    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lcom/anythink/core/c/c$b;->l:D

    .line 1259
    :goto_b6
    const-string v5, "hb_timeout"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1ed

    .line 44730
    const-wide/16 v6, 0x7d0

    iput-wide v6, v4, Lcom/anythink/core/c/c$b;->r:J

    .line 1266
    :goto_c2
    const-string v5, "t_c_u"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f8

    .line 1267
    const-string v5, ""

    .line 46698
    iput-object v5, v4, Lcom/anythink/core/c/c$b;->i:Ljava/lang/String;

    .line 1272
    :goto_ce
    const-string v5, "t_c_u_min_t"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_202

    .line 47706
    const/4 v5, 0x0

    iput v5, v4, Lcom/anythink/core/c/c$b;->j:I

    .line 1278
    :goto_d9
    const-string v5, "t_c_u_max_t"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20c

    .line 48714
    const/16 v5, 0xbb8

    iput v5, v4, Lcom/anythink/core/c/c$b;->k:I

    .line 1284
    :goto_e5
    const-string v5, "payload"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_216

    .line 1285
    const-string v5, ""

    .line 49738
    iput-object v5, v4, Lcom/anythink/core/c/c$b;->n:Ljava/lang/String;

    .line 1290
    :goto_f1
    const-string v5, "error"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_220

    .line 1291
    const-string v5, ""

    .line 50740
    iput-object v5, v4, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    .line 1299
    :goto_fd
    const-string v5, "l_s_t"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22a

    .line 50744
    const-wide/32 v6, 0x1b7740

    iput-wide v6, v4, Lcom/anythink/core/c/c$b;->s:J

    .line 1305
    :goto_10a
    const-string v5, "n_d_t"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_234

    .line 50748
    const-wide/16 v6, -0x1

    iput-wide v6, v4, Lcom/anythink/core/c/c$b;->t:J

    .line 1311
    :goto_116
    const-string v5, "hb_t_c_t"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23e

    .line 50752
    const-wide/32 v6, 0x1b7740

    iput-wide v6, v4, Lcom/anythink/core/c/c$b;->u:J

    .line 1318
    :goto_123
    const-string v5, "sort_type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_248

    .line 50756
    const/4 v5, 0x1

    iput v5, v4, Lcom/anythink/core/c/c$b;->p:I

    .line 1325
    :goto_12e
    const-string v5, "s_sw"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_252

    .line 50760
    const/4 v5, 0x1

    iput v5, v4, Lcom/anythink/core/c/c$b;->v:I

    .line 1330
    :goto_139
    const-string v5, "c_sw"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25c

    .line 50764
    const/4 v5, 0x1

    iput v5, v4, Lcom/anythink/core/c/c$b;->w:I

    .line 1337
    :goto_144
    const-string v5, "ecpm_level"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_266

    .line 50768
    const/4 v5, -0x1

    iput v5, v4, Lcom/anythink/core/c/c$b;->y:I

    .line 1343
    :goto_14f
    const-string v5, "precision"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_270

    .line 1344
    const-string v5, "publisher_defined"

    .line 50772
    iput-object v5, v4, Lcom/anythink/core/c/c$b;->z:Ljava/lang/String;

    .line 1349
    :goto_15b
    const-string v5, "nx_req_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27a

    .line 50776
    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lcom/anythink/core/c/c$b;->A:J

    .line 1356
    :goto_167
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1177
    :cond_16a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    .line 1188
    :cond_16e
    const-string v5, "adapter_class"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    goto/16 :goto_33

    :catch_178
    move-exception v0

    .line 1362
    :cond_179
    return-object v1

    .line 1195
    :cond_17a
    const-string v5, "caps_d"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/anythink/core/c/c$b;->c:I

    goto/16 :goto_3e

    .line 1201
    :cond_184
    const-string v5, "caps_h"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/anythink/core/c/c$b;->d:I

    goto/16 :goto_49

    .line 1207
    :cond_18e
    const-string v5, "content"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/anythink/core/c/c$b;->e:Ljava/lang/String;

    goto/16 :goto_55

    .line 1213
    :cond_198
    const-string v5, "nw_firm_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/anythink/core/c/c$b;->b:I

    goto/16 :goto_60

    .line 1219
    :cond_1a2
    const-string v5, "ug_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/anythink/core/c/c$b;->g:Ljava/lang/String;

    goto/16 :goto_6c

    .line 1225
    :cond_1ac
    const-string v5, "nw_cache_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Lcom/anythink/core/c/c$b;->a(J)V

    goto/16 :goto_79

    .line 1232
    :cond_1b8
    const-string v5, "nw_timeout"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Lcom/anythink/core/c/c$b;->b(J)V

    goto/16 :goto_86

    .line 1238
    :cond_1c4
    const-string v5, "nw_req_num"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/anythink/core/c/c$b;->a(I)V

    goto/16 :goto_92

    .line 1244
    :cond_1cf
    const-string v5, "pacing"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 42682
    iput-wide v6, v4, Lcom/anythink/core/c/c$b;->h:J

    goto/16 :goto_9e

    .line 1250
    :cond_1d9
    const-string v5, "unit_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 43690
    iput-object v5, v4, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    goto/16 :goto_aa

    .line 1256
    :cond_1e3
    const-string v5, "ecpm"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 44722
    iput-wide v6, v4, Lcom/anythink/core/c/c$b;->l:D

    goto/16 :goto_b6

    .line 1262
    :cond_1ed
    const-string v5, "hb_timeout"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v6, v5

    .line 45730
    iput-wide v6, v4, Lcom/anythink/core/c/c$b;->r:J

    goto/16 :goto_c2

    .line 1269
    :cond_1f8
    const-string v5, "t_c_u"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 47698
    iput-object v5, v4, Lcom/anythink/core/c/c$b;->i:Ljava/lang/String;

    goto/16 :goto_ce

    .line 1275
    :cond_202
    const-string v5, "t_c_u_min_t"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 48706
    iput v5, v4, Lcom/anythink/core/c/c$b;->j:I

    goto/16 :goto_d9

    .line 1281
    :cond_20c
    const-string v5, "t_c_u_max_t"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 49714
    iput v5, v4, Lcom/anythink/core/c/c$b;->k:I

    goto/16 :goto_e5

    .line 1287
    :cond_216
    const-string v5, "payload"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50738
    iput-object v5, v4, Lcom/anythink/core/c/c$b;->n:Ljava/lang/String;

    goto/16 :goto_f1

    .line 1293
    :cond_220
    const-string v5, "error"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50742
    iput-object v5, v4, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    goto/16 :goto_fd

    .line 1302
    :cond_22a
    const-string v5, "l_s_t"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 50746
    iput-wide v6, v4, Lcom/anythink/core/c/c$b;->s:J

    goto/16 :goto_10a

    .line 1308
    :cond_234
    const-string v5, "n_d_t"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 50750
    iput-wide v6, v4, Lcom/anythink/core/c/c$b;->t:J

    goto/16 :goto_116

    .line 1314
    :cond_23e
    const-string v5, "hb_t_c_t"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 50754
    iput-wide v6, v4, Lcom/anythink/core/c/c$b;->u:J

    goto/16 :goto_123

    .line 1321
    :cond_248
    const-string v5, "sort_type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 50758
    iput v5, v4, Lcom/anythink/core/c/c$b;->p:I

    goto/16 :goto_12e

    .line 1328
    :cond_252
    const-string v5, "s_sw"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 50762
    iput v5, v4, Lcom/anythink/core/c/c$b;->v:I

    goto/16 :goto_139

    .line 1333
    :cond_25c
    const-string v5, "c_sw"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 50766
    iput v5, v4, Lcom/anythink/core/c/c$b;->w:I

    goto/16 :goto_144

    .line 1340
    :cond_266
    const-string v5, "ecpm_level"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 50770
    iput v5, v4, Lcom/anythink/core/c/c$b;->y:I

    goto/16 :goto_14f

    .line 1346
    :cond_270
    const-string v5, "precision"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50774
    iput-object v5, v4, Lcom/anythink/core/c/c$b;->z:Ljava/lang/String;

    goto/16 :goto_15b

    .line 1352
    :cond_27a
    const-string v5, "nx_req_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 50778
    iput-wide v6, v4, Lcom/anythink/core/c/c$b;->A:J
    :try_end_282
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_282} :catch_178

    goto/16 :goto_167
.end method

.method private b(I)V
    .registers 2

    .prologue
    .line 205
    iput p1, p0, Lcom/anythink/core/c/c;->y:I

    .line 206
    return-void
.end method

.method private b(J)V
    .registers 4

    .prologue
    .line 253
    iput-wide p1, p0, Lcom/anythink/core/c/c;->u:J

    .line 254
    return-void
.end method

.method private b(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    iput-object p1, p0, Lcom/anythink/core/c/c;->F:Ljava/util/Map;

    .line 182
    return-void
.end method

.method static c(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1391
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1393
    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1395
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1396
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1397
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1398
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_22

    goto :goto_e

    :catch_22
    move-exception v0

    .line 1405
    :cond_23
    return-object v1
.end method

.method private c(I)V
    .registers 2

    .prologue
    .line 221
    iput p1, p0, Lcom/anythink/core/c/c;->A:I

    .line 222
    return-void
.end method

.method private c(J)V
    .registers 4

    .prologue
    .line 285
    iput-wide p1, p0, Lcom/anythink/core/c/c;->s:J

    .line 286
    return-void
.end method

.method private d(I)V
    .registers 2

    .prologue
    .line 261
    iput p1, p0, Lcom/anythink/core/c/c;->v:I

    .line 262
    return-void
.end method

.method private d(J)V
    .registers 4

    .prologue
    .line 298
    iput-wide p1, p0, Lcom/anythink/core/c/c;->b:J

    .line 299
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 153
    iput-object p1, p0, Lcom/anythink/core/c/c;->I:Ljava/lang/String;

    .line 154
    return-void
.end method

.method private e(I)V
    .registers 2

    .prologue
    .line 277
    iput p1, p0, Lcom/anythink/core/c/c;->r:I

    .line 278
    return-void
.end method

.method private e(J)V
    .registers 4

    .prologue
    .line 306
    iput-wide p1, p0, Lcom/anythink/core/c/c;->c:J

    .line 307
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 161
    iput-object p1, p0, Lcom/anythink/core/c/c;->J:Ljava/lang/String;

    .line 162
    return-void
.end method

.method private f(I)V
    .registers 2

    .prologue
    .line 293
    iput p1, p0, Lcom/anythink/core/c/c;->q:I

    .line 294
    return-void
.end method

.method private f(J)V
    .registers 4

    .prologue
    .line 338
    iput-wide p1, p0, Lcom/anythink/core/c/c;->g:J

    .line 339
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 189
    iput-object p1, p0, Lcom/anythink/core/c/c;->E:Ljava/lang/String;

    .line 190
    return-void
.end method

.method private g(I)V
    .registers 2

    .prologue
    .line 314
    iput p1, p0, Lcom/anythink/core/c/c;->d:I

    .line 315
    return-void
.end method

.method private g(J)V
    .registers 4

    .prologue
    .line 346
    iput-wide p1, p0, Lcom/anythink/core/c/c;->h:J

    .line 347
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 213
    iput-object p1, p0, Lcom/anythink/core/c/c;->z:Ljava/lang/String;

    .line 214
    return-void
.end method

.method private h(I)V
    .registers 2

    .prologue
    .line 322
    iput p1, p0, Lcom/anythink/core/c/c;->e:I

    .line 323
    return-void
.end method

.method private h(J)V
    .registers 4

    .prologue
    .line 354
    iput-wide p1, p0, Lcom/anythink/core/c/c;->i:J

    .line 355
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 229
    iput-object p1, p0, Lcom/anythink/core/c/c;->B:Ljava/lang/String;

    .line 230
    return-void
.end method

.method private i(I)V
    .registers 2

    .prologue
    .line 330
    iput p1, p0, Lcom/anythink/core/c/c;->f:I

    .line 331
    return-void
.end method

.method private i(J)V
    .registers 4

    .prologue
    .line 449
    iput-wide p1, p0, Lcom/anythink/core/c/c;->K:J

    .line 450
    return-void
.end method

.method private i(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 237
    iput-object p1, p0, Lcom/anythink/core/c/c;->C:Ljava/lang/String;

    .line 238
    return-void
.end method

.method private j(I)V
    .registers 2

    .prologue
    .line 362
    iput p1, p0, Lcom/anythink/core/c/c;->j:I

    .line 363
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 269
    iput-object p1, p0, Lcom/anythink/core/c/c;->w:Ljava/lang/String;

    .line 270
    return-void
.end method

.method private k(I)V
    .registers 2

    .prologue
    .line 371
    iput p1, p0, Lcom/anythink/core/c/c;->k:I

    .line 372
    return-void
.end method

.method private k(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 420
    iput-object p1, p0, Lcom/anythink/core/c/c;->n:Ljava/lang/String;

    .line 421
    return-void
.end method

.method private l(I)V
    .registers 2

    .prologue
    .line 380
    iput p1, p0, Lcom/anythink/core/c/c;->l:I

    .line 381
    return-void
.end method

.method private l(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 428
    iput-object p1, p0, Lcom/anythink/core/c/c;->o:Ljava/lang/String;

    .line 429
    return-void
.end method

.method private m(I)V
    .registers 2

    .prologue
    .line 388
    iput p1, p0, Lcom/anythink/core/c/c;->m:I

    .line 389
    return-void
.end method


# virtual methods
.method public final A()I
    .registers 2

    .prologue
    .line 384
    iget v0, p0, Lcom/anythink/core/c/c;->m:I

    return v0
.end method

.method public final B()Lcom/anythink/core/b/c/m;
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/anythink/core/c/c;->x:Lcom/anythink/core/b/c/m;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/anythink/core/c/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/anythink/core/c/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final E()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lcom/anythink/core/c/c;->p:Ljava/util/List;

    return-object v0
.end method

.method public final F()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1110
    iget v1, p0, Lcom/anythink/core/c/c;->e:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final G()Z
    .registers 7

    .prologue
    .line 1370
    const-string v0, "commonadmanager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Already cache time -- > "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/anythink/core/c/c;->K:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/core/c/c;->K:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/anythink/core/c/c;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public final a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/api/ATRewardInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/anythink/core/c/c;->G:Ljava/util/Map;

    return-object v0
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1121
    monitor-enter p0

    :try_start_1
    const-string v0, "placement"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setNoFilterList Size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iput-object p1, p0, Lcom/anythink/core/c/c;->a:Ljava/util/List;

    .line 1123
    iget-object v0, p0, Lcom/anythink/core/c/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    .line 1124
    const/4 v2, -0x1

    iput v2, v0, Lcom/anythink/core/c/c$b;->a:I
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_31

    goto :goto_21

    .line 1121
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1126
    :cond_34
    monitor-exit p0

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/anythink/core/c/c;->I:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized b(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1134
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/c/c;->p:Ljava/util/List;

    if-eqz v0, :cond_40

    .line 1135
    iget-object v0, p0, Lcom/anythink/core/c/c;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1140
    :goto_a
    const-string v0, "placement"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update filteSize:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---no filter size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/c/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Lcom/anythink/core/c/c;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1142
    iget-object v0, p0, Lcom/anythink/core/c/c;->p:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/core/c/c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_48

    .line 1143
    monitor-exit p0

    return-void

    .line 1137
    :cond_40
    :try_start_40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/c/c;->p:Ljava/util/List;
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_48

    goto :goto_a

    .line 1134
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/anythink/core/c/c;->J:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/anythink/core/api/ATRewardInfo;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/anythink/core/c/c;->H:Lcom/anythink/core/api/ATRewardInfo;

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/anythink/core/c/c;->F:Ljava/util/Map;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/anythink/core/c/c;->E:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Lcom/anythink/core/c/c;->D:I

    return v0
.end method

.method public final h()I
    .registers 2

    .prologue
    .line 201
    iget v0, p0, Lcom/anythink/core/c/c;->y:I

    return v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/anythink/core/c/c;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final j()I
    .registers 2

    .prologue
    .line 217
    iget v0, p0, Lcom/anythink/core/c/c;->A:I

    return v0
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/anythink/core/c/c;->B:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/anythink/core/c/c;->C:Ljava/lang/String;

    return-object v0
.end method

.method public final m()J
    .registers 3

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/anythink/core/c/c;->t:J

    return-wide v0
.end method

.method public final n()J
    .registers 3

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/anythink/core/c/c;->u:J

    return-wide v0
.end method

.method public final o()I
    .registers 2

    .prologue
    .line 257
    iget v0, p0, Lcom/anythink/core/c/c;->v:I

    return v0
.end method

.method public final p()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/anythink/core/c/c;->w:Ljava/lang/String;

    return-object v0
.end method

.method public final q()I
    .registers 2

    .prologue
    .line 273
    iget v0, p0, Lcom/anythink/core/c/c;->r:I

    return v0
.end method

.method public final r()J
    .registers 3

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/anythink/core/c/c;->s:J

    return-wide v0
.end method

.method public final s()I
    .registers 2

    .prologue
    .line 289
    iget v0, p0, Lcom/anythink/core/c/c;->q:I

    return v0
.end method

.method public final t()J
    .registers 3

    .prologue
    .line 302
    iget-wide v0, p0, Lcom/anythink/core/c/c;->c:J

    return-wide v0
.end method

.method public final u()I
    .registers 2

    .prologue
    .line 310
    iget v0, p0, Lcom/anythink/core/c/c;->d:I

    return v0
.end method

.method public final v()I
    .registers 2

    .prologue
    .line 326
    iget v0, p0, Lcom/anythink/core/c/c;->f:I

    return v0
.end method

.method public final w()J
    .registers 3

    .prologue
    .line 334
    iget-wide v0, p0, Lcom/anythink/core/c/c;->g:J

    return-wide v0
.end method

.method public final x()J
    .registers 3

    .prologue
    .line 342
    iget-wide v0, p0, Lcom/anythink/core/c/c;->h:J

    return-wide v0
.end method

.method public final y()J
    .registers 3

    .prologue
    .line 350
    iget-wide v0, p0, Lcom/anythink/core/c/c;->i:J

    return-wide v0
.end method

.method public final z()I
    .registers 2

    .prologue
    .line 358
    iget v0, p0, Lcom/anythink/core/c/c;->j:I

    return v0
.end method
