.class public Lcom/efs/sdk/base/a/e/b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/a/e/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Landroid/content/SharedPreferences;

.field private volatile e:Landroid/content/SharedPreferences$Editor;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 104
    new-instance v0, Lcom/efs/sdk/base/a/e/b$1;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/e/b$1;-><init>()V

    sput-object v0, Lcom/efs/sdk/base/a/e/b;->a:Ljava/util/Map;

    .line 113
    new-instance v0, Lcom/efs/sdk/base/a/e/b$2;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/e/b$2;-><init>()V

    sput-object v0, Lcom/efs/sdk/base/a/e/b;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 131
    sget-object v0, Lcom/efs/sdk/base/a/h/a/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 119
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/efs/sdk/base/a/e/b;->c:Ljava/util/Map;

    .line 132
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/efs/sdk/base/a/e/b;->f:Landroid/content/Context;

    .line 133
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    .line 1113
    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->a:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lcom/efs/sdk/base/a/e/b;->g:Ljava/lang/String;

    .line 134
    invoke-direct {p0}, Lcom/efs/sdk/base/a/e/b;->b()V

    .line 1204
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v1

    .line 2113
    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a;->a:Ljava/lang/String;

    .line 1204
    invoke-static {v0, v1}, Lcom/efs/sdk/base/a/h/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1206
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1207
    invoke-static {v0}, Lcom/efs/sdk/base/a/h/b;->b(Ljava/io/File;)V

    .line 136
    :cond_3d
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/efs/sdk/base/a/e/b;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 296
    sget-object v0, Lcom/efs/sdk/base/a/e/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 298
    if-eqz p0, :cond_33

    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_33

    .line 300
    :try_start_20
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2b

    .line 303
    goto :goto_33

    .line 301
    :catchall_2b
    move-exception p0

    .line 302
    const-string p1, "efs.flow"

    const-string p2, "get max flow error"

    invoke-static {p1, p2, p0}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    :cond_33
    :goto_33
    return-wide v0
.end method

.method public static a()Lcom/efs/sdk/base/a/e/b;
    .registers 1

    .line 149
    invoke-static {}, Lcom/efs/sdk/base/a/e/b$a;->a()Lcom/efs/sdk/base/a/e/b;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 421
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "_"

    if-nez v1, :cond_28

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "unknown"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_4e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7a

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_7a
    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .line 276
    iget-object v0, p0, Lcom/efs/sdk/base/a/e/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/efs/sdk/base/a/e/b;->c:Ljava/util/Map;

    .line 277
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/efs/sdk/base/a/e/b;->c:Ljava/util/Map;

    .line 278
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_21

    .line 279
    return-void

    .line 9053
    :cond_21
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object v0

    .line 282
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v1

    .line 9155
    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 10103
    iget v1, v1, Lcom/efs/sdk/base/a/c/a/b;->a:I

    .line 282
    invoke-virtual {v0, v1, p1}, Lcom/efs/sdk/base/a/i/f;->a(ILjava/lang/String;)V

    .line 285
    const-string v0, "flow_day"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 11053
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object v0

    .line 286
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v1

    .line 11155
    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 12103
    iget v1, v1, Lcom/efs/sdk/base/a/c/a/b;->a:I

    .line 286
    invoke-virtual {v0, v1}, Lcom/efs/sdk/base/a/i/f;->a(I)V

    .line 289
    :cond_47
    iget-object v0, p0, Lcom/efs/sdk/base/a/e/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 290
    iget-object v0, p0, Lcom/efs/sdk/base/a/e/b;->c:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_59
    iget-object v0, p0, Lcom/efs/sdk/base/a/e/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 293
    return-void
.end method

.method private a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)Z
    .registers 24

    .line 233
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p6

    invoke-direct/range {p0 .. p0}, Lcom/efs/sdk/base/a/e/b;->b()V

    .line 236
    iget-object v4, v0, Lcom/efs/sdk/base/a/e/b;->d:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    const-string v6, "efs.flow"

    if-nez v4, :cond_18

    .line 237
    nop

    .line 8025
    const/4 v1, 0x0

    const-string v2, "sharedpreferences is null, cann\'t get last flow stat"

    invoke-static {v6, v2, v1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    return v5

    .line 241
    :cond_18
    nop

    .line 242
    move-object/from16 v4, p4

    move-object/from16 v7, p5

    invoke-static {v1, v4, v7}, Lcom/efs/sdk/base/a/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 243
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/efs/sdk/base/a/c/a/c;->c()Ljava/util/Map;

    move-result-object v7

    .line 245
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_ba

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 247
    iget-object v10, v0, Lcom/efs/sdk/base/a/e/b;->d:Landroid/content/SharedPreferences;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "curr_time_"

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-interface {v10, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v12, v10, p2

    if-lez v12, :cond_70

    .line 251
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 252
    iput v9, v10, Landroid/os/Message;->what:I

    .line 253
    iput-object v1, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 254
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->intValue()I

    move-result v9

    iput v9, v10, Landroid/os/Message;->arg1:I

    .line 255
    invoke-virtual {v0, v10}, Lcom/efs/sdk/base/a/e/b;->sendMessage(Landroid/os/Message;)Z

    .line 260
    :cond_70
    invoke-static {v7, v1, v8}, Lcom/efs/sdk/base/a/e/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    .line 261
    iget-object v11, v0, Lcom/efs/sdk/base/a/e/b;->d:Landroid/content/SharedPreferences;

    const-wide/16 v12, 0x0

    invoke-interface {v11, v8, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 263
    add-long v13, v11, v2

    cmp-long v15, v13, v9

    if-lez v15, :cond_b8

    .line 264
    nop

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "flow limit, key: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", max: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", now: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    nop

    .line 9024
    invoke-static {v6, v1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-direct {v0, v8}, Lcom/efs/sdk/base/a/e/b;->a(Ljava/lang/String;)V

    .line 269
    goto :goto_bb

    .line 271
    :cond_b8
    goto/16 :goto_2d

    .line 245
    :cond_ba
    const/4 v5, 0x1

    .line 272
    :goto_bb
    return v5
.end method

.method private b()V
    .registers 4

    .line 170
    :try_start_0
    invoke-direct {p0}, Lcom/efs/sdk/base/a/e/b;->c()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 173
    return-void

    .line 171
    :catchall_4
    move-exception v0

    .line 172
    const-string v1, "efs.flow"

    const-string v2, "init sharedpreferences error"

    invoke-static {v1, v2, v0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    return-void
.end method

.method private c()V
    .registers 4

    .line 177
    const-class v0, Lcom/efs/sdk/base/a/e/b;

    iget-object v1, p0, Lcom/efs/sdk/base/a/e/b;->d:Landroid/content/SharedPreferences;

    if-nez v1, :cond_31

    .line 178
    monitor-enter v0

    .line 179
    :try_start_7
    iget-object v1, p0, Lcom/efs/sdk/base/a/e/b;->d:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2c

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/efs/sdk/base/a/e/b;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_flow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lcom/efs/sdk/base/a/e/b;->f:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/efs/sdk/base/a/e/b;->d:Landroid/content/SharedPreferences;

    .line 183
    :cond_2c
    monitor-exit v0

    goto :goto_31

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v1

    .line 186
    :cond_31
    :goto_31
    iget-object v1, p0, Lcom/efs/sdk/base/a/e/b;->e:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_47

    .line 187
    monitor-enter v0

    .line 188
    :try_start_36
    iget-object v1, p0, Lcom/efs/sdk/base/a/e/b;->e:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_42

    .line 189
    iget-object v1, p0, Lcom/efs/sdk/base/a/e/b;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/efs/sdk/base/a/e/b;->e:Landroid/content/SharedPreferences$Editor;

    .line 191
    :cond_42
    monitor-exit v0

    return-void

    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_44

    throw v1

    .line 193
    :cond_47
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)Z
    .registers 14

    .line 7053
    invoke-static {}, Lcom/efs/sdk/base/a/c/c$a;->a()Lcom/efs/sdk/base/a/c/c;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lcom/efs/sdk/base/a/c/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 218
    nop

    .line 220
    sget-object v1, Lcom/efs/sdk/base/a/e/b;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v1, 0x1

    :cond_14
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 221
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v1, p0

    move-object v5, p1

    move-object v6, v0

    move-wide v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/efs/sdk/base/a/e/b;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    .line 224
    if-nez v1, :cond_14

    .line 229
    :cond_3a
    return v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    .line 154
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x0

    const-string v3, "curr_time_"

    const/4 v4, 0x0

    const-string v5, "efs.flow"

    packed-switch v0, :pswitch_data_12a

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "flow stat listener not support action \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7025
    invoke-static {v5, p1, v4}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    return-void

    .line 161
    :pswitch_2a
    nop

    .line 4311
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4312
    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v6, p1

    .line 4313
    nop

    .line 4317
    invoke-direct {p0}, Lcom/efs/sdk/base/a/e/b;->b()V

    .line 4320
    iget-object p1, p0, Lcom/efs/sdk/base/a/e/b;->d:Landroid/content/SharedPreferences;

    if-nez p1, :cond_43

    .line 4321
    nop

    .line 5025
    const-string p1, "sharedpreferences is null, cann\'t get last refresh timestamp"

    invoke-static {v5, p1, v4}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4322
    return-void

    .line 4325
    :cond_43
    iget-object p1, p0, Lcom/efs/sdk/base/a/e/b;->e:Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_4e

    .line 4326
    nop

    .line 6025
    const-string p1, "sharedpreferences editor is null, cann\'t refresh timestamp"

    invoke-static {v5, p1, v4}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4327
    return-void

    .line 4330
    :cond_4e
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4331
    iget-object v3, p0, Lcom/efs/sdk/base/a/e/b;->d:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v3, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 4334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    cmp-long v5, v3, v6

    if-ltz v5, :cond_a6

    .line 4339
    iget-object v3, p0, Lcom/efs/sdk/base/a/e/b;->d:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 4341
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_93

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4342
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 4343
    iget-object v5, p0, Lcom/efs/sdk/base/a/e/b;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 4345
    :cond_92
    goto :goto_7b

    .line 4347
    :cond_93
    iget-object v0, p0, Lcom/efs/sdk/base/a/e/b;->e:Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 4348
    iget-object p1, p0, Lcom/efs/sdk/base/a/e/b;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4351
    iget-object p1, p0, Lcom/efs/sdk/base/a/e/b;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 162
    :cond_a6
    return-void

    .line 158
    :pswitch_a7
    nop

    .line 2373
    invoke-direct {p0}, Lcom/efs/sdk/base/a/e/b;->b()V

    .line 2376
    iget-object v0, p0, Lcom/efs/sdk/base/a/e/b;->d:Landroid/content/SharedPreferences;

    if-nez v0, :cond_b6

    .line 2377
    nop

    .line 3025
    const-string p1, "sharedpreferences is null, cann\'t get last flow stat"

    invoke-static {v5, p1, v4}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2378
    return-void

    .line 2381
    :cond_b6
    iget-object v0, p0, Lcom/efs/sdk/base/a/e/b;->e:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_c1

    .line 2382
    nop

    .line 4025
    const-string p1, "sharedpreferences editor is null, cann\'t refresh flow stat"

    invoke-static {v5, p1, v4}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2383
    return-void

    .line 2386
    :cond_c1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2387
    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v4, p1

    .line 4053
    invoke-static {}, Lcom/efs/sdk/base/a/c/c$a;->a()Lcom/efs/sdk/base/a/c/c;

    move-result-object p1

    .line 2388
    invoke-virtual {p1}, Lcom/efs/sdk/base/a/c/c;->a()Ljava/lang/String;

    move-result-object p1

    .line 2390
    sget-object v6, Lcom/efs/sdk/base/a/e/b;->a:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_dc
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_123

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2391
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2393
    iget-object v9, p0, Lcom/efs/sdk/base/a/e/b;->d:Landroid/content/SharedPreferences;

    invoke-interface {v9, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_101

    .line 2394
    iget-object v9, p0, Lcom/efs/sdk/base/a/e/b;->e:Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v9, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2397
    :cond_101
    invoke-static {v7, v0, p1}, Lcom/efs/sdk/base/a/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 2399
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_109
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_122

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2400
    iget-object v9, p0, Lcom/efs/sdk/base/a/e/b;->d:Landroid/content/SharedPreferences;

    invoke-interface {v9, v8, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 2401
    iget-object v11, p0, Lcom/efs/sdk/base/a/e/b;->e:Landroid/content/SharedPreferences$Editor;

    add-long/2addr v9, v4

    invoke-interface {v11, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2405
    goto :goto_109

    .line 2406
    :cond_122
    goto :goto_dc

    .line 2407
    :cond_123
    iget-object p1, p0, Lcom/efs/sdk/base/a/e/b;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 159
    return-void

    nop

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_2a
    .end packed-switch
.end method
