.class public abstract Lcom/tapjoy/internal/bv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static a:Ljava/util/concurrent/ExecutorService;

.field public static b:Lcom/tapjoy/internal/by;


# instance fields
.field private c:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/net/URI;Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/io/InputStream;",
            ")TResult;"
        }
    .end annotation
.end method

.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/tapjoy/internal/ca;Ljava/util/concurrent/ExecutorService;)V
    .registers 5
    .param p1    # Lcom/tapjoy/internal/ca;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapjoy/internal/ca<",
            "TResult;>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 86
    nop

    .line 2051
    :try_start_2
    iget-object v0, p0, Lcom/tapjoy/internal/bv;->c:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 86
    :goto_10
    const-string v1, "Call has not completed"

    .line 2144
    if-eqz v0, :cond_21

    .line 87
    new-instance v0, Lcom/tapjoy/internal/bx;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/bx;-><init>(Lcom/tapjoy/internal/bv;Lcom/tapjoy/internal/ca;)V

    .line 88
    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/bv;->c:Ljava/util/concurrent/Future;
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_2b

    .line 89
    monitor-exit p0

    return-void

    .line 2145
    :cond_21
    :try_start_21
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_2b

    .line 85
    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method protected f()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .line 1100
    sget-object v0, Lcom/tapjoy/internal/bv;->b:Lcom/tapjoy/internal/by;

    .line 36
    invoke-interface {v0, p0}, Lcom/tapjoy/internal/by;->a(Lcom/tapjoy/internal/bv;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
