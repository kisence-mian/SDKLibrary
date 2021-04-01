.class public Lcom/bytedance/tea/crash/a/g;
.super Ljava/lang/Object;
.source "LooperMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/tea/crash/a/g$a;
    }
.end annotation


# static fields
.field public static a:J

.field public static b:J

.field private static c:Z

.field private static d:Z

.field private static e:I

.field private static f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/tea/crash/a/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile g:Ljava/util/concurrent/atomic/AtomicLong;

.field private static h:J

.field private static i:J

.field private static j:Landroid/os/HandlerThread;

.field private static k:J

.field private static l:J

.field private static m:Landroid/os/Handler;

.field private static n:I

.field private static o:Z

.field private static volatile p:Ljava/lang/String;

.field private static volatile q:Z

.field private static r:I

.field private static s:I

.field private static t:Landroid/os/MessageQueue;

.field private static u:Ljava/lang/reflect/Field;

.field private static v:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 37
    sput-boolean v6, Lcom/bytedance/tea/crash/a/g;->c:Z

    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/tea/crash/a/g;->d:Z

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/bytedance/tea/crash/a/g;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 43
    const-wide/16 v0, 0x64

    sput-wide v0, Lcom/bytedance/tea/crash/a/g;->h:J

    .line 51
    sput-object v2, Lcom/bytedance/tea/crash/a/g;->p:Ljava/lang/String;

    .line 53
    sput-boolean v6, Lcom/bytedance/tea/crash/a/g;->q:Z

    .line 54
    sput v3, Lcom/bytedance/tea/crash/a/g;->r:I

    .line 174
    sput-wide v4, Lcom/bytedance/tea/crash/a/g;->a:J

    .line 175
    sput-wide v4, Lcom/bytedance/tea/crash/a/g;->b:J

    .line 282
    sput v3, Lcom/bytedance/tea/crash/a/g;->s:I

    .line 388
    sput-object v2, Lcom/bytedance/tea/crash/a/g;->t:Landroid/os/MessageQueue;

    .line 409
    sput-object v2, Lcom/bytedance/tea/crash/a/g;->u:Ljava/lang/reflect/Field;

    .line 558
    sput-object v2, Lcom/bytedance/tea/crash/a/g;->v:Ljava/lang/reflect/Field;

    return-void
.end method

.method static synthetic a(I)I
    .registers 1

    .prologue
    .line 34
    sput p0, Lcom/bytedance/tea/crash/a/g;->r:I

    return p0
.end method

.method private static a(Landroid/os/Message;)Landroid/os/Message;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 561
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->v:Ljava/lang/reflect/Field;

    if-nez v0, :cond_41

    .line 564
    :try_start_5
    const-string v0, "android.os.Message"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 566
    const-string v2, "next"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/bytedance/tea/crash/a/g;->v:Ljava/lang/reflect/Field;

    .line 567
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->v:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 569
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->v:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 570
    sget-boolean v2, Lcom/bytedance/tea/crash/a/g;->c:Z

    if-eqz v2, :cond_3d

    .line 571
    const-string v2, "LooperMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getNextMessage] success get next msg :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3d} :catch_3e

    .line 583
    :cond_3d
    :goto_3d
    return-object v0

    .line 574
    :catch_3e
    move-exception v0

    move-object v0, v1

    .line 576
    goto :goto_3d

    .line 580
    :cond_41
    :try_start_41
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->v:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_49} :catch_4a

    goto :goto_3d

    .line 581
    :catch_4a
    move-exception v0

    move-object v0, v1

    .line 583
    goto :goto_3d
.end method

.method private static a(Landroid/os/MessageQueue;)Landroid/os/Message;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 412
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->u:Ljava/lang/reflect/Field;

    if-nez v0, :cond_25

    .line 414
    :try_start_5
    const-string v0, "android.os.MessageQueue"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 416
    const-string v2, "mMessages"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/bytedance/tea/crash/a/g;->u:Ljava/lang/reflect/Field;

    .line 417
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->u:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 419
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->u:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_22

    .line 429
    :goto_21
    return-object v0

    .line 420
    :catch_22
    move-exception v0

    move-object v0, v1

    .line 422
    goto :goto_21

    .line 426
    :cond_25
    :try_start_25
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->u:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2d} :catch_2e

    goto :goto_21

    .line 427
    :catch_2e
    move-exception v0

    move-object v0, v1

    .line 429
    goto :goto_21
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 34
    sput-object p0, Lcom/bytedance/tea/crash/a/g;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static a(IJ)Lorg/json/JSONArray;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 459
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->d()Landroid/os/MessageQueue;

    move-result-object v4

    .line 460
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 461
    if-nez v4, :cond_d

    .line 485
    :goto_c
    return-object v0

    .line 466
    :cond_d
    monitor-enter v4

    .line 467
    :try_start_e
    invoke-static {v4}, Lcom/bytedance/tea/crash/a/g;->a(Landroid/os/MessageQueue;)Landroid/os/Message;

    move-result-object v2

    .line 468
    if-nez v2, :cond_19

    .line 469
    monitor-exit v4

    goto :goto_c

    .line 486
    :catchall_16
    move-exception v0

    monitor-exit v4
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v0

    :cond_19
    move v3, v1

    .line 474
    :goto_1a
    if-eqz v2, :cond_33

    if-ge v3, p0, :cond_33

    .line 475
    add-int/lit8 v3, v3, 0x1

    .line 476
    add-int/lit8 v1, v1, 0x1

    .line 477
    :try_start_22
    invoke-static {v2, p1, p2}, Lcom/bytedance/tea/crash/a/g;->a(Landroid/os/Message;J)Lorg/json/JSONObject;
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_16

    move-result-object v5

    .line 479
    :try_start_26
    const-string v6, "id"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_2b} :catch_35
    .catchall {:try_start_26 .. :try_end_2b} :catchall_16

    .line 482
    :goto_2b
    :try_start_2b
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 483
    invoke-static {v2}, Lcom/bytedance/tea/crash/a/g;->a(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    goto :goto_1a

    .line 485
    :cond_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_16

    goto :goto_c

    .line 480
    :catch_35
    move-exception v6

    goto :goto_2b
.end method

.method public static a(J)Lorg/json/JSONObject;
    .registers 8

    .prologue
    .line 494
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 496
    :try_start_5
    const-string v0, "message"

    sget-object v2, Lcom/bytedance/tea/crash/a/g;->p:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 497
    const-string v0, "currentMessageCost"

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->e()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 498
    const-string v0, "currentMessageCpu"

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->v()J

    move-result-wide v2

    sget-wide v4, Lcom/bytedance/tea/crash/a/g;->k:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 499
    const-string v0, "currentTick"

    sget-object v2, Lcom/bytedance/tea/crash/a/g;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2c} :catch_2d

    .line 503
    :goto_2c
    return-object v1

    .line 500
    :catch_2d
    move-exception v0

    .line 501
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->a(Ljava/lang/Throwable;)V

    goto :goto_2c
.end method

.method private static a(Landroid/os/Message;J)Lorg/json/JSONObject;
    .registers 8

    .prologue
    .line 507
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 508
    if-nez p0, :cond_8

    .line 533
    :cond_7
    :goto_7
    return-object v0

    .line 513
    :cond_8
    :try_start_8
    const-string v1, "when"

    invoke-virtual {p0}, Landroid/os/Message;->getWhen()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 514
    invoke-virtual {p0}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 515
    const-string v1, "callback"

    invoke-virtual {p0}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    :cond_21
    const-string v1, "what"

    iget v2, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 518
    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 519
    const-string v1, "target"

    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    :goto_37
    const-string v1, "arg1"

    iget v2, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 524
    const-string v1, "arg2"

    iget v2, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 525
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 526
    const-string v1, "obj"

    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_50} :catch_51

    goto :goto_7

    .line 529
    :catch_51
    move-exception v1

    .line 530
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7

    .line 521
    :cond_56
    :try_start_56
    const-string v1, "barrier"

    iget v2, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_56 .. :try_end_5d} :catch_51

    goto :goto_37
.end method

.method public static a()V
    .registers 2

    .prologue
    .line 177
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/e/g;->a(J)V

    .line 178
    invoke-static {}, Lcom/bytedance/tea/crash/e/f;->a()Lcom/bytedance/tea/crash/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/e/f;->b()V

    .line 184
    invoke-static {}, Lcom/bytedance/tea/crash/e/f;->a()Lcom/bytedance/tea/crash/e/f;

    move-result-object v0

    new-instance v1, Lcom/bytedance/tea/crash/a/g$1;

    invoke-direct {v1}, Lcom/bytedance/tea/crash/a/g$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/e/f;->b(Landroid/util/Printer;)V

    .line 237
    invoke-static {}, Lcom/bytedance/tea/crash/e/f;->a()Lcom/bytedance/tea/crash/e/f;

    move-result-object v0

    new-instance v1, Lcom/bytedance/tea/crash/a/g$2;

    invoke-direct {v1}, Lcom/bytedance/tea/crash/a/g$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/e/f;->a(Landroid/util/Printer;)V

    .line 278
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->v()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/tea/crash/a/g;->k:J

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/tea/crash/a/g;->l:J

    .line 280
    return-void
.end method

.method public static a(II)V
    .registers 4

    .prologue
    const/16 v1, 0xa

    .line 108
    sget-boolean v0, Lcom/bytedance/tea/crash/a/g;->d:Z

    if-nez v0, :cond_7

    .line 123
    :goto_6
    return-void

    .line 112
    :cond_7
    if-le p0, v1, :cond_b

    .line 113
    sput p0, Lcom/bytedance/tea/crash/a/g;->e:I

    .line 116
    :cond_b
    if-le p1, v1, :cond_10

    .line 117
    int-to-long v0, p1

    sput-wide v0, Lcom/bytedance/tea/crash/a/g;->h:J

    .line 120
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bytedance/tea/crash/a/g;->f:Ljava/util/List;

    .line 121
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->a()V

    .line 122
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->d()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/tea/crash/a/g;->a(Landroid/os/MessageQueue;)Landroid/os/Message;

    goto :goto_6
.end method

.method static synthetic a(Lcom/bytedance/tea/crash/a/g$a;JJJIILjava/lang/String;)V
    .registers 11

    .prologue
    .line 34
    invoke-static/range {p0 .. p9}, Lcom/bytedance/tea/crash/a/g;->b(Lcom/bytedance/tea/crash/a/g$a;JJJIILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1

    .prologue
    .line 34
    sput-boolean p0, Lcom/bytedance/tea/crash/a/g;->o:Z

    return p0
.end method

.method static synthetic b(I)I
    .registers 1

    .prologue
    .line 34
    sput p0, Lcom/bytedance/tea/crash/a/g;->n:I

    return p0
.end method

.method static synthetic b(J)J
    .registers 2

    .prologue
    .line 34
    sput-wide p0, Lcom/bytedance/tea/crash/a/g;->k:J

    return-wide p0
.end method

.method public static b()Lorg/json/JSONArray;
    .registers 8

    .prologue
    .line 309
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 310
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->c()Ljava/util/List;

    move-result-object v1

    .line 311
    if-nez v1, :cond_d

    move-object v0, v2

    .line 334
    :goto_c
    return-object v0

    .line 314
    :cond_d
    const/4 v0, 0x0

    .line 315
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/tea/crash/a/g$a;

    .line 316
    if-eqz v0, :cond_13

    .line 319
    add-int/lit8 v1, v1, 0x1

    .line 320
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 322
    :try_start_28
    const-string v5, "msg"

    iget-object v6, v0, Lcom/bytedance/tea/crash/a/g$a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    const-string v5, "cpuDuration"

    iget-wide v6, v0, Lcom/bytedance/tea/crash/a/g$a;->e:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 324
    const-string v5, "duration"

    iget-wide v6, v0, Lcom/bytedance/tea/crash/a/g$a;->d:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 325
    const-string v5, "tick"

    iget-wide v6, v0, Lcom/bytedance/tea/crash/a/g$a;->c:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 326
    const-string v5, "type"

    iget v6, v0, Lcom/bytedance/tea/crash/a/g$a;->b:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 327
    const-string v5, "count"

    iget v0, v0, Lcom/bytedance/tea/crash/a/g$a;->a:I

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 328
    const-string v0, "id"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_57} :catch_5b

    .line 332
    :goto_57
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_13

    .line 329
    :catch_5b
    move-exception v0

    .line 330
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_57

    :cond_60
    move-object v0, v2

    .line 334
    goto :goto_c
.end method

.method private static b(Lcom/bytedance/tea/crash/a/g$a;JJJIILjava/lang/String;)V
    .registers 11

    .prologue
    .line 297
    iput-wide p1, p0, Lcom/bytedance/tea/crash/a/g$a;->e:J

    .line 298
    iput-wide p5, p0, Lcom/bytedance/tea/crash/a/g$a;->c:J

    .line 299
    iput-wide p3, p0, Lcom/bytedance/tea/crash/a/g$a;->d:J

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/tea/crash/a/g$a;->f:Z

    .line 301
    iput p8, p0, Lcom/bytedance/tea/crash/a/g$a;->a:I

    .line 302
    if-eqz p9, :cond_f

    .line 303
    iput-object p9, p0, Lcom/bytedance/tea/crash/a/g$a;->g:Ljava/lang/String;

    .line 305
    :cond_f
    iput p7, p0, Lcom/bytedance/tea/crash/a/g$a;->b:I

    .line 306
    return-void
.end method

.method static synthetic c(J)J
    .registers 2

    .prologue
    .line 34
    sput-wide p0, Lcom/bytedance/tea/crash/a/g;->l:J

    return-wide p0
.end method

.method public static c()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/tea/crash/a/g$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 338
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->f:Ljava/util/List;

    if-nez v0, :cond_7

    .line 339
    const/4 v0, 0x0

    .line 357
    :goto_6
    return-object v0

    .line 342
    :cond_7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/tea/crash/a/g;->q:Z

    .line 343
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 344
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/bytedance/tea/crash/a/g;->e:I

    if-ne v0, v1, :cond_47

    .line 345
    sget v0, Lcom/bytedance/tea/crash/a/g;->s:I

    move v1, v0

    :goto_1c
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    .line 346
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/tea/crash/a/g$a;

    .line 347
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c

    :cond_33
    move v1, v2

    .line 349
    :goto_34
    sget v0, Lcom/bytedance/tea/crash/a/g;->s:I

    if-ge v1, v0, :cond_4c

    .line 350
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/tea/crash/a/g$a;

    .line 351
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_34

    .line 354
    :cond_47
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 356
    :cond_4c
    sput-boolean v2, Lcom/bytedance/tea/crash/a/g;->q:Z

    move-object v0, v3

    .line 357
    goto :goto_6
.end method

.method public static d()Landroid/os/MessageQueue;
    .registers 3

    .prologue
    .line 390
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->t:Landroid/os/MessageQueue;

    if-nez v0, :cond_1a

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 391
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 392
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 393
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    sput-object v0, Lcom/bytedance/tea/crash/a/g;->t:Landroid/os/MessageQueue;

    .line 406
    :cond_1a
    :goto_1a
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->t:Landroid/os/MessageQueue;

    return-object v0

    .line 394
    :cond_1d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2a

    .line 395
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    sput-object v0, Lcom/bytedance/tea/crash/a/g;->t:Landroid/os/MessageQueue;

    goto :goto_1a

    .line 398
    :cond_2a
    :try_start_2a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mQueue"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 399
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 400
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue;

    sput-object v0, Lcom/bytedance/tea/crash/a/g;->t:Landroid/os/MessageQueue;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_40} :catch_41

    goto :goto_1a

    .line 401
    :catch_41
    move-exception v0

    .line 402
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1a
.end method

.method public static e()J
    .registers 6

    .prologue
    .line 551
    sget-wide v0, Lcom/bytedance/tea/crash/a/g;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    .line 552
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/bytedance/tea/crash/a/g;->i:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/bytedance/tea/crash/a/g;->b:J

    sget-wide v4, Lcom/bytedance/tea/crash/a/g;->h:J

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 554
    :goto_15
    return-wide v0

    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/bytedance/tea/crash/a/g;->i:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/bytedance/tea/crash/a/g;->a:J

    sget-wide v4, Lcom/bytedance/tea/crash/a/g;->h:J

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    goto :goto_15
.end method

.method static synthetic f()Z
    .registers 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/bytedance/tea/crash/a/g;->d:Z

    return v0
.end method

.method static synthetic g()Z
    .registers 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/bytedance/tea/crash/a/g;->o:Z

    return v0
.end method

.method static synthetic h()V
    .registers 0

    .prologue
    .line 34
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->u()V

    return-void
.end method

.method static synthetic i()Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->g:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic j()I
    .registers 2

    .prologue
    .line 34
    sget v0, Lcom/bytedance/tea/crash/a/g;->n:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/bytedance/tea/crash/a/g;->n:I

    return v0
.end method

.method static synthetic k()I
    .registers 1

    .prologue
    .line 34
    sget v0, Lcom/bytedance/tea/crash/a/g;->n:I

    return v0
.end method

.method static synthetic l()J
    .registers 2

    .prologue
    .line 34
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic m()Z
    .registers 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/bytedance/tea/crash/a/g;->q:Z

    return v0
.end method

.method static synthetic n()Lcom/bytedance/tea/crash/a/g$a;
    .registers 1

    .prologue
    .line 34
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->t()Lcom/bytedance/tea/crash/a/g$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o()J
    .registers 2

    .prologue
    .line 34
    sget-wide v0, Lcom/bytedance/tea/crash/a/g;->k:J

    return-wide v0
.end method

.method static synthetic p()J
    .registers 2

    .prologue
    .line 34
    sget-wide v0, Lcom/bytedance/tea/crash/a/g;->l:J

    return-wide v0
.end method

.method static synthetic q()J
    .registers 2

    .prologue
    .line 34
    sget-wide v0, Lcom/bytedance/tea/crash/a/g;->i:J

    return-wide v0
.end method

.method static synthetic r()J
    .registers 2

    .prologue
    .line 34
    sget-wide v0, Lcom/bytedance/tea/crash/a/g;->h:J

    return-wide v0
.end method

.method static synthetic s()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->m:Landroid/os/Handler;

    return-object v0
.end method

.method private static t()Lcom/bytedance/tea/crash/a/g$a;
    .registers 2

    .prologue
    .line 285
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/bytedance/tea/crash/a/g;->e:I

    if-ne v0, v1, :cond_1e

    .line 286
    sget v0, Lcom/bytedance/tea/crash/a/g;->s:I

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/bytedance/tea/crash/a/g;->e:I

    rem-int/2addr v0, v1

    sput v0, Lcom/bytedance/tea/crash/a/g;->s:I

    .line 287
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->f:Ljava/util/List;

    sget v1, Lcom/bytedance/tea/crash/a/g;->s:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/tea/crash/a/g$a;

    .line 292
    :goto_1d
    return-object v0

    .line 289
    :cond_1e
    new-instance v0, Lcom/bytedance/tea/crash/a/g$a;

    invoke-direct {v0}, Lcom/bytedance/tea/crash/a/g$a;-><init>()V

    .line 290
    sget-object v1, Lcom/bytedance/tea/crash/a/g;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    sget v1, Lcom/bytedance/tea/crash/a/g;->s:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/bytedance/tea/crash/a/g;->s:I

    goto :goto_1d
.end method

.method private static u()V
    .registers 4

    .prologue
    .line 361
    invoke-static {}, Lcom/bytedance/tea/crash/e/h;->a()Landroid/os/HandlerThread;

    move-result-object v0

    sput-object v0, Lcom/bytedance/tea/crash/a/g;->j:Landroid/os/HandlerThread;

    .line 363
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/tea/crash/a/g;->i:J

    .line 365
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/bytedance/tea/crash/a/g;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/bytedance/tea/crash/a/g;->m:Landroid/os/Handler;

    .line 366
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/e/g;->a(J)V

    .line 367
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->m:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/tea/crash/a/g$3;

    invoke-direct {v1}, Lcom/bytedance/tea/crash/a/g$3;-><init>()V

    sget-wide v2, Lcom/bytedance/tea/crash/a/g;->h:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 386
    return-void
.end method

.method private static v()J
    .registers 2

    .prologue
    .line 490
    sget v0, Lcom/bytedance/tea/crash/a/g;->r:I

    invoke-static {v0}, Lcom/bytedance/tea/crash/e/c;->a(I)J

    move-result-wide v0

    return-wide v0
.end method
