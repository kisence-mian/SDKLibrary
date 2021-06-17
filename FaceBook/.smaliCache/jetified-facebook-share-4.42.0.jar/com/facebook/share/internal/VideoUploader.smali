.class public Lcom/facebook/share/internal/VideoUploader;
.super Ljava/lang/Object;
.source "VideoUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;,
        Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;,
        Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;,
        Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;,
        Lcom/facebook/share/internal/VideoUploader$UploadContext;
    }
.end annotation


# static fields
.field private static final ERROR_BAD_SERVER_RESPONSE:Ljava/lang/String; = "Unexpected error in server response"

.field private static final ERROR_UPLOAD:Ljava/lang/String; = "Video upload failed"

.field private static final MAX_RETRIES_PER_PHASE:I = 0x2

.field private static final PARAM_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final PARAM_END_OFFSET:Ljava/lang/String; = "end_offset"

.field private static final PARAM_FILE_SIZE:Ljava/lang/String; = "file_size"

.field private static final PARAM_REF:Ljava/lang/String; = "ref"

.field private static final PARAM_SESSION_ID:Ljava/lang/String; = "upload_session_id"

.field private static final PARAM_START_OFFSET:Ljava/lang/String; = "start_offset"

.field private static final PARAM_TITLE:Ljava/lang/String; = "title"

.field private static final PARAM_UPLOAD_PHASE:Ljava/lang/String; = "upload_phase"

.field private static final PARAM_VALUE_UPLOAD_FINISH_PHASE:Ljava/lang/String; = "finish"

.field private static final PARAM_VALUE_UPLOAD_START_PHASE:Ljava/lang/String; = "start"

.field private static final PARAM_VALUE_UPLOAD_TRANSFER_PHASE:Ljava/lang/String; = "transfer"

.field private static final PARAM_VIDEO_FILE_CHUNK:Ljava/lang/String; = "video_file_chunk"

.field private static final PARAM_VIDEO_ID:Ljava/lang/String; = "video_id"

.field private static final RETRY_DELAY_BACK_OFF_FACTOR:I = 0x3

.field private static final RETRY_DELAY_UNIT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "VideoUploader"

.field private static final UPLOAD_QUEUE_MAX_CONCURRENT:I = 0x8

.field private static accessTokenTracker:Lcom/facebook/AccessTokenTracker;

.field private static handler:Landroid/os/Handler;

.field private static initialized:Z

.field private static pendingUploads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/share/internal/VideoUploader$UploadContext;",
            ">;"
        }
    .end annotation
.end field

.field private static uploadQueue:Lcom/facebook/internal/WorkQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 95
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/share/internal/VideoUploader;->uploadQueue:Lcom/facebook/internal/WorkQueue;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/VideoUploader;->pendingUploads:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()V
    .registers 0

    .line 65
    invoke-static {}, Lcom/facebook/share/internal/VideoUploader;->cancelAllRequests()V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p0, "x0"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 65
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/share/internal/VideoUploader;->enqueueUploadChunk(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Exception;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Object;

    .line 65
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/VideoUploader;->logError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "x1"    # I

    .line 65
    invoke-static {p0, p1}, Lcom/facebook/share/internal/VideoUploader;->enqueueUploadStart(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4
    .param p0, "x0"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/VideoUploader;->getChunk(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "x1"    # I

    .line 65
    invoke-static {p0, p1}, Lcom/facebook/share/internal/VideoUploader;->enqueueUploadFinish(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    return-void
.end method

.method static synthetic access$800()Landroid/os/Handler;
    .registers 1

    .line 65
    invoke-static {}, Lcom/facebook/share/internal/VideoUploader;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/share/internal/VideoUploader$UploadContext;Lcom/facebook/FacebookException;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "x1"    # Lcom/facebook/FacebookException;
    .param p2, "x2"    # Ljava/lang/String;

    .line 65
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/VideoUploader;->issueResponse(Lcom/facebook/share/internal/VideoUploader$UploadContext;Lcom/facebook/FacebookException;Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized cancelAllRequests()V
    .registers 4

    const-class v0, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v0

    .line 136
    :try_start_3
    sget-object v1, Lcom/facebook/share/internal/VideoUploader;->pendingUploads:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/share/internal/VideoUploader$UploadContext;

    .line 137
    .local v2, "uploadContext":Lcom/facebook/share/internal/VideoUploader$UploadContext;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/facebook/share/internal/VideoUploader$UploadContext;->isCanceled:Z
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1b

    .line 138
    .end local v2    # "uploadContext":Lcom/facebook/share/internal/VideoUploader$UploadContext;
    goto :goto_9

    .line 139
    :cond_19
    monitor-exit v0

    return-void

    .line 135
    :catchall_1b
    move-exception v1

    monitor-exit v0

    goto :goto_1f

    :goto_1e
    throw v1

    :goto_1f
    goto :goto_1e
.end method

.method private static declared-synchronized enqueueRequest(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/Runnable;)V
    .registers 4
    .param p0, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "workItem"    # Ljava/lang/Runnable;

    const-class v0, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v0

    .line 207
    :try_start_3
    sget-object v1, Lcom/facebook/share/internal/VideoUploader;->uploadQueue:Lcom/facebook/internal/WorkQueue;

    invoke-virtual {v1, p1}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 208
    monitor-exit v0

    return-void

    .line 206
    .end local p0    # "uploadContext":Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .end local p1    # "workItem":Ljava/lang/Runnable;
    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static enqueueUploadChunk(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p0, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "chunkStart"    # Ljava/lang/String;
    .param p2, "chunkEnd"    # Ljava/lang/String;
    .param p3, "completedRetries"    # I

    .line 187
    new-instance v0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p0, v0}, Lcom/facebook/share/internal/VideoUploader;->enqueueRequest(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method private static enqueueUploadFinish(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    .registers 3
    .param p0, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "completedRetries"    # I

    .line 197
    new-instance v0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;

    invoke-direct {v0, p0, p1}, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    invoke-static {p0, v0}, Lcom/facebook/share/internal/VideoUploader;->enqueueRequest(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method private static enqueueUploadStart(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    .registers 3
    .param p0, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "completedRetries"    # I

    .line 175
    new-instance v0, Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;

    invoke-direct {v0, p0, p1}, Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    invoke-static {p0, v0}, Lcom/facebook/share/internal/VideoUploader;->enqueueRequest(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method private static getChunk(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 19
    .param p0, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "chunkStart"    # Ljava/lang/String;
    .param p2, "chunkEnd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->chunkStart:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v2, :cond_1e

    .line 217
    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->chunkStart:Ljava/lang/String;

    aput-object v4, v2, v5

    aput-object v1, v2, v3

    const-string v3, "Error reading video chunk. Expected chunk \'%s\'. Requested chunk \'%s\'."

    invoke-static {v6, v3, v2}, Lcom/facebook/share/internal/VideoUploader;->logError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    return-object v6

    .line 225
    :cond_1e
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 226
    .local v7, "chunkStartLong":J
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 227
    .local v9, "chunkEndLong":J
    sub-long v11, v9, v7

    long-to-int v2, v11

    .line 229
    .local v2, "chunkSize":I
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 230
    .local v11, "byteBufferStream":Ljava/io/ByteArrayOutputStream;
    const/16 v12, 0x2000

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 231
    .local v12, "bufferSize":I
    new-array v13, v12, [B

    .line 234
    .local v13, "buffer":[B
    :goto_36
    iget-object v14, v0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoStream:Ljava/io/InputStream;

    invoke-virtual {v14, v13}, Ljava/io/InputStream;->read([B)I

    move-result v14

    move v15, v14

    .local v15, "len":I
    const/4 v6, -0x1

    if-eq v14, v6, :cond_62

    .line 235
    invoke-virtual {v11, v13, v5, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 237
    sub-int/2addr v2, v15

    .line 238
    if-nez v2, :cond_47

    .line 240
    goto :goto_62

    .line 241
    :cond_47
    if-gez v2, :cond_60

    .line 243
    new-array v4, v4, [Ljava/lang/Object;

    add-int v6, v2, v15

    .line 246
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 247
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 243
    const-string v3, "Error reading video chunk. Expected buffer length - \'%d\'. Actual - \'%d\'."

    const/4 v6, 0x0

    invoke-static {v6, v3, v4}, Lcom/facebook/share/internal/VideoUploader;->logError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    return-object v6

    .line 241
    :cond_60
    const/4 v6, 0x0

    goto :goto_36

    .line 252
    :cond_62
    :goto_62
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->chunkStart:Ljava/lang/String;

    .line 254
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method private static declared-synchronized getHandler()Landroid/os/Handler;
    .registers 3

    const-class v0, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v0

    .line 147
    :try_start_3
    sget-object v1, Lcom/facebook/share/internal/VideoUploader;->handler:Landroid/os/Handler;

    if-nez v1, :cond_12

    .line 148
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/facebook/share/internal/VideoUploader;->handler:Landroid/os/Handler;

    .line 150
    :cond_12
    sget-object v1, Lcom/facebook/share/internal/VideoUploader;->handler:Landroid/os/Handler;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object v1

    .line 146
    :catchall_16
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static issueResponse(Lcom/facebook/share/internal/VideoUploader$UploadContext;Lcom/facebook/FacebookException;Ljava/lang/String;)V
    .registers 4
    .param p0, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "error"    # Lcom/facebook/FacebookException;
    .param p2, "videoId"    # Ljava/lang/String;

    .line 159
    invoke-static {p0}, Lcom/facebook/share/internal/VideoUploader;->removePendingUpload(Lcom/facebook/share/internal/VideoUploader$UploadContext;)V

    .line 161
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 163
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->callback:Lcom/facebook/FacebookCallback;

    if-eqz v0, :cond_23

    .line 164
    if-eqz p1, :cond_14

    .line 165
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->callback:Lcom/facebook/FacebookCallback;

    invoke-static {v0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookException;)V

    goto :goto_23

    .line 166
    :cond_14
    iget-boolean v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->isCanceled:Z

    if-eqz v0, :cond_1e

    .line 167
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->callback:Lcom/facebook/FacebookCallback;

    invoke-static {v0}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnCancelCallback(Lcom/facebook/FacebookCallback;)V

    goto :goto_23

    .line 169
    :cond_1e
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->callback:Lcom/facebook/FacebookCallback;

    invoke-static {v0, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnSuccessCallback(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V

    .line 172
    :cond_23
    :goto_23
    return-void
.end method

.method private static varargs logError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 283
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoUploader"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    return-void
.end method

.method private static registerAccessTokenTracker()V
    .registers 1

    .line 258
    new-instance v0, Lcom/facebook/share/internal/VideoUploader$1;

    invoke-direct {v0}, Lcom/facebook/share/internal/VideoUploader$1;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/VideoUploader;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    .line 277
    return-void
.end method

.method private static declared-synchronized removePendingUpload(Lcom/facebook/share/internal/VideoUploader$UploadContext;)V
    .registers 3
    .param p0, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;

    const-class v0, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v0

    .line 143
    :try_start_3
    sget-object v1, Lcom/facebook/share/internal/VideoUploader;->pendingUploads:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 144
    monitor-exit v0

    return-void

    .line 142
    .end local p0    # "uploadContext":Lcom/facebook/share/internal/VideoUploader$UploadContext;
    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized uploadAsync(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/FacebookCallback;)V
    .registers 4
    .param p0, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareVideoContent;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .local p1, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    const-class v0, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v0

    .line 105
    :try_start_3
    const-string v1, "me"

    invoke-static {p0, v1, p1}, Lcom/facebook/share/internal/VideoUploader;->uploadAsync(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 106
    monitor-exit v0

    return-void

    .line 104
    .end local p0    # "videoContent":Lcom/facebook/share/model/ShareVideoContent;
    .end local p1    # "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized uploadAsync(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V
    .registers 8
    .param p0, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;
    .param p1, "graphNode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareVideoContent;",
            "Ljava/lang/String;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    const-class v0, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v0

    .line 113
    :try_start_3
    sget-boolean v1, Lcom/facebook/share/internal/VideoUploader;->initialized:Z

    if-nez v1, :cond_d

    .line 114
    invoke-static {}, Lcom/facebook/share/internal/VideoUploader;->registerAccessTokenTracker()V

    .line 115
    const/4 v1, 0x1

    sput-boolean v1, Lcom/facebook/share/internal/VideoUploader;->initialized:Z

    .line 118
    :cond_d
    const-string v1, "videoContent"

    invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    const-string v1, "graphNode"

    invoke-static {p1, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getVideo()Lcom/facebook/share/model/ShareVideo;

    move-result-object v1

    .line 121
    .local v1, "video":Lcom/facebook/share/model/ShareVideo;
    const-string v2, "videoContent.video"

    invoke-static {v1, v2}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Lcom/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object v2

    .line 123
    .local v2, "videoUri":Landroid/net/Uri;
    const-string v3, "videoContent.video.localUrl"

    invoke-static {v2, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v3, Lcom/facebook/share/internal/VideoUploader$UploadContext;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, p2, v4}, Lcom/facebook/share/internal/VideoUploader$UploadContext;-><init>(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/facebook/FacebookCallback;Lcom/facebook/share/internal/VideoUploader$1;)V

    .line 126
    .local v3, "uploadContext":Lcom/facebook/share/internal/VideoUploader$UploadContext;
    # invokes: Lcom/facebook/share/internal/VideoUploader$UploadContext;->initialize()V
    invoke-static {v3}, Lcom/facebook/share/internal/VideoUploader$UploadContext;->access$100(Lcom/facebook/share/internal/VideoUploader$UploadContext;)V

    .line 128
    sget-object v4, Lcom/facebook/share/internal/VideoUploader;->pendingUploads:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/facebook/share/internal/VideoUploader;->enqueueUploadStart(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_3d

    .line 133
    monitor-exit v0

    return-void

    .line 112
    .end local v1    # "video":Lcom/facebook/share/model/ShareVideo;
    .end local v2    # "videoUri":Landroid/net/Uri;
    .end local v3    # "uploadContext":Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .end local p0    # "videoContent":Lcom/facebook/share/model/ShareVideoContent;
    .end local p1    # "graphNode":Ljava/lang/String;
    .end local p2    # "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    :catchall_3d
    move-exception p0

    monitor-exit v0

    throw p0
.end method
