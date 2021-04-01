.class final Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;
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
    name = "ReplaySupplierTime"
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
.field private final bufferSize:I

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
.method private constructor <init>(Lrx/Observable;IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .registers 8
    .param p2, "bufferSize"    # I
    .param p3, "time"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-wide p3, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;->time:J

    .line 346
    iput-object p5, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;->unit:Ljava/util/concurrent/TimeUnit;

    .line 347
    iput-object p6, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;->scheduler:Lrx/Scheduler;

    .line 348
    iput p2, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;->bufferSize:I

    .line 349
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;->source:Lrx/Observable;

    .line 350
    return-void
.end method

.method synthetic constructor <init>(Lrx/Observable;IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/internal/util/InternalObservableUtils$1;)V
    .registers 9
    .param p1, "x0"    # Lrx/Observable;
    .param p2, "x1"    # I
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "x4"    # Lrx/Scheduler;
    .param p7, "x5"    # Lrx/internal/util/InternalObservableUtils$1;

    .prologue
    .line 336
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime<TT;>;"
    invoke-direct/range {p0 .. p6}, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;-><init>(Lrx/Observable;IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 336
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime<TT;>;"
    invoke-virtual {p0}, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;->call()Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public call()Lrx/observables/ConnectableObservable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime<TT;>;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;->source:Lrx/Observable;

    iget v1, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;->bufferSize:I

    iget-wide v2, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;->time:J

    iget-object v4, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierTime;->scheduler:Lrx/Scheduler;

    invoke-virtual/range {v0 .. v5}, Lrx/Observable;->replay(IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method
