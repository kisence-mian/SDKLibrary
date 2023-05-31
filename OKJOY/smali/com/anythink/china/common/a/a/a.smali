.class public final Lcom/anythink/china/common/a/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static e:Lcom/anythink/china/common/a/a/a;


# instance fields
.field private final d:I

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Ljava/util/concurrent/ExecutorService;

.field private h:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/anythink/china/common/a/a/a;->e:Lcom/anythink/china/common/a/a/a;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v1, p0, Lcom/anythink/china/common/a/a/a;->d:I

    .line 23
    iput-object v0, p0, Lcom/anythink/china/common/a/a/a;->f:Ljava/util/concurrent/ExecutorService;

    .line 24
    iput-object v0, p0, Lcom/anythink/china/common/a/a/a;->g:Ljava/util/concurrent/ExecutorService;

    .line 25
    iput-object v0, p0, Lcom/anythink/china/common/a/a/a;->h:Ljava/util/concurrent/ExecutorService;

    .line 29
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/china/common/a/a/a;->f:Ljava/util/concurrent/ExecutorService;

    .line 30
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/china/common/a/a/a;->g:Ljava/util/concurrent/ExecutorService;

    .line 31
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/china/common/a/a/a;->h:Ljava/util/concurrent/ExecutorService;

    .line 33
    return-void
.end method

.method public static a()Lcom/anythink/china/common/a/a/a;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/anythink/china/common/a/a/a;->e:Lcom/anythink/china/common/a/a/a;

    if-nez v0, :cond_b

    .line 37
    new-instance v0, Lcom/anythink/china/common/a/a/a;

    invoke-direct {v0}, Lcom/anythink/china/common/a/a/a;-><init>()V

    sput-object v0, Lcom/anythink/china/common/a/a/a;->e:Lcom/anythink/china/common/a/a/a;

    .line 39
    :cond_b
    sget-object v0, Lcom/anythink/china/common/a/a/a;->e:Lcom/anythink/china/common/a/a/a;

    return-object v0
.end method

.method private static a(Lcom/anythink/china/common/a/a/a;)V
    .registers 1

    .prologue
    .line 43
    sput-object p0, Lcom/anythink/china/common/a/a/a;->e:Lcom/anythink/china/common/a/a/a;

    .line 44
    return-void
.end method

.method private a(Lcom/anythink/china/common/a/a/b;)V
    .registers 3

    .prologue
    .line 69
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/anythink/china/common/a/a/a;->a(Lcom/anythink/china/common/a/a/b;I)V

    .line 70
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 8

    .prologue
    .line 73
    .line 1077
    if-eqz p1, :cond_1e

    .line 1078
    new-instance v0, Lcom/anythink/china/common/a/a/a$1;

    invoke-direct {v0, p0, p1}, Lcom/anythink/china/common/a/a/a$1;-><init>(Lcom/anythink/china/common/a/a/a;Ljava/lang/Runnable;)V

    .line 1091
    new-instance v1, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/a/a/b;->a(I)V

    .line 2069
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/anythink/china/common/a/a/a;->a(Lcom/anythink/china/common/a/a/b;I)V

    .line 74
    :cond_1e
    return-void
.end method

.method private b()V
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/anythink/china/common/a/a/a;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 98
    iget-object v0, p0, Lcom/anythink/china/common/a/a/a;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 99
    iget-object v0, p0, Lcom/anythink/china/common/a/a/a;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 100
    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .registers 8

    .prologue
    .line 77
    if-eqz p1, :cond_1e

    .line 78
    new-instance v0, Lcom/anythink/china/common/a/a/a$1;

    invoke-direct {v0, p0, p1}, Lcom/anythink/china/common/a/a/a$1;-><init>(Lcom/anythink/china/common/a/a/a;Ljava/lang/Runnable;)V

    .line 91
    new-instance v1, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/a/a/b;->a(I)V

    .line 3069
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/anythink/china/common/a/a/a;->a(Lcom/anythink/china/common/a/a/b;I)V

    .line 94
    :cond_1e
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/china/common/a/a/b;I)V
    .registers 4

    .prologue
    .line 50
    packed-switch p2, :pswitch_data_16

    .line 66
    :goto_3
    return-void

    .line 53
    :pswitch_4
    iget-object v0, p0, Lcom/anythink/china/common/a/a/a;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 57
    :pswitch_a
    iget-object v0, p0, Lcom/anythink/china/common/a/a/a;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 61
    :pswitch_10
    iget-object v0, p0, Lcom/anythink/china/common/a/a/a;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 50
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_4
        :pswitch_a
        :pswitch_10
    .end packed-switch
.end method
