.class public Lcom/alphab/i/a;
.super Ljava/lang/Object;
.source "AlphabImpl.java"

# interfaces
.implements Lcom/alphab/Alphab;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alphab/i/a$a;,
        Lcom/alphab/i/a$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static c:Lcom/alphab/i/a;


# instance fields
.field private b:Landroid/content/Context;

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/pm/PackageManager;

.field private f:Lcom/mintegral/msdk/c/a;

.field private final g:I

.field private h:J

.field private i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-class v0, Lcom/alphab/i/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alphab/i/a;->a:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/alphab/i/a;->c:Lcom/alphab/i/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/alphab/i/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    iput-object v0, p0, Lcom/alphab/i/a;->f:Lcom/mintegral/msdk/c/a;

    .line 76
    const v0, 0x36ee80

    iput v0, p0, Lcom/alphab/i/a;->g:I

    .line 80
    new-instance v0, Lcom/alphab/i/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alphab/i/a$1;-><init>(Lcom/alphab/i/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alphab/i/a;->i:Landroid/os/Handler;

    .line 142
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alphab/i/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/alphab/i/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alphab/i/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lcom/alphab/i/a;
    .registers 2

    .prologue
    .line 147
    :try_start_0
    const-class v1, Lcom/alphab/i/a;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_15

    .line 148
    :try_start_3
    sget-object v0, Lcom/alphab/i/a;->c:Lcom/alphab/i/a;

    if-nez v0, :cond_e

    .line 149
    new-instance v0, Lcom/alphab/i/a;

    invoke-direct {v0}, Lcom/alphab/i/a;-><init>()V

    sput-object v0, Lcom/alphab/i/a;->c:Lcom/alphab/i/a;

    .line 151
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 157
    :cond_f
    :goto_f
    sget-object v0, Lcom/alphab/i/a;->c:Lcom/alphab/i/a;

    return-object v0

    .line 151
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    :try_start_14
    throw v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_15} :catch_15

    .line 152
    :catch_15
    move-exception v0

    .line 153
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_f

    .line 154
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method static synthetic a(Lcom/alphab/i/a;Lcom/mintegral/msdk/c/a;)Lcom/mintegral/msdk/c/a;
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alphab/i/a;->f:Lcom/mintegral/msdk/c/a;

    return-object p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 397
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 398
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 405
    :goto_8
    return-object v0

    .line 400
    :catch_9
    move-exception v0

    .line 401
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_11

    .line 402
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 405
    :cond_11
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private declared-synchronized a(Landroid/net/Uri;)V
    .registers 10

    .prologue
    const/4 v0, 0x1

    .line 538
    monitor-enter p0

    :try_start_2
    sget-object v1, Lcom/alphab/i/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "do onchange uri = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v1, p0, Lcom/alphab/i/a;->f:Lcom/mintegral/msdk/c/a;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/alphab/i/a;->f:Lcom/mintegral/msdk/c/a;

    invoke-virtual {v1}, Lcom/mintegral/msdk/c/a;->W()I

    move-result v1

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alphab/i/a;->f:Lcom/mintegral/msdk/c/a;

    invoke-virtual {v2}, Lcom/mintegral/msdk/c/a;->B()I
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_28} :catch_c1
    .catchall {:try_start_2 .. :try_end_28} :catchall_cb

    move-result v2

    if-ne v1, v2, :cond_2f

    .line 541
    :cond_2b
    :goto_2b
    if-eqz v0, :cond_31

    .line 589
    :cond_2d
    :goto_2d
    monitor-exit p0

    return-void

    .line 540
    :cond_2f
    const/4 v0, 0x0

    goto :goto_2b

    .line 545
    :cond_31
    :try_start_31
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 546
    if-eqz v0, :cond_2d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2d

    .line 548
    invoke-direct {p0}, Lcom/alphab/i/a;->b()V

    .line 549
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 550
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "down"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 554
    iget-object v1, p0, Lcom/alphab/i/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_e7

    iget-object v1, p0, Lcom/alphab/i/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_e7

    .line 555
    sget-object v1, Lcom/alphab/i/a;->a:Ljava/lang/String;

    const-string v4, "idList is not null"

    invoke-static {v1, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v1, p0, Lcom/alphab/i/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 558
    sget-object v1, Lcom/alphab/i/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "idList contains downloadid = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, Lcom/alphab/i/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 560
    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    .line 561
    cmp-long v1, v2, v4

    if-gez v1, :cond_ce

    .line 562
    sget-object v0, Lcom/alphab/i/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "currentTimeMillis < time = "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_bf} :catch_c1
    .catchall {:try_start_31 .. :try_end_bf} :catchall_cb

    goto/16 :goto_2d

    .line 584
    :catch_c1
    move-exception v0

    .line 585
    :try_start_c2
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_2d

    .line 586
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c9
    .catchall {:try_start_c2 .. :try_end_c9} :catchall_cb

    goto/16 :goto_2d

    .line 538
    :catchall_cb
    move-exception v0

    monitor-exit p0

    throw v0

    .line 566
    :cond_ce
    :try_start_ce
    sget-object v1, Lcom/alphab/i/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "currentTimeMillis > time remove downloadid "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, Lcom/alphab/i/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    :cond_e7
    iget-object v1, p0, Lcom/alphab/i/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_f9

    .line 572
    sget-object v1, Lcom/alphab/i/a;->a:Ljava/lang/String;

    const-string v4, "idList is null"

    invoke-static {v1, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/alphab/i/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 577
    :cond_f9
    iget-object v1, p0, Lcom/alphab/i/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_106

    .line 578
    iget-object v1, p0, Lcom/alphab/i/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    :cond_106
    new-instance v1, Lcom/alphab/i/a$b;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/alphab/i/a$b;-><init>(Lcom/alphab/i/a;JLjava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/alphab/i/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alphab/i/c;->a(Landroid/content/Context;)Lcom/alphab/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alphab/i/c;->a()Lcom/alphab/i/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alphab/i/c$b;->a(Lcom/mintegral/msdk/base/common/f/a;)V
    :try_end_118
    .catch Ljava/lang/Throwable; {:try_start_ce .. :try_end_118} :catch_c1
    .catchall {:try_start_ce .. :try_end_118} :catchall_cb

    goto/16 :goto_2d
.end method

.method static synthetic a(Lcom/alphab/i/a;Landroid/net/Uri;)V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/alphab/i/a;->a(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcom/alphab/i/a;Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10d

    .line 2290
    :try_start_8
    const-string v0, "asx6f3H6foh4FsJ4fsLzYscKr2xMfEnzQEbm73xyY0q4aEJgFM=="

    invoke-static {v0}, Lcom/alphab/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2292
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2293
    iget-object v0, p0, Lcom/alphab/i/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2294
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_30} :catch_17e
    .catchall {:try_start_8 .. :try_end_30} :catchall_17b

    move-result-object v1

    .line 2295
    if-eqz v1, :cond_154

    .line 2296
    :cond_33
    :goto_33
    :try_start_33
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_154

    .line 2297
    sget-object v0, Lcom/alphab/i/a;->a:Ljava/lang/String;

    const-string v2, "query downloadermanager package success"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    const-string v0, "notificationpackage"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2301
    const-string v2, "uri"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2303
    const-string v3, "title"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2304
    const-string v4, "_data"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2305
    sget-object v5, Lcom/alphab/i/a;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "notificationpackage "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    sget-object v5, Lcom/alphab/i/a;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "uri "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3251
    iget-object v5, p0, Lcom/alphab/i/a;->f:Lcom/mintegral/msdk/c/a;

    if-eqz v5, :cond_9c

    iget-object v5, p0, Lcom/alphab/i/a;->f:Lcom/mintegral/msdk/c/a;

    invoke-virtual {v5}, Lcom/mintegral/msdk/c/a;->B()I

    move-result v5

    if-eq v7, v5, :cond_10e

    .line 3272
    :cond_9c
    :goto_9c
    iget-object v4, p0, Lcom/alphab/i/a;->f:Lcom/mintegral/msdk/c/a;

    if-eqz v4, :cond_33

    iget-object v4, p0, Lcom/alphab/i/a;->f:Lcom/mintegral/msdk/c/a;

    invoke-virtual {v4}, Lcom/mintegral/msdk/c/a;->W()I

    move-result v4

    if-ne v7, v4, :cond_33

    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v4, "authority_app_download"

    invoke-static {v4}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 3275
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_151

    const-string v4, "com.android.vending"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c9

    const-string v0, "google.com"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_151

    :cond_c9
    move v0, v7

    .line 3276
    :goto_ca
    if-eqz v0, :cond_33

    .line 3277
    const-string v0, "packageName"

    .line 3278
    invoke-static {v2, v0}, Lcom/alphab/i/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3279
    sget-object v4, Lcom/alphab/i/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "query downloadermanager package package = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3330
    new-instance v4, Lcom/alphab/i/a$2;

    invoke-direct {v4, p0, v2, v0, v3}, Lcom/alphab/i/a$2;-><init>(Lcom/alphab/i/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3362
    iget-object v0, p0, Lcom/alphab/i/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alphab/i/c;->a(Landroid/content/Context;)Lcom/alphab/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alphab/i/c;->a()Lcom/alphab/i/c$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alphab/i/c$b;->a(Lcom/mintegral/msdk/base/common/f/a;)V
    :try_end_f8
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_f8} :catch_fa
    .catchall {:try_start_33 .. :try_end_f8} :catchall_144

    goto/16 :goto_33

    .line 2311
    :catch_fa
    move-exception v0

    .line 2312
    :goto_fb
    :try_start_fb
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_102

    .line 2313
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_102
    .catchall {:try_start_fb .. :try_end_102} :catchall_144

    .line 2317
    :cond_102
    if-eqz v1, :cond_10d

    :try_start_104
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_10d

    .line 2318
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_10d
    .catch Ljava/lang/Throwable; {:try_start_104 .. :try_end_10d} :catch_169

    .line 2325
    :cond_10d
    :goto_10d
    return-void

    .line 3255
    :cond_10e
    :try_start_10e
    const-string v5, "apk"

    .line 3256
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9c

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 3257
    invoke-static {v4}, Lcom/mintegral/msdk/base/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3258
    new-instance v5, Lcom/alphab/c/b;

    invoke-direct {v5}, Lcom/alphab/c/b;-><init>()V

    .line 3259
    invoke-virtual {v5, v0}, Lcom/alphab/c/b;->a(Ljava/lang/String;)V

    .line 3260
    invoke-virtual {v5, v3}, Lcom/alphab/c/b;->b(Ljava/lang/String;)V

    .line 3261
    invoke-virtual {v5, v4}, Lcom/alphab/c/b;->c(Ljava/lang/String;)V

    .line 3262
    iget-object v4, p0, Lcom/alphab/i/a;->i:Landroid/os/Handler;

    if-eqz v4, :cond_9c

    .line 3263
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 3264
    const/16 v6, 0x67

    iput v6, v4, Landroid/os/Message;->what:I

    .line 3265
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3266
    iget-object v5, p0, Lcom/alphab/i/a;->i:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_142
    .catch Ljava/lang/Throwable; {:try_start_10e .. :try_end_142} :catch_fa
    .catchall {:try_start_10e .. :try_end_142} :catchall_144

    goto/16 :goto_9c

    .line 2316
    :catchall_144
    move-exception v0

    .line 2317
    :goto_145
    if-eqz v1, :cond_150

    :try_start_147
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_150

    .line 2318
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_150
    .catch Ljava/lang/Throwable; {:try_start_147 .. :try_end_150} :catch_172

    .line 2324
    :cond_150
    :goto_150
    throw v0

    .line 3275
    :cond_151
    const/4 v0, 0x0

    goto/16 :goto_ca

    .line 2317
    :cond_154
    if-eqz v1, :cond_10d

    :try_start_156
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_10d

    .line 2318
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_15f
    .catch Ljava/lang/Throwable; {:try_start_156 .. :try_end_15f} :catch_160

    goto :goto_10d

    .line 2320
    :catch_160
    move-exception v0

    .line 2321
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_10d

    .line 2322
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10d

    .line 2320
    :catch_169
    move-exception v0

    .line 2321
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_10d

    .line 2322
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10d

    .line 2320
    :catch_172
    move-exception v1

    .line 2321
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_150

    .line 2322
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_150

    .line 2316
    :catchall_17b
    move-exception v0

    move-object v1, v6

    goto :goto_145

    .line 2311
    :catch_17e
    move-exception v0

    move-object v1, v6

    goto/16 :goto_fb
.end method

.method static synthetic a(Lcom/alphab/i/a;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V
    .registers 11

    .prologue
    .line 54
    .line 1368
    new-instance v0, Lcom/alphab/a/b/d;

    iget-object v1, p0, Lcom/alphab/i/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alphab/a/b/d;-><init>(Landroid/content/Context;)V

    .line 1369
    new-instance v1, Lcom/alphab/i/a$3;

    invoke-direct {v1, p0}, Lcom/alphab/i/a$3;-><init>(Lcom/alphab/i/a;)V

    invoke-virtual {v0, v1}, Lcom/alphab/a/b/d;->a(Lcom/alphab/a/b/f;)V

    .line 1385
    const-string v2, ""

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alphab/a/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/alphab/i/a;Ljava/util/List;I)V
    .registers 5

    .prologue
    .line 1135
    new-instance v0, Lcom/alphab/a/b/c;

    iget-object v1, p0, Lcom/alphab/i/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alphab/a/b/c;-><init>(Landroid/content/Context;)V

    .line 1136
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/alphab/a/b/c;->a(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v0, p2}, Lcom/alphab/a/b/c;->a(I)V

    .line 1138
    invoke-virtual {v0, p1}, Lcom/alphab/a/b/c;->a(Ljava/util/List;)V

    .line 54
    return-void
.end method

.method static synthetic b(Lcom/alphab/i/a;)Lcom/mintegral/msdk/c/a;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alphab/i/a;->f:Lcom/mintegral/msdk/c/a;

    return-object v0
.end method

.method private declared-synchronized b()V
    .registers 11

    .prologue
    .line 456
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 457
    iget-object v0, p0, Lcom/alphab/i/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 458
    :cond_f
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 459
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 460
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 461
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 462
    const-wide/32 v8, 0x5265c00

    add-long/2addr v6, v8

    .line 463
    cmp-long v0, v2, v6

    if-lez v0, :cond_f

    .line 464
    sget-object v0, Lcom/alphab/i/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "remove id in idlist "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "time = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_54} :catch_55
    .catchall {:try_start_1 .. :try_end_54} :catchall_5f

    goto :goto_f

    .line 468
    :catch_55
    move-exception v0

    .line 469
    :try_start_56
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_5d

    .line 470
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_5f

    .line 473
    :cond_5d
    monitor-exit p0

    return-void

    .line 456
    :catchall_5f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/alphab/i/a;)V
    .registers 7

    .prologue
    .line 1501
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alphab/i/a;->h:J

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    .line 1502
    sget-object v0, Lcom/alphab/i/a;->a:Ljava/lang/String;

    const-string v1, "check setting not ready"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    :cond_15
    :goto_15
    return-void

    .line 1506
    :cond_16
    iget-object v0, p0, Lcom/alphab/i/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alphab/i/c;->a(Landroid/content/Context;)Lcom/alphab/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alphab/i/c;->a()Lcom/alphab/i/c$b;

    move-result-object v0

    new-instance v1, Lcom/alphab/i/a$4;

    invoke-direct {v1, p0}, Lcom/alphab/i/a$4;-><init>(Lcom/alphab/i/a;)V

    invoke-virtual {v0, v1}, Lcom/alphab/i/c$b;->a(Lcom/mintegral/msdk/base/common/f/a;)V

    .line 1528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alphab/i/a;->h:J
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_15

    .line 1529
    :catch_2f
    move-exception v0

    .line 1530
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_15

    .line 1531
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_15
.end method

.method static synthetic d(Lcom/alphab/i/a;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alphab/i/a;->i:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 11

    .prologue
    .line 162
    :try_start_0
    sget-object v0, Lcom/alphab/i/a;->a:Ljava/lang/String;

    const-string v1, "alpha init"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-nez p1, :cond_a

    .line 241
    :cond_9
    :goto_9
    return-void

    .line 167
    :cond_a
    iput-object p1, p0, Lcom/alphab/i/a;->b:Landroid/content/Context;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_117

    .line 170
    :try_start_c
    new-instance v0, Lcom/alphab/receiver/AlphabReceiver;

    invoke-direct {v0}, Lcom/alphab/receiver/AlphabReceiver;-><init>()V

    .line 171
    sget-object v1, Lcom/alphab/a$b;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 172
    sget-object v2, Lcom/alphab/a$b;->g:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 173
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 174
    const-class v4, Landroid/content/IntentFilter;

    sget-object v5, Lcom/alphab/a$b;->h:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 175
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/alphab/a$a;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/alphab/a$a;->b:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-class v4, Landroid/content/Context;

    sget-object v5, Lcom/alphab/a$b;->i:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 179
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v3, v2, v0

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_64} :catch_121
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_64} :catch_117

    .line 185
    :goto_64
    :try_start_64
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alphab/i/a;->f:Lcom/mintegral/msdk/c/a;

    .line 186
    iget-object v0, p0, Lcom/alphab/i/a;->f:Lcom/mintegral/msdk/c/a;

    if-nez v0, :cond_82

    .line 187
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alphab/i/a;->f:Lcom/mintegral/msdk/c/a;

    .line 190
    :cond_82
    iget-object v0, p0, Lcom/alphab/i/a;->f:Lcom/mintegral/msdk/c/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 191
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alphab/a;->b:Ljava/lang/String;

    .line 194
    :cond_94
    iget-object v0, p0, Lcom/alphab/i/a;->f:Lcom/mintegral/msdk/c/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 195
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alphab/a;->a:Ljava/lang/String;

    .line 197
    :cond_a6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alphab/i/a;->h:J

    .line 201
    iget-object v0, p0, Lcom/alphab/i/a;->i:Landroid/os/Handler;
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_ae} :catch_117

    if-eqz v0, :cond_10d

    .line 204
    :try_start_b0
    new-instance v0, Lcom/alphab/i/a$a;

    iget-object v1, p0, Lcom/alphab/i/a;->i:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/alphab/i/a$a;-><init>(Lcom/alphab/i/a;Landroid/os/Handler;)V

    .line 205
    const-class v1, Landroid/content/Context;

    sget-object v2, Lcom/alphab/a$b;->a:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 206
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 208
    sget-object v2, Lcom/alphab/a$b;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 209
    sget-object v3, Lcom/alphab/a$b;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 210
    sget-object v4, Lcom/alphab/a$b;->d:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 211
    sget-object v5, Lcom/alphab/a$b;->e:Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    const/4 v2, 0x2

    aput-object v3, v6, v2

    .line 212
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 213
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "asx6f3H6foh4FsJ4fsLzYscKrM=="

    .line 214
    invoke-static {v5}, Lcom/alphab/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    .line 213
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b0 .. :try_end_10d} :catch_127
    .catch Ljava/lang/SecurityException; {:try_start_b0 .. :try_end_10d} :catch_12c
    .catch Ljava/lang/IllegalAccessException; {:try_start_b0 .. :try_end_10d} :catch_131
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b0 .. :try_end_10d} :catch_136
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b0 .. :try_end_10d} :catch_13b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b0 .. :try_end_10d} :catch_140
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_10d} :catch_117

    .line 234
    :cond_10d
    :goto_10d
    :try_start_10d
    iget-object v0, p0, Lcom/alphab/i/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alphab/i/a;->e:Landroid/content/pm/PackageManager;
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_115} :catch_117

    goto/16 :goto_9

    .line 236
    :catch_117
    move-exception v0

    .line 237
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 238
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 182
    :catch_121
    move-exception v0

    :try_start_122
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_64

    .line 216
    :catch_127
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_10d

    .line 218
    :catch_12c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_10d

    .line 220
    :catch_131
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_10d

    .line 222
    :catch_136
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_10d

    .line 224
    :catch_13b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_10d

    .line 226
    :catch_140
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_144} :catch_117

    goto :goto_10d
.end method
