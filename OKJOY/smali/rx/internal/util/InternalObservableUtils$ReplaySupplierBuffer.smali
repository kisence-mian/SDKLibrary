.class final Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;
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
    name = "ReplaySupplierBuffer"
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

.field private final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/Observable;I)V
    .registers 3
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;->source:Lrx/Observable;

    .line 274
    iput p2, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;->bufferSize:I

    .line 275
    return-void
.end method

.method synthetic constructor <init>(Lrx/Observable;ILrx/internal/util/InternalObservableUtils$1;)V
    .registers 4
    .param p1, "x0"    # Lrx/Observable;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lrx/internal/util/InternalObservableUtils$1;

    .prologue
    .line 268
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer<TT;>;"
    invoke-direct {p0, p1, p2}, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;-><init>(Lrx/Observable;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 268
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;->call()Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public call()Lrx/observables/ConnectableObservable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;, "Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;->source:Lrx/Observable;

    iget v1, p0, Lrx/internal/util/InternalObservableUtils$ReplaySupplierBuffer;->bufferSize:I

    invoke-virtual {v0, v1}, Lrx/Observable;->replay(I)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method
