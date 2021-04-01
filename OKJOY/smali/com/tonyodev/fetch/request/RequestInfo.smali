.class public final Lcom/tonyodev/fetch/request/RequestInfo;
.super Ljava/lang/Object;
.source "RequestInfo.java"


# instance fields
.field private final downloadedBytes:J

.field private final error:I

.field private final filePath:Ljava/lang/String;

.field private final fileSize:J

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tonyodev/fetch/request/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final id:J

.field private final priority:I

.field private final progress:I

.field private final status:I

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;IJJILjava/util/List;I)V
    .registers 19
    .param p1, "id"    # J
    .param p3, "status"    # I
    .param p4, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "filePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "progress"    # I
    .param p7, "downloadedBytes"    # J
    .param p9, "fileSize"    # J
    .param p11, "error"    # I
    .param p12    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p13, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJI",
            "Ljava/util/List",
            "<",
            "Lcom/tonyodev/fetch/request/Header;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p12, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/tonyodev/fetch/request/Header;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p4, :cond_d

    .line 52
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Url cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_d
    if-nez p5, :cond_17

    .line 56
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "FilePath cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_17
    if-nez p12, :cond_21

    .line 60
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Headers cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_21
    iput-wide p1, p0, Lcom/tonyodev/fetch/request/RequestInfo;->id:J

    .line 64
    iput p3, p0, Lcom/tonyodev/fetch/request/RequestInfo;->status:I

    .line 65
    iput-object p4, p0, Lcom/tonyodev/fetch/request/RequestInfo;->url:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/tonyodev/fetch/request/RequestInfo;->filePath:Ljava/lang/String;

    .line 67
    iput p6, p0, Lcom/tonyodev/fetch/request/RequestInfo;->progress:I

    .line 68
    iput-wide p7, p0, Lcom/tonyodev/fetch/request/RequestInfo;->downloadedBytes:J

    .line 69
    iput-wide p9, p0, Lcom/tonyodev/fetch/request/RequestInfo;->fileSize:J

    .line 70
    move/from16 v0, p11

    iput v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->error:I

    .line 71
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->headers:Ljava/util/List;

    .line 72
    move/from16 v0, p13

    iput v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->priority:I

    .line 73
    return-void
.end method


# virtual methods
.method public getDownloadedBytes()J
    .registers 3

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->downloadedBytes:J

    return-wide v0
.end method

.method public getError()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->error:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .registers 3

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->fileSize:J

    return-wide v0
.end method

.method public getHeaders()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tonyodev/fetch/request/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->headers:Ljava/util/List;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->id:J

    return-wide v0
.end method

.method public getPriority()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->priority:I

    return v0
.end method

.method public getProgress()I
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->progress:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->status:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v1, "headerBuilder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/tonyodev/fetch/request/RequestInfo;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch/request/Header;

    .line 156
    .local v0, "header":Lcom/tonyodev/fetch/request/Header;
    invoke-virtual {v0}, Lcom/tonyodev/fetch/request/Header;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    .line 157
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 160
    .end local v0    # "header":Lcom/tonyodev/fetch/request/Header;
    :cond_25
    iget-object v2, p0, Lcom/tonyodev/fetch/request/RequestInfo;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_36

    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 164
    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/tonyodev/fetch/request/RequestInfo;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tonyodev/fetch/request/RequestInfo;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tonyodev/fetch/request/RequestInfo;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",filePath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tonyodev/fetch/request/RequestInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tonyodev/fetch/request/RequestInfo;->progress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",fileSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/tonyodev/fetch/request/RequestInfo;->fileSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tonyodev/fetch/request/RequestInfo;->error:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",headers:{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "},priority:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tonyodev/fetch/request/RequestInfo;->priority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    return-object v2
.end method
