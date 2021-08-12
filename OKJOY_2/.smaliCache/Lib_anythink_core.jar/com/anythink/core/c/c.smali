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
.field private A:Ljava/lang/String;

.field private B:Lcom/anythink/core/common/d/z;

.field private C:I

.field private D:Ljava/lang/String;

.field private E:I

.field private F:I

.field private G:Ljava/lang/String;

.field private H:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/api/ATRewardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private J:Lcom/anythink/core/api/ATRewardInfo;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:J

.field private N:J

.field private O:Ljava/lang/String;

.field private P:J

.field private Q:I

.field private R:J

.field private S:I

.field private T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/d/p;",
            ">;"
        }
    .end annotation
.end field

.field private U:Lcom/anythink/core/common/d/r;

.field private V:J

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:J

.field private final a:Ljava/lang/String;

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

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private u:I

.field private v:I

.field private w:J

.field private x:J

.field private y:J

.field private z:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "Placement"

    iput-object v0, p0, Lcom/anythink/core/c/c;->a:Ljava/lang/String;

    return-void
.end method

.method private R()Ljava/lang/String;
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/anythink/core/c/c;->Y:Ljava/lang/String;

    return-object v0
.end method

.method private S()Ljava/lang/String;
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/anythink/core/c/c;->O:Ljava/lang/String;

    return-object v0
.end method

.method private T()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/anythink/core/c/c;->t:Ljava/util/List;

    return-object v0
.end method

.method private U()I
    .registers 2

    .line 464
    iget v0, p0, Lcom/anythink/core/c/c;->e:I

    return v0
.end method

.method private V()I
    .registers 2

    .line 504
    iget v0, p0, Lcom/anythink/core/c/c;->j:I

    return v0
.end method

.method private W()I
    .registers 2

    .line 513
    iget v0, p0, Lcom/anythink/core/c/c;->k:I

    return v0
.end method

.method private X()I
    .registers 2

    .line 522
    iget v0, p0, Lcom/anythink/core/c/c;->l:I

    return v0
.end method

.method private Y()J
    .registers 3

    .line 607
    iget-wide v0, p0, Lcom/anythink/core/c/c;->Z:J

    return-wide v0
.end method

.method private static a(Ljava/lang/String;I)Ljava/util/List;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation

    .line 1584
    move/from16 v0, p1

    const-string v1, "t_c_u_min_t"

    const-string v2, "t_c_u"

    const-string v3, "hb_timeout"

    const-string v4, "ecpm"

    const-string v5, "unit_id"

    const-string v6, "pacing"

    const-string v7, "nw_req_num"

    const-string v8, "nw_timeout"

    const-string v9, "nw_cache_time"

    const-string v10, "ug_id"

    const-string v11, "nw_firm_name"

    const-string v12, "nw_firm_id"

    const-string v13, "content"

    const-string v14, "caps_h"

    const-string v15, "caps_d"

    move-object/from16 v16, v1

    const-string v1, "adapter_class"

    move-object/from16 v17, v2

    sget v2, Lcom/anythink/core/c/c$b;->G:I

    move-object/from16 v18, v3

    if-eq v0, v2, :cond_32

    sget v2, Lcom/anythink/core/c/c$b;->K:I

    if-eq v0, v2, :cond_32

    const/4 v2, 0x1

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    .line 1585
    :goto_33
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1587
    move-object/from16 v19, v3

    :try_start_3a
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v20, v4

    move-object/from16 v4, p0

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1591
    const/4 v4, 0x0

    :goto_44
    move-object/from16 v21, v5

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2e8

    .line 1592
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1593
    if-eqz v5, :cond_2bc

    .line 1596
    move-object/from16 v22, v3

    new-instance v3, Lcom/anythink/core/c/c$b;

    invoke-direct {v3}, Lcom/anythink/core/c/c$b;-><init>()V

    .line 1598
    iput v0, v3, Lcom/anythink/core/c/c$b;->F:I

    .line 1599
    if-eqz v2, :cond_5f

    const/4 v0, 0x1

    goto :goto_60

    :cond_5f
    const/4 v0, 0x0

    :goto_60
    iput v0, v3, Lcom/anythink/core/c/c$b;->n:I

    .line 1600
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_66} :catch_2eb

    move/from16 p0, v4

    const-string v4, ""

    if-eqz v0, :cond_6f

    .line 1601
    :try_start_6c
    iput-object v4, v3, Lcom/anythink/core/c/c$b;->g:Ljava/lang/String;

    goto :goto_75

    .line 1603
    :cond_6f
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/anythink/core/c/c$b;->g:Ljava/lang/String;

    .line 1607
    :goto_75
    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v23, v1

    const/4 v1, -0x1

    if-eqz v0, :cond_81

    .line 1608
    iput v1, v3, Lcom/anythink/core/c/c$b;->d:I

    goto :goto_87

    .line 1610
    :cond_81
    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/anythink/core/c/c$b;->d:I

    .line 1614
    :goto_87
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 1615
    iput v1, v3, Lcom/anythink/core/c/c$b;->e:I

    goto :goto_96

    .line 1617
    :cond_90
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/anythink/core/c/c$b;->e:I

    .line 1620
    :goto_96
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 1621
    iput-object v4, v3, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    goto :goto_a5

    .line 1623
    :cond_9f
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    .line 1626
    :goto_a5
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 1627
    iput v1, v3, Lcom/anythink/core/c/c$b;->b:I

    goto :goto_b4

    .line 1629
    :cond_ae
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/anythink/core/c/c$b;->b:I

    .line 1632
    :goto_b4
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1633
    iput-object v4, v3, Lcom/anythink/core/c/c$b;->c:Ljava/lang/String;

    goto :goto_c3

    .line 1635
    :cond_bd
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/anythink/core/c/c$b;->c:Ljava/lang/String;

    .line 1638
    :goto_c3
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 1639
    const-string v0, "unknown"

    iput-object v0, v3, Lcom/anythink/core/c/c$b;->h:Ljava/lang/String;

    goto :goto_d4

    .line 1641
    :cond_ce
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/anythink/core/c/c$b;->h:Ljava/lang/String;

    .line 1644
    :goto_d4
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    move/from16 v24, v2

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_e2

    .line 1645
    invoke-virtual {v3, v1, v2}, Lcom/anythink/core/c/c$b;->a(J)V

    goto :goto_ea

    .line 1647
    :cond_e2
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v1, v0

    invoke-virtual {v3, v1, v2}, Lcom/anythink/core/c/c$b;->a(J)V

    .line 1651
    :goto_ea
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 1652
    const-wide/16 v0, 0x0

    invoke-virtual {v3, v0, v1}, Lcom/anythink/core/c/c$b;->b(J)V

    goto :goto_fe

    .line 1654
    :cond_f6
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Lcom/anythink/core/c/c$b;->b(J)V

    .line 1657
    :goto_fe
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_109

    .line 1658
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/anythink/core/c/c$b;->a(I)V

    goto :goto_110

    .line 1660
    :cond_109
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/anythink/core/c/c$b;->a(I)V

    .line 1663
    :goto_110
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_11c

    .line 1664
    nop

    .line 50366
    iput-wide v1, v3, Lcom/anythink/core/c/c$b;->i:J

    .line 1664
    goto :goto_122

    .line 1666
    :cond_11c
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 50368
    iput-wide v1, v3, Lcom/anythink/core/c/c$b;->i:J

    .line 1669
    :goto_122
    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 1670
    nop

    .line 50370
    iput-object v4, v3, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    .line 1670
    goto :goto_134

    .line 1672
    :cond_12e
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50372
    iput-object v1, v3, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    .line 1675
    :goto_134
    move-object/from16 v1, v20

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_145

    .line 1676
    nop

    .line 50374
    move-object v2, v6

    move-object/from16 v20, v7

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/anythink/core/c/c$b;->m:D

    .line 1676
    goto :goto_150

    .line 1678
    :cond_145
    move-object v2, v6

    move-object/from16 v20, v7

    if-nez v24, :cond_150

    .line 1679
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 50376
    iput-wide v6, v3, Lcom/anythink/core/c/c$b;->m:D

    .line 1683
    :cond_150
    :goto_150
    move-object/from16 v6, v18

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_161

    .line 1684
    nop

    .line 50378
    move-object/from16 v21, v0

    move-object v7, v1

    const-wide/16 v0, 0x7d0

    iput-wide v0, v3, Lcom/anythink/core/c/c$b;->u:J

    .line 1684
    goto :goto_16b

    .line 1686
    :cond_161
    move-object/from16 v21, v0

    move-object v7, v1

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 50380
    iput-wide v0, v3, Lcom/anythink/core/c/c$b;->u:J

    .line 1690
    :goto_16b
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_177

    .line 1691
    nop

    .line 50382
    iput-object v4, v3, Lcom/anythink/core/c/c$b;->j:Ljava/lang/String;

    .line 1691
    goto :goto_17d

    .line 1693
    :cond_177
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50384
    iput-object v1, v3, Lcom/anythink/core/c/c$b;->j:Ljava/lang/String;

    .line 1696
    :goto_17d
    move-object/from16 v1, v16

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_18c

    .line 1697
    nop

    .line 50386
    move-object/from16 v17, v0

    const/4 v0, 0x0

    iput v0, v3, Lcom/anythink/core/c/c$b;->k:I

    .line 1697
    goto :goto_195

    .line 1699
    :cond_18c
    move-object/from16 v17, v0

    const/4 v0, 0x0

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 50388
    iput v0, v3, Lcom/anythink/core/c/c$b;->k:I

    .line 1702
    :goto_195
    const-string v0, "t_c_u_max_t"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    .line 1703
    nop

    .line 50390
    const/16 v0, 0xbb8

    iput v0, v3, Lcom/anythink/core/c/c$b;->l:I

    .line 1703
    goto :goto_1ab

    .line 1705
    :cond_1a3
    const-string v0, "t_c_u_max_t"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 50392
    iput v0, v3, Lcom/anythink/core/c/c$b;->l:I

    .line 1708
    :goto_1ab
    const-string v0, "payload"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 1709
    nop

    .line 50394
    iput-object v4, v3, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    .line 1709
    goto :goto_1bf

    .line 1711
    :cond_1b7
    const-string v0, "payload"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50396
    iput-object v0, v3, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    .line 1714
    :goto_1bf
    const-string v0, "error"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1cb

    .line 1715
    nop

    .line 50398
    iput-object v4, v3, Lcom/anythink/core/c/c$b;->p:Ljava/lang/String;

    .line 1715
    goto :goto_1d3

    .line 1717
    :cond_1cb
    const-string v0, "error"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50400
    iput-object v0, v3, Lcom/anythink/core/c/c$b;->p:Ljava/lang/String;

    .line 1723
    :goto_1d3
    const-string v0, "l_s_t"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e4

    .line 1724
    nop

    .line 50402
    move-object/from16 v16, v1

    const-wide/32 v0, 0x1b7740

    iput-wide v0, v3, Lcom/anythink/core/c/c$b;->v:J

    .line 1724
    goto :goto_1ee

    .line 1726
    :cond_1e4
    move-object/from16 v16, v1

    const-string v0, "l_s_t"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 50404
    iput-wide v0, v3, Lcom/anythink/core/c/c$b;->v:J

    .line 1729
    :goto_1ee
    const-string v0, "n_d_t"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1fc

    .line 1730
    nop

    .line 50406
    const-wide/16 v0, -0x1

    iput-wide v0, v3, Lcom/anythink/core/c/c$b;->w:J

    .line 1730
    goto :goto_204

    .line 1732
    :cond_1fc
    const-string v0, "n_d_t"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 50408
    iput-wide v0, v3, Lcom/anythink/core/c/c$b;->w:J

    .line 1735
    :goto_204
    const-string v0, "hb_t_c_t"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_213

    .line 1736
    nop

    .line 50410
    const-wide/32 v0, 0x1b7740

    iput-wide v0, v3, Lcom/anythink/core/c/c$b;->x:J

    .line 1736
    goto :goto_21b

    .line 1738
    :cond_213
    const-string v0, "hb_t_c_t"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 50412
    iput-wide v0, v3, Lcom/anythink/core/c/c$b;->x:J

    .line 1742
    :goto_21b
    const-string v0, "sort_type"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22b

    .line 1743
    if-eqz v24, :cond_227

    const/4 v0, 0x0

    goto :goto_228

    :cond_227
    const/4 v0, 0x1

    .line 50414
    :goto_228
    iput v0, v3, Lcom/anythink/core/c/c$b;->q:I

    .line 1743
    goto :goto_233

    .line 1745
    :cond_22b
    const-string v0, "sort_type"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 50416
    iput v0, v3, Lcom/anythink/core/c/c$b;->q:I

    .line 1749
    :goto_233
    const-string v0, "s_sw"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_240

    .line 1750
    nop

    .line 50418
    const/4 v0, 0x1

    iput v0, v3, Lcom/anythink/core/c/c$b;->y:I

    .line 1750
    goto :goto_248

    .line 1752
    :cond_240
    const-string v0, "s_sw"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 50420
    iput v0, v3, Lcom/anythink/core/c/c$b;->y:I

    .line 1754
    :goto_248
    const-string v0, "c_sw"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_255

    .line 1755
    nop

    .line 50422
    const/4 v0, 0x1

    iput v0, v3, Lcom/anythink/core/c/c$b;->z:I

    .line 1755
    goto :goto_25e

    .line 1757
    :cond_255
    const/4 v0, 0x1

    const-string v1, "c_sw"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 50424
    iput v1, v3, Lcom/anythink/core/c/c$b;->z:I

    .line 1761
    :goto_25e
    const-string v1, "ecpm_level"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26b

    .line 1762
    nop

    .line 50426
    const/4 v1, -0x1

    iput v1, v3, Lcom/anythink/core/c/c$b;->B:I

    .line 1762
    goto :goto_273

    .line 1764
    :cond_26b
    const-string v1, "ecpm_level"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 50428
    iput v1, v3, Lcom/anythink/core/c/c$b;->B:I

    .line 1767
    :goto_273
    const-string v1, "precision"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_280

    .line 1768
    const-string v1, "publisher_defined"

    .line 50430
    iput-object v1, v3, Lcom/anythink/core/c/c$b;->C:Ljava/lang/String;

    .line 1768
    goto :goto_288

    .line 1770
    :cond_280
    const-string v1, "precision"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50432
    iput-object v1, v3, Lcom/anythink/core/c/c$b;->C:Ljava/lang/String;

    .line 1773
    :goto_288
    const-string v1, "nx_req_time"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_296

    .line 1774
    nop

    .line 50434
    const-wide/16 v0, 0x0

    iput-wide v0, v3, Lcom/anythink/core/c/c$b;->D:J

    .line 1774
    goto :goto_29e

    .line 1776
    :cond_296
    const-string v0, "nx_req_time"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 50436
    iput-wide v0, v3, Lcom/anythink/core/c/c$b;->D:J

    .line 1779
    :goto_29e
    const-string v0, "bid_fail_interval"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ac

    .line 1780
    nop

    .line 50438
    const-wide/16 v0, 0x0

    iput-wide v0, v3, Lcom/anythink/core/c/c$b;->E:J

    .line 1780
    goto :goto_2b4

    .line 1782
    :cond_2ac
    const-string v0, "bid_fail_interval"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 50440
    iput-wide v0, v3, Lcom/anythink/core/c/c$b;->E:J
    :try_end_2b4
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_2b4} :catch_2eb

    .line 1786
    :goto_2b4
    move-object/from16 v1, v19

    :try_start_2b6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2b9
    .catch Ljava/lang/Exception; {:try_start_2b6 .. :try_end_2b9} :catch_2ba

    goto :goto_2cf

    .line 1788
    :catch_2ba
    move-exception v0

    goto :goto_2ee

    .line 1593
    :cond_2bc
    move-object/from16 v23, v1

    move/from16 v24, v2

    move-object/from16 v22, v3

    move/from16 p0, v4

    move-object v2, v6

    move-object/from16 v6, v18

    move-object/from16 v1, v19

    move-object/from16 v25, v20

    move-object/from16 v20, v7

    move-object/from16 v7, v25

    .line 1591
    :goto_2cf
    add-int/lit8 v4, p0, 0x1

    move/from16 v0, p1

    move-object/from16 v19, v1

    move-object/from16 v18, v6

    move-object/from16 v5, v21

    move-object/from16 v3, v22

    move-object/from16 v1, v23

    move-object v6, v2

    move/from16 v2, v24

    move-object/from16 v25, v20

    move-object/from16 v20, v7

    move-object/from16 v7, v25

    goto/16 :goto_44

    .line 1790
    :cond_2e8
    move-object/from16 v1, v19

    goto :goto_2ee

    .line 1788
    :catch_2eb
    move-exception v0

    move-object/from16 v1, v19

    .line 1792
    :goto_2ee
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation

    .line 1567
    sget v0, Lcom/anythink/core/c/c$b;->G:I

    invoke-static {p0, v0}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 1568
    sget v0, Lcom/anythink/core/c/c$b;->K:I

    invoke-static {p1, v0}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 1570
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1572
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1574
    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/d/p;",
            ">;"
        }
    .end annotation

    .line 1803
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1806
    :try_start_5
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1808
    const/4 p0, 0x0

    :goto_b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_14e

    .line 1809
    new-instance v2, Lcom/anythink/core/common/d/p;

    invoke-direct {v2}, Lcom/anythink/core/common/d/p;-><init>()V

    .line 1810
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1811
    const-string v4, "o_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->c(Ljava/lang/String;)V

    .line 1812
    const-string v4, "c_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->d(Ljava/lang/String;)V

    .line 1813
    const-string v4, "t"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->e(Ljava/lang/String;)V

    .line 1814
    const-string v4, "p_g"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->p(Ljava/lang/String;)V

    .line 1815
    const-string v4, "d"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->f(Ljava/lang/String;)V

    .line 1816
    const-string v4, "ic_u"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->g(Ljava/lang/String;)V

    .line 1817
    const-string v4, "im_u"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->h(Ljava/lang/String;)V

    .line 1818
    const-string v4, "f_i_u"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->i(Ljava/lang/String;)V

    .line 1819
    const-string v4, "a_c_u"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->j(Ljava/lang/String;)V

    .line 1820
    const-string v4, "c_t"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->k(Ljava/lang/String;)V

    .line 1821
    const-string v4, "v_u"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->l(Ljava/lang/String;)V

    .line 1822
    const-string v4, "l_t"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->c(I)V

    .line 1823
    const-string v4, "p_u"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->m(Ljava/lang/String;)V

    .line 1824
    const-string v4, "dl"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->n(Ljava/lang/String;)V

    .line 1825
    const-string v4, "c_u"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->o(Ljava/lang/String;)V

    .line 1826
    const-string v4, "ip_u"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->v(Ljava/lang/String;)V

    .line 1829
    const-string v4, "t_u"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->w(Ljava/lang/String;)V

    .line 1830
    const-string v4, "t_u_25"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->x(Ljava/lang/String;)V

    .line 1831
    const-string v4, "t_u_50"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->y(Ljava/lang/String;)V

    .line 1832
    const-string v4, "t_u_75"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->z(Ljava/lang/String;)V

    .line 1833
    const-string v4, "t_u_100"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->A(Ljava/lang/String;)V

    .line 1834
    const-string v4, "s_e_c_t_u"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->B(Ljava/lang/String;)V

    .line 1835
    const-string v4, "c_t_u"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->C(Ljava/lang/String;)V

    .line 1836
    const-string v4, "ip_n_u"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->D(Ljava/lang/String;)V

    .line 1837
    const-string v4, "c_n_u"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->E(Ljava/lang/String;)V

    .line 1840
    const-string v4, "o_a_d_c"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 50442
    iput v4, v2, Lcom/anythink/core/common/d/p;->z:I

    .line 1841
    const-string v4, "o_a_p"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 50444
    iput-wide v4, v2, Lcom/anythink/core/common/d/p;->A:J

    .line 1842
    invoke-virtual {v2, p2, p3}, Lcom/anythink/core/common/d/p;->a(J)V

    .line 1844
    const-string v4, "unit_type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->b(I)V

    .line 1845
    const-string v4, "c_m"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->e(I)V

    .line 1848
    const-string v4, "ext_h_pic"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->r(Ljava/lang/String;)V

    .line 1849
    const-string v4, "ext_big_h_pic"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->s(Ljava/lang/String;)V

    .line 1850
    const-string v4, "ext_rect_h_pic"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/d/p;->t(Ljava/lang/String;)V

    .line 1851
    const-string v4, "ext_home_h_pic"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/d/p;->u(Ljava/lang/String;)V

    .line 1853
    invoke-virtual {v2, p1}, Lcom/anythink/core/common/d/p;->a(Ljava/lang/String;)V

    .line 1854
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14a
    .catchall {:try_start_5 .. :try_end_14a} :catchall_14f

    .line 1808
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_b

    .line 1858
    :cond_14e
    goto :goto_153

    .line 1857
    :catchall_14f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1859
    :goto_153
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation

    .line 1554
    sget v0, Lcom/anythink/core/c/c$b;->H:I

    invoke-static {p0, v0}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 1555
    sget v0, Lcom/anythink/core/c/c$b;->J:I

    invoke-static {p1, v0}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 1556
    sget v0, Lcom/anythink/core/c/c$b;->I:I

    invoke-static {p2, v0}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p2

    .line 1557
    sget v0, Lcom/anythink/core/c/c$b;->L:I

    invoke-static {p3, v0}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p3

    .line 1559
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1560
    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1561
    invoke-interface {p0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1563
    return-object p0
.end method

.method private a(I)V
    .registers 2

    .line 358
    iput p1, p0, Lcom/anythink/core/c/c;->F:I

    .line 359
    return-void
.end method

.method private a(J)V
    .registers 3

    .line 197
    iput-wide p1, p0, Lcom/anythink/core/c/c;->V:J

    .line 198
    return-void
.end method

.method private a(Lcom/anythink/core/api/ATRewardInfo;)V
    .registers 2

    .line 342
    iput-object p1, p0, Lcom/anythink/core/c/c;->J:Lcom/anythink/core/api/ATRewardInfo;

    .line 343
    return-void
.end method

.method private a(Lcom/anythink/core/common/d/r;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/anythink/core/c/c;->U:Lcom/anythink/core/common/d/r;

    .line 247
    return-void
.end method

.method private a(Lcom/anythink/core/common/d/z;)V
    .registers 2

    .line 558
    iput-object p1, p0, Lcom/anythink/core/c/c;->B:Lcom/anythink/core/common/d/z;

    .line 559
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/d/p;",
            ">;)V"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/anythink/core/c/c;->T:Ljava/util/List;

    .line 259
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/api/ATRewardInfo;",
            ">;)V"
        }
    .end annotation

    .line 334
    iput-object p1, p0, Lcom/anythink/core/c/c;->I:Ljava/util/Map;

    .line 335
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/anythink/core/c/c;
    .registers 18

    .line 1107
    move-object/from16 v0, p0

    const-string v1, "gro_id"

    const-string v2, "refresh"

    const-string v3, "show_type"

    const-string v4, "wifi_auto_sw"

    const-string v5, "unit_pacing"

    const-string v6, "unit_caps_h"

    const-string v7, "unit_caps_d"

    const-string v8, "req_ug_num"

    const-string v9, "ad_delivery_sw"

    const-string v10, "ps_ct_out"

    const-string v11, "ps_ct"

    const-string v12, "pucs"

    const/4 v13, 0x0

    if-nez v0, :cond_1e

    .line 1108
    return-object v13

    .line 1112
    :cond_1e
    :try_start_1e
    new-instance v14, Lcom/anythink/core/c/c;

    invoke-direct {v14}, Lcom/anythink/core/c/c;-><init>()V

    .line 1113
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v16, v14

    const-wide/16 v13, 0x0

    if-eqz v0, :cond_3a

    .line 1116
    nop

    .line 2444
    move-object/from16 v11, v16

    iput-wide v13, v11, Lcom/anythink/core/c/c;->b:J

    .line 1116
    move-object v14, v1

    move-object v13, v11

    goto :goto_43

    .line 1118
    :cond_3a
    move-object/from16 v13, v16

    move-object v14, v1

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3444
    iput-wide v0, v13, Lcom/anythink/core/c/c;->b:J

    .line 1121
    :goto_43
    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1122
    nop

    .line 3452
    const-wide/16 v10, 0x0

    iput-wide v10, v13, Lcom/anythink/core/c/c;->c:J

    .line 1122
    goto :goto_55

    .line 1124
    :cond_4f
    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 4452
    iput-wide v0, v13, Lcom/anythink/core/c/c;->c:J

    .line 1127
    :goto_55
    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_60

    .line 1128
    nop

    .line 4460
    iput v1, v13, Lcom/anythink/core/c/c;->d:I

    .line 1128
    goto :goto_66

    .line 1130
    :cond_60
    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 5460
    iput v0, v13, Lcom/anythink/core/c/c;->d:I

    .line 1133
    :goto_66
    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1134
    nop

    .line 5468
    iput v1, v13, Lcom/anythink/core/c/c;->e:I

    .line 1134
    goto :goto_76

    .line 1136
    :cond_70
    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 6468
    iput v0, v13, Lcom/anythink/core/c/c;->e:I

    .line 1139
    :goto_76
    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v9, -0x1

    if-eqz v0, :cond_81

    .line 1140
    nop

    .line 6476
    iput v9, v13, Lcom/anythink/core/c/c;->f:I

    .line 1140
    goto :goto_87

    .line 1142
    :cond_81
    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 7476
    iput v0, v13, Lcom/anythink/core/c/c;->f:I

    .line 1145
    :goto_87
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v10, -0x1

    if-eqz v0, :cond_93

    .line 1146
    nop

    .line 7484
    iput-wide v10, v13, Lcom/anythink/core/c/c;->g:J

    .line 1146
    goto :goto_99

    .line 1148
    :cond_93
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 8484
    iput-wide v7, v13, Lcom/anythink/core/c/c;->g:J

    .line 1151
    :goto_99
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1152
    nop

    .line 8492
    iput-wide v10, v13, Lcom/anythink/core/c/c;->h:J

    .line 1152
    goto :goto_a9

    .line 1154
    :cond_a3
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 9492
    iput-wide v6, v13, Lcom/anythink/core/c/c;->h:J

    .line 1157
    :goto_a9
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 1158
    nop

    .line 9500
    iput-wide v10, v13, Lcom/anythink/core/c/c;->i:J

    .line 1158
    goto :goto_b9

    .line 1160
    :cond_b3
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 10500
    iput-wide v5, v13, Lcom/anythink/core/c/c;->i:J

    .line 1163
    :goto_b9
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_c4

    .line 1164
    nop

    .line 10508
    iput v5, v13, Lcom/anythink/core/c/c;->j:I

    .line 1164
    goto :goto_ca

    .line 1166
    :cond_c4
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 11508
    iput v0, v13, Lcom/anythink/core/c/c;->j:I

    .line 1169
    :goto_ca
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 1170
    nop

    .line 11517
    iput v5, v13, Lcom/anythink/core/c/c;->k:I

    .line 1170
    goto :goto_da

    .line 1172
    :cond_d4
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 12517
    iput v0, v13, Lcom/anythink/core/c/c;->k:I

    .line 1176
    :goto_da
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 1177
    nop

    .line 12526
    iput v5, v13, Lcom/anythink/core/c/c;->l:I

    .line 1177
    goto :goto_ea

    .line 1179
    :cond_e4
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 13526
    iput v0, v13, Lcom/anythink/core/c/c;->l:I

    .line 1182
    :goto_ea
    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 1183
    nop

    .line 13534
    iput v5, v13, Lcom/anythink/core/c/c;->m:I

    .line 1183
    goto :goto_fa

    .line 1185
    :cond_f4
    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 14534
    iput v0, v13, Lcom/anythink/core/c/c;->m:I

    .line 1189
    :goto_fa
    const-string v0, "format"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 1190
    nop

    .line 15439
    iput v5, v13, Lcom/anythink/core/c/c;->u:I

    .line 1190
    goto :goto_10e

    .line 1192
    :cond_106
    const-string v0, "format"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 16439
    iput v0, v13, Lcom/anythink/core/c/c;->u:I

    .line 1195
    :goto_10e
    const-string v0, "auto_refresh"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 1196
    nop

    .line 17423
    iput v5, v13, Lcom/anythink/core/c/c;->v:I

    .line 1196
    goto :goto_122

    .line 1198
    :cond_11a
    const-string v0, "auto_refresh"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 18423
    iput v0, v13, Lcom/anythink/core/c/c;->v:I

    .line 1202
    :goto_122
    const-string v0, "auto_refresh_time"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 1203
    nop

    .line 19423
    iput v5, v13, Lcom/anythink/core/c/c;->v:I

    .line 1203
    goto :goto_136

    .line 1205
    :cond_12e
    const-string v0, "auto_refresh_time"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 19431
    iput-wide v2, v13, Lcom/anythink/core/c/c;->w:J

    .line 1210
    :goto_136
    const-string v0, "s_t"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_145

    .line 1211
    nop

    .line 20391
    const-wide/32 v2, 0xdbba0

    iput-wide v2, v13, Lcom/anythink/core/c/c;->x:J

    .line 1211
    goto :goto_14d

    .line 1213
    :cond_145
    const-string v0, "s_t"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 21391
    iput-wide v2, v13, Lcom/anythink/core/c/c;->x:J

    .line 1216
    :goto_14d
    const-string v0, "l_s_t"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 1217
    nop

    .line 21399
    const-wide/32 v2, 0x1b7740

    iput-wide v2, v13, Lcom/anythink/core/c/c;->y:J

    .line 1217
    goto :goto_164

    .line 1219
    :cond_15c
    const-string v0, "l_s_t"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 22399
    iput-wide v2, v13, Lcom/anythink/core/c/c;->y:J

    .line 1222
    :goto_164
    const-string v0, "ra"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_170

    .line 1223
    nop

    .line 22407
    iput v9, v13, Lcom/anythink/core/c/c;->z:I

    .line 1223
    goto :goto_178

    .line 1225
    :cond_170
    const-string v0, "ra"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 23407
    iput v0, v13, Lcom/anythink/core/c/c;->z:I

    .line 1228
    :goto_178
    const-string v0, "asid"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_17e} :catch_4eb

    const-string v2, ""

    if-eqz v0, :cond_186

    .line 1229
    nop

    .line 23415
    :try_start_183
    iput-object v2, v13, Lcom/anythink/core/c/c;->A:Ljava/lang/String;

    .line 1229
    goto :goto_18e

    .line 1231
    :cond_186
    const-string v0, "asid"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24415
    iput-object v0, v13, Lcom/anythink/core/c/c;->A:Ljava/lang/String;

    .line 1234
    :goto_18e
    const-string v0, "tp_ps"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19b

    .line 1235
    nop

    .line 24558
    const/4 v1, 0x0

    iput-object v1, v13, Lcom/anythink/core/c/c;->B:Lcom/anythink/core/common/d/z;
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_19a} :catch_4eb

    .line 1235
    goto :goto_1f4

    .line 1238
    :cond_19b
    :try_start_19b
    new-instance v0, Lcom/anythink/core/common/d/z;

    invoke-direct {v0}, Lcom/anythink/core/common/d/z;-><init>()V

    .line 1239
    const-string v3, "tp_ps"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1240
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_1ae

    move v4, v1

    goto :goto_1af

    :cond_1ae
    move v4, v5

    :goto_1af
    iput-boolean v4, v0, Lcom/anythink/core/common/d/z;->a:Z

    .line 1241
    const-string v4, "apdt"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/anythink/core/common/d/z;->b:J

    .line 1242
    const-string v4, "aprn"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/anythink/core/common/d/z;->c:I

    .line 1243
    const-string v4, "puas"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_1cb

    move v4, v1

    goto :goto_1cc

    :cond_1cb
    move v4, v5

    :goto_1cc
    iput-boolean v4, v0, Lcom/anythink/core/common/d/z;->d:Z

    .line 1244
    const-string v4, "cdt"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/anythink/core/common/d/z;->e:J

    .line 1245
    const-string v4, "ski_swt"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_1e0

    move v4, v1

    goto :goto_1e1

    :cond_1e0
    move v4, v5

    :goto_1e1
    iput-boolean v4, v0, Lcom/anythink/core/common/d/z;->f:Z

    .line 1246
    const-string v4, "aut_swt"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1ec

    goto :goto_1ed

    :cond_1ec
    move v1, v5

    :goto_1ed
    iput-boolean v1, v0, Lcom/anythink/core/common/d/z;->g:Z

    .line 1247
    nop

    .line 25558
    iput-object v0, v13, Lcom/anythink/core/c/c;->B:Lcom/anythink/core/common/d/z;
    :try_end_1f2
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_1f2} :catch_1f3

    .line 1250
    goto :goto_1f4

    .line 1248
    :catch_1f3
    move-exception v0

    .line 1254
    :goto_1f4
    :try_start_1f4
    const-string v0, "ug_list"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0
    :try_end_1fa
    .catch Ljava/lang/Exception; {:try_start_1f4 .. :try_end_1fa} :catch_4eb

    const-string v1, "[]"

    if-eqz v0, :cond_202

    .line 1255
    nop

    .line 25566
    :try_start_1ff
    iput-object v1, v13, Lcom/anythink/core/c/c;->n:Ljava/lang/String;

    .line 1255
    goto :goto_20a

    .line 1257
    :cond_202
    const-string v0, "ug_list"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26566
    iput-object v0, v13, Lcom/anythink/core/c/c;->n:Ljava/lang/String;

    .line 1260
    :goto_20a
    const-string v0, "ol_list"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_216

    .line 1261
    nop

    .line 26574
    iput-object v1, v13, Lcom/anythink/core/c/c;->o:Ljava/lang/String;

    .line 1261
    goto :goto_21e

    .line 1263
    :cond_216
    const-string v0, "ol_list"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27574
    iput-object v0, v13, Lcom/anythink/core/c/c;->o:Ljava/lang/String;

    .line 1266
    :goto_21e
    nop

    .line 28562
    iget-object v0, v13, Lcom/anythink/core/c/c;->n:Ljava/lang/String;

    .line 1266
    nop

    .line 28570
    iget-object v3, v13, Lcom/anythink/core/c/c;->o:Ljava/lang/String;

    .line 1266
    invoke-static {v0, v3}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 29274
    iput-object v0, v13, Lcom/anythink/core/c/c;->s:Ljava/util/List;

    .line 1269
    const-string v0, "s2shb_list"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_236

    .line 1270
    nop

    .line 29582
    iput-object v1, v13, Lcom/anythink/core/c/c;->p:Ljava/lang/String;

    .line 1270
    goto :goto_23e

    .line 1272
    :cond_236
    const-string v0, "s2shb_list"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30582
    iput-object v0, v13, Lcom/anythink/core/c/c;->p:Ljava/lang/String;

    .line 1275
    :goto_23e
    const-string v0, "adx_list"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24a

    .line 1276
    nop

    .line 31242
    iput-object v1, v13, Lcom/anythink/core/c/c;->X:Ljava/lang/String;

    .line 1276
    goto :goto_252

    .line 1278
    :cond_24a
    const-string v0, "adx_list"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32242
    iput-object v0, v13, Lcom/anythink/core/c/c;->X:Ljava/lang/String;

    .line 1281
    :goto_252
    const-string v0, "hb_list"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25e

    .line 1282
    nop

    .line 32590
    iput-object v1, v13, Lcom/anythink/core/c/c;->q:Ljava/lang/String;

    .line 1282
    goto :goto_266

    .line 1284
    :cond_25e
    const-string v0, "hb_list"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33590
    iput-object v0, v13, Lcom/anythink/core/c/c;->q:Ljava/lang/String;

    .line 1287
    :goto_266
    const-string v0, "inh_list"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_272

    .line 1288
    nop

    .line 34205
    iput-object v1, v13, Lcom/anythink/core/c/c;->r:Ljava/lang/String;

    .line 1288
    goto :goto_27a

    .line 1290
    :cond_272
    const-string v0, "inh_list"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35205
    iput-object v0, v13, Lcom/anythink/core/c/c;->r:Ljava/lang/String;
    :try_end_27a
    .catch Ljava/lang/Exception; {:try_start_1ff .. :try_end_27a} :catch_4eb

    .line 1294
    :goto_27a
    nop

    .line 35578
    :try_start_27b
    iget-object v0, v13, Lcom/anythink/core/c/c;->p:Ljava/lang/String;

    .line 1294
    nop

    .line 36238
    iget-object v1, v13, Lcom/anythink/core/c/c;->X:Ljava/lang/String;

    .line 1295
    nop

    .line 36586
    iget-object v3, v13, Lcom/anythink/core/c/c;->q:Ljava/lang/String;

    .line 1296
    nop

    .line 37201
    iget-object v4, v13, Lcom/anythink/core/c/c;->r:Ljava/lang/String;

    .line 1294
    invoke-static {v0, v1, v3, v4}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 37282
    iput-object v0, v13, Lcom/anythink/core/c/c;->t:Ljava/util/List;
    :try_end_28c
    .catch Ljava/lang/Exception; {:try_start_27b .. :try_end_28c} :catch_28d

    .line 1300
    goto :goto_28e

    .line 1298
    :catch_28d
    move-exception v0

    .line 1303
    :goto_28e
    nop

    .line 1304
    :try_start_28f
    const-string v0, "updateTime"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29e

    .line 1305
    nop

    .line 37611
    const-wide/16 v3, 0x0

    iput-wide v3, v13, Lcom/anythink/core/c/c;->Z:J

    .line 1305
    move-wide v0, v3

    goto :goto_2a7

    .line 1307
    :cond_29e
    const-string v0, "updateTime"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1308
    nop

    .line 38611
    iput-wide v0, v13, Lcom/anythink/core/c/c;->Z:J

    .line 1314
    :goto_2a7
    const-string v3, "t_g_id"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b3

    .line 1315
    nop

    .line 39366
    iput v9, v13, Lcom/anythink/core/c/c;->C:I

    .line 1315
    goto :goto_2bb

    .line 1317
    :cond_2b3
    const-string v3, "t_g_id"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 40366
    iput v3, v13, Lcom/anythink/core/c/c;->C:I

    .line 1320
    :goto_2bb
    const-string v3, "s_id"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c7

    .line 1321
    nop

    .line 40374
    iput-object v2, v13, Lcom/anythink/core/c/c;->D:Ljava/lang/String;

    .line 1321
    goto :goto_2cf

    .line 1323
    :cond_2c7
    const-string v3, "s_id"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41374
    iput-object v3, v13, Lcom/anythink/core/c/c;->D:Ljava/lang/String;

    .line 1326
    :goto_2cf
    const-string v3, "u_n_f_sw"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2db

    .line 1327
    nop

    .line 41382
    iput v5, v13, Lcom/anythink/core/c/c;->E:I

    .line 1327
    goto :goto_2e3

    .line 1329
    :cond_2db
    const-string v3, "u_n_f_sw"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 42382
    iput v3, v13, Lcom/anythink/core/c/c;->E:I

    .line 1332
    :goto_2e3
    const-string v3, "m_o"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f0

    .line 1333
    nop

    .line 43258
    const/4 v1, 0x0

    iput-object v1, v13, Lcom/anythink/core/c/c;->T:Ljava/util/List;

    .line 1333
    goto :goto_302

    .line 1335
    :cond_2f0
    const-string v3, "m_o"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "m_o_ks"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0, v1}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    .line 44258
    iput-object v0, v13, Lcom/anythink/core/c/c;->T:Ljava/util/List;

    .line 1338
    :goto_302
    const-string v0, "m_o_s"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_316

    .line 1340
    const-string v0, "m_o_s"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/d/r;->b(Ljava/lang/String;)Lcom/anythink/core/common/d/r;

    move-result-object v0

    .line 45246
    iput-object v0, v13, Lcom/anythink/core/c/c;->U:Lcom/anythink/core/common/d/r;

    .line 1343
    :cond_316
    const-string v0, "p_m_o"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_322

    .line 1344
    nop

    .line 45358
    iput v5, v13, Lcom/anythink/core/c/c;->F:I

    .line 1344
    goto :goto_32a

    .line 1346
    :cond_322
    const-string v0, "p_m_o"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 46358
    iput v0, v13, Lcom/anythink/core/c/c;->F:I

    .line 1350
    :goto_32a
    const-string v0, "sdk_custom"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_337

    .line 1351
    nop

    .line 47350
    const/4 v1, 0x0

    iput-object v1, v13, Lcom/anythink/core/c/c;->H:Ljava/util/Map;

    .line 1351
    goto :goto_362

    .line 1353
    :cond_337
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "sdk_custom"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1354
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1355
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1356
    :goto_34b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35f

    .line 1357
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1358
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    goto :goto_34b

    .line 1360
    :cond_35f
    nop

    .line 48350
    iput-object v1, v13, Lcom/anythink/core/c/c;->H:Ljava/util/Map;

    .line 1365
    :goto_362
    const-string v0, "callback"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_415

    .line 1366
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "callback"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1368
    const-string v1, "sc_list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1
    :try_end_37b
    .catch Ljava/lang/Exception; {:try_start_28f .. :try_end_37b} :catch_4eb

    const-string v3, "rw_num"

    const-string v4, "rw_n"

    if-nez v1, :cond_3c2

    .line 1369
    :try_start_381
    new-instance v1, Lorg/json/JSONObject;

    const-string v5, "sc_list"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1370
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1373
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 1375
    :goto_395
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3bf

    .line 1376
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1378
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1380
    new-instance v10, Lcom/anythink/core/api/ATRewardInfo;

    invoke-direct {v10}, Lcom/anythink/core/api/ATRewardInfo;-><init>()V

    .line 1381
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/anythink/core/api/ATRewardInfo;->rewardName:Ljava/lang/String;

    .line 1382
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v10, Lcom/anythink/core/api/ATRewardInfo;->rewardNumber:I

    .line 1383
    invoke-virtual {v5, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    goto :goto_395

    .line 1385
    :cond_3bf
    nop

    .line 49334
    iput-object v5, v13, Lcom/anythink/core/c/c;->I:Ljava/util/Map;

    .line 1388
    :cond_3c2
    const-string v1, "reward"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f5

    .line 1389
    new-instance v1, Lorg/json/JSONObject;

    const-string v5, "reward"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1390
    new-instance v5, Lcom/anythink/core/api/ATRewardInfo;

    invoke-direct {v5}, Lcom/anythink/core/api/ATRewardInfo;-><init>()V

    .line 1391
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3e6

    .line 1392
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/anythink/core/api/ATRewardInfo;->rewardName:Ljava/lang/String;

    .line 1394
    :cond_3e6
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3f2

    .line 1395
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v5, Lcom/anythink/core/api/ATRewardInfo;->rewardNumber:I

    .line 1397
    :cond_3f2
    nop

    .line 49342
    iput-object v5, v13, Lcom/anythink/core/c/c;->J:Lcom/anythink/core/api/ATRewardInfo;

    .line 1400
    :cond_3f5
    const-string v1, "currency"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_405

    .line 1401
    const-string v1, "currency"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50322
    iput-object v1, v13, Lcom/anythink/core/c/c;->K:Ljava/lang/String;

    .line 1404
    :cond_405
    const-string v1, "cc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_415

    .line 1405
    const-string v1, "cc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50324
    iput-object v0, v13, Lcom/anythink/core/c/c;->L:Ljava/lang/String;

    .line 1410
    :cond_415
    const-string v0, "hb_start_time"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_423

    .line 1411
    nop

    .line 50326
    const-wide/16 v0, 0x7d0

    iput-wide v0, v13, Lcom/anythink/core/c/c;->M:J

    .line 1411
    goto :goto_42b

    .line 1413
    :cond_423
    const-string v0, "hb_start_time"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 50328
    iput-wide v0, v13, Lcom/anythink/core/c/c;->M:J

    .line 1415
    :goto_42b
    const-string v0, "hb_bid_timeout"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_439

    .line 1416
    nop

    .line 50330
    const-wide/16 v0, 0x2710

    iput-wide v0, v13, Lcom/anythink/core/c/c;->N:J

    .line 1416
    goto :goto_441

    .line 1418
    :cond_439
    const-string v0, "hb_bid_timeout"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 50332
    iput-wide v0, v13, Lcom/anythink/core/c/c;->N:J

    .line 1422
    :goto_441
    const-string v0, "addr_bid"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44d

    .line 1423
    nop

    .line 50334
    iput-object v2, v13, Lcom/anythink/core/c/c;->O:Ljava/lang/String;

    .line 1423
    goto :goto_455

    .line 1425
    :cond_44d
    const-string v0, "addr_bid"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50336
    iput-object v0, v13, Lcom/anythink/core/c/c;->O:Ljava/lang/String;

    .line 1431
    :goto_455
    const-string v0, "load_fail_wtime"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_463

    .line 1432
    nop

    .line 50338
    const-wide/16 v0, 0x2710

    iput-wide v0, v13, Lcom/anythink/core/c/c;->P:J

    .line 1432
    goto :goto_46b

    .line 1434
    :cond_463
    const-string v0, "load_fail_wtime"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 50340
    iput-wide v0, v13, Lcom/anythink/core/c/c;->P:J

    .line 1437
    :goto_46b
    const-string v0, "load_cap"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_477

    .line 1438
    nop

    .line 50342
    iput v9, v13, Lcom/anythink/core/c/c;->Q:I

    .line 1438
    goto :goto_47f

    .line 1440
    :cond_477
    const-string v0, "load_cap"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 50344
    iput v0, v13, Lcom/anythink/core/c/c;->Q:I

    .line 1443
    :goto_47f
    const-string v0, "load_cap_time"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48e

    .line 1444
    nop

    .line 50346
    const-wide/32 v0, 0xdbba0

    iput-wide v0, v13, Lcom/anythink/core/c/c;->R:J

    .line 1444
    goto :goto_496

    .line 1446
    :cond_48e
    const-string v0, "load_cap_time"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 50348
    iput-wide v0, v13, Lcom/anythink/core/c/c;->R:J

    .line 1449
    :goto_496
    const-string v0, "cached_offers_num"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a3

    .line 1450
    nop

    .line 50350
    const/4 v0, 0x2

    iput v0, v13, Lcom/anythink/core/c/c;->S:I

    .line 1450
    goto :goto_4ab

    .line 1452
    :cond_4a3
    const-string v0, "cached_offers_num"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 50352
    iput v0, v13, Lcom/anythink/core/c/c;->S:I

    .line 1458
    :goto_4ab
    const-string v0, "ilrd"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b8

    .line 1459
    nop

    .line 50354
    const/4 v1, 0x0

    iput-object v1, v13, Lcom/anythink/core/c/c;->W:Ljava/lang/String;

    .line 1459
    goto :goto_4c0

    .line 1461
    :cond_4b8
    const-string v0, "ilrd"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50356
    iput-object v0, v13, Lcom/anythink/core/c/c;->W:Ljava/lang/String;

    .line 1464
    :goto_4c0
    const-string v0, "adx_st"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4cc

    .line 1465
    nop

    .line 50358
    iput-object v2, v13, Lcom/anythink/core/c/c;->Y:Ljava/lang/String;

    .line 1465
    goto :goto_4d4

    .line 1467
    :cond_4cc
    const-string v0, "adx_st"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50360
    iput-object v0, v13, Lcom/anythink/core/c/c;->Y:Ljava/lang/String;

    .line 1473
    :goto_4d4
    const-string v0, "fbhb_bid_wtime"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e2

    .line 1474
    nop

    .line 50362
    const-wide/16 v0, 0xfa0

    iput-wide v0, v13, Lcom/anythink/core/c/c;->V:J

    .line 1474
    goto :goto_4ea

    .line 1476
    :cond_4e2
    const-string v0, "fbhb_bid_wtime"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 50364
    iput-wide v0, v13, Lcom/anythink/core/c/c;->V:J
    :try_end_4ea
    .catch Ljava/lang/Exception; {:try_start_381 .. :try_end_4ea} :catch_4eb

    .line 1479
    :goto_4ea
    return-object v13

    .line 1480
    :catch_4eb
    move-exception v0

    .line 1486
    const/4 v1, 0x0

    return-object v1
.end method

.method private b(I)V
    .registers 2

    .line 366
    iput p1, p0, Lcom/anythink/core/c/c;->C:I

    .line 367
    return-void
.end method

.method private b(J)V
    .registers 3

    .line 290
    iput-wide p1, p0, Lcom/anythink/core/c/c;->M:J

    .line 291
    return-void
.end method

.method private b(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcom/anythink/core/c/c;->s:Ljava/util/List;

    .line 275
    return-void
.end method

.method private b(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 350
    iput-object p1, p0, Lcom/anythink/core/c/c;->H:Ljava/util/Map;

    .line 351
    return-void
.end method

.method private c(I)V
    .registers 2

    .line 382
    iput p1, p0, Lcom/anythink/core/c/c;->E:I

    .line 383
    return-void
.end method

.method private c(J)V
    .registers 3

    .line 298
    iput-wide p1, p0, Lcom/anythink/core/c/c;->N:J

    .line 299
    return-void
.end method

.method private c(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .line 282
    iput-object p1, p0, Lcom/anythink/core/c/c;->t:Ljava/util/List;

    .line 283
    return-void
.end method

.method private d(I)V
    .registers 2

    .line 407
    iput p1, p0, Lcom/anythink/core/c/c;->z:I

    .line 408
    return-void
.end method

.method private d(J)V
    .registers 3

    .line 391
    iput-wide p1, p0, Lcom/anythink/core/c/c;->x:J

    .line 392
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/anythink/core/c/c;->r:Ljava/lang/String;

    .line 206
    return-void
.end method

.method private e(I)V
    .registers 2

    .line 423
    iput p1, p0, Lcom/anythink/core/c/c;->v:I

    .line 424
    return-void
.end method

.method private e(J)V
    .registers 3

    .line 399
    iput-wide p1, p0, Lcom/anythink/core/c/c;->y:J

    .line 400
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 2

    .line 218
    iput-object p1, p0, Lcom/anythink/core/c/c;->W:Ljava/lang/String;

    .line 219
    return-void
.end method

.method private f(I)V
    .registers 2

    .line 439
    iput p1, p0, Lcom/anythink/core/c/c;->u:I

    .line 440
    return-void
.end method

.method private f(J)V
    .registers 3

    .line 431
    iput-wide p1, p0, Lcom/anythink/core/c/c;->w:J

    .line 432
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .registers 2

    .line 234
    iput-object p1, p0, Lcom/anythink/core/c/c;->Y:Ljava/lang/String;

    .line 235
    return-void
.end method

.method private g(I)V
    .registers 2

    .line 460
    iput p1, p0, Lcom/anythink/core/c/c;->d:I

    .line 461
    return-void
.end method

.method private g(J)V
    .registers 3

    .line 444
    iput-wide p1, p0, Lcom/anythink/core/c/c;->b:J

    .line 445
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/anythink/core/c/c;->X:Ljava/lang/String;

    .line 243
    return-void
.end method

.method private h(I)V
    .registers 2

    .line 468
    iput p1, p0, Lcom/anythink/core/c/c;->e:I

    .line 469
    return-void
.end method

.method private h(J)V
    .registers 3

    .line 452
    iput-wide p1, p0, Lcom/anythink/core/c/c;->c:J

    .line 453
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .registers 2

    .line 266
    iput-object p1, p0, Lcom/anythink/core/c/c;->O:Ljava/lang/String;

    .line 267
    return-void
.end method

.method private i(I)V
    .registers 2

    .line 476
    iput p1, p0, Lcom/anythink/core/c/c;->f:I

    .line 477
    return-void
.end method

.method private i(J)V
    .registers 3

    .line 484
    iput-wide p1, p0, Lcom/anythink/core/c/c;->g:J

    .line 485
    return-void
.end method

.method private i(Ljava/lang/String;)V
    .registers 2

    .line 322
    iput-object p1, p0, Lcom/anythink/core/c/c;->K:Ljava/lang/String;

    .line 323
    return-void
.end method

.method private j(I)V
    .registers 2

    .line 508
    iput p1, p0, Lcom/anythink/core/c/c;->j:I

    .line 509
    return-void
.end method

.method private j(J)V
    .registers 3

    .line 492
    iput-wide p1, p0, Lcom/anythink/core/c/c;->h:J

    .line 493
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .registers 2

    .line 330
    iput-object p1, p0, Lcom/anythink/core/c/c;->L:Ljava/lang/String;

    .line 331
    return-void
.end method

.method private k(I)V
    .registers 2

    .line 517
    iput p1, p0, Lcom/anythink/core/c/c;->k:I

    .line 518
    return-void
.end method

.method private k(J)V
    .registers 3

    .line 500
    iput-wide p1, p0, Lcom/anythink/core/c/c;->i:J

    .line 501
    return-void
.end method

.method private k(Ljava/lang/String;)V
    .registers 2

    .line 374
    iput-object p1, p0, Lcom/anythink/core/c/c;->D:Ljava/lang/String;

    .line 375
    return-void
.end method

.method private l(I)V
    .registers 2

    .line 526
    iput p1, p0, Lcom/anythink/core/c/c;->l:I

    .line 527
    return-void
.end method

.method private l(J)V
    .registers 3

    .line 611
    iput-wide p1, p0, Lcom/anythink/core/c/c;->Z:J

    .line 612
    return-void
.end method

.method private l(Ljava/lang/String;)V
    .registers 2

    .line 415
    iput-object p1, p0, Lcom/anythink/core/c/c;->A:Ljava/lang/String;

    .line 416
    return-void
.end method

.method private m(I)V
    .registers 2

    .line 534
    iput p1, p0, Lcom/anythink/core/c/c;->m:I

    .line 535
    return-void
.end method

.method private m(J)V
    .registers 3

    .line 619
    iput-wide p1, p0, Lcom/anythink/core/c/c;->P:J

    .line 620
    return-void
.end method

.method private m(Ljava/lang/String;)V
    .registers 2

    .line 566
    iput-object p1, p0, Lcom/anythink/core/c/c;->n:Ljava/lang/String;

    .line 567
    return-void
.end method

.method private n(I)V
    .registers 2

    .line 627
    iput p1, p0, Lcom/anythink/core/c/c;->Q:I

    .line 628
    return-void
.end method

.method private n(J)V
    .registers 3

    .line 635
    iput-wide p1, p0, Lcom/anythink/core/c/c;->R:J

    .line 636
    return-void
.end method

.method private n(Ljava/lang/String;)V
    .registers 2

    .line 574
    iput-object p1, p0, Lcom/anythink/core/c/c;->o:Ljava/lang/String;

    .line 575
    return-void
.end method

.method private o(I)V
    .registers 2

    .line 643
    iput p1, p0, Lcom/anythink/core/c/c;->S:I

    .line 644
    return-void
.end method

.method private o(Ljava/lang/String;)V
    .registers 2

    .line 582
    iput-object p1, p0, Lcom/anythink/core/c/c;->p:Ljava/lang/String;

    .line 583
    return-void
.end method

.method private p(Ljava/lang/String;)V
    .registers 2

    .line 590
    iput-object p1, p0, Lcom/anythink/core/c/c;->q:Ljava/lang/String;

    .line 591
    return-void
.end method


# virtual methods
.method public final A()I
    .registers 2

    .line 456
    iget v0, p0, Lcom/anythink/core/c/c;->d:I

    return v0
.end method

.method public final B()I
    .registers 2

    .line 472
    iget v0, p0, Lcom/anythink/core/c/c;->f:I

    return v0
.end method

.method public final C()J
    .registers 3

    .line 480
    iget-wide v0, p0, Lcom/anythink/core/c/c;->g:J

    return-wide v0
.end method

.method public final D()J
    .registers 3

    .line 488
    iget-wide v0, p0, Lcom/anythink/core/c/c;->h:J

    return-wide v0
.end method

.method public final E()J
    .registers 3

    .line 496
    iget-wide v0, p0, Lcom/anythink/core/c/c;->i:J

    return-wide v0
.end method

.method public final F()I
    .registers 2

    .line 530
    iget v0, p0, Lcom/anythink/core/c/c;->m:I

    return v0
.end method

.method public final G()Lcom/anythink/core/common/d/z;
    .registers 2

    .line 554
    iget-object v0, p0, Lcom/anythink/core/c/c;->B:Lcom/anythink/core/common/d/z;

    return-object v0
.end method

.method public final H()Ljava/lang/String;
    .registers 2

    .line 562
    iget-object v0, p0, Lcom/anythink/core/c/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final I()Ljava/lang/String;
    .registers 2

    .line 570
    iget-object v0, p0, Lcom/anythink/core/c/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final J()Ljava/lang/String;
    .registers 2

    .line 578
    iget-object v0, p0, Lcom/anythink/core/c/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final K()Ljava/lang/String;
    .registers 2

    .line 586
    iget-object v0, p0, Lcom/anythink/core/c/c;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final L()J
    .registers 3

    .line 615
    iget-wide v0, p0, Lcom/anythink/core/c/c;->P:J

    return-wide v0
.end method

.method public final M()I
    .registers 2

    .line 623
    iget v0, p0, Lcom/anythink/core/c/c;->Q:I

    return v0
.end method

.method public final N()J
    .registers 3

    .line 631
    iget-wide v0, p0, Lcom/anythink/core/c/c;->R:J

    return-wide v0
.end method

.method public final O()I
    .registers 2

    .line 639
    iget v0, p0, Lcom/anythink/core/c/c;->S:I

    return v0
.end method

.method public final P()Z
    .registers 3

    .line 1492
    iget v0, p0, Lcom/anythink/core/c/c;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final Q()Z
    .registers 6

    .line 1884
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Already cache time -- > "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/anythink/core/c/c;->Z:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Placement"

    invoke-static {v1, v0}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/core/c/c;->Z:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/anythink/core/c/c;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2a

    const/4 v0, 0x1

    return v0

    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method public final a()J
    .registers 3

    .line 193
    iget-wide v0, p0, Lcom/anythink/core/c/c;->V:J

    return-wide v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c$b;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/anythink/core/c/c$b;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1892
    iget-object v0, p3, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/core/common/g/h;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1894
    nop

    .line 50446
    iget-object v1, p3, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    .line 1894
    const-string v2, "payload"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1896
    nop

    .line 50447
    iget v1, p0, Lcom/anythink/core/c/c;->u:I

    .line 1896
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1897
    invoke-virtual {p3}, Lcom/anythink/core/c/c$b;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "request_ad_num"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    :cond_2a
    iget v1, p3, Lcom/anythink/core/c/c$b;->b:I

    const/16 v2, 0x23

    if-eq v1, v2, :cond_3c

    iget v1, p3, Lcom/anythink/core/c/c$b;->b:I

    const/16 v3, 0x42

    if-eq v1, v3, :cond_3c

    iget v1, p3, Lcom/anythink/core/c/c$b;->F:I

    sget v3, Lcom/anythink/core/c/c$b;->K:I

    if-ne v1, v3, :cond_81

    .line 1914
    :cond_3c
    new-instance v1, Lcom/anythink/core/common/d/i;

    invoke-direct {v1}, Lcom/anythink/core/common/d/i;-><init>()V

    .line 1915
    nop

    .line 50448
    iget-object v3, p3, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    .line 1915
    iput-object v3, v1, Lcom/anythink/core/common/d/i;->a:Ljava/lang/String;

    .line 1916
    iget v3, p3, Lcom/anythink/core/c/c$b;->b:I

    iput v3, v1, Lcom/anythink/core/common/d/i;->f:I

    .line 1917
    iget-object v3, p3, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iput-object v3, v1, Lcom/anythink/core/common/d/i;->c:Ljava/lang/String;

    .line 1918
    iput-object p2, v1, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    .line 1919
    iput-object p1, v1, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    .line 1920
    iget p1, p0, Lcom/anythink/core/c/c;->C:I

    iput p1, v1, Lcom/anythink/core/common/d/i;->h:I

    .line 1921
    iget p1, p0, Lcom/anythink/core/c/c;->m:I

    iput p1, v1, Lcom/anythink/core/common/d/i;->i:I

    .line 1922
    iget-object p1, p3, Lcom/anythink/core/c/c$b;->c:Ljava/lang/String;

    iput-object p1, v1, Lcom/anythink/core/common/d/i;->g:Ljava/lang/String;

    .line 1923
    iget p1, p3, Lcom/anythink/core/c/c$b;->b:I

    if-ne p1, v2, :cond_68

    .line 1924
    nop

    .line 50449
    iget-object p1, p0, Lcom/anythink/core/c/c;->U:Lcom/anythink/core/common/d/r;

    .line 1924
    iput-object p1, v1, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    goto :goto_71

    .line 1926
    :cond_68
    nop

    .line 50450
    iget-object p1, p0, Lcom/anythink/core/c/c;->Y:Ljava/lang/String;

    .line 1926
    invoke-static {p1}, Lcom/anythink/core/common/d/v;->b(Ljava/lang/String;)Lcom/anythink/core/common/d/v;

    move-result-object p1

    iput-object p1, v1, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    .line 1928
    :goto_71
    iget-object p1, v1, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    if-eqz p1, :cond_7c

    .line 1929
    iget-object p1, v1, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    iget p2, p0, Lcom/anythink/core/c/c;->u:I

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/d/j;->h(I)V

    .line 1932
    :cond_7c
    const-string p1, "basead_params"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1967
    :cond_81
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 5

    .line 302
    iget-object v0, p0, Lcom/anythink/core/c/c;->t:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 303
    return v1

    .line 305
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/c/c$b;

    .line 306
    iget-object v2, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 307
    const/4 p1, 0x1

    return p1

    .line 309
    :cond_20
    goto :goto_a

    .line 310
    :cond_21
    return v1
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/anythink/core/c/c;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/anythink/core/common/d/p;
    .registers 5

    .line 1870
    iget-object v0, p0, Lcom/anythink/core/c/c;->T:Ljava/util/List;

    if-eqz v0, :cond_28

    .line 1871
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/d/p;

    .line 1872
    invoke-virtual {v1}, Lcom/anythink/core/common/d/p;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/anythink/core/c/c;->U:Lcom/anythink/core/common/d/r;

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/d/p;->a(Lcom/anythink/core/common/d/r;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 1873
    return-object v1

    .line 1875
    :cond_27
    goto :goto_8

    .line 1877
    :cond_28
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/anythink/core/c/c;->W:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/anythink/core/c/c;->X:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/anythink/core/common/d/r;
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/anythink/core/c/c;->U:Lcom/anythink/core/common/d/r;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/d/p;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/anythink/core/c/c;->T:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/anythink/core/c/c;->s:Ljava/util/List;

    return-object v0
.end method

.method public final h()J
    .registers 3

    .line 286
    iget-wide v0, p0, Lcom/anythink/core/c/c;->M:J

    return-wide v0
.end method

.method public final i()J
    .registers 3

    .line 294
    iget-wide v0, p0, Lcom/anythink/core/c/c;->N:J

    return-wide v0
.end method

.method public final j()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/api/ATRewardInfo;",
            ">;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/anythink/core/c/c;->I:Ljava/util/Map;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    .line 318
    iget-object v0, p0, Lcom/anythink/core/c/c;->K:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    .line 326
    iget-object v0, p0, Lcom/anythink/core/c/c;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Lcom/anythink/core/api/ATRewardInfo;
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/anythink/core/c/c;->J:Lcom/anythink/core/api/ATRewardInfo;

    return-object v0
.end method

.method public final n()Ljava/util/Map;
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

    .line 346
    iget-object v0, p0, Lcom/anythink/core/c/c;->H:Ljava/util/Map;

    return-object v0
.end method

.method public final o()I
    .registers 2

    .line 354
    iget v0, p0, Lcom/anythink/core/c/c;->F:I

    return v0
.end method

.method public final p()I
    .registers 2

    .line 362
    iget v0, p0, Lcom/anythink/core/c/c;->C:I

    return v0
.end method

.method public final q()Ljava/lang/String;
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/anythink/core/c/c;->D:Ljava/lang/String;

    return-object v0
.end method

.method public final r()I
    .registers 2

    .line 378
    iget v0, p0, Lcom/anythink/core/c/c;->E:I

    return v0
.end method

.method public final s()J
    .registers 3

    .line 387
    iget-wide v0, p0, Lcom/anythink/core/c/c;->x:J

    return-wide v0
.end method

.method public final t()J
    .registers 3

    .line 395
    iget-wide v0, p0, Lcom/anythink/core/c/c;->y:J

    return-wide v0
.end method

.method public final u()I
    .registers 2

    .line 403
    iget v0, p0, Lcom/anythink/core/c/c;->z:I

    return v0
.end method

.method public final v()Ljava/lang/String;
    .registers 2

    .line 411
    iget-object v0, p0, Lcom/anythink/core/c/c;->A:Ljava/lang/String;

    return-object v0
.end method

.method public final w()I
    .registers 2

    .line 419
    iget v0, p0, Lcom/anythink/core/c/c;->v:I

    return v0
.end method

.method public final x()J
    .registers 3

    .line 427
    iget-wide v0, p0, Lcom/anythink/core/c/c;->w:J

    return-wide v0
.end method

.method public final y()I
    .registers 2

    .line 435
    iget v0, p0, Lcom/anythink/core/c/c;->u:I

    return v0
.end method

.method public final z()J
    .registers 3

    .line 448
    iget-wide v0, p0, Lcom/anythink/core/c/c;->c:J

    return-wide v0
.end method
