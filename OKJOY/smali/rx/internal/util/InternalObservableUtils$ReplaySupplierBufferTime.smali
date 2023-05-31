.class final Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySupplierBufferTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<",
        "Lrx/observables/ConnectableObservable",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final scheduler:Lrx/Scheduler;

.field private final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final time:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method private constructor <init>(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .registers 6
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p4, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;->unit:Ljava/util/concurrent/TimeUnit;

    .line 307
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;->source:Lrx/Observable;

    .line 308
    iput-wide p2, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;->time:J

    .line 309
    iput-object p5, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;->scheduler:Lrx/Scheduler;

    .line 310
    return-void
.end method

.method synthetic constructor <init>(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/internal/util/InternalObservableUtils$1;)V
    .registers 7
    .param p1, "x0"    # Lrx/Observable;
    .param p2, "x1"    # J
    .param p4, "x2"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "x3"    # Lrx/Scheduler;
    .param p6, "x4"    # Lrx/internal/util/InternalObservableUtils$1;

    .prologue
    .line 299
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime<TT;>;"
    invoke-direct/range {p0 .. p5}, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;-><init>(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 299
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime<TT;>;"
    invoke-virtual {p0}, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;->call()Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public call()Lrx/observables/ConnectableObservable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime<TT;>;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;->source:Lrx/Observable;

    iget-wide v2, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;->time:J

    iget-object v1, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBufferTime;->scheduler:Lrx/Scheduler;

    invoke-virtual {v0, v2, v3, v1, v4}, Lrx/Observable;->replay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method
