.class Lcom/facebook/RequestProgress;
.super Ljava/lang/Object;
.source "RequestProgress.java"


# instance fields
.field private final callbackHandler:Landroid/os/Handler;

.field private lastReportedProgress:J

.field private maxProgress:J

.field private progress:J

.field private final request:Lcom/facebook/GraphRequest;

.field private final threshold:J


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/facebook/GraphRequest;)V
    .registers 5
    .param p1, "callbackHandler"    # Landroid/os/Handler;
    .param p2, "request"    # Lcom/facebook/GraphRequest;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/facebook/RequestProgress;->request:Lcom/facebook/GraphRequest;

    .line 34
    iput-object p1, p0, Lcom/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    .line 36
    invoke-static {}, Lcom/facebook/FacebookSdk;->getOnProgressThreshold()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/RequestProgress;->threshold:J

    .line 37
    return-void
.end method


# virtual methods
.method addProgress(J)V
    .registers 9
    .param p1, "size"    # J

    .line 48
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    .line 50
    iget-wide v2, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    iget-wide v4, p0, Lcom/facebook/RequestProgress;->threshold:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_14

    iget-wide v2, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_17

    .line 51
    :cond_14
    invoke-virtual {p0}, Lcom/facebook/RequestProgress;->reportProgress()V

    .line 53
    :cond_17
    return-void
.end method

.method addToMax(J)V
    .registers 5
    .param p1, "size"    # J

    .line 56
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    .line 57
    return-void
.end method

.method getMaxProgress()J
    .registers 3

    .line 44
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    return-wide v0
.end method

.method getProgress()J
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    return-wide v0
.end method

.method reportProgress()V
    .registers 16

    .line 60
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    iget-wide v2, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_3a

    .line 61
    iget-object v0, p0, Lcom/facebook/RequestProgress;->request:Lcom/facebook/GraphRequest;

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->getCallback()Lcom/facebook/GraphRequest$Callback;

    move-result-object v0

    .line 62
    .local v0, "callback":Lcom/facebook/GraphRequest$Callback;
    iget-wide v1, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3a

    instance-of v1, v0, Lcom/facebook/GraphRequest$OnProgressCallback;

    if-eqz v1, :cond_3a

    .line 64
    iget-wide v9, p0, Lcom/facebook/RequestProgress;->progress:J

    .line 65
    .local v9, "currentCopy":J
    iget-wide v11, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    .line 66
    .local v11, "maxProgressCopy":J
    move-object v1, v0

    check-cast v1, Lcom/facebook/GraphRequest$OnProgressCallback;

    .line 68
    .local v1, "callbackCopy":Lcom/facebook/GraphRequest$OnProgressCallback;
    iget-object v13, p0, Lcom/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    if-nez v13, :cond_29

    .line 69
    invoke-interface {v1, v9, v10, v11, v12}, Lcom/facebook/GraphRequest$OnProgressCallback;->onProgress(JJ)V

    goto :goto_36

    .line 72
    :cond_29
    new-instance v14, Lcom/facebook/RequestProgress$1;

    move-object v2, v14

    move-object v3, p0

    move-object v4, v1

    move-wide v5, v9

    move-wide v7, v11

    invoke-direct/range {v2 .. v8}, Lcom/facebook/RequestProgress$1;-><init>(Lcom/facebook/RequestProgress;Lcom/facebook/GraphRequest$OnProgressCallback;JJ)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    :goto_36
    iget-wide v2, p0, Lcom/facebook/RequestProgress;->progress:J

    iput-wide v2, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    .line 82
    .end local v0    # "callback":Lcom/facebook/GraphRequest$Callback;
    .end local v1    # "callbackCopy":Lcom/facebook/GraphRequest$OnProgressCallback;
    .end local v9    # "currentCopy":J
    .end local v11    # "maxProgressCopy":J
    :cond_3a
    return-void
.end method
