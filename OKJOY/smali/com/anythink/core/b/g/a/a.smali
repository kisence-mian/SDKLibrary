.class public final Lcom/anythink/core/b/g/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static c:Lcom/anythink/core/b/g/a/a;


# instance fields
.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/anythink/core/b/g/a/a;->c:Lcom/anythink/core/b/g/a/a;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/anythink/core/b/g/a/a;->d:Ljava/util/concurrent/ExecutorService;

    .line 21
    iput-object v0, p0, Lcom/anythink/core/b/g/a/a;->e:Ljava/util/concurrent/ExecutorService;

    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/g/a/a;->d:Ljava/util/concurrent/ExecutorService;

    .line 26
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/g/a/a;->e:Ljava/util/concurrent/ExecutorService;

    .line 28
    return-void
.end method

.method public static a()Lcom/anythink/core/b/g/a/a;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/anythink/core/b/g/a/a;->c:Lcom/anythink/core/b/g/a/a;

    if-nez v0, :cond_b

    .line 32
    new-instance v0, Lcom/anythink/core/b/g/a/a;

    invoke-direct {v0}, Lcom/anythink/core/b/g/a/a;-><init>()V

    sput-object v0, Lcom/anythink/core/b/g/a/a;->c:Lcom/anythink/core/b/g/a/a;

    .line 34
    :cond_b
    sget-object v0, Lcom/anythink/core/b/g/a/a;->c:Lcom/anythink/core/b/g/a/a;

    return-object v0
.end method

.method private static a(Lcom/anythink/core/b/g/a/a;)V
    .registers 1

    .prologue
    .line 38
    sput-object p0, Lcom/anythink/core/b/g/a/a;->c:Lcom/anythink/core/b/g/a/a;

    .line 39
    return-void
.end method

.method private b()V
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/anythink/core/b/g/a/a;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 92
    iget-object v0, p0, Lcom/anythink/core/b/g/a/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 93
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/b/g/a/b;)V
    .registers 3

    .prologue
    .line 61
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/anythink/core/b/g/a/a;->a(Lcom/anythink/core/b/g/a/b;I)V

    .line 62
    return-void
.end method

.method public final a(Lcom/anythink/core/b/g/a/b;I)V
    .registers 4

    .prologue
    .line 44
    packed-switch p2, :pswitch_data_10

    .line 58
    :goto_3
    return-void

    .line 47
    :pswitch_4
    iget-object v0, p0, Lcom/anythink/core/b/g/a/a;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 51
    :pswitch_a
    iget-object v0, p0, Lcom/anythink/core/b/g/a/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 44
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_4
        :pswitch_a
    .end packed-switch
.end method

.method public final a(Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 65
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;J)V

    .line 66
    return-void
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .registers 10

    .prologue
    .line 69
    if-eqz p1, :cond_1e

    .line 70
    new-instance v0, Lcom/anythink/core/b/g/a/a$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/anythink/core/b/g/a/a$1;-><init>(Lcom/anythink/core/b/g/a/a;JLjava/lang/Runnable;)V

    .line 85
    new-instance v1, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/g/a/b;->a(I)V

    .line 1061
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Lcom/anythink/core/b/g/a/b;I)V

    .line 88
    :cond_1e
    return-void
.end method
