.class public Lcom/mintegral/msdk/base/controller/a;
.super Ljava/lang/Object;
.source "MTGSDKContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/base/controller/a$b;,
        Lcom/mintegral/msdk/base/controller/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/mintegral/msdk/base/controller/a;

.field private static j:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/mintegral/msdk/base/entity/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const-class v0, Lcom/mintegral/msdk/base/controller/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/controller/a;->a:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/base/controller/a;->b:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/base/controller/a;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/base/controller/a;->h:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->i:Ljava/util/List;

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/base/controller/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/base/controller/a;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 4547
    :try_start_0
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4549
    sget-object v0, Lcom/mintegral/msdk/base/controller/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveGAID gaid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4550
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    const-string v1, "ga_id"

    invoke-static {v0, v1, p1}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 4554
    :cond_21
    :goto_21
    return-void

    .line 4553
    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method static synthetic b(Lcom/mintegral/msdk/base/controller/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/mintegral/msdk/base/entity/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    sget-object v0, Lcom/mintegral/msdk/base/controller/a;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/base/controller/a;)V
    .registers 18

    .prologue
    const/16 v16, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 5264
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 5266
    sget-object v2, Lcom/mintegral/msdk/base/controller/a;->b:Ljava/util/List;

    if-eqz v2, :cond_5d

    sget-object v2, Lcom/mintegral/msdk/base/controller/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5d

    .line 5267
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 5269
    sget-object v2, Lcom/mintegral/msdk/base/controller/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_27
    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5270
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_27

    .line 5271
    new-instance v6, Lcom/mintegral/msdk/base/entity/n;

    invoke-direct {v6}, Lcom/mintegral/msdk/base/entity/n;-><init>()V

    .line 5272
    invoke-virtual {v6, v10, v11}, Lcom/mintegral/msdk/base/entity/n;->a(J)V

    .line 5273
    invoke-virtual {v6, v2}, Lcom/mintegral/msdk/base/entity/n;->a(Ljava/lang/String;)V

    .line 5274
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/mintegral/msdk/base/entity/n;->a(I)V

    .line 5275
    if-eqz v3, :cond_51

    .line 5276
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/mintegral/msdk/base/entity/n;->b(Ljava/lang/String;)V

    .line 5278
    :cond_51
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_54} :catch_55

    goto :goto_27

    .line 5335
    :catch_55
    move-exception v2

    .line 5336
    sget-boolean v3, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v3, :cond_5d

    .line 5337
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 5339
    :cond_5d
    :goto_5d
    return-void

    .line 5282
    :cond_5e
    :try_start_5e
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5d

    .line 5283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/b/q;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/b/q;->c()Ljava/util/List;

    move-result-object v3

    .line 5285
    if-eqz v3, :cond_bd

    .line 5286
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v2

    .line 5291
    :goto_7c
    if-eqz v3, :cond_13e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13e

    .line 5293
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v6, v7

    :goto_89
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/mintegral/msdk/base/entity/n;

    move-object v3, v0

    .line 5295
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v5, v7

    :goto_9c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mintegral/msdk/base/entity/n;

    .line 5296
    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/n;->a()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/n;->a()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_153

    .line 5298
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lcom/mintegral/msdk/base/entity/n;->a(I)V

    move v2, v4

    :goto_bb
    move v5, v2

    .line 5300
    goto :goto_9c

    .line 5288
    :cond_bd
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v2

    goto :goto_7c

    .line 5301
    :cond_c4
    if-nez v5, :cond_151

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/n;->b()I

    move-result v2

    if-eqz v2, :cond_151

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/n;->b()I

    move-result v2

    if-eq v2, v4, :cond_151

    .line 5304
    new-instance v2, Lcom/mintegral/msdk/base/entity/n;

    invoke-direct {v2}, Lcom/mintegral/msdk/base/entity/n;-><init>()V

    .line 5305
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/mintegral/msdk/base/entity/n;->a(I)V

    .line 5306
    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/n;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mintegral/msdk/base/entity/n;->a(Ljava/lang/String;)V

    .line 5307
    invoke-virtual {v2, v10, v11}, Lcom/mintegral/msdk/base/entity/n;->a(J)V

    .line 5308
    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/n;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/base/entity/n;->b(Ljava/lang/String;)V

    .line 5309
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    :goto_f0
    move v6, v2

    .line 5311
    goto :goto_89

    .line 5313
    :cond_f2
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v6

    :goto_f7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mintegral/msdk/base/entity/n;

    .line 5314
    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/n;->b()I

    move-result v6

    move/from16 v0, v16

    if-eq v6, v0, :cond_14f

    .line 5317
    new-instance v3, Lcom/mintegral/msdk/base/entity/n;

    invoke-direct {v3}, Lcom/mintegral/msdk/base/entity/n;-><init>()V

    .line 5318
    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Lcom/mintegral/msdk/base/entity/n;->a(I)V

    .line 5319
    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/n;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mintegral/msdk/base/entity/n;->a(Ljava/lang/String;)V

    .line 5320
    invoke-virtual {v3, v10, v11}, Lcom/mintegral/msdk/base/entity/n;->a(J)V

    .line 5321
    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/n;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mintegral/msdk/base/entity/n;->b(Ljava/lang/String;)V

    .line 5322
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    :goto_129
    move v3, v2

    .line 5324
    goto :goto_f7

    .line 5326
    :cond_12b
    if-eqz v3, :cond_5d

    .line 5327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/b/q;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/q;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/mintegral/msdk/base/b/q;->a(Ljava/util/List;)V

    goto/16 :goto_5d

    .line 5331
    :cond_13e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/b/q;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/q;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/mintegral/msdk/base/b/q;->a(Ljava/util/List;)V
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_14d} :catch_55

    goto/16 :goto_5d

    :cond_14f
    move v2, v3

    goto :goto_129

    :cond_151
    move v2, v6

    goto :goto_f0

    :cond_153
    move v2, v5

    goto/16 :goto_bb
.end method

.method public static d()Lcom/mintegral/msdk/base/controller/a;
    .registers 2

    .prologue
    .line 124
    sget-object v0, Lcom/mintegral/msdk/base/controller/a;->c:Lcom/mintegral/msdk/base/controller/a;

    if-nez v0, :cond_13

    .line 125
    const-class v1, Lcom/mintegral/msdk/base/controller/a;

    monitor-enter v1

    .line 126
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/controller/a;->c:Lcom/mintegral/msdk/base/controller/a;

    if-nez v0, :cond_12

    .line 127
    new-instance v0, Lcom/mintegral/msdk/base/controller/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/controller/a;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/base/controller/a;->c:Lcom/mintegral/msdk/base/controller/a;

    .line 129
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 131
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/controller/a;->c:Lcom/mintegral/msdk/base/controller/a;

    return-object v0

    .line 129
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static declared-synchronized e()V
    .registers 5

    .prologue
    .line 230
    const-class v1, Lcom/mintegral/msdk/base/controller/a;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 231
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_5d

    .line 233
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aP()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 236
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 238
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5d

    .line 241
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 242
    const/4 v0, 0x0

    :goto_47
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_57

    .line 243
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 246
    :cond_57
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    .line 3098
    iput-object v3, v0, Lcom/mintegral/msdk/base/controller/a;->i:Ljava/util/List;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5d} :catch_62
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5f

    .line 255
    :cond_5d
    :goto_5d
    monitor-exit v1

    return-void

    .line 230
    :catchall_5f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 255
    :catch_62
    move-exception v0

    goto :goto_5d
.end method

.method public static g()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    :try_start_0
    sget-object v0, Lcom/mintegral/msdk/base/controller/a;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_43

    sget-object v0, Lcom/mintegral/msdk/base/controller/a;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v0

    if-lez v0, :cond_43

    .line 407
    sget-object v0, Lcom/mintegral/msdk/base/controller/a;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 408
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 409
    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 410
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/h;

    .line 411
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_42

    move-result v3

    if-nez v3, :cond_17

    .line 413
    :try_start_2d
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_3c} :catch_3d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_3c} :catch_42

    goto :goto_17

    .line 415
    :catch_3d
    move-exception v0

    :try_start_3e
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_17

    :catch_42
    move-exception v0

    .line 424
    :cond_43
    const/4 v0, 0x0

    :goto_44
    return-object v0

    :cond_45
    move-object v0, v1

    .line 420
    goto :goto_44
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    if-eqz v0, :cond_f

    .line 85
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 90
    :goto_a
    return-object v0

    .line 88
    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final a(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 438
    iput-object p1, p0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    .line 439
    return-void
.end method

.method public final declared-synchronized a(Lcom/mintegral/msdk/base/controller/a$b;)V
    .registers 9

    .prologue
    .line 346
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/l;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/utils/l;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/utils/l;->a(Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    .line 348
    sput-object v0, Lcom/mintegral/msdk/base/controller/a;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 349
    if-eqz p1, :cond_1a

    .line 350
    invoke-interface {p1}, Lcom/mintegral/msdk/base/controller/a$b;->a()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1a} :catch_7e
    .catchall {:try_start_1 .. :try_end_1a} :catchall_a6

    .line 391
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    .line 355
    :cond_1c
    :try_start_1c
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 356
    sget-object v0, Lcom/mintegral/msdk/base/controller/a;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 357
    if-eqz v4, :cond_80

    .line 358
    :cond_29
    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_2c} :catch_7e
    .catchall {:try_start_1c .. :try_end_2c} :catchall_a6

    move-result v0

    if-eqz v0, :cond_80

    .line 360
    :try_start_2f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/h;

    .line 361
    sget-object v1, Lcom/mintegral/msdk/base/controller/a;->b:Ljava/util/List;

    if-eqz v1, :cond_29

    sget-object v1, Lcom/mintegral/msdk/base/controller/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_29

    if-eqz v0, :cond_29

    .line 362
    const/4 v1, 0x0

    move v2, v1

    :goto_45
    sget-object v1, Lcom/mintegral/msdk/base/controller/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_29

    .line 363
    sget-object v1, Lcom/mintegral/msdk/base/controller/a;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 364
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/h;->b()Ljava/lang/String;

    move-result-object v5

    .line 365
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6e

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6e

    .line 366
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 367
    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_6e} :catch_72
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_6e} :catch_7e
    .catchall {:try_start_2f .. :try_end_6e} :catchall_a6

    .line 362
    :cond_6e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_45

    .line 372
    :catch_72
    move-exception v0

    :try_start_73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    sget-object v0, Lcom/mintegral/msdk/base/controller/a;->a:Ljava/lang/String;

    const-string v1, "remove list error"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 391
    :catch_7e
    move-exception v0

    goto :goto_1a

    .line 378
    :cond_80
    sget-object v0, Lcom/mintegral/msdk/base/controller/a;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_89

    .line 379
    sget-object v0, Lcom/mintegral/msdk/base/controller/a;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 381
    :cond_89
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v0

    if-lez v0, :cond_94

    .line 382
    sget-object v0, Lcom/mintegral/msdk/base/controller/a;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    .line 384
    :cond_94
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/l;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/utils/l;

    move-result-object v0

    sget-object v1, Lcom/mintegral/msdk/base/controller/a;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/utils/l;->a(Ljava/util/Set;)V

    .line 385
    if-eqz p1, :cond_1a

    .line 386
    invoke-interface {p1}, Lcom/mintegral/msdk/base/controller/a$b;->a()V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_a4} :catch_7e
    .catchall {:try_start_73 .. :try_end_a4} :catchall_a6

    goto/16 :goto_1a

    .line 346
    :catchall_a6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/mintegral/msdk/base/controller/a$b;Landroid/os/Handler;)V
    .registers 7

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/controller/a;->h:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 150
    :goto_5
    return-void

    .line 1560
    :cond_6
    :try_start_6
    const-string v1, "-1"

    .line 1561
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    const-string v2, "ga_id"

    invoke-static {v0, v2, v1}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1562
    if-eqz v0, :cond_46

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_46

    .line 1563
    check-cast v0, Ljava/lang/String;

    .line 1564
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 1565
    sget-object v1, Lcom/mintegral/msdk/base/controller/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sp init gaid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v1, "authority_device_id"

    invoke-static {v1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1567
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->a(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_46} :catch_54

    .line 2157
    :cond_46
    :goto_46
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/base/controller/a$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/mintegral/msdk/base/controller/a$1;-><init>(Lcom/mintegral/msdk/base/controller/a;Landroid/os/Handler;Lcom/mintegral/msdk/base/controller/a$b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2223
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_5

    .line 1572
    :catch_54
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 103
    :try_start_0
    iput-object p1, p0, Lcom/mintegral/msdk/base/controller/a;->k:Ljava/lang/String;

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    if-eqz v0, :cond_13

    .line 105
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    const-string v1, "applicationIds"

    invoke-static {v0, v1, p1}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 110
    :cond_13
    :goto_13
    return-void

    .line 108
    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public final b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->i:Ljava/util/List;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 446
    iput-object p1, p0, Lcom/mintegral/msdk/base/controller/a;->e:Ljava/lang/String;

    .line 447
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 466
    :try_start_0
    iput-object p1, p0, Lcom/mintegral/msdk/base/controller/a;->f:Ljava/lang/String;

    .line 467
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    if-eqz v0, :cond_13

    .line 468
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    const-string v1, "sp_appId"

    invoke-static {v0, v1, p1}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 473
    :cond_13
    :goto_13
    return-void

    .line 471
    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public final d(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 487
    :try_start_0
    iput-object p1, p0, Lcom/mintegral/msdk/base/controller/a;->g:Ljava/lang/String;

    .line 488
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    if-eqz v0, :cond_13

    .line 489
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    const-string v1, "sp_appKey"

    invoke-static {v0, v1, p1}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 494
    :cond_13
    :goto_13
    return-void

    .line 492
    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public final f()V
    .registers 3

    .prologue
    .line 395
    :try_start_0
    sget-object v0, Lcom/mintegral/msdk/base/controller/a;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/mintegral/msdk/base/controller/a;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 396
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/l;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/utils/l;

    move-result-object v0

    sget-object v1, Lcom/mintegral/msdk/base/controller/a;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/utils/l;->a(Ljava/util/Set;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_18

    .line 402
    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    goto :goto_17
.end method

.method public final h()Landroid/content/Context;
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .registers 4

    .prologue
    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 452
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->f:Ljava/lang/String;

    .line 460
    :goto_a
    return-object v0

    .line 454
    :cond_b
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    if-eqz v0, :cond_20

    .line 455
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    const-string v1, "sp_appId"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_a

    .line 458
    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 460
    :cond_20
    const-string v0, ""

    goto :goto_a
.end method

.method public final k()Ljava/lang/String;
    .registers 4

    .prologue
    .line 476
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 477
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->g:Ljava/lang/String;

    .line 482
    :goto_a
    return-object v0

    .line 479
    :cond_b
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    if-eqz v0, :cond_1c

    .line 480
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    const-string v1, "sp_appKey"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_a

    .line 482
    :cond_1c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final l()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 504
    :try_start_1
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    .line 4094
    iget-object v2, v1, Lcom/mintegral/msdk/base/controller/a;->i:Ljava/util/List;

    .line 521
    sget-object v1, Lcom/mintegral/msdk/base/controller/a;->b:Ljava/util/List;

    if-eqz v1, :cond_16

    sget-object v1, Lcom/mintegral/msdk/base/controller/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_16

    .line 522
    sget-object v0, Lcom/mintegral/msdk/base/controller/a;->b:Ljava/util/List;

    .line 542
    :goto_15
    return-object v0

    .line 524
    :cond_16
    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 525
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    move v1, v0

    .line 526
    :goto_22
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_75

    .line 528
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-gtz v0, :cond_47

    .line 529
    sget-object v4, Lcom/mintegral/msdk/base/controller/a;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_43
    :goto_43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    .line 531
    :cond_47
    if-eqz v2, :cond_43

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_43

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 532
    sget-object v4, Lcom/mintegral/msdk/base/controller/a;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6a} :catch_6b

    goto :goto_43

    .line 540
    :catch_6b
    move-exception v0

    sget-object v0, Lcom/mintegral/msdk/base/controller/a;->a:Ljava/lang/String;

    const-string v1, "get package info list error"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const/4 v0, 0x0

    goto :goto_15

    .line 536
    :cond_75
    :try_start_75
    sget-object v0, Lcom/mintegral/msdk/base/controller/a;->b:Ljava/util/List;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_77} :catch_6b

    goto :goto_15
.end method
