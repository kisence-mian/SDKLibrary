.class public final Lcom/tramini/plugin/a/g/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tramini/plugin/a/g/a/a;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/tramini/plugin/a/g/a/a;->a:Lcom/tramini/plugin/a/g/a/a;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tramini/plugin/a/g/a/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tramini/plugin/a/g/a/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 30
    return-void
.end method

.method public static a()Lcom/tramini/plugin/a/g/a/a;
    .registers 1

    .line 33
    sget-object v0, Lcom/tramini/plugin/a/g/a/a;->a:Lcom/tramini/plugin/a/g/a/a;

    if-nez v0, :cond_b

    .line 34
    new-instance v0, Lcom/tramini/plugin/a/g/a/a;

    invoke-direct {v0}, Lcom/tramini/plugin/a/g/a/a;-><init>()V

    sput-object v0, Lcom/tramini/plugin/a/g/a/a;->a:Lcom/tramini/plugin/a/g/a/a;

    .line 36
    :cond_b
    sget-object v0, Lcom/tramini/plugin/a/g/a/a;->a:Lcom/tramini/plugin/a/g/a/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tramini/plugin/a/g/a/b;)V
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/tramini/plugin/a/g/a/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 41
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .registers 4

    .line 44
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tramini/plugin/a/g/a/a;->a(Ljava/lang/Runnable;J)V

    .line 45
    return-void
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .registers 7

    .line 48
    if-eqz p1, :cond_1c

    .line 49
    new-instance v0, Lcom/tramini/plugin/a/g/a/a$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/tramini/plugin/a/g/a/a$1;-><init>(Lcom/tramini/plugin/a/g/a/a;JLjava/lang/Runnable;)V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tramini/plugin/a/g/a/b;->a(I)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/tramini/plugin/a/g/a/a;->a(Lcom/tramini/plugin/a/g/a/b;)V

    .line 64
    :cond_1c
    return-void
.end method
