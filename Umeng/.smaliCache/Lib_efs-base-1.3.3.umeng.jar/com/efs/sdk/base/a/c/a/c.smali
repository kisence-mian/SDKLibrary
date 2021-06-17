.class public final Lcom/efs/sdk/base/a/c/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/a/c/a/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Random;


# instance fields
.field public b:Lcom/efs/sdk/base/IConfigRefreshAction;

.field public c:Z

.field public d:Lcom/efs/sdk/base/a/c/a/b;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/efs/sdk/base/observer/IConfigCallback;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Handler;

.field private g:Lcom/efs/sdk/base/a/c/a/e;

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/efs/sdk/base/a/c/a/c;->a:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/efs/sdk/base/a/c/a/c;->c:Z

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/c/a/c;->e:Ljava/util/Map;

    .line 103
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/efs/sdk/base/a/h/a/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/efs/sdk/base/a/c/a/c;->f:Landroid/os/Handler;

    .line 104
    new-instance v0, Lcom/efs/sdk/base/a/c/a/e;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/c/a/e;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/c/a/c;->g:Lcom/efs/sdk/base/a/c/a/e;

    .line 105
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/b;->a()Lcom/efs/sdk/base/a/c/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 106
    nop

    .line 1107
    sget-object v0, Lcom/efs/sdk/base/a/d/a;->a:Lcom/efs/sdk/base/a/c/a;

    .line 106
    iget-wide v0, v0, Lcom/efs/sdk/base/a/c/a;->j:J

    iput-wide v0, p0, Lcom/efs/sdk/base/a/c/a/c;->h:J

    .line 107
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/efs/sdk/base/a/c/a/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/efs/sdk/base/a/c/a/c;
    .registers 1

    .line 120
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c$a;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/efs/sdk/base/a/c/a/c;)Ljava/util/Map;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/efs/sdk/base/a/c/a/c;->e:Ljava/util/Map;

    return-object p0
.end method

.method private a(Lcom/efs/sdk/base/a/c/a/b;)Z
    .registers 4

    .line 382
    iget-object v0, p0, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 17103
    iget v0, v0, Lcom/efs/sdk/base/a/c/a/b;->a:I

    .line 382
    nop

    .line 18103
    iget v1, p1, Lcom/efs/sdk/base/a/c/a/b;->a:I

    .line 382
    if-lt v0, v1, :cond_b

    .line 383
    const/4 p1, 0x1

    return p1

    .line 386
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "current config version ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 19103
    iget v1, v1, Lcom/efs/sdk/base/a/c/a/b;->a:I

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is older than another ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20103
    iget p1, p1, Lcom/efs/sdk/base/a/c/a/b;->a:I

    .line 387
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 388
    nop

    .line 21024
    const-string v0, "efs.config"

    invoke-static {v0, p1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/efs/sdk/base/a/c/a/c;)Lcom/efs/sdk/base/a/c/a/b;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    return-object p0
.end method

.method private e()V
    .registers 5

    .line 13056
    invoke-static {}, Lcom/efs/sdk/base/a/e/f$a;->a()Lcom/efs/sdk/base/a/e/f;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/efs/sdk/base/a/e/f;->a()Z

    move-result v0

    const-string v1, "efs.config"

    if-nez v0, :cond_13

    .line 285
    nop

    .line 14024
    const-string v0, "has no permission to refresh config from remote"

    invoke-static {v1, v0}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void

    .line 290
    :cond_13
    iget-boolean v0, p0, Lcom/efs/sdk/base/a/c/a/c;->c:Z

    if-nez v0, :cond_1e

    .line 291
    nop

    .line 15024
    const-string v0, "disable refresh config from remote"

    invoke-static {v1, v0}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void

    .line 295
    :cond_1e
    invoke-direct {p0}, Lcom/efs/sdk/base/a/c/a/c;->g()Lcom/efs/sdk/base/IConfigRefreshAction;

    move-result-object v0

    invoke-interface {v0}, Lcom/efs/sdk/base/IConfigRefreshAction;->refresh()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "efs config is "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16024
    invoke-static {v1, v2}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 300
    return-void

    .line 303
    :cond_3a
    invoke-virtual {p0, v0}, Lcom/efs/sdk/base/a/c/a/c;->a(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method private f()V
    .registers 5

    .line 329
    nop

    .line 332
    :try_start_1
    iget-object v0, p0, Lcom/efs/sdk/base/a/c/a/c;->g:Lcom/efs/sdk/base/a/c/a/e;

    iget-object v1, p0, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    invoke-virtual {v0, v1}, Lcom/efs/sdk/base/a/c/a/e;->a(Lcom/efs/sdk/base/a/c/a/b;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_a

    .line 334
    goto :goto_c

    .line 333
    :catchall_a
    move-exception v0

    const/4 v0, 0x0

    .line 337
    :goto_c
    if-nez v0, :cond_16

    .line 338
    iget-object v0, p0, Lcom/efs/sdk/base/a/c/a/c;->f:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 340
    :cond_16
    return-void
.end method

.method private g()Lcom/efs/sdk/base/IConfigRefreshAction;
    .registers 2

    .line 358
    iget-object v0, p0, Lcom/efs/sdk/base/a/c/a/c;->b:Lcom/efs/sdk/base/IConfigRefreshAction;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/efs/sdk/base/a/c/a/a;->a()Lcom/efs/sdk/base/a/c/a/a;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method private h()Z
    .registers 6

    .line 367
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/e;->b()V

    .line 370
    nop

    .line 373
    const-wide/16 v0, 0x0

    :try_start_6
    iget-object v2, p0, Lcom/efs/sdk/base/a/c/a/c;->g:Lcom/efs/sdk/base/a/c/a/e;

    .line 16103
    invoke-virtual {v2}, Lcom/efs/sdk/base/a/c/a/e;->c()V

    .line 16105
    iget-object v3, v2, Lcom/efs/sdk/base/a/c/a/e;->a:Landroid/content/SharedPreferences;

    if-nez v3, :cond_10

    .line 16106
    goto :goto_18

    .line 16109
    :cond_10
    iget-object v2, v2, Lcom/efs/sdk/base/a/c/a/e;->a:Landroid/content/SharedPreferences;

    const-string v3, "last_refresh_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_1a

    .line 373
    :goto_18
    nop

    .line 375
    goto :goto_1b

    .line 374
    :catchall_1a
    move-exception v2

    .line 378
    :goto_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x1b77400

    cmp-long v4, v2, v0

    if-ltz v4, :cond_29

    const/4 v0, 0x1

    return v0

    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method private i()V
    .registers 7

    .line 21107
    :try_start_0
    sget-object v0, Lcom/efs/sdk/base/a/d/a;->a:Lcom/efs/sdk/base/a/c/a;

    .line 398
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/efs/sdk/base/a/c/a;->a(I)Ljava/util/List;

    move-result-object v0

    .line 400
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/ValueCallback;

    .line 401
    const/4 v3, 0x0

    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 21136
    iget-object v5, v5, Lcom/efs/sdk/base/a/c/a/b;->e:Ljava/util/Map;

    .line 401
    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 402
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 403
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v5}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 404
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    .line 405
    invoke-virtual {v4}, Landroid/os/Message;->recycle()V

    .line 406
    goto :goto_b

    .line 22107
    :cond_3c
    sget-object v0, Lcom/efs/sdk/base/a/d/a;->a:Lcom/efs/sdk/base/a/c/a;

    .line 22251
    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->o:Ljava/util/List;

    .line 412
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/efs/sdk/base/observer/IEfsReporterObserver;

    .line 413
    invoke-interface {v1}, Lcom/efs/sdk/base/observer/IEfsReporterObserver;->onConfigChange()V
    :try_end_53
    .catchall {:try_start_0 .. :try_end_53} :catchall_55

    .line 414
    goto :goto_44

    .line 417
    :cond_54
    return-void

    .line 415
    :catchall_55
    move-exception v0

    .line 416
    nop

    .line 23032
    const-string v1, "efs.base"

    const-string v2, "efs.config"

    invoke-static {v1, v2, v0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 418
    return-void
.end method


# virtual methods
.method public final a(Z)Ljava/lang/String;
    .registers 3

    .line 191
    if-eqz p1, :cond_16

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "https://"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 3196
    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a/b;->c:Ljava/lang/String;

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 195
    :cond_16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 3200
    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a/b;->b:Ljava/lang/String;

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 4196
    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a/b;->c:Ljava/lang/String;

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)V
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 2103
    iget v0, v0, Lcom/efs/sdk/base/a/c/a/b;->a:I

    .line 132
    if-gt p1, v0, :cond_21

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "current config version is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", no need to refresh"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3024
    const-string v0, "efs.config"

    invoke-static {v0, p1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void

    .line 137
    :cond_21
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 138
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 139
    const/4 p1, 0x1

    iput p1, v0, Landroid/os/Message;->what:I

    .line 140
    iget-object p1, p0, Lcom/efs/sdk/base/a/c/a/c;->f:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    .line 307
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/b;->a()Lcom/efs/sdk/base/a/c/a/b;

    move-result-object v0

    .line 308
    invoke-static {p1, v0}, Lcom/efs/sdk/base/a/c/a/d;->a(Ljava/lang/String;Lcom/efs/sdk/base/a/c/a/b;)Z

    move-result p1

    .line 310
    if-eqz p1, :cond_1d

    .line 311
    invoke-direct {p0, v0}, Lcom/efs/sdk/base/a/c/a/c;->a(Lcom/efs/sdk/base/a/c/a/b;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 312
    return-void

    .line 314
    :cond_11
    iput-object v0, p0, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 317
    invoke-direct {p0}, Lcom/efs/sdk/base/a/c/a/c;->f()V

    .line 319
    invoke-direct {p0}, Lcom/efs/sdk/base/a/c/a/c;->i()V

    .line 321
    invoke-virtual {p0}, Lcom/efs/sdk/base/a/c/a/c;->d()V

    return-void

    .line 324
    :cond_1d
    iget-object p1, p0, Lcom/efs/sdk/base/a/c/a/c;->f:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 326
    return-void
.end method

.method public final b()V
    .registers 5

    .line 125
    iget-object v0, p0, Lcom/efs/sdk/base/a/c/a/c;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 128
    iget-object v0, p0, Lcom/efs/sdk/base/a/c/a/c;->f:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/efs/sdk/base/a/c/a/c;->h:J

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 129
    return-void
.end method

.method public final c()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 3136
    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a/b;->e:Ljava/util/Map;

    .line 174
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final d()V
    .registers 3

    .line 421
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/efs/sdk/base/a/c/a/c$1;

    invoke-direct {v1, p0}, Lcom/efs/sdk/base/a/c/a/c$1;-><init>(Lcom/efs/sdk/base/a/c/a/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 444
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 11

    .line 204
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "efs.config"

    packed-switch v0, :pswitch_data_124

    goto/16 :goto_122

    .line 222
    :pswitch_a
    invoke-direct {p0}, Lcom/efs/sdk/base/a/c/a/c;->f()V

    goto/16 :goto_122

    .line 217
    :pswitch_f
    nop

    .line 12056
    invoke-static {}, Lcom/efs/sdk/base/a/e/f$a;->a()Lcom/efs/sdk/base/a/e/f;

    move-result-object p1

    .line 11344
    invoke-virtual {p1}, Lcom/efs/sdk/base/a/e/f;->a()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 11349
    invoke-direct {p0}, Lcom/efs/sdk/base/a/c/a/c;->h()Z

    move-result p1

    if-nez p1, :cond_28

    .line 11350
    nop

    .line 13024
    const-string p1, "No update is required, less than 8h since the last update"

    invoke-static {v2, p1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11351
    goto/16 :goto_122

    .line 11353
    :cond_28
    invoke-direct {p0}, Lcom/efs/sdk/base/a/c/a/c;->e()V

    .line 218
    :cond_2b
    goto/16 :goto_122

    .line 212
    :pswitch_2d
    nop

    .line 8271
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 8273
    iget-object v0, p0, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 9103
    iget v0, v0, Lcom/efs/sdk/base/a/c/a/b;->a:I

    .line 8273
    if-gt p1, v0, :cond_74

    .line 8274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "current config version is "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", no need to refresh"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10024
    invoke-static {v2, v0}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "current config version("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 10103
    iget v4, v4, Lcom/efs/sdk/base/a/c/a/b;->a:I

    .line 8275
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11024
    invoke-static {v2, p1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8276
    goto/16 :goto_122

    .line 8279
    :cond_74
    invoke-direct {p0}, Lcom/efs/sdk/base/a/c/a/c;->e()V

    .line 213
    goto/16 :goto_122

    .line 207
    :pswitch_79
    nop

    .line 4232
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/e;->a()Z

    move-result p1

    .line 4233
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "--->>> \u5220\u9664\u65e7\u7684\u914d\u7f6e\u6587\u4ef6 "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5024
    invoke-static {v2, v0}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4236
    if-eqz p1, :cond_94

    .line 4237
    iget-object p1, p0, Lcom/efs/sdk/base/a/c/a/c;->f:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4238
    goto/16 :goto_122

    .line 4242
    :cond_94
    iget-object p1, p0, Lcom/efs/sdk/base/a/c/a/c;->g:Lcom/efs/sdk/base/a/c/a/e;

    .line 5042
    invoke-virtual {p1}, Lcom/efs/sdk/base/a/c/a/e;->c()V

    .line 5044
    iget-object v0, p1, Lcom/efs/sdk/base/a/c/a/e;->a:Landroid/content/SharedPreferences;

    const/4 v3, -0x1

    if-nez v0, :cond_a0

    .line 5045
    const/4 p1, 0x0

    goto :goto_e4

    .line 5048
    :cond_a0
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/b;->a()Lcom/efs/sdk/base/a/c/a/b;

    move-result-object v0

    .line 5051
    iget-object v4, p1, Lcom/efs/sdk/base/a/c/a/e;->a:Landroid/content/SharedPreferences;

    const-string v5, "cver"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 5052
    nop

    .line 5112
    iput v4, v0, Lcom/efs/sdk/base/a/c/a/b;->a:I

    .line 5055
    iget-object v4, p1, Lcom/efs/sdk/base/a/c/a/e;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 5056
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 5058
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5059
    iget-object v7, p1, Lcom/efs/sdk/base/a/c/a/e;->a:Landroid/content/SharedPreferences;

    const-string v8, ""

    invoke-interface {v7, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5061
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_df

    .line 5062
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5064
    :cond_df
    goto :goto_c2

    .line 5065
    :cond_e0
    invoke-virtual {v0, v5}, Lcom/efs/sdk/base/a/c/a/b;->a(Ljava/util/Map;)V

    .line 5066
    move-object p1, v0

    .line 4242
    :goto_e4
    nop

    .line 4245
    if-nez p1, :cond_ee

    .line 4246
    nop

    .line 6024
    const-string p1, "--->>> \u9996\u6b21\u542f\u52a8\u672c\u5730\u65e0\u914d\u7f6e\u6216\u52a0\u8f7d\u5931\u8d25 "

    invoke-static {v2, p1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4247
    goto :goto_122

    .line 4251
    :cond_ee
    invoke-direct {p0, p1}, Lcom/efs/sdk/base/a/c/a/c;->a(Lcom/efs/sdk/base/a/c/a/b;)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 4252
    nop

    .line 7024
    const-string p1, "--->>> \u4e00\u81f4 "

    invoke-static {v2, p1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4253
    goto :goto_122

    .line 4256
    :cond_fb
    iput-object p1, p0, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 4258
    const-string v0, "load config from storage"

    .line 4260
    nop

    .line 7103
    iget p1, p1, Lcom/efs/sdk/base/a/c/a/b;->a:I

    .line 4260
    if-eq v3, p1, :cond_11d

    .line 4262
    invoke-direct {p0}, Lcom/efs/sdk/base/a/c/a/c;->i()V

    .line 4264
    invoke-virtual {p0}, Lcom/efs/sdk/base/a/c/a/c;->d()V

    .line 4265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " and notify observer"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4267
    :cond_11d
    nop

    .line 8024
    invoke-static {v2, v0}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    nop

    .line 227
    :goto_122
    return v1

    nop

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_79
        :pswitch_2d
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method
