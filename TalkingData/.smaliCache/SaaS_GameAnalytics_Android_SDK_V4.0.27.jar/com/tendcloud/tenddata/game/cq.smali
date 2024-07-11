.class public Lcom/tendcloud/tenddata/game/cq;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static volatile A:Lcom/tendcloud/tenddata/game/cq; = null

.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x3

.field private static i:Ljava/lang/String; = null

.field private static j:Ljava/lang/String; = null

.field private static final k:Ljava/lang/String; = "TDpref_config"

.field private static final l:Ljava/lang/String; = "TDpref_last_request_time"

.field private static final m:Ljava/lang/String; = "TDpref_cloud_cv"

.field private static n:[Ljava/lang/String;

.field private static o:Z

.field private static p:Z

.field private static q:Z

.field private static r:Z

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Z

.field private static z:Z


# instance fields
.field private d:J

.field private e:J

.field private f:Ljava/util/HashMap;

.field private g:Ljava/util/HashSet;

.field private h:Lorg/json/JSONObject;

.field private x:I

.field private y:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 53
    const-string v0, "TDpref_cloudcontrol"

    sput-object v0, Lcom/tendcloud/tenddata/game/cq;->j:Ljava/lang/String;

    .line 58
    const/16 v0, 0x41

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "232"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "206"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "284"

    aput-object v4, v0, v1

    const/4 v1, 0x3

    const-string v4, "280"

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-string v4, "219"

    aput-object v4, v0, v1

    const/4 v1, 0x5

    const-string v4, "230"

    aput-object v4, v0, v1

    const/4 v1, 0x6

    const-string v4, "238"

    aput-object v4, v0, v1

    const/4 v1, 0x7

    const-string v4, "248"

    aput-object v4, v0, v1

    const/16 v1, 0x8

    const-string v4, "244"

    aput-object v4, v0, v1

    const/16 v1, 0x9

    const-string v4, "208"

    aput-object v4, v0, v1

    const/16 v1, 0xa

    const-string v4, "308"

    aput-object v4, v0, v1

    const/16 v1, 0xb

    const-string v4, "340"

    aput-object v4, v0, v1

    const/16 v1, 0xc

    const-string v4, "543"

    aput-object v4, v0, v1

    const/16 v1, 0xd

    const-string v4, "546"

    aput-object v4, v0, v1

    const/16 v1, 0xe

    const-string v4, "547"

    aput-object v4, v0, v1

    const/16 v1, 0xf

    const-string v4, "647"

    aput-object v4, v0, v1

    const/16 v1, 0x10

    const-string v4, "742"

    aput-object v4, v0, v1

    const/16 v1, 0x11

    const-string v4, "262"

    aput-object v4, v0, v1

    const/16 v1, 0x12

    const-string v4, "202"

    aput-object v4, v0, v1

    const/16 v1, 0x13

    const-string v4, "216"

    aput-object v4, v0, v1

    const/16 v1, 0x14

    const-string v4, "272"

    aput-object v4, v0, v1

    const/16 v1, 0x15

    const-string v4, "222"

    aput-object v4, v0, v1

    const/16 v1, 0x16

    const-string v4, "247"

    aput-object v4, v0, v1

    const/16 v1, 0x17

    const-string v4, "246"

    aput-object v4, v0, v1

    const/16 v1, 0x18

    const-string v4, "270"

    aput-object v4, v0, v1

    const/16 v1, 0x19

    const-string v4, "278"

    aput-object v4, v0, v1

    const/16 v1, 0x1a

    const-string v4, "204"

    aput-object v4, v0, v1

    const/16 v1, 0x1b

    const-string v4, "363"

    aput-object v4, v0, v1

    const/16 v1, 0x1c

    const-string v4, "362"

    aput-object v4, v0, v1

    const/16 v1, 0x1d

    const-string v4, "260"

    aput-object v4, v0, v1

    const/16 v1, 0x1e

    const-string v4, "268"

    aput-object v4, v0, v1

    const/16 v1, 0x1f

    const-string v4, "226"

    aput-object v4, v0, v1

    const/16 v1, 0x20

    const-string v4, "231"

    aput-object v4, v0, v1

    const/16 v1, 0x21

    const-string v4, "293"

    aput-object v4, v0, v1

    const/16 v1, 0x22

    const-string v4, "214"

    aput-object v4, v0, v1

    const/16 v1, 0x23

    const-string v4, "240"

    aput-object v4, v0, v1

    const/16 v1, 0x24

    const-string v4, "234"

    aput-object v4, v0, v1

    const/16 v1, 0x25

    const-string v4, "235"

    aput-object v4, v0, v1

    const/16 v1, 0x26

    const-string v4, "266"

    aput-object v4, v0, v1

    const/16 v1, 0x27

    const-string v4, "346"

    aput-object v4, v0, v1

    const/16 v1, 0x28

    const-string v4, "348"

    aput-object v4, v0, v1

    const/16 v1, 0x29

    const-string v4, "350"

    aput-object v4, v0, v1

    const/16 v1, 0x2a

    const-string v4, "354"

    aput-object v4, v0, v1

    const/16 v1, 0x2b

    const-string v4, "376"

    aput-object v4, v0, v1

    const/16 v1, 0x2c

    const-string v4, "750"

    aput-object v4, v0, v1

    const/16 v1, 0x2d

    const-string v4, "454"

    aput-object v4, v0, v1

    const/16 v1, 0x2e

    const-string v4, "455"

    aput-object v4, v0, v1

    const/16 v1, 0x2f

    const-string v4, "466"

    aput-object v4, v0, v1

    const/16 v1, 0x30

    const-string v4, "525"

    aput-object v4, v0, v1

    const/16 v1, 0x31

    const-string v4, "310"

    aput-object v4, v0, v1

    const/16 v1, 0x32

    const-string v4, "311"

    aput-object v4, v0, v1

    const/16 v1, 0x33

    const-string v4, "312"

    aput-object v4, v0, v1

    const/16 v1, 0x34

    const-string v4, "313"

    aput-object v4, v0, v1

    const/16 v1, 0x35

    const-string v4, "314"

    aput-object v4, v0, v1

    const/16 v1, 0x36

    const-string v4, "315"

    aput-object v4, v0, v1

    const/16 v1, 0x37

    const-string v4, "316"

    aput-object v4, v0, v1

    const/16 v1, 0x38

    const-string v4, "330"

    aput-object v4, v0, v1

    const/16 v1, 0x39

    const-string v4, "332"

    aput-object v4, v0, v1

    const/16 v1, 0x3a

    const-string v4, "534"

    aput-object v4, v0, v1

    const/16 v1, 0x3b

    const-string v4, "535"

    aput-object v4, v0, v1

    const/16 v1, 0x3c

    const-string v4, "544"

    aput-object v4, v0, v1

    const/16 v1, 0x3d

    const-string v4, "302"

    aput-object v4, v0, v1

    const/16 v1, 0x3e

    const-string v4, "505"

    aput-object v4, v0, v1

    const/16 v1, 0x3f

    const-string v4, "530"

    aput-object v4, v0, v1

    const/16 v1, 0x40

    const-string v4, "548"

    aput-object v4, v0, v1

    sput-object v0, Lcom/tendcloud/tenddata/game/cq;->n:[Ljava/lang/String;

    .line 64
    sput-boolean v3, Lcom/tendcloud/tenddata/game/cq;->p:Z

    .line 65
    sput-boolean v2, Lcom/tendcloud/tenddata/game/cq;->q:Z

    .line 66
    sput-boolean v3, Lcom/tendcloud/tenddata/game/cq;->r:Z

    .line 73
    sput-boolean v2, Lcom/tendcloud/tenddata/game/cq;->w:Z

    .line 79
    sput-boolean v3, Lcom/tendcloud/tenddata/game/cq;->z:Z

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/cq;->A:Lcom/tendcloud/tenddata/game/cq;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x2d0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/cq;->d:J

    .line 46
    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/cq;->e:J

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->f:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->g:Ljava/util/HashSet;

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->h:Lorg/json/JSONObject;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->y:Landroid/os/Handler;

    .line 96
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ModuleCloudControl"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 98
    new-instance v1, Lcom/tendcloud/tenddata/game/cr;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/tendcloud/tenddata/game/cr;-><init>(Lcom/tendcloud/tenddata/game/cq;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/cq;->y:Landroid/os/Handler;

    .line 131
    return-void
.end method

.method private a(Lcom/tendcloud/tenddata/game/a;)I
    .registers 2

    .line 531
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p1

    .line 533
    packed-switch p1, :pswitch_data_10

    .line 547
    :pswitch_7
    const/4 p1, -0x1

    goto :goto_f

    .line 544
    :pswitch_9
    const/4 p1, 0x3

    .line 545
    goto :goto_f

    .line 540
    :pswitch_b
    const/4 p1, 0x2

    .line 541
    goto :goto_f

    .line 536
    :pswitch_d
    const/4 p1, 0x1

    .line 537
    nop

    .line 550
    :goto_f
    return p1

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_d
        :pswitch_b
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public static a()Lcom/tendcloud/tenddata/game/cq;
    .registers 2

    .line 83
    sget-object v0, Lcom/tendcloud/tenddata/game/cq;->A:Lcom/tendcloud/tenddata/game/cq;

    if-nez v0, :cond_17

    .line 84
    const-class v0, Lcom/tendcloud/tenddata/game/cq;

    monitor-enter v0

    .line 85
    :try_start_7
    sget-object v1, Lcom/tendcloud/tenddata/game/cq;->A:Lcom/tendcloud/tenddata/game/cq;

    if-nez v1, :cond_12

    .line 86
    new-instance v1, Lcom/tendcloud/tenddata/game/cq;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/cq;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/cq;->A:Lcom/tendcloud/tenddata/game/cq;

    .line 88
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 90
    :cond_17
    :goto_17
    sget-object v0, Lcom/tendcloud/tenddata/game/cq;->A:Lcom/tendcloud/tenddata/game/cq;

    return-object v0
.end method

.method private a(Ljava/io/RandomAccessFile;)Ljava/lang/String;
    .registers 5

    .line 565
    nop

    .line 567
    :try_start_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    long-to-int v1, v0

    .line 568
    new-array v0, v1, [B

    .line 569
    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 570
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 571
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_16

    .line 574
    goto :goto_18

    .line 572
    :catchall_16
    move-exception p1

    const/4 p1, 0x0

    .line 575
    :goto_18
    return-object p1
.end method

.method private a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 8

    .line 264
    const-string v0, "r"

    const-string v1, "TDpref_config"

    const-string v2, "cv"

    .line 266
    :try_start_6
    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sget-object v4, Lcom/tendcloud/tenddata/game/cq;->j:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v3, v4, v1, v5}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 268
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v3, v5, :cond_45

    .line 271
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 272
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 273
    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    :cond_38
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sget-object v0, Lcom/tendcloud/tenddata/game/cq;->j:Ljava/lang/String;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    move-object p1, v4

    goto :goto_64

    .line 282
    :cond_45
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sget-object v3, Lcom/tendcloud/tenddata/game/cq;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v1, v4}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 284
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sget-object v1, Lcom/tendcloud/tenddata/game/cq;->j:Ljava/lang/String;

    const-string v3, "TDpref_cloud_cv"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v0, v1, v3, v4, v5}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 286
    :cond_63
    nop

    .line 289
    :goto_64
    goto :goto_71

    .line 290
    :cond_65
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sget-object v2, Lcom/tendcloud/tenddata/game/cq;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_6 .. :try_end_70} :catchall_72

    .line 291
    nop

    .line 296
    :goto_71
    goto :goto_77

    .line 293
    :catchall_72
    move-exception p1

    .line 295
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 297
    :goto_77
    return-object p1
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/cq;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/cq;->b(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    return-void
.end method

.method private a(Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    .registers 5

    .line 555
    const-wide/16 v0, 0x0

    :try_start_2
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 556
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 557
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 558
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_10

    .line 561
    goto :goto_11

    .line 559
    :catchall_10
    move-exception p1

    .line 562
    :goto_11
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 8

    .line 383
    :try_start_0
    const-string v0, "clt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 384
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 385
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 386
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 388
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/cq;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 389
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/cq;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_40

    .line 391
    :cond_32
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/cq;->f:Ljava/util/HashMap;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_0 .. :try_end_40} :catchall_44

    .line 385
    :cond_40
    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 398
    :cond_43
    goto :goto_48

    .line 395
    :catchall_44
    move-exception p1

    .line 397
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 399
    :goto_48
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 250
    if-nez p3, :cond_3

    .line 251
    return-void

    .line 253
    :cond_3
    :try_start_3
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_11

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    .line 255
    return-void

    .line 257
    :cond_11
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    .line 260
    goto :goto_16

    .line 258
    :catchall_15
    move-exception p1

    .line 261
    :goto_16
    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1

    .line 39
    sput-boolean p0, Lcom/tendcloud/tenddata/game/cq;->z:Z

    return p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 15

    .line 195
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 196
    const-string v1, "bl"

    iget v2, p0, Lcom/tendcloud/tenddata/game/cq;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    const-string v1, "pl"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/game/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    const-string v1, "sv"

    const-string v3, "4.0.27"

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/game/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    const-string v1, "smcc"

    sget-object v3, Lcom/tendcloud/tenddata/game/cq;->s:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/game/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    const-string v1, "smnc"

    sget-object v3, Lcom/tendcloud/tenddata/game/cq;->t:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/game/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    const-string v1, "bmcc"

    sget-object v3, Lcom/tendcloud/tenddata/game/cq;->u:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/game/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    const-string v1, "bmnc"

    sget-object v3, Lcom/tendcloud/tenddata/game/cq;->v:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/game/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    const-string v1, "dt"

    const-string v3, "Mobile"

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/game/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    const-string v1, "ov"

    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/game/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    const-string v1, "av"

    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/game/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    const-string v1, "px"

    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/aw;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/game/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    const-string v1, "nt"

    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bb;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/game/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    const-string v1, "op"

    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bb;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/game/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    const-string v1, "ch"

    invoke-direct {p0, v0, v1, p2}, Lcom/tendcloud/tenddata/game/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    const-string v1, "cv"

    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sget-object v4, Lcom/tendcloud/tenddata/game/cq;->j:Ljava/lang/String;

    const-string v5, "TDpref_cloud_cv"

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/game/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    const-string v1, "TDID"

    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/au;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/tendcloud/tenddata/game/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    const-string v1, "AppID"

    invoke-direct {p0, v0, v1, p1}, Lcom/tendcloud/tenddata/game/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v4, "cloud.xdrig.com"

    sget-object v5, Lcom/tendcloud/tenddata/game/aa;->p:Ljava/lang/String;

    sget-object v6, Lcom/tendcloud/tenddata/game/aa;->t:Ljava/lang/String;

    const-string v7, ""

    .line 221
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const-string v9, "gzip"

    const-string v10, "application/json"

    .line 218
    invoke-static/range {v3 .. v10}, Lcom/tendcloud/tenddata/game/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;

    move-result-object v0

    .line 222
    sget-object v1, Lcom/tendcloud/tenddata/game/cq;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/az;->getFileLock(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/at$e;->getStatusCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_e6

    .line 224
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/at$e;->getResponseMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/cq;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/cq;->b(Lorg/json/JSONObject;)V

    .line 227
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sget-object p2, Lcom/tendcloud/tenddata/game/cq;->j:Ljava/lang/String;

    const-string p3, "TDpref_last_request_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 228
    goto :goto_110

    .line 230
    :cond_e6
    sget-boolean v0, Lcom/tendcloud/tenddata/game/cq;->z:Z

    if-eqz v0, :cond_110

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 232
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string p1, "channelId"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string p1, "Features"

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/cq;->y:Landroid/os/Handler;

    invoke-virtual {p1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 236
    iget-object p2, p0, Lcom/tendcloud/tenddata/game/cq;->y:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_10b
    .catchall {:try_start_0 .. :try_end_10b} :catchall_10c

    goto :goto_110

    .line 239
    :catchall_10c
    move-exception p1

    .line 241
    :try_start_10d
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_110
    .catchall {:try_start_10d .. :try_end_110} :catchall_117

    .line 243
    :cond_110
    :goto_110
    sget-object p1, Lcom/tendcloud/tenddata/game/cq;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    .line 244
    nop

    .line 245
    return-void

    .line 243
    :catchall_117
    move-exception p1

    sget-object p2, Lcom/tendcloud/tenddata/game/cq;->i:Ljava/lang/String;

    invoke-static {p2}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 10

    .line 341
    const-string v0, "r"

    const-string v1, "c"

    const-string v2, "i"

    if-nez p1, :cond_9

    .line 342
    return-void

    .line 344
    :cond_9
    :try_start_9
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 346
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/cq;->d:J

    .line 349
    :cond_16
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/tendcloud/tenddata/game/cq;->g:Ljava/util/HashSet;

    .line 350
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 351
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 352
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 353
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_33
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_66

    .line 354
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 355
    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 356
    const/4 v5, 0x0

    :goto_44
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_63

    .line 357
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    if-ne v4, v6, :cond_57

    .line 359
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lcom/tendcloud/tenddata/game/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 361
    :cond_57
    iget-object v6, p0, Lcom/tendcloud/tenddata/game/cq;->g:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 356
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    .line 353
    :cond_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 365
    :cond_66
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_73

    .line 366
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cq;->f:Ljava/util/HashMap;

    .line 369
    :cond_73
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cq;->f()V

    .line 370
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cq;->h()V
    :try_end_79
    .catchall {:try_start_9 .. :try_end_79} :catchall_7a

    .line 378
    :cond_79
    goto :goto_7e

    .line 375
    :catchall_7a
    move-exception p1

    .line 377
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 379
    :goto_7e
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 6

    .line 584
    :try_start_0
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 585
    return v1

    .line 587
    :cond_8
    const/4 v0, 0x0

    :goto_9
    sget-object v2, Lcom/tendcloud/tenddata/game/cq;->n:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_1a

    .line 588
    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_1b

    if-eqz v2, :cond_17

    .line 589
    return v1

    .line 587
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 595
    :cond_1a
    goto :goto_1f

    .line 592
    :catchall_1b
    move-exception p1

    .line 594
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 596
    :goto_1f
    const/4 p1, 0x1

    return p1
.end method

.method private d()V
    .registers 3

    .line 176
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tendcloud/tenddata/game/cq;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tendcloud/tenddata/game/cq;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/cq;->j:Ljava/lang/String;

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tendcloud/tenddata/game/az$b;->Cloud_Control_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tendcloud/tenddata/game/cq;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/cq;->i:Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_33

    .line 181
    goto :goto_37

    .line 178
    :catchall_33
    move-exception v0

    .line 180
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 182
    :goto_37
    return-void
.end method

.method private e()Z
    .registers 8

    .line 185
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sget-object v1, Lcom/tendcloud/tenddata/game/cq;->j:Ljava/lang/String;

    const-string v2, "TDpref_last_request_time"

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 187
    cmp-long v2, v0, v3

    if-eqz v2, :cond_2c

    sub-long/2addr v5, v0

    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/cq;->d:J

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    cmp-long v2, v5, v0

    if-gtz v2, :cond_2c

    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/cq;->e:J

    cmp-long v2, v5, v0

    if-lez v2, :cond_2a

    goto :goto_2c

    .line 190
    :cond_2a
    const/4 v0, 0x0

    return v0

    .line 188
    :cond_2c
    :goto_2c
    const/4 v0, 0x1

    return v0
.end method

.method private f()V
    .registers 4

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->h:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_28

    .line 303
    sget-object v0, Lcom/tendcloud/tenddata/game/cq;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/az;->b(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/cq;->a(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v0

    .line 304
    const/4 v1, 0x0

    .line 305
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 306
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 308
    :cond_1e
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_28

    .line 309
    iput-object v1, p0, Lcom/tendcloud/tenddata/game/cq;->h:Lorg/json/JSONObject;
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    .line 317
    :cond_28
    goto :goto_2d

    .line 314
    :catchall_29
    move-exception v0

    .line 316
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 318
    :goto_2d
    return-void
.end method

.method private g()V
    .registers 5

    .line 322
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/cq;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/az;->getFileLock(Ljava/lang/String;)V

    .line 323
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sget-object v1, Lcom/tendcloud/tenddata/game/cq;->j:Ljava/lang/String;

    const-string v2, "TDpref_config"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    const/4 v1, 0x0

    .line 326
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 327
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 329
    :cond_1d
    invoke-direct {p0, v1}, Lcom/tendcloud/tenddata/game/cq;->b(Lorg/json/JSONObject;)V
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    goto :goto_25

    .line 330
    :catchall_21
    move-exception v0

    .line 332
    :try_start_22
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2c

    .line 334
    :goto_25
    sget-object v0, Lcom/tendcloud/tenddata/game/cq;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    .line 335
    nop

    .line 336
    return-void

    .line 334
    :catchall_2c
    move-exception v0

    sget-object v1, Lcom/tendcloud/tenddata/game/cq;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    throw v0
.end method

.method private h()V
    .registers 7

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->h:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 509
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 510
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cq;->h:Lorg/json/JSONObject;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 511
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 512
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 513
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 514
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 515
    iget-object v5, p0, Lcom/tendcloud/tenddata/game/cq;->g:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 516
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_38
    goto :goto_21

    .line 520
    :cond_39
    const/4 v2, 0x0

    :goto_3a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4c

    .line 521
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_0 .. :try_end_49} :catchall_4e

    .line 520
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 523
    :cond_4c
    goto :goto_6

    .line 527
    :cond_4d
    goto :goto_52

    .line 524
    :catchall_4e
    move-exception v0

    .line 526
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 528
    :goto_52
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 3

    .line 403
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/tendcloud/tenddata/game/cq;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .registers 21

    .line 412
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 413
    sget-boolean v5, Lcom/tendcloud/tenddata/game/cq;->w:Z

    if-nez v5, :cond_12

    .line 414
    return-object v4

    .line 418
    :cond_12
    :try_start_12
    sget-boolean v5, Lcom/tendcloud/tenddata/game/ab;->q:Z

    if-eqz v5, :cond_17

    .line 419
    return-object v4

    .line 425
    :cond_17
    iget-object v5, v1, Lcom/tendcloud/tenddata/game/cq;->f:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_26

    .line 428
    sget-boolean v0, Lcom/tendcloud/tenddata/game/cq;->o:Z

    if-eqz v0, :cond_25

    .line 430
    return-object v4

    .line 433
    :cond_25
    return-object v6

    .line 438
    :cond_26
    const/4 v5, 0x1

    if-eqz v2, :cond_3c

    if-eqz v3, :cond_3c

    .line 439
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 441
    return-object v4

    .line 443
    :cond_32
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 445
    return-object v6

    .line 447
    :cond_39
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 451
    :cond_3c
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/cq;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 452
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 454
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 457
    invoke-direct/range {p0 .. p0}, Lcom/tendcloud/tenddata/game/cq;->f()V

    .line 459
    :cond_50
    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_db

    .line 460
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 461
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 463
    const-string v10, "st"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 464
    const-string v12, "et"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 465
    const-string v14, "cn"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 470
    cmp-long v16, v14, v10

    if-ltz v16, :cond_50

    cmp-long v10, v14, v12

    if-gtz v10, :cond_50

    if-gtz v9, :cond_84

    .line 471
    goto :goto_50

    .line 474
    :cond_84
    iget-object v10, v1, Lcom/tendcloud/tenddata/game/cq;->h:Lorg/json/JSONObject;

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c4

    .line 475
    iget-object v10, v1, Lcom/tendcloud/tenddata/game/cq;->h:Lorg/json/JSONObject;

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 476
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b3

    .line 477
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    if-ge v11, v9, :cond_c3

    .line 478
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 479
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v10, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 480
    iget-object v8, v1, Lcom/tendcloud/tenddata/game/cq;->h:Lorg/json/JSONObject;

    invoke-virtual {v8, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_c3

    .line 483
    :cond_b3
    iget-object v9, v1, Lcom/tendcloud/tenddata/game/cq;->h:Lorg/json/JSONObject;

    invoke-virtual {v10, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 484
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 486
    :cond_c3
    :goto_c3
    goto :goto_d9

    .line 488
    :cond_c4
    iget-object v9, v1, Lcom/tendcloud/tenddata/game/cq;->h:Lorg/json/JSONObject;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v10, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 495
    :goto_d9
    goto/16 :goto_50

    .line 496
    :cond_db
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_df
    .catchall {:try_start_12 .. :try_end_df} :catchall_e3

    if-nez v0, :cond_e2

    .line 497
    return-object v6

    .line 502
    :cond_e2
    goto :goto_e7

    .line 499
    :catchall_e3
    move-exception v0

    .line 501
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 503
    :goto_e7
    return-object v4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 8

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 137
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string p1, "channelId"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string p1, "Features"

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-direct {p0, p3}, Lcom/tendcloud/tenddata/game/cq;->a(Lcom/tendcloud/tenddata/game/a;)I

    move-result p1

    iput p1, p0, Lcom/tendcloud/tenddata/game/cq;->x:I

    .line 145
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cq;->d()V

    .line 149
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bb;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 150
    sget-object p2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {p2}, Lcom/tendcloud/tenddata/game/bb;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 151
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result p3

    const-string v1, ""

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz p3, :cond_35

    move-object p3, v1

    goto :goto_39

    :cond_35
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    :goto_39
    sput-object p3, Lcom/tendcloud/tenddata/game/cq;->s:Ljava/lang/String;

    .line 152
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_43

    move-object p1, v1

    goto :goto_47

    :cond_43
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_47
    sput-object p1, Lcom/tendcloud/tenddata/game/cq;->t:Ljava/lang/String;

    .line 153
    invoke-static {p2}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_51

    move-object p1, v1

    goto :goto_55

    :cond_51
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_55
    sput-object p1, Lcom/tendcloud/tenddata/game/cq;->u:Ljava/lang/String;

    .line 154
    invoke-static {p2}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5e

    goto :goto_62

    :cond_5e
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_62
    sput-object v1, Lcom/tendcloud/tenddata/game/cq;->v:Ljava/lang/String;

    .line 155
    sget-object p1, Lcom/tendcloud/tenddata/game/cq;->s:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/cq;->b(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_78

    sget-object p1, Lcom/tendcloud/tenddata/game/cq;->u:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/cq;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_76

    goto :goto_78

    :cond_76
    const/4 p1, 0x0

    goto :goto_79

    :cond_78
    :goto_78
    const/4 p1, 0x1

    :goto_79
    sput-boolean p1, Lcom/tendcloud/tenddata/game/cq;->o:Z

    .line 158
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cq;->g()V

    .line 161
    :try_start_7e
    sget-boolean p1, Lcom/tendcloud/tenddata/game/ab;->q:Z

    if-nez p1, :cond_88

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cq;->e()Z

    move-result p1

    if-eqz p1, :cond_93

    .line 162
    :cond_88
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/cq;->y:Landroid/os/Handler;

    invoke-virtual {p1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 163
    iget-object p3, p0, Lcom/tendcloud/tenddata/game/cq;->y:Landroid/os/Handler;

    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_93
    .catchall {:try_start_7e .. :try_end_93} :catchall_94

    .line 169
    :cond_93
    goto :goto_95

    .line 165
    :catchall_94
    move-exception p1

    .line 171
    :goto_95
    sput-boolean p2, Lcom/tendcloud/tenddata/game/cq;->w:Z

    .line 172
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 579
    sget-object v0, Lcom/tendcloud/tenddata/game/cq;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .registers 3

    .line 601
    sget-object v0, Lcom/tendcloud/tenddata/game/cq;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/az;->b(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cq;->h:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cq;->a(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    .line 602
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->h:Lorg/json/JSONObject;

    .line 604
    return-void
.end method
