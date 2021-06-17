.class Lcom/facebook/ProgressNoopOutputStream;
.super Ljava/io/OutputStream;
.source "ProgressNoopOutputStream.java"

# interfaces
.implements Lcom/facebook/RequestOutputStream;


# instance fields
.field private batchMax:I

.field private final callbackHandler:Landroid/os/Handler;

.field private currentRequest:Lcom/facebook/GraphRequest;

.field private currentRequestProgress:Lcom/facebook/RequestProgress;

.field private final progressMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/GraphRequest;",
            "Lcom/facebook/RequestProgress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "callbackHandler"    # Landroid/os/Handler;

    .line 37
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->progressMap:Ljava/util/Map;

    .line 38
    iput-object p1, p0, Lcom/facebook/ProgressNoopOutputStream;->callbackHandler:Landroid/os/Handler;

    .line 39
    return-void
.end method


# virtual methods
.method addProgress(J)V
    .registers 6
    .param p1, "size"    # J

    .line 56
    iget-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequestProgress:Lcom/facebook/RequestProgress;

    if-nez v0, :cond_16

    .line 57
    new-instance v0, Lcom/facebook/RequestProgress;

    iget-object v1, p0, Lcom/facebook/ProgressNoopOutputStream;->callbackHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequest:Lcom/facebook/GraphRequest;

    invoke-direct {v0, v1, v2}, Lcom/facebook/RequestProgress;-><init>(Landroid/os/Handler;Lcom/facebook/GraphRequest;)V

    iput-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequestProgress:Lcom/facebook/RequestProgress;

    .line 58
    iget-object v1, p0, Lcom/facebook/ProgressNoopOutputStream;->progressMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequest:Lcom/facebook/GraphRequest;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_16
    iget-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequestProgress:Lcom/facebook/RequestProgress;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/RequestProgress;->addToMax(J)V

    .line 62
    iget v0, p0, Lcom/facebook/ProgressNoopOutputStream;->batchMax:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v1, v0

    iput v1, p0, Lcom/facebook/ProgressNoopOutputStream;->batchMax:I

    .line 63
    return-void
.end method

.method getMaxProgress()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/facebook/ProgressNoopOutputStream;->batchMax:I

    return v0
.end method

.method getProgressMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/facebook/GraphRequest;",
            "Lcom/facebook/RequestProgress;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->progressMap:Ljava/util/Map;

    return-object v0
.end method

.method public setCurrentRequest(Lcom/facebook/GraphRequest;)V
    .registers 3
    .param p1, "currentRequest"    # Lcom/facebook/GraphRequest;

    .line 42
    iput-object p1, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequest:Lcom/facebook/GraphRequest;

    .line 43
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->progressMap:Ljava/util/Map;

    .line 44
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/RequestProgress;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequestProgress:Lcom/facebook/RequestProgress;

    .line 45
    return-void
.end method

.method public write(I)V
    .registers 4
    .param p1, "oneByte"    # I

    .line 77
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ProgressNoopOutputStream;->addProgress(J)V

    .line 78
    return-void
.end method

.method public write([B)V
    .registers 4
    .param p1, "buffer"    # [B

    .line 67
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ProgressNoopOutputStream;->addProgress(J)V

    .line 68
    return-void
.end method

.method public write([BII)V
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 72
    int-to-long v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ProgressNoopOutputStream;->addProgress(J)V

    .line 73
    return-void
.end method
