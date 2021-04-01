.class public Lcom/tencent/turingfd/sdk/ams/ad/boolean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/turingfd/sdk/ams/ad/boolean$do;
    }
.end annotation


# static fields
.field public static Zb:Lcom/tencent/turingfd/sdk/ams/ad/boolean;

.field public static _b:J

.field public static ac:[I


# instance fields
.field public bc:Lcom/tencent/turingfd/sdk/ams/ad/case;

.field public cc:Landroid/os/Handler;

.field public dc:Z

.field public ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

.field public final fc:Ljava/lang/Object;

.field public final gc:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/tencent/turingfd/sdk/ams/ad/static;",
            ">;"
        }
    .end annotation
.end field

.field public final hc:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public ic:Lcom/tencent/turingfd/sdk/ams/ad/static;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;

    invoke-direct {v0}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->Zb:Lcom/tencent/turingfd/sdk/ams/ad/boolean;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->_b:J

    const/16 v0, 0xc

    .line 3
    new-array v0, v0, [I

    aput v4, v0, v4

    const/4 v1, 0x1

    const/16 v2, 0xf

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x5a

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0xf0

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x168

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x258

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x4b0

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x960

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xc80

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x12c0

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x1c20

    aput v2, v0, v1

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ac:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->dc:Z

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->fc:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->gc:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->hc:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/turingfd/sdk/ams/ad/boolean;)Lcom/tencent/turingfd/sdk/ams/ad/case;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->bc:Lcom/tencent/turingfd/sdk/ams/ad/case;

    return-object v0
.end method

.method public static synthetic a(Lcom/tencent/turingfd/sdk/ams/ad/boolean;Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/static;
    .registers 3

    .prologue
    .line 2
    invoke-virtual {p0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->m(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/tencent/turingfd/sdk/ams/ad/boolean;Landroid/content/Context;ZZZ)Lcom/tencent/turingfd/sdk/ams/ad/static;
    .registers 6

    .prologue
    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->a(Landroid/content/Context;ZZZ)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/tencent/turingfd/sdk/ams/ad/boolean;Landroid/content/Context;Z)V
    .registers 3

    .prologue
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->b(Landroid/content/Context;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/turingfd/sdk/ams/ad/boolean;Lcom/tencent/turingfd/sdk/ams/ad/static;Z)V
    .registers 3

    .prologue
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->a(Lcom/tencent/turingfd/sdk/ams/ad/static;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/tencent/turingfd/sdk/ams/ad/boolean;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->hc:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/turingfd/sdk/ams/ad/static;)I
    .registers 10

    .prologue
    const/4 v0, 0x3

    .line 41
    iget v1, p1, Lcom/tencent/turingfd/sdk/ams/ad/static;->Sb:I

    if-nez v1, :cond_d

    .line 42
    iget-object v1, p1, Lcom/tencent/turingfd/sdk/ams/ad/static;->Qb:Ljava/lang/String;

    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 49
    :cond_d
    const/4 v0, 0x2

    :cond_e
    :goto_e
    return v0

    .line 44
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 45
    iget-wide v4, p1, Lcom/tencent/turingfd/sdk/ams/ad/static;->Rb:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_e

    .line 46
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/for;->get()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/turingfd/sdk/ams/ad/package;->r(Landroid/content/Context;)J

    move-result-wide v4

    .line 47
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/for;->get()Landroid/content/Context;

    move-result-object v6

    const-string v7, "108"

    .line 48
    invoke-virtual {v1, v6, v7}, Lcom/tencent/turingfd/sdk/ams/ad/package;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 49
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_e

    const/4 v0, 0x1

    goto :goto_e
.end method

.method public final a(Landroid/content/Context;ZZZ)Lcom/tencent/turingfd/sdk/ams/ad/static;
    .registers 24

    .prologue
    const-string v2, "connectivity"

    .line 65
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_a} :catch_26

    if-nez v2, :cond_16

    const/4 v2, 0x0

    .line 70
    :cond_d
    :goto_d
    if-nez v2, :cond_3f

    const/16 v2, -0x271c

    .line 71
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/static;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v2

    .line 426
    :goto_15
    return-object v2

    .line 66
    :cond_16
    :try_start_16
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 67
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1f} :catch_26

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    goto :goto_d

    :cond_24
    const/4 v2, 0x0

    goto :goto_d

    :catch_26
    move-exception v2

    .line 68
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/continue;->getInstance()Lcom/tencent/turingfd/sdk/ams/ad/continue;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/turingfd/sdk/ams/ad/continue;->b(Ljava/lang/Throwable;)V

    .line 69
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_d

    const-string v4, "ACCESS_NETWORK_STATE"

    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v2, 0x1

    goto :goto_d

    .line 72
    :cond_3f
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/for;->get()Landroid/content/Context;

    move-result-object v2

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 74
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    invoke-virtual {v3, v2}, Lcom/tencent/turingfd/sdk/ams/ad/package;->v(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    sub-long v2, v4, v2

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0xe10

    cmp-long v2, v2, v4

    if-gtz v2, :cond_6e

    const/4 v2, 0x0

    :goto_62
    if-nez v2, :cond_70

    .line 91
    :cond_64
    const/4 v2, 0x0

    :goto_65
    if-nez v2, :cond_10d

    const/16 v2, -0x271b

    .line 92
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/static;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v2

    goto :goto_15

    .line 75
    :cond_6e
    const/4 v2, 0x1

    goto :goto_62

    .line 76
    :cond_70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/for;->get()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;I)Lcom/tencent/turingfd/sdk/ams/ad/import;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lcom/tencent/turingfd/sdk/ams/ad/import;->size()I

    move-result v2

    if-nez v2, :cond_85

    .line 91
    :cond_83
    :goto_83
    const/4 v2, 0x1

    goto :goto_65

    .line 78
    :cond_85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/for;->get()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tencent/turingfd/sdk/ams/ad/package;->p(Landroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gtz v2, :cond_9d

    .line 86
    :cond_97
    const/4 v2, 0x1

    :goto_98
    if-nez v2, :cond_e7

    if-eqz p3, :cond_64

    goto :goto_83

    .line 79
    :cond_9d
    iget-object v2, v3, Lcom/tencent/turingfd/sdk/ams/ad/import;->Lb:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    .line 80
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 82
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ac:[I

    array-length v8, v2

    int-to-long v8, v8

    cmp-long v8, v4, v8

    if-gez v8, :cond_e3

    long-to-int v2, v4

    :goto_bc
    const/4 v4, 0x1

    if-lt v2, v4, :cond_97

    .line 83
    sget-object v4, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ac:[I

    add-int/lit8 v5, v2, -0x1

    aget v5, v4, v5

    aget v2, v4, v2

    if-ge v5, v2, :cond_c02

    .line 84
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    sub-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    .line 85
    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v5

    .line 86
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, v2

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v2, v6, v4

    if-gtz v2, :cond_97

    const/4 v2, 0x0

    goto :goto_98

    .line 82
    :cond_e3
    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_bc

    .line 87
    :cond_e7
    iget-object v2, v3, Lcom/tencent/turingfd/sdk/ams/ad/import;->Lb:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    .line 88
    check-cast v2, Ljava/lang/Long;

    .line 89
    invoke-virtual {v3}, Lcom/tencent/turingfd/sdk/ams/ad/import;->size()I

    move-result v4

    .line 90
    iget v3, v3, Lcom/tencent/turingfd/sdk/ams/ad/import;->limit:I

    if-lt v4, v3, :cond_83

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-wide v4, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->_b:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_64

    goto/16 :goto_83

    .line 93
    :cond_10d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/for;->get()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;I)Lcom/tencent/turingfd/sdk/ams/ad/import;

    move-result-object v2

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/turingfd/sdk/ams/ad/import;->offer(Ljava/lang/Object;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/for;->get()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;Lcom/tencent/turingfd/sdk/ams/ad/import;)V

    .line 96
    invoke-static/range {p1 .. p1}, Lcom/tencent/turingfd/sdk/ams/ad/for;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_143

    .line 98
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/package;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_143
    const/4 v7, 0x1

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 100
    invoke-static/range {p1 .. p1}, Lcom/tencent/turingfd/sdk/ams/ad/for;->d(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_170

    const/4 v2, 0x1

    :goto_151
    if-eqz v2, :cond_172

    const/16 v2, -0x2715

    .line 101
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/default;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/default;

    move-result-object v2

    .line 371
    :goto_159
    invoke-virtual {v2}, Lcom/tencent/turingfd/sdk/ams/ad/default;->getErrorCode()I

    move-result v3

    if-eqz v3, :cond_a71

    .line 372
    invoke-virtual {v2}, Lcom/tencent/turingfd/sdk/ams/ad/default;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/static;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v2

    .line 426
    :goto_167
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->a(Landroid/content/Context;Lcom/tencent/turingfd/sdk/ams/ad/static;)V

    goto/16 :goto_15

    .line 100
    :cond_170
    const/4 v2, 0x0

    goto :goto_151

    .line 102
    :cond_172
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v3, "100"

    .line 103
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/protected;->sc:Lcom/tencent/turingfd/sdk/ams/ad/transient;

    if-eqz v2, :cond_1f9

    .line 104
    iget v4, v2, Lcom/tencent/turingfd/sdk/ams/ad/transient;->Sb:I

    if-eqz v4, :cond_1f9

    .line 115
    :goto_181
    iget-object v2, v2, Lcom/tencent/turingfd/sdk/ams/ad/transient;->uc:Ljava/lang/String;

    .line 116
    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->bc:Lcom/tencent/turingfd/sdk/ams/ad/case;

    invoke-virtual {v2}, Lcom/tencent/turingfd/sdk/ams/ad/case;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "101"

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static/range {p1 .. p1}, Lcom/tencent/turingfd/sdk/ams/ad/final;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "205"

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->w(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v2

    .line 120
    iget-object v2, v2, Lcom/tencent/turingfd/sdk/ams/ad/static;->Qb:Ljava/lang/String;

    const-string v3, "207"

    .line 121
    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->bc:Lcom/tencent/turingfd/sdk/ams/ad/case;

    invoke-virtual {v2}, Lcom/tencent/turingfd/sdk/ams/ad/case;->getUserId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "209"

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v7}, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->a(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v2

    const-string v3, "210"

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "250"

    .line 124
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 125
    :try_start_1ce
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/long;->ca:[I

    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v2

    .line 126
    new-instance v5, Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_1dd
    .catch Ljava/io/IOException; {:try_start_1ce .. :try_end_1dd} :catch_248

    const-string v2, "\\n"

    .line 127
    :try_start_1df
    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 129
    array-length v11, v5

    const/4 v2, 0x0

    :goto_1e9
    if-ge v2, v11, :cond_249

    aget-object v12, v5, v2

    .line 130
    invoke-static {v12, v6}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1f6

    .line 131
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1f6
    .catch Ljava/io/IOException; {:try_start_1df .. :try_end_1f6} :catch_248

    :cond_1f6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e9

    .line 105
    :cond_1f9
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/protected;->rc:Ljava/util/Map;

    sget-object v4, Lcom/tencent/turingfd/sdk/ams/ad/protected;->tc:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20b

    const/16 v2, -0xa

    .line 106
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/transient;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/transient;

    move-result-object v2

    goto/16 :goto_181

    .line 107
    :cond_20b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "main"

    .line 108
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_223

    const/16 v2, -0xb

    .line 109
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/transient;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/transient;

    move-result-object v2

    goto/16 :goto_181

    .line 110
    :cond_223
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/protected;->rc:Ljava/util/Map;

    sget-object v4, Lcom/tencent/turingfd/sdk/ams/ad/protected;->tc:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/turingfd/sdk/ams/ad/protected$do;

    if-eqz v2, :cond_244

    .line 111
    iget v4, v2, Lcom/tencent/turingfd/sdk/ams/ad/protected$do;->qc:I

    const/4 v5, 0x3

    if-gt v4, v5, :cond_244

    add-int/lit8 v4, v4, 0x1

    .line 112
    iput v4, v2, Lcom/tencent/turingfd/sdk/ams/ad/protected$do;->qc:I

    .line 113
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/protected$do;->a(Lcom/tencent/turingfd/sdk/ams/ad/protected$do;)Lcom/tencent/turingfd/sdk/ams/ad/volatile;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/tencent/turingfd/sdk/ams/ad/volatile;->b(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/transient;

    move-result-object v2

    sput-object v2, Lcom/tencent/turingfd/sdk/ams/ad/protected;->sc:Lcom/tencent/turingfd/sdk/ams/ad/transient;

    .line 114
    :cond_244
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/protected;->sc:Lcom/tencent/turingfd/sdk/ams/ad/transient;

    goto/16 :goto_181

    :catch_248
    move-exception v2

    .line 132
    :cond_249
    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/throw;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 133
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_4c5

    const/16 v5, 0x8

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 137
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v2, 0x0

    .line 138
    :goto_267
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27a

    add-int/lit8 v3, v2, 0x1

    .line 139
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt v3, v5, :cond_4b7

    .line 143
    :cond_27a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_27e
    if-nez v2, :cond_282

    const-string v2, ""

    .line 144
    :cond_282
    invoke-virtual {v10, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "251"

    const/4 v4, 0x0

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-nez v5, :cond_4c9

    .line 149
    :cond_28e
    const/4 v2, 0x0

    :goto_28f
    const/4 v5, 0x0

    .line 150
    invoke-static {v4, v2, v5}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(IZI)I

    move-result v4

    .line 151
    :try_start_294
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/long;->ca:[I

    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v2

    .line 152
    new-instance v5, Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    .line 153
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2a6
    .catch Ljava/lang/Throwable; {:try_start_294 .. :try_end_2a6} :catch_c16

    move-result v2

    if-eqz v2, :cond_4f5

    .line 158
    :cond_2a9
    :goto_2a9
    const/4 v2, 0x0

    :goto_2aa
    const/4 v5, 0x1

    .line 159
    invoke-static {v4, v2, v5}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(IZI)I

    move-result v2

    if-lez v2, :cond_516

    const-string v2, "1"

    .line 160
    :goto_2b3
    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "252"

    .line 161
    :try_start_2b8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_2bb
    .catch Ljava/lang/Throwable; {:try_start_2b8 .. :try_end_2bb} :catch_51a

    move-result-object v2

    const-string v4, "mock_location"

    const/4 v5, 0x0

    :try_start_2bf
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_2c2
    .catch Ljava/lang/Throwable; {:try_start_2bf .. :try_end_2c2} :catch_51a

    move-result v2

    if-eqz v2, :cond_51b

    const/4 v2, 0x1

    :goto_2c6
    if-eqz v2, :cond_51e

    const-string v2, "1"

    .line 162
    :goto_2ca
    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "253"

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 164
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_522

    .line 174
    :cond_2e0
    const/4 v2, 0x0

    .line 175
    :goto_2e1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "254"

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 177
    new-instance v3, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 178
    :try_start_302
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_307
    .catch Ljava/lang/Throwable; {:try_start_302 .. :try_end_307} :catch_58b

    move-result-object v2

    move-object v3, v2

    :goto_309
    if-nez v3, :cond_58f

    .line 180
    :cond_30b
    const/4 v2, 0x0

    .line 181
    :goto_30c
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "255"

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x0

    .line 183
    :try_start_325
    new-instance v5, Landroid/content/IntentFilter;
    :try_end_327
    .catch Ljava/lang/Throwable; {:try_start_325 .. :try_end_327} :catch_5f0

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    :try_start_329
    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_331
    .catch Ljava/lang/Throwable; {:try_start_329 .. :try_end_331} :catch_5f0

    move-result-object v2

    if-nez v2, :cond_5b7

    .line 184
    sget v2, Lcom/tencent/turingfd/sdk/ams/ad/const;->tb:I

    .line 193
    :cond_336
    :goto_336
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "256"

    .line 194
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/float;->Db:Ljava/util/List;

    if-eqz v2, :cond_5f5

    .line 323
    :goto_347
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_34b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/turingfd/sdk/ams/ad/public;

    .line 324
    iget-object v4, v2, Lcom/tencent/turingfd/sdk/ams/ad/public;->Ob:Ljava/lang/String;

    sget-object v5, Lcom/tencent/turingfd/sdk/ams/ad/catch;->ob:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_34b

    .line 325
    iget-object v2, v2, Lcom/tencent/turingfd/sdk/ams/ad/public;->Pb:Ljava/lang/String;

    :goto_363
    if-nez v2, :cond_367

    const-string v2, ""

    .line 326
    :cond_367
    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "257"

    .line 327
    invoke-static/range {p1 .. p1}, Lcom/tencent/turingfd/sdk/ams/ad/short;->i(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 328
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_a14

    const/4 v4, 0x0

    .line 329
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/turingfd/sdk/ams/ad/public;

    iget-object v2, v2, Lcom/tencent/turingfd/sdk/ams/ad/public;->Pb:Ljava/lang/String;

    :goto_37f
    if-nez v2, :cond_383

    const-string v2, ""

    .line 330
    :cond_383
    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->bc:Lcom/tencent/turingfd/sdk/ams/ad/case;

    invoke-virtual {v3}, Lcom/tencent/turingfd/sdk/ams/ad/case;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "403"

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->bc:Lcom/tencent/turingfd/sdk/ams/ad/case;

    invoke-virtual {v2}, Lcom/tencent/turingfd/sdk/ams/ad/case;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "402"

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->bc:Lcom/tencent/turingfd/sdk/ams/ad/case;

    invoke-virtual {v2}, Lcom/tencent/turingfd/sdk/ams/ad/case;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "404"

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->bc:Lcom/tencent/turingfd/sdk/ams/ad/case;

    invoke-virtual {v2}, Lcom/tencent/turingfd/sdk/ams/ad/case;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "401"

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "302"

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "303"

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "305"

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/final;->p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "306"

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "308"

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v2, "connectivity"

    .line 340
    :try_start_412
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 341
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_430

    .line 342
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v5, v6, :cond_a18

    .line 343
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_42e
    .catch Ljava/lang/Throwable; {:try_start_412 .. :try_end_42e} :catch_a3a

    if-eq v5, v6, :cond_a18

    .line 347
    :cond_430
    const/4 v2, -0x1

    .line 350
    :cond_431
    :goto_431
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "309"

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_454

    const-string v2, "1001"

    const-string v3, "1"

    .line 352
    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_454
    const-string v2, "turingfd_protect_105548_38_adMini"

    const/4 v3, 0x0

    .line 353
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "301"

    const/4 v4, 0x0

    .line 354
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "301"

    .line 355
    move-object/from16 v0, p1

    invoke-static {v0, v3, v2}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 356
    :try_start_46b
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a()Landroid/util/SparseArray;

    move-result-object v2

    .line 357
    move-object/from16 v0, p1

    invoke-static {v2, v0, v10, v7}, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDService$aa;->a(Landroid/util/SparseArray;Landroid/content/Context;Ljava/util/Map;I)Landroid/util/SparseArray;
    :try_end_474
    .catch Ljava/lang/Throwable; {:try_start_46b .. :try_end_474} :catch_a61

    move-result-object v2

    const-string v3, "301"

    const/4 v4, 0x0

    .line 358
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4, v5}, Lcom/tencent/turingfd/sdk/ams/ad/package;->b(Landroid/content/Context;J)V

    .line 360
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Landroid/util/SparseArray;)I

    move-result v3

    const/4 v4, 0x1

    .line 361
    const-class v5, [B

    invoke-static {v2, v4, v5}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Landroid/util/SparseArray;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_49d

    const/4 v2, 0x0

    .line 362
    new-array v2, v2, [B

    .line 363
    :cond_49d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    array-length v5, v2

    int-to-long v8, v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/tencent/turingfd/sdk/ams/ad/package;->c(Landroid/content/Context;J)V

    .line 364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->bc:Lcom/tencent/turingfd/sdk/ams/ad/case;

    invoke-virtual {v4}, Lcom/tencent/turingfd/sdk/ams/ad/case;->l()V

    if-eqz v3, :cond_a4d

    .line 365
    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/default;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/default;

    move-result-object v2

    goto/16 :goto_159

    .line 141
    :cond_4b7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c27

    const-string v2, "_"

    .line 142
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    goto/16 :goto_267

    .line 143
    :cond_4c5
    const-string v2, ""

    goto/16 :goto_27e

    .line 145
    :cond_4c9
    const/4 v2, 0x0

    const/16 v6, 0x80

    .line 146
    :try_start_4cc
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;
    :try_end_4cf
    .catch Ljava/lang/Throwable; {:try_start_4cc .. :try_end_4cf} :catch_c0a

    move-result-object v2

    :goto_4d0
    if-eqz v2, :cond_28e

    .line 147
    sget-object v5, Lcom/tencent/turingfd/sdk/ams/ad/long;->aa:[I

    invoke-static {v5}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v5

    .line 148
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4dc
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_4dc

    .line 149
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4dc

    const/4 v2, 0x1

    goto/16 :goto_28f

    .line 153
    :cond_4f5
    const-string v2, "\\n"

    .line 154
    :try_start_4f7
    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2a9

    .line 155
    array-length v2, v5

    if-eqz v2, :cond_2a9

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 157
    array-length v11, v5

    const/4 v2, 0x0

    :goto_506
    if-ge v2, v11, :cond_2a9

    aget-object v12, v5, v2

    .line 158
    invoke-static {v6, v12}, Lcom/tencent/turingfd/sdk/ams/ad/super;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_50d
    .catch Ljava/lang/Throwable; {:try_start_4f7 .. :try_end_50d} :catch_c16

    move-result v12

    if-eqz v12, :cond_513

    const/4 v2, 0x1

    goto/16 :goto_2aa

    :cond_513
    add-int/lit8 v2, v2, 0x1

    goto :goto_506

    .line 159
    :cond_516
    const-string v2, "0"

    goto/16 :goto_2b3

    :catch_51a
    move-exception v2

    .line 161
    :cond_51b
    const/4 v2, 0x0

    goto/16 :goto_2c6

    :cond_51e
    const-string v2, "0"

    goto/16 :goto_2ca

    .line 165
    :cond_522
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/long;->Za:[I

    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v2

    .line 166
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    const/4 v4, 0x0

    .line 167
    :try_start_530
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_53a
    .catch Ljava/lang/Throwable; {:try_start_530 .. :try_end_53a} :catch_56b
    .catchall {:try_start_530 .. :try_end_53a} :catchall_563

    .line 168
    :try_start_53a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_53d
    .catch Ljava/lang/Throwable; {:try_start_53a .. :try_end_53d} :catch_c0d
    .catchall {:try_start_53a .. :try_end_53d} :catchall_c10

    move-result-object v2

    .line 169
    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Ljava/io/Closeable;)V

    .line 170
    :cond_541
    :goto_541
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2e0

    const-string v3, "CONFIGURED"

    .line 171
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_575

    const/4 v2, 0x0

    .line 172
    :try_start_550
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_553
    .catch Ljava/lang/Throwable; {:try_start_550 .. :try_end_553} :catch_c13

    move-result-object v3

    const-string v4, "adb_enabled"

    const/4 v11, 0x0

    :try_start_557
    invoke-static {v3, v4, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_55a
    .catch Ljava/lang/Throwable; {:try_start_557 .. :try_end_55a} :catch_c13

    move-result v2

    if-lez v2, :cond_573

    const/4 v2, 0x1

    :goto_55e
    if-eqz v2, :cond_588

    const/4 v2, 0x1

    goto/16 :goto_2e1

    .line 169
    :catchall_563
    move-exception v2

    move-object v3, v4

    :goto_565
    if-eqz v3, :cond_56a

    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Ljava/io/Closeable;)V

    :cond_56a
    throw v2

    :catch_56b
    move-exception v3

    move-object v3, v4

    :goto_56d
    if-eqz v3, :cond_541

    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Ljava/io/Closeable;)V

    goto :goto_541

    .line 172
    :cond_573
    const/4 v2, 0x0

    goto :goto_55e

    :cond_575
    const-string v3, "DISCONNECTED"

    .line 173
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_580

    const/4 v2, 0x2

    goto/16 :goto_2e1

    :cond_580
    const-string v3, "CONNECTED"

    .line 174
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e0

    :cond_588
    const/4 v2, 0x3

    goto/16 :goto_2e1

    .line 178
    :catch_58b
    move-exception v3

    move-object v3, v2

    goto/16 :goto_309

    :cond_58f
    const-string v2, "status"

    const/4 v6, -0x1

    .line 179
    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v6, 0x2

    if-eq v2, v6, :cond_59c

    const/4 v6, 0x5

    if-ne v2, v6, :cond_5a2

    :cond_59c
    const/4 v2, 0x1

    :goto_59d
    if-nez v2, :cond_5a4

    const/4 v2, 0x1

    goto/16 :goto_30c

    :cond_5a2
    const/4 v2, 0x0

    goto :goto_59d

    :cond_5a4
    const-string v2, "plugged"

    const/4 v6, -0x1

    .line 180
    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5b1

    const/4 v2, 0x3

    goto/16 :goto_30c

    :cond_5b1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_30b

    const/4 v2, 0x2

    goto/16 :goto_30c

    .line 185
    :cond_5b7
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5c7

    .line 186
    sget v2, Lcom/tencent/turingfd/sdk/ams/ad/const;->tb:I

    goto/16 :goto_336

    :cond_5c7
    const-string v5, "level"

    const/4 v6, 0x0

    .line 187
    :try_start_5ca
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_5cd
    .catch Ljava/lang/Throwable; {:try_start_5ca .. :try_end_5cd} :catch_5eb

    move-result v5

    const-string v6, "scale"

    const/16 v11, 0x64

    .line 188
    :try_start_5d2
    invoke-virtual {v2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_5d5
    .catch Ljava/lang/Throwable; {:try_start_5d2 .. :try_end_5d5} :catch_5eb

    move-result v2

    if-nez v2, :cond_5dc

    .line 189
    sget v2, Lcom/tencent/turingfd/sdk/ams/ad/const;->tb:I

    goto/16 :goto_336

    :cond_5dc
    mul-int/lit8 v5, v5, 0x64

    .line 190
    div-int v2, v5, v2

    if-gez v2, :cond_5e3

    const/4 v2, 0x0

    :cond_5e3
    const/16 v5, 0x64

    if-le v2, v5, :cond_336

    const/16 v2, 0x64

    goto/16 :goto_336

    .line 191
    :catch_5eb
    move-exception v2

    sget v2, Lcom/tencent/turingfd/sdk/ams/ad/const;->tb:I

    goto/16 :goto_336

    .line 192
    :catch_5f0
    move-exception v2

    sget v2, Lcom/tencent/turingfd/sdk/ams/ad/const;->tb:I

    goto/16 :goto_336

    .line 195
    :cond_5f5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 196
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 197
    new-instance v2, Ljava/io/File;

    const-string v3, "/proc"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_62f

    .line 205
    :cond_60c
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const/4 v2, 0x0

    .line 207
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v3, v2

    :cond_61b
    :goto_61b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/turingfd/sdk/ams/ad/native;

    .line 208
    iget v14, v2, Lcom/tencent/turingfd/sdk/ams/ad/native;->pid:I

    if-ne v4, v14, :cond_61b

    .line 209
    iget v2, v2, Lcom/tencent/turingfd/sdk/ams/ad/native;->Nb:I

    move v3, v2

    goto :goto_61b

    .line 199
    :cond_62f
    array-length v4, v3

    const/4 v2, 0x0

    :goto_631
    if-ge v2, v4, :cond_60c

    aget-object v6, v3, v2

    .line 200
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_63e

    .line 204
    :cond_63b
    :goto_63b
    add-int/lit8 v2, v2, 0x1

    goto :goto_631

    .line 200
    :cond_63e
    const/4 v13, 0x0

    .line 201
    :try_start_63f
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x39

    if-gt v13, v14, :cond_63b

    const/16 v14, 0x30

    if-lt v13, v14, :cond_63b

    .line 202
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 203
    invoke-static {v6}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(I)Lcom/tencent/turingfd/sdk/ams/ad/native;

    move-result-object v6

    if-eqz v6, :cond_63b

    .line 204
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_658
    .catch Ljava/lang/Exception; {:try_start_63f .. :try_end_658} :catch_659

    goto :goto_63b

    :catch_659
    move-exception v6

    goto :goto_63b

    .line 209
    :cond_65b
    if-nez v3, :cond_69f

    .line 218
    :cond_65d
    :goto_65d
    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 221
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_66e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6e3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/turingfd/sdk/ams/ad/native;

    .line 222
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/float;->Bb:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_680
    :goto_680
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 223
    iget-object v15, v2, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_680

    .line 224
    iget-object v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    .line 225
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_680

    .line 209
    :cond_69f
    const-string v2, ""

    .line 210
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v4, v2

    :cond_6a6
    :goto_6a6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6ba

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/turingfd/sdk/ams/ad/native;

    .line 211
    iget v14, v2, Lcom/tencent/turingfd/sdk/ams/ad/native;->pid:I

    if-ne v3, v14, :cond_6a6

    .line 212
    iget-object v2, v2, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    move-object v4, v2

    goto :goto_6a6

    .line 213
    :cond_6ba
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_65d

    .line 214
    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/public;

    invoke-direct {v2}, Lcom/tencent/turingfd/sdk/ams/ad/public;-><init>()V

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/tencent/turingfd/sdk/ams/ad/catch;->mb:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v13, Lcom/tencent/turingfd/sdk/ams/ad/catch;->sb:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/public;->Ob:Ljava/lang/String;

    .line 216
    iput-object v4, v2, Lcom/tencent/turingfd/sdk/ams/ad/public;->Pb:Ljava/lang/String;

    .line 217
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_65d

    .line 226
    :cond_6e3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_714

    .line 228
    new-instance v3, Lcom/tencent/turingfd/sdk/ams/ad/public;

    invoke-direct {v3}, Lcom/tencent/turingfd/sdk/ams/ad/public;-><init>()V

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/tencent/turingfd/sdk/ams/ad/catch;->mb:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v13, Lcom/tencent/turingfd/sdk/ams/ad/catch;->ob:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/turingfd/sdk/ams/ad/public;->Ob:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v13, 0x0

    .line 230
    invoke-static {v2, v4, v13}, Lcom/tencent/turingfd/sdk/ams/ad/do;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/turingfd/sdk/ams/ad/public;->Pb:Ljava/lang/String;

    .line 231
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_714
    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 233
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 234
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    .line 236
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v4, v2

    :cond_72c
    :goto_72c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7ef

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/turingfd/sdk/ams/ad/native;

    .line 237
    iget v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/native;->uid:I

    if-nez v3, :cond_72c

    .line 238
    iget-object v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_72c

    .line 239
    iget-object v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    const-string v6, "/system"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72c

    .line 240
    iget-object v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    const-string v6, "/dev"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72c

    .line 241
    iget-object v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    const-string v6, "/sbin"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72c

    .line 242
    iget-object v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    const-string v6, "/init"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72c

    .line 243
    iget-object v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    const-string v6, "/vendor"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72c

    .line 244
    iget-object v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    const-string v6, "/bin"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72c

    .line 245
    iget-object v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    const-string v6, "/usr"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72c

    .line 246
    iget-object v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    const-string v6, "kinguser"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_72c

    .line 247
    iget-object v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    const-string v6, "so"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72c

    const/4 v6, 0x0

    .line 248
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/float;->Bb:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_7a7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c24

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 249
    iget-object v0, v2, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7a7

    const/4 v3, 0x1

    :goto_7c0
    if-nez v3, :cond_72c

    const/4 v6, 0x0

    .line 250
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/float;->Eb:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_7c9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c21

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 251
    iget-object v0, v2, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7c9

    const/4 v3, 0x1

    :goto_7e2
    if-nez v3, :cond_72c

    .line 252
    iget-object v2, v2, Lcom/tencent/turingfd/sdk/ams/ad/native;->name:Ljava/lang/String;

    invoke-interface {v15, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    const/16 v3, 0x8

    if-lt v4, v3, :cond_c1e

    .line 253
    :cond_7ef
    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_839

    .line 254
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7f9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 255
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    .line 256
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7f9

    .line 257
    :cond_80e
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 258
    new-instance v3, Lcom/tencent/turingfd/sdk/ams/ad/public;

    invoke-direct {v3}, Lcom/tencent/turingfd/sdk/ams/ad/public;-><init>()V

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/tencent/turingfd/sdk/ams/ad/catch;->mb:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/tencent/turingfd/sdk/ams/ad/catch;->pb:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/turingfd/sdk/ams/ad/public;->Ob:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 260
    invoke-static {v2, v4, v6}, Lcom/tencent/turingfd/sdk/ams/ad/do;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/turingfd/sdk/ams/ad/public;->Pb:Ljava/lang/String;

    .line 261
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_839
    invoke-interface {v5, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 263
    :try_start_83c
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/long;->_a:[I

    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_84b
    .catch Ljava/lang/Throwable; {:try_start_83c .. :try_end_84b} :catch_888

    .line 264
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_87a

    .line 265
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/float;->Cb:[Ljava/lang/String;

    .line 270
    :cond_853
    :goto_853
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 271
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 272
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/long;->hb:[I

    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/long;->get([I)Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 274
    array-length v14, v2

    const/4 v3, 0x0

    :goto_869
    if-ge v3, v14, :cond_8f7

    aget-object v15, v2, v3

    .line 275
    invoke-virtual {v13, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 276
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-nez v16, :cond_88c

    .line 283
    :cond_877
    :goto_877
    add-int/lit8 v3, v3, 0x1

    goto :goto_869

    .line 265
    :cond_87a
    const-string v3, "\n"

    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_885

    .line 267
    array-length v3, v2

    if-nez v3, :cond_853

    .line 268
    :cond_885
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/float;->Cb:[Ljava/lang/String;

    goto :goto_853

    .line 269
    :catch_888
    move-exception v2

    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/float;->Cb:[Ljava/lang/String;

    goto :goto_853

    .line 276
    :cond_88c
    const/16 v16, 0x4

    .line 277
    invoke-virtual/range {v15 .. v16}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "2000"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_877

    const/16 v16, 0x3

    .line 278
    invoke-virtual/range {v15 .. v16}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "0A"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8d1

    const/16 v16, 0x1

    .line 279
    invoke-virtual/range {v15 .. v16}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_877

    .line 280
    array-length v0, v15

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_877

    const/16 v16, 0x1

    .line 281
    aget-object v15, v15, v16

    invoke-interface {v6, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_877

    :cond_8d1
    const/16 v16, 0x3

    .line 282
    invoke-virtual/range {v15 .. v16}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "01"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_877

    const/16 v16, 0x1

    .line 283
    invoke-virtual/range {v15 .. v16}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-interface {v4, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_877

    .line 284
    :cond_8f7
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 285
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 286
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_909
    :goto_909
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_94a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 287
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 288
    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_909

    .line 289
    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 290
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_909

    const-string v2, ":"

    .line 291
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_909

    .line 292
    array-length v3, v2

    const/16 v16, 0x2

    move/from16 v0, v16

    if-lt v3, v0, :cond_909

    const/4 v3, 0x1

    .line 293
    aget-object v2, v2, v3

    .line 294
    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_909

    .line 295
    invoke-interface {v14, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_909

    .line 296
    :cond_94a
    invoke-static {v12}, Lcom/tencent/turingfd/sdk/ams/ad/float;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    .line 297
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 298
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v4

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v13

    add-int/2addr v4, v13

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v13

    add-int/2addr v4, v13

    if-nez v4, :cond_97b

    .line 309
    :goto_963
    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 310
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 311
    invoke-static {v12}, Lcom/tencent/turingfd/sdk/ams/ad/float;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    .line 312
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_9c5

    .line 322
    :goto_975
    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v2, v5

    goto/16 :goto_347

    .line 299
    :cond_97b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    invoke-static {v6}, Lcom/tencent/turingfd/sdk/ams/ad/float;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&"

    .line 301
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-static {v14}, Lcom/tencent/turingfd/sdk/ams/ad/float;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&"

    .line 303
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/float;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/public;

    invoke-direct {v2}, Lcom/tencent/turingfd/sdk/ams/ad/public;-><init>()V

    .line 306
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/tencent/turingfd/sdk/ams/ad/catch;->mb:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v13, Lcom/tencent/turingfd/sdk/ams/ad/catch;->qb:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tencent/turingfd/sdk/ams/ad/public;->Ob:Ljava/lang/String;

    .line 307
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/turingfd/sdk/ams/ad/public;->Pb:Ljava/lang/String;

    .line 308
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_963

    .line 313
    :cond_9c5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9ce
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 315
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    .line 316
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9ce

    .line 317
    :cond_9e3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 318
    new-instance v4, Lcom/tencent/turingfd/sdk/ams/ad/public;

    invoke-direct {v4}, Lcom/tencent/turingfd/sdk/ams/ad/public;-><init>()V

    .line 319
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/tencent/turingfd/sdk/ams/ad/catch;->mb:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v12, Lcom/tencent/turingfd/sdk/ams/ad/catch;->rb:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/tencent/turingfd/sdk/ams/ad/public;->Ob:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v12, 0x0

    .line 320
    invoke-static {v2, v6, v12}, Lcom/tencent/turingfd/sdk/ams/ad/do;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/tencent/turingfd/sdk/ams/ad/public;->Pb:Ljava/lang/String;

    .line 321
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_975

    .line 325
    :cond_a10
    const-string v2, ""

    goto/16 :goto_363

    .line 329
    :cond_a14
    const-string v2, ""

    goto/16 :goto_37f

    .line 344
    :cond_a18
    :try_start_a18
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a22

    const/4 v2, 0x0

    goto/16 :goto_431

    .line 345
    :cond_a22
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_430

    .line 346
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a34

    .line 347
    invoke-static/range {p1 .. p1}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;
    :try_end_a31
    .catch Ljava/lang/Throwable; {:try_start_a18 .. :try_end_a31} :catch_a3a

    move-result-object v2

    if-eqz v2, :cond_a37

    :cond_a34
    const/4 v2, 0x2

    goto/16 :goto_431

    :cond_a37
    const/4 v2, 0x1

    goto/16 :goto_431

    .line 348
    :catch_a3a
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v2, -0x3

    if-eqz v5, :cond_431

    const-string v6, "ACCESS_NETWORK_STATE"

    .line 349
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_431

    const/4 v2, -0x2

    goto/16 :goto_431

    .line 366
    :cond_a4d
    array-length v3, v2

    if-nez v3, :cond_a58

    const/16 v2, -0x2713

    .line 367
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/default;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/default;

    move-result-object v2

    goto/16 :goto_159

    .line 368
    :cond_a58
    new-instance v3, Lcom/tencent/turingfd/sdk/ams/ad/default;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Lcom/tencent/turingfd/sdk/ams/ad/default;-><init>(I[B)V

    move-object v2, v3

    goto/16 :goto_159

    :catch_a61
    move-exception v2

    .line 369
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/continue;->getInstance()Lcom/tencent/turingfd/sdk/ams/ad/continue;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/turingfd/sdk/ams/ad/continue;->a(Ljava/lang/Throwable;)V

    const/16 v2, -0x2716

    .line 370
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/default;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/default;

    move-result-object v2

    goto/16 :goto_159

    .line 373
    :cond_a71
    iget-object v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/default;->jc:[B

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->bc:Lcom/tencent/turingfd/sdk/ams/ad/case;

    invoke-virtual {v2}, Lcom/tencent/turingfd/sdk/ams/ad/case;->m()Lcom/tencent/turingfd/sdk/ams/ad/this;

    move-result-object v2

    if-nez v2, :cond_a9b

    const/16 v2, -0x4e20

    .line 376
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/extends;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/extends;

    move-result-object v2

    move-object v3, v2

    .line 383
    :goto_a89
    iget v2, v3, Lcom/tencent/turingfd/sdk/ams/ad/extends;->Sb:I

    if-eqz v2, :cond_ac3

    .line 395
    :goto_a8d
    iget v2, v3, Lcom/tencent/turingfd/sdk/ams/ad/extends;->Sb:I

    if-eqz v2, :cond_b27

    .line 396
    invoke-virtual {v3}, Lcom/tencent/turingfd/sdk/ams/ad/extends;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/static;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v2

    goto/16 :goto_167

    .line 377
    :cond_a9b
    :try_start_a9b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_a9e
    .catch Ljava/lang/Throwable; {:try_start_a9b .. :try_end_a9e} :catch_aba

    .line 378
    check-cast v2, Lcom/tencent/turingfd/sdk/ams/ad/while;

    :try_start_aa0
    invoke-virtual {v2, v6, v3}, Lcom/tencent/turingfd/sdk/ams/ad/while;->b(I[B)Lcom/tencent/turingfd/sdk/ams/ad/this$do;

    move-result-object v2

    .line 379
    iget v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/this$do;->kb:I

    if-eqz v3, :cond_ab2

    .line 380
    iget v2, v2, Lcom/tencent/turingfd/sdk/ams/ad/this$do;->kb:I

    add-int/lit16 v2, v2, -0x4e20

    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/extends;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/extends;

    move-result-object v2

    move-object v3, v2

    goto :goto_a89

    .line 381
    :cond_ab2
    iget-object v2, v2, Lcom/tencent/turingfd/sdk/ams/ad/this$do;->data:[B

    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/extends;->f([B)Lcom/tencent/turingfd/sdk/ams/ad/extends;
    :try_end_ab7
    .catch Ljava/lang/Throwable; {:try_start_aa0 .. :try_end_ab7} :catch_aba

    move-result-object v2

    move-object v3, v2

    goto :goto_a89

    :catch_aba
    move-exception v2

    const/16 v2, -0x4e20

    .line 382
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/extends;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/extends;

    move-result-object v2

    move-object v3, v2

    goto :goto_a89

    .line 383
    :cond_ac3
    const-string v2, "connectivity"

    .line 384
    :try_start_ac5
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 385
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_ae3

    .line 386
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v6, v8, :cond_af4

    .line 387
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_ae1
    .catch Ljava/lang/Throwable; {:try_start_ac5 .. :try_end_ae1} :catch_b13

    if-eq v6, v8, :cond_af4

    .line 393
    :cond_ae3
    const/4 v2, -0x1

    .line 394
    :goto_ae4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v2, v4, v5}, Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;IJ)V

    goto :goto_a8d

    .line 388
    :cond_af4
    :try_start_af4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_afd

    .line 393
    :goto_afb
    const/4 v2, 0x0

    goto :goto_ae4

    .line 389
    :cond_afd
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_ae3

    .line 390
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b0f

    .line 391
    invoke-static/range {p1 .. p1}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;
    :try_end_b0c
    .catch Ljava/lang/Throwable; {:try_start_af4 .. :try_end_b0c} :catch_b13

    move-result-object v2

    if-eqz v2, :cond_b11

    :cond_b0f
    const/4 v2, 0x2

    goto :goto_ae4

    :cond_b11
    const/4 v2, 0x1

    goto :goto_ae4

    .line 392
    :catch_b13
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    if-eqz v6, :cond_b24

    const-string v8, "ACCESS_NETWORK_STATE"

    .line 393
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b24

    const/4 v2, 0x1

    :cond_b24
    if-eqz v2, :cond_ae3

    goto :goto_afb

    .line 397
    :cond_b27
    iget-object v2, v3, Lcom/tencent/turingfd/sdk/ams/ad/extends;->kc:[B

    .line 398
    :try_start_b29
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a()Landroid/util/SparseArray;

    move-result-object v3

    .line 399
    invoke-static {v3, v2, v7}, Lcom/tencent/turingfd/sdk/ams/ad/TuringDIDService$aa;->b(Landroid/util/SparseArray;[BI)Landroid/util/SparseArray;
    :try_end_b30
    .catch Ljava/lang/Throwable; {:try_start_b29 .. :try_end_b30} :catch_bf9

    move-result-object v6

    .line 400
    invoke-static {v6}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Landroid/util/SparseArray;)I

    move-result v2

    if-eqz v2, :cond_b3d

    .line 401
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/static;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v2

    goto/16 :goto_167

    :cond_b3d
    const/16 v2, 0x66

    .line 402
    const-class v3, Ljava/lang/Integer;

    invoke-static {v6, v2, v3}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Landroid/util/SparseArray;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_b51

    const/16 v2, -0x7530

    .line 403
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/static;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v2

    goto/16 :goto_167

    .line 404
    :cond_b51
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_b63

    .line 405
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit16 v2, v2, -0x7530

    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/static;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v2

    goto/16 :goto_167

    :cond_b63
    const/16 v3, 0x65

    .line 406
    const-class v4, Ljava/lang/String;

    invoke-static {v6, v3, v4}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Landroid/util/SparseArray;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_b71

    const-string v3, ""

    .line 407
    :cond_b71
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b83

    .line 408
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit16 v2, v2, -0x271a

    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/static;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v2

    goto/16 :goto_167

    :cond_b83
    const/16 v2, 0x68

    .line 409
    const-class v4, Ljava/lang/String;

    invoke-static {v6, v2, v4}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Landroid/util/SparseArray;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_c1b

    const-string v2, ""

    move-object v4, v2

    :goto_b92
    const/16 v2, 0x69

    .line 410
    const-class v5, Ljava/lang/String;

    invoke-static {v6, v2, v5}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Landroid/util/SparseArray;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_c19

    const-string v2, ""

    move-object v5, v2

    .line 411
    :goto_ba1
    invoke-static {v6}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x6b

    .line 412
    const-class v8, Ljava/lang/Integer;

    invoke-static {v6, v2, v8}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Landroid/util/SparseArray;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_bb9

    .line 413
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v8, 0xe10

    if-ge v6, v8, :cond_bbf

    :cond_bb9
    const/16 v2, 0xe10

    .line 414
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 415
    :cond_bbf
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v10, v6

    add-long/2addr v8, v10

    const/4 v6, 0x0

    .line 416
    invoke-static {v6}, Lcom/tencent/turingfd/sdk/ams/ad/static;->create(I)Lcom/tencent/turingfd/sdk/ams/ad/static$do;

    move-result-object v6

    .line 417
    iput-wide v8, v6, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Rb:J

    .line 418
    iput-object v3, v6, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Qb:Ljava/lang/String;

    .line 419
    iput-object v4, v6, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Ub:Ljava/lang/String;

    .line 420
    iput-object v5, v6, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Vb:Ljava/lang/String;

    .line 421
    iput-object v7, v6, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Wb:Ljava/lang/String;

    .line 422
    invoke-virtual {v6}, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->build()Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v3

    .line 423
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v3}, Lcom/tencent/turingfd/sdk/ams/ad/package;->b(Landroid/content/Context;Lcom/tencent/turingfd/sdk/ams/ad/static;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v6, v2

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7}, Lcom/tencent/turingfd/sdk/ams/ad/package;->d(Landroid/content/Context;J)V

    move-object v2, v3

    goto/16 :goto_167

    :catch_bf9
    move-exception v2

    const/16 v2, -0x2717

    .line 425
    invoke-static {v2}, Lcom/tencent/turingfd/sdk/ams/ad/static;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v2

    goto/16 :goto_167

    .line 427
    :cond_c02
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :catch_c0a
    move-exception v5

    goto/16 :goto_4d0

    .line 169
    :catch_c0d
    move-exception v4

    goto/16 :goto_56d

    :catchall_c10
    move-exception v2

    goto/16 :goto_565

    :catch_c13
    move-exception v3

    goto/16 :goto_55e

    :catch_c16
    move-exception v2

    goto/16 :goto_2a9

    :cond_c19
    move-object v5, v2

    goto :goto_ba1

    :cond_c1b
    move-object v4, v2

    goto/16 :goto_b92

    :cond_c1e
    move v4, v2

    goto/16 :goto_72c

    :cond_c21
    move v3, v6

    goto/16 :goto_7e2

    :cond_c24
    move v3, v6

    goto/16 :goto_7c0

    :cond_c27
    move v2, v3

    goto/16 :goto_267
.end method

.method public final a(Lcom/tencent/turingfd/sdk/ams/ad/static;Landroid/content/Context;Z)Lcom/tencent/turingfd/sdk/ams/ad/static;
    .registers 10

    .prologue
    const/4 v3, 0x1

    .line 50
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->fc:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_4
    invoke-virtual {p0, p2}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->l(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v0

    if-eq v0, p1, :cond_12

    .line 52
    invoke-virtual {p0, v0}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->a(Lcom/tencent/turingfd/sdk/ams/ad/static;)I

    move-result v2

    if-ne v2, v3, :cond_12

    .line 53
    monitor-exit v1

    .line 62
    :goto_11
    return-object v0

    .line 54
    :cond_12
    iget-object v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->hc:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_4c

    .line 55
    :try_start_15
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->hc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_37

    .line 56
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->hc:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->cc:Landroid/os/Handler;

    new-instance v3, Lcom/tencent/turingfd/sdk/ams/ad/throws;

    invoke-direct {v3, p0, p2, p3}, Lcom/tencent/turingfd/sdk/ams/ad/throws;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/boolean;Landroid/content/Context;Z)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_37
    .catchall {:try_start_15 .. :try_end_37} :catchall_57

    .line 58
    :cond_37
    :try_start_37
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->hc:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->bc:Lcom/tencent/turingfd/sdk/ams/ad/case;

    invoke-virtual {v3}, Lcom/tencent/turingfd/sdk/ams/ad/case;->getTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_43} :catch_5a
    .catchall {:try_start_37 .. :try_end_43} :catchall_57

    .line 59
    :goto_43
    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_57

    .line 60
    :try_start_44
    invoke-virtual {p0, p2}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->l(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v0

    if-eq v0, p1, :cond_4f

    .line 61
    monitor-exit v1

    goto :goto_11

    .line 63
    :catchall_4c
    move-exception v0

    .line 64
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_4c

    throw v0

    .line 61
    :cond_4f
    const/16 v0, -0x2714

    .line 62
    :try_start_51
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/static;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v0

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_4c

    goto :goto_11

    :catchall_57
    move-exception v0

    .line 63
    :try_start_58
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_4c

    :catch_5a
    move-exception v0

    goto :goto_43
.end method

.method public final a(Landroid/content/Context;Lcom/tencent/turingfd/sdk/ams/ad/static;)V
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 27
    iget v0, p2, Lcom/tencent/turingfd/sdk/ams/ad/static;->Sb:I

    const/16 v1, -0x753f

    if-ne v0, v1, :cond_3f

    .line 28
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/tencent/turingfd/sdk/ams/ad/package;->f(Landroid/content/Context;J)V

    .line 31
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    invoke-virtual {v0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/package;->p(Landroid/content/Context;)J

    move-result-wide v0

    .line 32
    iget v2, p2, Lcom/tencent/turingfd/sdk/ams/ad/static;->Sb:I

    if-gez v2, :cond_4f

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 33
    iget-object v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    invoke-virtual {v2, p1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/package;->e(Landroid/content/Context;J)V

    .line 35
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    invoke-virtual {v0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/package;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 37
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/tencent/turingfd/sdk/ams/ad/package;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    :cond_36
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    .line 39
    iget v1, p2, Lcom/tencent/turingfd/sdk/ams/ad/static;->Sb:I

    int-to-long v2, v1

    .line 40
    invoke-virtual {v0, p1, v2, v3}, Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;J)V

    return-void

    .line 29
    :cond_3f
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    invoke-virtual {v0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/package;->v(Landroid/content/Context;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_11

    .line 30
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    invoke-virtual {v0, p1, v4, v5}, Lcom/tencent/turingfd/sdk/ams/ad/package;->f(Landroid/content/Context;J)V

    goto :goto_11

    .line 33
    :cond_4f
    cmp-long v0, v0, v4

    if-eqz v0, :cond_23

    .line 34
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    invoke-virtual {v0, p1, v4, v5}, Lcom/tencent/turingfd/sdk/ams/ad/package;->e(Landroid/content/Context;J)V

    goto :goto_23
.end method

.method public a(Lcom/tencent/turingfd/sdk/ams/ad/case;)V
    .registers 5

    .prologue
    .line 6
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->bc:Lcom/tencent/turingfd/sdk/ams/ad/case;

    .line 7
    iget-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->dc:Z

    if-eqz v0, :cond_7

    .line 20
    :goto_6
    return-void

    .line 7
    :cond_7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->dc:Z

    .line 9
    invoke-virtual {p1}, Lcom/tencent/turingfd/sdk/ams/ad/case;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/for;->f(Landroid/content/Context;)Z

    .line 10
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TuringFdCore"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 12
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/boolean$do;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/turingfd/sdk/ams/ad/case;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/boolean$do;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/boolean;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->cc:Landroid/os/Handler;

    .line 13
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/package;

    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->cc:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/package;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    .line 14
    invoke-virtual {p1}, Lcom/tencent/turingfd/sdk/ams/ad/case;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 15
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/protected;->rc:Ljava/util/Map;

    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/protected;->tc:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 19
    :goto_41
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/switch;

    invoke-direct {v0, p0}, Lcom/tencent/turingfd/sdk/ams/ad/switch;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/boolean;)V

    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_6

    .line 16
    :cond_4a
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/protected;->rc:Ljava/util/Map;

    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/protected;->tc:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/turingfd/sdk/ams/ad/protected$do;

    .line 17
    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/interface;

    invoke-direct {v2, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/interface;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/protected$do;Landroid/content/Context;)V

    .line 18
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_41
.end method

.method public final a(Lcom/tencent/turingfd/sdk/ams/ad/static;Z)V
    .registers 5

    .prologue
    .line 21
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->gc:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    if-nez p1, :cond_7

    .line 22
    :try_start_5
    monitor-exit v1

    .line 26
    :goto_6
    return-void

    .line 22
    :cond_7
    if-nez p2, :cond_12

    .line 23
    iget v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/static;->Sb:I

    if-eqz v0, :cond_12

    .line 24
    monitor-exit v1

    goto :goto_6

    .line 22
    :catchall_f
    move-exception v0

    .line 26
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v0

    .line 25
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->gc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 26
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_f

    goto :goto_6
.end method

.method public final b(Landroid/content/Context;Z)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 2
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    invoke-virtual {v0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/package;->q(Landroid/content/Context;)Z

    move-result v2

    move v0, v1

    .line 3
    :goto_8
    iget-object v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->bc:Lcom/tencent/turingfd/sdk/ams/ad/case;

    invoke-virtual {v3}, Lcom/tencent/turingfd/sdk/ams/ad/case;->j()I

    move-result v3

    if-ge v0, v3, :cond_1c

    .line 4
    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->a(Landroid/content/Context;ZZZ)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v3

    const/4 v4, 0x1

    .line 5
    invoke-virtual {p0, v3, v4}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->a(Lcom/tencent/turingfd/sdk/ams/ad/static;Z)V

    .line 6
    iget v4, v3, Lcom/tencent/turingfd/sdk/ams/ad/static;->Sb:I

    if-nez v4, :cond_37

    .line 7
    :cond_1c
    if-eqz v2, :cond_23

    .line 8
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/turingfd/sdk/ams/ad/package;->c(Landroid/content/Context;Z)V

    .line 9
    :cond_23
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->hc:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 10
    :try_start_26
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->hc:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->hc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 12
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_40

    return-void

    .line 7
    :cond_37
    iget v3, v3, Lcom/tencent/turingfd/sdk/ams/ad/static;->Sb:I

    const/16 v4, -0x753e

    if-eq v3, v4, :cond_1c

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 12
    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public final l(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/static;
    .registers 5

    .prologue
    .line 1
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->gc:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 2
    :try_start_3
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->gc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/turingfd/sdk/ams/ad/static;

    if-nez v0, :cond_18

    .line 3
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->ec:Lcom/tencent/turingfd/sdk/ams/ad/package;

    invoke-virtual {v0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/package;->w(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->gc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    :cond_18
    monitor-exit v1

    return-object v0

    :catchall_1a
    move-exception v0

    .line 6
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public final m(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/static;
    .registers 5

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->l(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->a(Lcom/tencent/turingfd/sdk/ams/ad/static;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 7
    :cond_b
    :goto_b
    return-object v0

    .line 2
    :cond_c
    const/4 v2, 0x2

    if-ne v1, v2, :cond_29

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_23

    .line 4
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->r()V

    const/16 v0, -0x2718

    .line 5
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/static;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v0

    goto :goto_b

    :cond_23
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, p1, v1}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->a(Lcom/tencent/turingfd/sdk/ams/ad/static;Landroid/content/Context;Z)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v0

    goto :goto_b

    :cond_29
    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    .line 7
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->r()V

    goto :goto_b
.end method

.method public final r()V
    .registers 4

    .prologue
    .line 1
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->hc:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 2
    :try_start_3
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->hc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    monitor-exit v1

    .line 5
    :goto_12
    return-void

    .line 3
    :cond_13
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->hc:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->cc:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    monitor-exit v1

    goto :goto_12

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0
.end method
