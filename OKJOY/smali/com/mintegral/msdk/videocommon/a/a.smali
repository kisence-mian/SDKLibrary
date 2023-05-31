.class public Lcom/mintegral/msdk/videocommon/a/a;
.super Ljava/lang/Object;
.source "VideoCampaignCache.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/mintegral/msdk/videocommon/a/a;


# instance fields
.field private c:Lcom/mintegral/msdk/base/b/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/mintegral/msdk/videocommon/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/videocommon/a/a;->a:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/videocommon/a/a;->b:Lcom/mintegral/msdk/videocommon/a/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    :try_start_3
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_18

    .line 37
    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/a/a;->c:Lcom/mintegral/msdk/base/b/f;

    .line 44
    :goto_17
    return-void

    .line 39
    :cond_18
    sget-object v0, Lcom/mintegral/msdk/videocommon/a/a;->a:Ljava/lang/String;

    const-string v1, "RewardCampaignCache get Context is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1f} :catch_20

    goto :goto_17

    .line 42
    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method

.method public static a()Lcom/mintegral/msdk/videocommon/a/a;
    .registers 2

    .prologue
    .line 47
    sget-object v0, Lcom/mintegral/msdk/videocommon/a/a;->b:Lcom/mintegral/msdk/videocommon/a/a;

    if-nez v0, :cond_13

    .line 48
    const-class v1, Lcom/mintegral/msdk/videocommon/a/a;

    monitor-enter v1

    .line 49
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/videocommon/a/a;->b:Lcom/mintegral/msdk/videocommon/a/a;

    if-nez v0, :cond_12

    .line 50
    new-instance v0, Lcom/mintegral/msdk/videocommon/a/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/videocommon/a/a;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videocommon/a/a;->b:Lcom/mintegral/msdk/videocommon/a/a;

    .line 52
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 54
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/videocommon/a/a;->b:Lcom/mintegral/msdk/videocommon/a/a;

    return-object v0

    .line 52
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static a(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z
    .registers 13

    .prologue
    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    .line 120
    :try_start_3
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->b()Lcom/mintegral/msdk/videocommon/e/a;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_39

    .line 123
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/a;->e()J

    move-result-wide v2

    .line 126
    :goto_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 127
    if-eqz p0, :cond_33

    .line 128
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlct()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    .line 129
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTimestamp()J
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_20} :catch_34

    move-result-wide v10

    sub-long/2addr v6, v10

    .line 130
    cmp-long v1, v8, v4

    if-lez v1, :cond_2a

    cmp-long v1, v8, v6

    if-gez v1, :cond_32

    :cond_2a
    cmp-long v1, v8, v4

    if-gtz v1, :cond_33

    cmp-long v1, v2, v6

    if-ltz v1, :cond_33

    .line 131
    :cond_32
    const/4 v0, 0x0

    .line 139
    :cond_33
    :goto_33
    return v0

    .line 137
    :catch_34
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33

    :cond_39
    move-wide v2, v4

    goto :goto_10
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 5

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/a/a;->c:Lcom/mintegral/msdk/base/b/f;

    if-eqz v1, :cond_17

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 113
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/a/a;->c:Lcom/mintegral/msdk/base/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/base/b/f;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    .line 115
    :cond_17
    return-object v0
.end method

.method public final a(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 87
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 88
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/a/a;->c:Lcom/mintegral/msdk/base/b/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;III)Ljava/util/List;

    move-result-object v2

    .line 89
    if-eqz v2, :cond_33

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_34

    .line 91
    :try_start_16
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 92
    if-eqz v0, :cond_1a

    .line 93
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2b} :catch_2c

    goto :goto_1a

    .line 100
    :catch_2c
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_30
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    :cond_33
    :goto_33
    return-object v0

    .line 100
    :catch_34
    move-exception v1

    goto :goto_30

    :cond_36
    move-object v0, v1

    goto :goto_33
.end method

.method public final a(Ljava/lang/String;IZ)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    const/4 v4, 0x0

    .line 151
    :try_start_1
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->b()Lcom/mintegral/msdk/videocommon/e/a;

    move-result-object v5

    .line 152
    const-wide/16 v6, 0x0

    .line 153
    if-eqz v5, :cond_10

    .line 154
    invoke-virtual {v5}, Lcom/mintegral/msdk/videocommon/e/a;->e()J

    move-result-wide v6

    .line 156
    :cond_10
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6f

    .line 157
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mintegral/msdk/videocommon/a/a;->c:Lcom/mintegral/msdk/base/b/f;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v8

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 159
    if-eqz v8, :cond_6f

    .line 160
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_70

    .line 161
    :try_start_2f
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_33
    :goto_33
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 162
    if-eqz v4, :cond_33

    .line 163
    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlct()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    .line 164
    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTimestamp()J

    move-result-wide v14

    sub-long v14, v10, v14

    .line 178
    const-wide/16 v16, 0x0

    cmp-long v9, v12, v16

    if-lez v9, :cond_58

    cmp-long v9, v12, v14

    if-gez v9, :cond_62

    :cond_58
    const-wide/16 v16, 0x0

    cmp-long v9, v12, v16

    if-gtz v9, :cond_33

    cmp-long v9, v6, v14

    if-ltz v9, :cond_33

    .line 179
    :cond_62
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_65} :catch_66

    goto :goto_33

    .line 187
    :catch_66
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v5

    move-object/from16 v5, v18

    :goto_6c
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    :cond_6f
    :goto_6f
    return-object v4

    .line 187
    :catch_70
    move-exception v5

    goto :goto_6c

    :cond_72
    move-object v4, v5

    goto :goto_6f
.end method

.method public final a(Ljava/lang/String;Z)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    const/4 v2, 0x0

    .line 202
    :try_start_1
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {v3}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v3

    .line 204
    if-eqz v3, :cond_78

    .line 205
    invoke-virtual {v3}, Lcom/mintegral/msdk/c/a;->ak()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 211
    :goto_19
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_77

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mintegral/msdk/videocommon/a/a;->c:Lcom/mintegral/msdk/base/b/f;

    const/4 v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v6, v1}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v6

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 214
    if-eqz v6, :cond_77

    .line 215
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_87

    .line 216
    :try_start_37
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3b
    :goto_3b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 217
    if-eqz v2, :cond_3b

    .line 218
    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlctb()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    .line 219
    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTimestamp()J

    move-result-wide v12

    sub-long v12, v8, v12

    .line 220
    const-wide/16 v14, 0x0

    cmp-long v7, v10, v14

    if-gtz v7, :cond_60

    cmp-long v7, v4, v12

    if-gez v7, :cond_6a

    :cond_60
    const-wide/16 v14, 0x0

    cmp-long v7, v10, v14

    if-lez v7, :cond_3b

    cmp-long v7, v10, v12

    if-ltz v7, :cond_3b

    .line 221
    :cond_6a
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_6d} :catch_6e

    goto :goto_3b

    .line 229
    :catch_6e
    move-exception v2

    move-object/from16 v16, v2

    move-object v2, v3

    move-object/from16 v3, v16

    :goto_74
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    :cond_77
    :goto_77
    return-object v2

    .line 208
    :cond_78
    :try_start_78
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v3

    .line 209
    invoke-virtual {v3}, Lcom/mintegral/msdk/c/a;->ak()J
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_82} :catch_87

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    goto :goto_19

    .line 229
    :catch_87
    move-exception v3

    goto :goto_74

    :cond_89
    move-object v2, v3

    goto :goto_77
.end method

.method public final declared-synchronized a(JLjava/lang/String;)V
    .registers 7

    .prologue
    .line 295
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/a/a;->c:Lcom/mintegral/msdk/base/b/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mintegral/msdk/base/b/f;->b(JLjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8
    .catchall {:try_start_1 .. :try_end_6} :catchall_16

    .line 300
    :goto_6
    monitor-exit p0

    return-void

    .line 296
    :catch_8
    move-exception v0

    .line 297
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    sget-object v1, Lcom/mintegral/msdk/videocommon/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    goto :goto_6

    .line 295
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 240
    if-eqz p1, :cond_15

    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 241
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/a/a;->c:Lcom/mintegral/msdk/base/b/f;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    .line 247
    :cond_15
    :goto_15
    return-void

    .line 244
    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
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
    .line 267
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    if-eqz p2, :cond_36

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_36

    .line 268
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_32

    .line 1282
    if-eqz v0, :cond_12

    :try_start_20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1283
    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/a/a;->c:Lcom/mintegral/msdk/base/b/f;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p1, v3}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;I)J
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2c} :catch_2d

    goto :goto_12

    .line 1286
    :catch_2d
    move-exception v0

    :try_start_2e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_12

    .line 273
    :catch_32
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    :cond_36
    return-void
.end method

.method public final a(Ljava/lang/String;J)Z
    .registers 14

    .prologue
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 60
    sub-long v4, v2, p2

    .line 62
    :try_start_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 63
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/a/a;->c:Lcom/mintegral/msdk/base/b/f;

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v0, p1, v1, v6, v7}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;III)Ljava/util/List;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_5f

    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 66
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlct()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_41

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlct()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTimestamp()J

    move-result-wide v8

    add-long/2addr v6, v8

    cmp-long v6, v6, v2

    if-gez v6, :cond_53

    .line 67
    :cond_41
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlct()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1b

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTimestamp()J
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_4e} :catch_55

    move-result-wide v6

    cmp-long v0, v6, v4

    if-ltz v0, :cond_1b

    .line 68
    :cond_53
    const/4 v0, 0x0

    .line 76
    :goto_54
    return v0

    .line 73
    :catch_55
    move-exception v0

    .line 74
    sget-object v1, Lcom/mintegral/msdk/videocommon/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    :cond_5f
    const/4 v0, 0x1

    goto :goto_54
.end method

.method public final declared-synchronized b(JLjava/lang/String;)V
    .registers 7

    .prologue
    .line 310
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/a/a;->c:Lcom/mintegral/msdk/base/b/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mintegral/msdk/base/b/f;->a(JLjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8
    .catchall {:try_start_1 .. :try_end_6} :catchall_16

    .line 315
    :goto_6
    monitor-exit p0

    return-void

    .line 311
    :catch_8
    move-exception v0

    .line 312
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 313
    sget-object v1, Lcom/mintegral/msdk/videocommon/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    goto :goto_6

    .line 310
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 4

    .prologue
    .line 254
    if-eqz p1, :cond_15

    :try_start_2
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 255
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/a/a;->c:Lcom/mintegral/msdk/base/b/f;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    .line 260
    :cond_15
    :goto_15
    return-void

    .line 258
    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method
