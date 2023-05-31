.class public final Lcom/tramini/plugin/a/f/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tramini/plugin/a/f/a/a;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/tramini/plugin/a/f/a/a;->a:Lcom/tramini/plugin/a/f/a/a;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tramini/plugin/a/f/a/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 22
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tramini/plugin/a/f/a/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 23
    return-void
.end method

.method public static a()Lcom/tramini/plugin/a/f/a/a;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/tramini/plugin/a/f/a/a;->a:Lcom/tramini/plugin/a/f/a/a;

    if-nez v0, :cond_b

    .line 27
    new-instance v0, Lcom/tramini/plugin/a/f/a/a;

    invoke-direct {v0}, Lcom/tramini/plugin/a/f/a/a;-><init>()V

    sput-object v0, Lcom/tramini/plugin/a/f/a/a;->a:Lcom/tramini/plugin/a/f/a/a;

    .line 29
    :cond_b
    sget-object v0, Lcom/tramini/plugin/a/f/a/a;->a:Lcom/tramini/plugin/a/f/a/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tramini/plugin/a/f/a/b;)V
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tramini/plugin/a/f/a/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 34
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 37
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tramini/plugin/a/f/a/a;->a(Ljava/lang/Runnable;J)V

    .line 38
    return-void
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .registers 10

    .prologue
    .line 41
    if-eqz p1, :cond_1d

    .line 42
    new-instance v0, Lcom/tramini/plugin/a/f/a/a$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/tramini/plugin/a/f/a/a$1;-><init>(Lcom/tramini/plugin/a/f/a/a;JLjava/lang/Runnable;)V

    .line 54
    new-instance v1, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tramini/plugin/a/f/a/b;->a(I)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/tramini/plugin/a/f/a/a;->a(Lcom/tramini/plugin/a/f/a/b;)V

    .line 57
    :cond_1d
    return-void
.end method
