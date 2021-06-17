.class public Lcom/facebook/GraphRequestBatch;
.super Ljava/util/AbstractList;
.source "GraphRequestBatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/GraphRequestBatch$OnProgressCallback;,
        Lcom/facebook/GraphRequestBatch$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/facebook/GraphRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private batchApplicationId:Ljava/lang/String;

.field private callbackHandler:Landroid/os/Handler;

.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/GraphRequestBatch$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/GraphRequest;",
            ">;"
        }
    .end annotation
.end field

.field private timeoutInMilliseconds:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/GraphRequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/GraphRequestBatch;->timeoutInMilliseconds:I

    .line 38
    sget-object v0, Lcom/facebook/GraphRequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->id:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/facebook/GraphRequestBatch;)V
    .registers 4
    .param p1, "requests"    # Lcom/facebook/GraphRequestBatch;

    .line 69
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/GraphRequestBatch;->timeoutInMilliseconds:I

    .line 38
    sget-object v0, Lcom/facebook/GraphRequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->id:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    .line 71
    iget-object v0, p1, Lcom/facebook/GraphRequestBatch;->callbackHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->callbackHandler:Landroid/os/Handler;

    .line 72
    iget v0, p1, Lcom/facebook/GraphRequestBatch;->timeoutInMilliseconds:I

    iput v0, p0, Lcom/facebook/GraphRequestBatch;->timeoutInMilliseconds:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/GraphRequest;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/GraphRequestBatch;->timeoutInMilliseconds:I

    .line 38
    sget-object v0, Lcom/facebook/GraphRequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->id:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    .line 55
    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/GraphRequest;)V
    .registers 3
    .param p1, "requests"    # [Lcom/facebook/GraphRequest;

    .line 61
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/GraphRequestBatch;->timeoutInMilliseconds:I

    .line 38
    sget-object v0, Lcom/facebook/GraphRequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->id:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    .line 62
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    .line 63
    return-void
.end method


# virtual methods
.method public final add(ILcom/facebook/GraphRequest;)V
    .registers 4
    .param p1, "location"    # I
    .param p2, "request"    # Lcom/facebook/GraphRequest;

    .line 123
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 124
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    .line 32
    check-cast p2, Lcom/facebook/GraphRequest;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequestBatch;->add(ILcom/facebook/GraphRequest;)V

    return-void
.end method

.method public final add(Lcom/facebook/GraphRequest;)Z
    .registers 3
    .param p1, "request"    # Lcom/facebook/GraphRequest;

    .line 118
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    .line 32
    check-cast p1, Lcom/facebook/GraphRequest;

    invoke-virtual {p0, p1}, Lcom/facebook/GraphRequestBatch;->add(Lcom/facebook/GraphRequest;)Z

    move-result p1

    return p1
.end method

.method public addCallback(Lcom/facebook/GraphRequestBatch$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/facebook/GraphRequestBatch$Callback;

    .line 102
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 103
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_d
    return-void
.end method

.method public final clear()V
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    return-void
.end method

.method public final executeAndWait()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->executeAndWaitImpl()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method executeAndWaitImpl()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .line 252
    invoke-static {p0}, Lcom/facebook/GraphRequest;->executeBatchAndWait(Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    .registers 2

    .line 218
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->executeAsyncImpl()Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method executeAsyncImpl()Lcom/facebook/GraphRequestAsyncTask;
    .registers 2

    .line 256
    invoke-static {p0}, Lcom/facebook/GraphRequest;->executeBatchAsync(Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Lcom/facebook/GraphRequest;
    .registers 3
    .param p1, "i"    # I

    .line 133
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Lcom/facebook/GraphRequestBatch;->get(I)Lcom/facebook/GraphRequest;

    move-result-object p1

    return-object p1
.end method

.method public final getBatchApplicationId()Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->batchApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method final getCallbackHandler()Landroid/os/Handler;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->callbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method final getCallbacks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/GraphRequestBatch$Callback;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    return-object v0
.end method

.method final getId()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->id:Ljava/lang/String;

    return-object v0
.end method

.method final getRequests()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/GraphRequest;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    return-object v0
.end method

.method public getTimeout()I
    .registers 2

    .line 81
    iget v0, p0, Lcom/facebook/GraphRequestBatch;->timeoutInMilliseconds:I

    return v0
.end method

.method public final remove(I)Lcom/facebook/GraphRequest;
    .registers 3
    .param p1, "location"    # I

    .line 138
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Lcom/facebook/GraphRequestBatch;->remove(I)Lcom/facebook/GraphRequest;

    move-result-object p1

    return-object p1
.end method

.method public removeCallback(Lcom/facebook/GraphRequestBatch$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/facebook/GraphRequestBatch$Callback;

    .line 113
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public final set(ILcom/facebook/GraphRequest;)Lcom/facebook/GraphRequest;
    .registers 4
    .param p1, "location"    # I
    .param p2, "request"    # Lcom/facebook/GraphRequest;

    .line 143
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 32
    check-cast p2, Lcom/facebook/GraphRequest;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequestBatch;->set(ILcom/facebook/GraphRequest;)Lcom/facebook/GraphRequest;

    move-result-object p1

    return-object p1
.end method

.method public final setBatchApplicationId(Ljava/lang/String;)V
    .registers 2
    .param p1, "batchApplicationId"    # Ljava/lang/String;

    .line 184
    iput-object p1, p0, Lcom/facebook/GraphRequestBatch;->batchApplicationId:Ljava/lang/String;

    .line 185
    return-void
.end method

.method final setCallbackHandler(Landroid/os/Handler;)V
    .registers 2
    .param p1, "callbackHandler"    # Landroid/os/Handler;

    .line 160
    iput-object p1, p0, Lcom/facebook/GraphRequestBatch;->callbackHandler:Landroid/os/Handler;

    .line 161
    return-void
.end method

.method public setTimeout(I)V
    .registers 4
    .param p1, "timeoutInMilliseconds"    # I

    .line 89
    if-ltz p1, :cond_5

    .line 92
    iput p1, p0, Lcom/facebook/GraphRequestBatch;->timeoutInMilliseconds:I

    .line 93
    return-void

    .line 90
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument timeoutInMilliseconds must be >= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final size()I
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
