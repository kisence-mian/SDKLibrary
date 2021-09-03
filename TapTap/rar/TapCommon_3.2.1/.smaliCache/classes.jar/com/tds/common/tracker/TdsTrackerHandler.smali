.class public Lcom/tds/common/tracker/TdsTrackerHandler;
.super Landroid/os/Handler;
.source "TdsTrackerHandler.java"


# static fields
.field private static final DEFAULT_SAVE_TIME_INTERVAL:J = 0x1f4L

.field public static final DELAY_MILLIS:I = 0x1388

.field private static final LOG_DELAY:I = 0x2

.field private static final LOG_READ_FROM_CACHE:I = 0x0

.field private static final LOG_SEND:I = 0x1

.field public static final MESSAGES_EXCEED:I = 0x7d0

.field private static final SAVE_UNSENT_LOGS:I = 0x3

.field private static final SUFFIX_TOPIC_COUNT_PREFERENCE:Ljava/lang/String; = "_topic_count_preference"

.field private static final SUFFIX_TOPIC_DATA_SIZE_PREFERENCE:Ljava/lang/String; = "_topic_data_size_preference"

.field public static final TAG:Ljava/lang/String; = "TdsTrackerHandler"

.field private static final TOPIC_PREFERENCE:Ljava/lang/String; = "topic_preference"

.field private static final unReadCacheSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lastSaveTime:J

.field private final mSp:Lcom/tds/common/utils/SP;

.field messageListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tds/common/tracker/entities/TrackMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private readUnSendData:Z

.field tdsApiClient:Lcom/tds/common/net/TdsApiClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/tds/common/tracker/TdsTrackerHandler;->unReadCacheSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 6
    .param p1, "looper"    # Landroid/os/Looper;

    .line 77
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tds/common/tracker/TdsTrackerHandler;->lastSaveTime:J

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/common/tracker/TdsTrackerHandler;->readUnSendData:Z

    .line 74
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/tds/common/tracker/TdsTrackerHandler;->messageListMap:Ljava/util/Map;

    .line 78
    invoke-static {}, Lcom/tds/common/net/TdsHttp;->newClientBuilder()Lcom/tds/common/net/TdsHttp$Client$Builder;

    move-result-object v1

    .line 79
    invoke-virtual {v1, v0}, Lcom/tds/common/net/TdsHttp$Client$Builder;->trustAllCerts(Z)Lcom/tds/common/net/TdsHttp$Client$Builder;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/tds/common/net/TdsHttp$Client$Builder;->build()Lcom/tds/common/net/TdsHttp$Client;

    move-result-object v1

    .line 81
    .local v1, "client":Lcom/tds/common/net/TdsHttp$Client;
    new-instance v2, Lcom/tds/common/net/TdsApiClient$Builder;

    invoke-direct {v2}, Lcom/tds/common/net/TdsApiClient$Builder;-><init>()V

    .line 82
    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/tds/common/net/TdsApiClient$Builder;->baseUrl(Ljava/lang/String;)Lcom/tds/common/net/TdsApiClient$Builder;

    move-result-object v2

    .line 83
    invoke-virtual {v2, v1}, Lcom/tds/common/net/TdsApiClient$Builder;->tdsClient(Lcom/tds/common/net/TdsHttp$Client;)Lcom/tds/common/net/TdsApiClient$Builder;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lcom/tds/common/net/TdsApiClient$Builder;->build()Lcom/tds/common/net/TdsApiClient;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/tracker/TdsTrackerHandler;->tdsApiClient:Lcom/tds/common/net/TdsApiClient;

    .line 85
    const-string v2, "TdsTrackerHandler"

    invoke-static {v2}, Lcom/tds/common/utils/SP;->getSP(Ljava/lang/String;)Lcom/tds/common/utils/SP;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/tracker/TdsTrackerHandler;->mSp:Lcom/tds/common/utils/SP;

    .line 86
    iput-boolean v0, p0, Lcom/tds/common/tracker/TdsTrackerHandler;->readUnSendData:Z

    .line 87
    invoke-virtual {p0}, Lcom/tds/common/tracker/TdsTrackerHandler;->sendReadFromCacheMessage()V

    .line 89
    return-void
.end method

.method private checkAbnormal(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/common/tracker/entities/TrackMessage;",
            ">;)Z"
        }
    .end annotation

    .line 158
    .local p1, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/tracker/entities/TrackMessage;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    move v1, v0

    .line 159
    .local v1, "isAbnormal":Z
    :goto_e
    if-eqz v1, :cond_30

    .line 160
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/common/tracker/entities/TrackMessage;

    iget-object v2, v2, Lcom/tds/common/tracker/entities/TrackMessage;->tdsTrackerConfig:Lcom/tds/common/tracker/TdsTrackerConfig;

    .line 161
    .local v2, "tdsTrackerConfig":Lcom/tds/common/tracker/TdsTrackerConfig;
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 162
    invoke-direct {p0, v2}, Lcom/tds/common/tracker/TdsTrackerHandler;->saveUnSendTrackMessageToFile(Lcom/tds/common/tracker/TdsTrackerConfig;)V

    .line 163
    invoke-static {}, Lcom/tds/common/reactor/RxBus;->getInstance()Lcom/tds/common/reactor/RxBus;

    move-result-object v3

    new-instance v4, Lcom/tds/common/tracker/entities/TwoTuple;

    iget-object v5, v2, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/tds/common/tracker/entities/TwoTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/tds/common/reactor/RxBus;->send(Ljava/lang/Object;)V

    .line 165
    .end local v2    # "tdsTrackerConfig":Lcom/tds/common/tracker/TdsTrackerConfig;
    :cond_30
    return v1
.end method

.method private checkShouldUpload()Z
    .registers 2

    .line 154
    invoke-direct {p0}, Lcom/tds/common/tracker/TdsTrackerHandler;->hasUnSendTrackMessage()Z

    move-result v0

    return v0
.end method

.method private doUploadLog()V
    .registers 13

    .line 377
    const-string v0, "TdsTrackerHandler"

    const-string v1, "-------doUploadLog()-------start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v1, p0, Lcom/tds/common/tracker/TdsTrackerHandler;->messageListMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 379
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/tds/common/tracker/entities/TrackMessage;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7d

    .line 380
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 381
    .local v3, "trackMessagesList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/tracker/entities/TrackMessage;>;"
    :goto_29
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7d

    .line 382
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tds/common/tracker/entities/TrackMessage;

    iget-object v5, v5, Lcom/tds/common/tracker/entities/TrackMessage;->tdsTrackerConfig:Lcom/tds/common/tracker/TdsTrackerConfig;

    .line 383
    .local v5, "logConfig":Lcom/tds/common/tracker/TdsTrackerConfig;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    iget v7, v5, Lcom/tds/common/tracker/TdsTrackerConfig;->groupSize:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 385
    .local v6, "dealSize":I
    :try_start_42
    invoke-direct {p0, v3}, Lcom/tds/common/tracker/TdsTrackerHandler;->checkAbnormal(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_49

    return-void

    .line 386
    :cond_49
    invoke-interface {v3, v4, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    .line 387
    .local v4, "dealTrackMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/tracker/entities/TrackMessage;>;"
    invoke-direct {p0, v4}, Lcom/tds/common/tracker/TdsTrackerHandler;->sendTrackData(Ljava/util/List;)Z

    move-result v7

    .line 388
    .local v7, "success":Z
    if-eqz v7, :cond_71

    .line 389
    invoke-interface {v3, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 390
    invoke-direct {p0, v5}, Lcom/tds/common/tracker/TdsTrackerHandler;->saveUnSendTrackMessageToFile(Lcom/tds/common/tracker/TdsTrackerConfig;)V

    .line 391
    invoke-static {}, Lcom/tds/common/reactor/RxBus;->getInstance()Lcom/tds/common/reactor/RxBus;

    move-result-object v8

    new-instance v9, Lcom/tds/common/tracker/entities/TwoTuple;

    iget-object v10, v5, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/tds/common/tracker/entities/TwoTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Lcom/tds/common/reactor/RxBus;->send(Ljava/lang/Object;)V

    .line 401
    .end local v4    # "dealTrackMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/tracker/entities/TrackMessage;>;"
    .end local v7    # "success":Z
    nop

    .line 402
    .end local v5    # "logConfig":Lcom/tds/common/tracker/TdsTrackerConfig;
    .end local v6    # "dealSize":I
    goto :goto_29

    .line 393
    .restart local v4    # "dealTrackMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/tracker/entities/TrackMessage;>;"
    .restart local v5    # "logConfig":Lcom/tds/common/tracker/TdsTrackerConfig;
    .restart local v6    # "dealSize":I
    .restart local v7    # "success":Z
    :cond_71
    invoke-virtual {p0}, Lcom/tds/common/tracker/TdsTrackerHandler;->sendLogMessageDelayed()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_74} :catch_75

    .line 394
    return-void

    .line 396
    .end local v4    # "dealTrackMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/tracker/entities/TrackMessage;>;"
    .end local v7    # "success":Z
    :catch_75
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/tds/common/tracker/TdsTrackerHandler;->sendLogMessageDelayed()V

    .line 399
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    return-void

    .line 404
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/tds/common/tracker/entities/TrackMessage;>;>;"
    .end local v3    # "trackMessagesList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/tracker/entities/TrackMessage;>;"
    .end local v5    # "logConfig":Lcom/tds/common/tracker/TdsTrackerConfig;
    .end local v6    # "dealSize":I
    :cond_7d
    goto :goto_11

    .line 406
    :cond_7e
    const-string v1, "-------doUploadLog()-------end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void
.end method

.method private getUnSendByteData(Ljava/lang/String;)Lcom/tds/common/tracker/entities/TwoTuple;
    .registers 7
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tds/common/tracker/entities/TwoTuple<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .line 275
    const-string v0, "TdsTrackerHandler"

    const-string v1, "-------getUnSendByteData-------start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v1, 0x0

    .line 277
    .local v1, "data":[B
    iget-object v2, p0, Lcom/tds/common/tracker/TdsTrackerHandler;->messageListMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 278
    .local v2, "trackMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/tracker/entities/TrackMessage;>;"
    if-eqz v2, :cond_27

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_27

    .line 280
    :try_start_18
    new-instance v3, Lcom/tds/common/tracker/entities/TrackMessageList;

    invoke-direct {v3, v2}, Lcom/tds/common/tracker/entities/TrackMessageList;-><init>(Ljava/util/List;)V

    invoke-static {v3}, Lcom/tds/common/utils/ParcelableUtil;->marshall(Landroid/os/Parcelable;)[B

    move-result-object v3
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_23

    move-object v1, v3

    .line 283
    goto :goto_27

    .line 281
    :catch_23
    move-exception v3

    .line 282
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 285
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_27
    :goto_27
    if-eqz v2, :cond_2e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x0

    .line 286
    .local v3, "size":I
    :goto_2f
    const-string v4, "-------getUnSendByteData-------end"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v0, Lcom/tds/common/tracker/entities/TwoTuple;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Lcom/tds/common/tracker/entities/TwoTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private hasUnSendTrackMessage()Z
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerHandler;->messageListMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 148
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/tds/common/tracker/entities/TrackMessage;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_24

    const/4 v0, 0x1

    return v0

    .line 149
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/tds/common/tracker/entities/TrackMessage;>;>;"
    :cond_24
    goto :goto_a

    .line 150
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method private makeLogContents(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tds/common/tracker/entities/LogBean$LogContent;",
            ">;"
        }
    .end annotation

    .line 445
    .local p1, "logContentsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "commonParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/tracker/entities/LogBean$LogContent;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 447
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->newBuilder()Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;

    move-result-object v3

    .line 448
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->setKey(Ljava/lang/String;)Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;

    move-result-object v3

    .line 449
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->setValue(Ljava/lang/String;)Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->build()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v3

    .line 447
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_d

    .line 452
    :cond_39
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 453
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$LogContent;->newBuilder()Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;

    move-result-object v3

    .line 454
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->setKey(Ljava/lang/String;)Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;

    move-result-object v3

    .line 455
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->setValue(Ljava/lang/String;)Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;->build()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v3

    .line 453
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_41

    .line 458
    :cond_6d
    return-object v0
.end method

.method private makeLogGroup(Ljava/util/List;)Lcom/tds/common/tracker/entities/LogBean$LogGroup;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/common/tracker/entities/TrackMessage;",
            ">;)",
            "Lcom/tds/common/tracker/entities/LogBean$LogGroup;"
        }
    .end annotation

    .line 422
    .local p1, "trackMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/tracker/entities/TrackMessage;>;"
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->newBuilder()Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;

    move-result-object v0

    .line 423
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/tracker/entities/TrackMessage;

    iget-object v1, v1, Lcom/tds/common/tracker/entities/TrackMessage;->tdsTrackerConfig:Lcom/tds/common/tracker/TdsTrackerConfig;

    iget-object v1, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->setTopic(Ljava/lang/String;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;

    move-result-object v0

    .line 424
    .local v0, "builder":Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/TdsTrackerHandler;->makeLogs(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->addAllLogs(Ljava/lang/Iterable;)Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;

    .line 425
    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup$Builder;->build()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    return-object v1
.end method

.method private makeLogs(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/common/tracker/entities/TrackMessage;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tds/common/tracker/entities/LogBean$Log;",
            ">;"
        }
    .end annotation

    .line 429
    .local p1, "trackMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/tracker/entities/TrackMessage;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/tracker/entities/LogBean$Log;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/common/tracker/entities/TrackMessage;

    .line 431
    .local v2, "trackMessage":Lcom/tds/common/tracker/entities/TrackMessage;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contents:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/tds/common/tracker/entities/TrackMessage;->logContentsMap:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n common params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/tds/common/tracker/entities/TrackMessage;->logCommonParams:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "trackerData"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$Log;->newBuilder()Lcom/tds/common/tracker/entities/LogBean$Log$Builder;

    move-result-object v3

    iget-wide v4, v2, Lcom/tds/common/tracker/entities/TrackMessage;->createTime:J

    long-to-int v4, v4

    .line 433
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->setTime(I)Lcom/tds/common/tracker/entities/LogBean$Log$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/tds/common/tracker/entities/TrackMessage;->logContentsMap:Ljava/util/Map;

    iget-object v5, v2, Lcom/tds/common/tracker/entities/TrackMessage;->logCommonParams:Ljava/util/Map;

    .line 434
    invoke-direct {p0, v4, v5}, Lcom/tds/common/tracker/TdsTrackerHandler;->makeLogContents(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->addAllContents(Ljava/lang/Iterable;)Lcom/tds/common/tracker/entities/LogBean$Log$Builder;

    move-result-object v3

    .line 436
    invoke-virtual {v3}, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->build()Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/tds/common/tracker/entities/LogBean$Log;

    .line 437
    .local v3, "log":Lcom/tds/common/tracker/entities/LogBean$Log;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    .end local v2    # "trackMessage":Lcom/tds/common/tracker/entities/TrackMessage;
    .end local v3    # "log":Lcom/tds/common/tracker/entities/LogBean$Log;
    goto :goto_9

    .line 439
    :cond_62
    return-object v0
.end method

.method private makeProtoBufferData(Ljava/util/List;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/common/tracker/entities/TrackMessage;",
            ">;)[B"
        }
    .end annotation

    .line 418
    .local p1, "trackMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/tracker/entities/TrackMessage;>;"
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/TdsTrackerHandler;->makeLogGroup(Ljava/util/List;)Lcom/tds/common/tracker/entities/LogBean$LogGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$LogGroup;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private readUnSendTrackMessageFromCache()V
    .registers 15

    .line 212
    const-string v0, "topic:"

    const-string v1, "TdsTrackerHandler"

    const-string v2, "-------readUnSendTrackMessageFromCache-------start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v2, p0, Lcom/tds/common/tracker/TdsTrackerHandler;->mSp:Lcom/tds/common/utils/SP;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string v4, "topic_preference"

    invoke-virtual {v2, v4, v3}, Lcom/tds/common/utils/SP;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 214
    .local v2, "topicCaches":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_121

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 216
    .local v4, "cachePath":Ljava/lang/String;
    :try_start_26
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cachePath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, "topic":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v6, p0, Lcom/tds/common/tracker/TdsTrackerHandler;->mSp:Lcom/tds/common/utils/SP;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_topic_data_size_preference"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/tds/common/utils/SP;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 220
    .local v6, "sourceLength":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {v4}, Lcom/tds/common/utils/FileUtil;->returnFileByte(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7, v6}, Lcom/tds/common/utils/Lz4Util;->decompressorByte([BI)[B

    move-result-object v7

    .line 222
    .local v7, "unSendData":[B
    sget-object v8, Lcom/tds/common/tracker/entities/TrackMessageList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v7, v8}, Lcom/tds/common/utils/ParcelableUtil;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tds/common/tracker/entities/TrackMessageList;

    iget-object v8, v8, Lcom/tds/common/tracker/entities/TrackMessageList;->trackMessageList:Ljava/util/List;

    .line 223
    .local v8, "unSendtrackMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/tracker/entities/TrackMessage;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unSendtrackMessageList size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {v8}, Lcom/tds/common/utils/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_c5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v9

    .line 225
    :cond_c5
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_106

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tds/common/tracker/entities/TrackMessage;

    .line 226
    .local v10, "trackMessage":Lcom/tds/common/tracker/entities/TrackMessage;
    if-eqz v10, :cond_105

    iget-object v11, v10, Lcom/tds/common/tracker/entities/TrackMessage;->tdsTrackerConfig:Lcom/tds/common/tracker/TdsTrackerConfig;

    if-eqz v11, :cond_105

    iget-object v11, v10, Lcom/tds/common/tracker/entities/TrackMessage;->tdsTrackerConfig:Lcom/tds/common/tracker/TdsTrackerConfig;

    iget-object v11, v11, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_105

    .line 227
    iget-object v11, p0, Lcom/tds/common/tracker/TdsTrackerHandler;->messageListMap:Ljava/util/Map;

    iget-object v12, v10, Lcom/tds/common/tracker/entities/TrackMessage;->tdsTrackerConfig:Lcom/tds/common/tracker/TdsTrackerConfig;

    iget-object v12, v12, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 228
    .local v11, "trackMessageList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/tds/common/tracker/entities/TrackMessage;>;"
    if-nez v11, :cond_102

    .line 229
    new-instance v12, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    move-object v11, v12

    .line 230
    iget-object v12, p0, Lcom/tds/common/tracker/TdsTrackerHandler;->messageListMap:Ljava/util/Map;

    iget-object v13, v10, Lcom/tds/common/tracker/entities/TrackMessage;->tdsTrackerConfig:Lcom/tds/common/tracker/TdsTrackerConfig;

    iget-object v13, v13, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-interface {v12, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_102
    invoke-virtual {v11, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .end local v10    # "trackMessage":Lcom/tds/common/tracker/entities/TrackMessage;
    .end local v11    # "trackMessageList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/tds/common/tracker/entities/TrackMessage;>;"
    :cond_105
    goto :goto_c9

    .line 235
    :cond_106
    invoke-static {}, Lcom/tds/common/reactor/RxBus;->getInstance()Lcom/tds/common/reactor/RxBus;

    move-result-object v9

    new-instance v10, Lcom/tds/common/tracker/entities/TwoTuple;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v5, v11}, Lcom/tds/common/tracker/entities/TwoTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Lcom/tds/common/reactor/RxBus;->send(Ljava/lang/Object;)V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_11a} :catch_11b

    .line 238
    .end local v5    # "topic":Ljava/lang/String;
    .end local v6    # "sourceLength":I
    .end local v7    # "unSendData":[B
    .end local v8    # "unSendtrackMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/tracker/entities/TrackMessage;>;"
    goto :goto_11f

    .line 236
    :catch_11b
    move-exception v5

    .line 237
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 239
    .end local v4    # "cachePath":Ljava/lang/String;
    .end local v5    # "e":Ljava/io/IOException;
    :goto_11f
    goto/16 :goto_1a

    .line 241
    :cond_121
    invoke-direct {p0}, Lcom/tds/common/tracker/TdsTrackerHandler;->checkShouldUpload()Z

    move-result v0

    if-eqz v0, :cond_12a

    invoke-direct {p0}, Lcom/tds/common/tracker/TdsTrackerHandler;->doUploadLog()V

    .line 242
    :cond_12a
    const-string v0, "-------readUnSendTrackMessageFromCache-------end"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method

.method private saveUnSendTrackMessageToFile(Lcom/tds/common/tracker/TdsTrackerConfig;)V
    .registers 19
    .param p1, "tdsTrackerConfig"    # Lcom/tds/common/tracker/TdsTrackerConfig;

    .line 246
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "TdsTrackerHandler"

    const-string v3, "-------saveUnSendTrackMessageToFile-------start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 248
    .local v3, "startTime":J
    iget-object v5, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->cachePath:Ljava/lang/String;

    .line 249
    .local v5, "filePath":Ljava/lang/String;
    iget-object v6, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/tds/common/tracker/TdsTrackerHandler;->getUnSendByteData(Ljava/lang/String;)Lcom/tds/common/tracker/entities/TwoTuple;

    move-result-object v6

    .line 250
    .local v6, "twoTuple":Lcom/tds/common/tracker/entities/TwoTuple;, "Lcom/tds/common/tracker/entities/TwoTuple<Ljava/lang/Integer;[B>;"
    iget-object v7, v6, Lcom/tds/common/tracker/entities/TwoTuple;->paramA:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 251
    .local v7, "size":I
    iget-object v8, v6, Lcom/tds/common/tracker/entities/TwoTuple;->paramB:Ljava/lang/Object;

    check-cast v8, [B

    .line 252
    .local v8, "unSendData":[B
    iget-object v9, v0, Lcom/tds/common/tracker/TdsTrackerHandler;->mSp:Lcom/tds/common/utils/SP;

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    const-string v11, "topic_preference"

    invoke-virtual {v9, v11, v10}, Lcom/tds/common/utils/SP;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v9

    .line 253
    .local v9, "topicSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "topic:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v10, "_topic_count_preference"

    const-string v12, "_topic_data_size_preference"

    if-nez v8, :cond_8f

    .line 255
    const-string v13, "no unsave data"

    invoke-static {v2, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v13, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->cachePath:Ljava/lang/String;

    invoke-interface {v9, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 257
    iget-object v13, v0, Lcom/tds/common/tracker/TdsTrackerHandler;->mSp:Lcom/tds/common/utils/SP;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Lcom/tds/common/utils/SP;->putInt(Ljava/lang/String;I)V

    .line 258
    iget-object v12, v0, Lcom/tds/common/tracker/TdsTrackerHandler;->mSp:Lcom/tds/common/utils/SP;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10, v14}, Lcom/tds/common/utils/SP;->putInt(Ljava/lang/String;I)V

    .line 259
    invoke-static {v5}, Lcom/tds/common/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    move-object/from16 v16, v6

    goto :goto_d3

    .line 261
    :cond_8f
    const-string v13, "save data"

    invoke-static {v2, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    array-length v13, v8

    .line 263
    .local v13, "originSize":I
    iget-object v14, v0, Lcom/tds/common/tracker/TdsTrackerHandler;->mSp:Lcom/tds/common/utils/SP;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v6

    .end local v6    # "twoTuple":Lcom/tds/common/tracker/entities/TwoTuple;, "Lcom/tds/common/tracker/entities/TwoTuple<Ljava/lang/Integer;[B>;"
    .local v16, "twoTuple":Lcom/tds/common/tracker/entities/TwoTuple;, "Lcom/tds/common/tracker/entities/TwoTuple<Ljava/lang/Integer;[B>;"
    iget-object v6, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6, v13}, Lcom/tds/common/utils/SP;->putInt(Ljava/lang/String;I)V

    .line 264
    iget-object v6, v0, Lcom/tds/common/tracker/TdsTrackerHandler;->mSp:Lcom/tds/common/utils/SP;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v7}, Lcom/tds/common/utils/SP;->putInt(Ljava/lang/String;I)V

    .line 265
    iget-object v6, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->cachePath:Ljava/lang/String;

    invoke-interface {v9, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-static {v8}, Lcom/tds/common/utils/Lz4Util;->compressedByte([B)[B

    move-result-object v6

    invoke-static {v6, v5}, Lcom/tds/common/utils/FileUtil;->createFile([BLjava/lang/String;)V

    .line 269
    .end local v13    # "originSize":I
    :goto_d3
    iget-object v6, v0, Lcom/tds/common/tracker/TdsTrackerHandler;->mSp:Lcom/tds/common/utils/SP;

    invoke-virtual {v6, v11, v9}, Lcom/tds/common/utils/SP;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    .line 271
    .local v10, "spentTime":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "-------saveUnSendTrackMessageToFile-------end:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "ms"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void
.end method

.method private sendTrackData(Ljava/util/List;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/common/tracker/entities/TrackMessage;",
            ">;)Z"
        }
    .end annotation

    .line 333
    .local p1, "trackMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/tracker/entities/TrackMessage;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/tracker/entities/TrackMessage;

    iget-object v1, v1, Lcom/tds/common/tracker/entities/TrackMessage;->tdsTrackerConfig:Lcom/tds/common/tracker/TdsTrackerConfig;

    .line 335
    .local v1, "tdsTrackerConfig":Lcom/tds/common/tracker/TdsTrackerConfig;
    :try_start_9
    invoke-direct {p0, p1}, Lcom/tds/common/tracker/TdsTrackerHandler;->makeProtoBufferData(Ljava/util/List;)[B

    move-result-object v2

    .line 336
    .local v2, "logBufferData":[B
    invoke-static {v2}, Lcom/tds/common/utils/Lz4Util;->compressedByte([B)[B

    move-result-object v3

    .line 337
    .local v3, "lz4LogBufferData":[B
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 338
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v3}, Lcom/tds/common/utils/CommonUtils;->getMD5([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, "md5Buf":Ljava/lang/String;
    invoke-static {}, Lcom/tds/common/utils/TimeUtil;->getUnixTimestampStr()Ljava/lang/String;

    move-result-object v6

    .line 340
    .local v6, "currentTime":Ljava/lang/String;
    const-string v7, "POST\n%s\napplication/x-protobuf\nx-log-apiversion:0.6.0\nx-log-bodyrawsize:%d\nx-log-compresstype:lz4\nx-log-signaturemethod:hmac-sha1\nx-log-timestamp:%s\n/putrecords/%s/%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v0

    array-length v9, v2

    .line 349
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    aput-object v6, v8, v9

    const/4 v11, 0x3

    iget-object v12, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->project:Ljava/lang/String;

    aput-object v12, v8, v11

    const/4 v11, 0x4

    iget-object v12, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->logStore:Ljava/lang/String;

    aput-object v12, v8, v11

    .line 340
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 350
    .local v7, "sigContent":Ljava/lang/String;
    const-string v8, ""
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_44} :catch_e7

    .line 352
    .local v8, "signBase64":Ljava/lang/String;
    :try_start_44
    iget-object v11, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->accessKeySecret:Ljava/lang/String;

    invoke-direct {p0, v7, v11}, Lcom/tds/common/tracker/TdsTrackerHandler;->signatureToBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_4a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_44 .. :try_end_4a} :catch_4c
    .catch Ljava/security/InvalidKeyException; {:try_start_44 .. :try_end_4a} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4a} :catch_e7

    move-object v8, v11

    .line 355
    goto :goto_50

    .line 353
    :catch_4c
    move-exception v11

    .line 354
    .local v11, "e":Ljava/security/GeneralSecurityException;
    :try_start_4d
    invoke-virtual {v11}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 356
    .end local v11    # "e":Ljava/security/GeneralSecurityException;
    :goto_50
    const-string v11, "LOG %s:%s"

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v12, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->accessKeyId:Ljava/lang/String;

    aput-object v12, v9, v0

    aput-object v8, v9, v10

    invoke-static {v11, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 357
    .local v9, "headerSig":Ljava/lang/String;
    const-string v10, "x-log-timestamp"

    invoke-interface {v4, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v10, "Content-MD5"

    invoke-interface {v4, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v10, "Content-Length"

    array-length v11, v3

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v10, "x-log-bodyrawsize"

    array-length v11, v2

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v10, "Authorization"

    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v10, "Content-Type"

    const-string v11, "application/x-protobuf"

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v10, "x-log-apiversion"

    const-string v11, "0.6.0"

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v10, "x-log-compresstype"

    const-string v11, "lz4"

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v10, "x-log-signaturemethod"

    const-string v11, "hmac-sha1"

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v10, "Host"

    iget-object v11, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->endPoint:Ljava/lang/String;

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v10, "accept"

    const-string v11, "*/*"

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v10, "Accept-Encoding"

    const-string v11, "identity"

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v10, p0, Lcom/tds/common/tracker/TdsTrackerHandler;->tdsApiClient:Lcom/tds/common/net/TdsApiClient;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "https://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->endPoint:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/putrecords/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->project:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->logStore:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v4, v3}, Lcom/tds/common/net/TdsApiClient;->postProtoBuff(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[B)Z

    move-result v0
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_e6} :catch_e7

    return v0

    .line 370
    .end local v2    # "logBufferData":[B
    .end local v3    # "lz4LogBufferData":[B
    .end local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "md5Buf":Ljava/lang/String;
    .end local v6    # "currentTime":Ljava/lang/String;
    .end local v7    # "sigContent":Ljava/lang/String;
    .end local v8    # "signBase64":Ljava/lang/String;
    .end local v9    # "headerSig":Ljava/lang/String;
    :catch_e7
    move-exception v2

    .line 371
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    .end local v2    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private signatureToBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "sigContent"    # Ljava/lang/String;
    .param p2, "accessKeySecret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 410
    const-string v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 411
    .local v1, "mac":Ljavax/crypto/Mac;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v0, v2

    .line 412
    .local v0, "signingKey":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 413
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    .line 414
    .local v2, "signatureBytes":[B
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v3
.end method


# virtual methods
.method public doUploadLog(Lcom/tds/common/tracker/entities/TrackMessage;)V
    .registers 11
    .param p1, "trackMessage"    # Lcom/tds/common/tracker/entities/TrackMessage;

    .line 292
    const-string v0, "TdsTrackerHandler"

    const-string v1, "-------doUploadLog(TrackMessage trackMessage)-------start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v1, p1, Lcom/tds/common/tracker/entities/TrackMessage;->tdsTrackerConfig:Lcom/tds/common/tracker/TdsTrackerConfig;

    .line 296
    .local v1, "tdsTrackerConfig":Lcom/tds/common/tracker/TdsTrackerConfig;
    iget-object v2, p0, Lcom/tds/common/tracker/TdsTrackerHandler;->messageListMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 297
    iget-object v2, p0, Lcom/tds/common/tracker/TdsTrackerHandler;->messageListMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .local v2, "trackMessagesList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/tds/common/tracker/entities/TrackMessage;>;"
    goto :goto_2a

    .line 299
    .end local v2    # "trackMessagesList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/tds/common/tracker/entities/TrackMessage;>;"
    :cond_1e
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 300
    .restart local v2    # "trackMessagesList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/tds/common/tracker/entities/TrackMessage;>;"
    iget-object v3, p0, Lcom/tds/common/tracker/TdsTrackerHandler;->messageListMap:Ljava/util/Map;

    iget-object v4, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :goto_2a
    if-eqz v2, :cond_ac

    invoke-direct {p0, v2}, Lcom/tds/common/tracker/TdsTrackerHandler;->checkAbnormal(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto/16 :goto_ac

    .line 306
    :cond_34
    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-static {}, Lcom/tds/common/reactor/RxBus;->getInstance()Lcom/tds/common/reactor/RxBus;

    move-result-object v3

    new-instance v4, Lcom/tds/common/tracker/entities/TwoTuple;

    iget-object v5, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/tds/common/tracker/entities/TwoTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/tds/common/reactor/RxBus;->send(Ljava/lang/Object;)V

    .line 311
    iget-object v3, p0, Lcom/tds/common/tracker/TdsTrackerHandler;->mSp:Lcom/tds/common/utils/SP;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_topic_count_preference"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/tds/common/utils/SP;->putInt(Ljava/lang/String;I)V

    .line 313
    :goto_6b
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    iget v4, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->groupSize:I

    if-lt v3, v4, :cond_9d

    .line 314
    const/4 v3, 0x0

    iget v4, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->groupSize:I

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 315
    .local v3, "dealTrackMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/tracker/entities/TrackMessage;>;"
    invoke-direct {p0, v3}, Lcom/tds/common/tracker/TdsTrackerHandler;->sendTrackData(Ljava/util/List;)Z

    move-result v4

    .line 316
    .local v4, "success":Z
    if-eqz v4, :cond_9d

    .line 317
    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 318
    invoke-direct {p0, v1}, Lcom/tds/common/tracker/TdsTrackerHandler;->saveUnSendTrackMessageToFile(Lcom/tds/common/tracker/TdsTrackerConfig;)V

    .line 319
    invoke-static {}, Lcom/tds/common/reactor/RxBus;->getInstance()Lcom/tds/common/reactor/RxBus;

    move-result-object v5

    new-instance v6, Lcom/tds/common/tracker/entities/TwoTuple;

    iget-object v7, v1, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/tds/common/tracker/entities/TwoTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Lcom/tds/common/reactor/RxBus;->send(Ljava/lang/Object;)V

    .line 323
    .end local v3    # "dealTrackMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/tracker/entities/TrackMessage;>;"
    .end local v4    # "success":Z
    goto :goto_6b

    .line 325
    :cond_9d
    invoke-direct {p0}, Lcom/tds/common/tracker/TdsTrackerHandler;->checkShouldUpload()Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 326
    invoke-virtual {p0}, Lcom/tds/common/tracker/TdsTrackerHandler;->sendLogMessageDelayed()V

    .line 328
    :cond_a6
    const-string v3, "-------doUploadLog(TrackMessage trackMessage)-------end"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void

    .line 303
    :cond_ac
    :goto_ac
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 170
    const-string v0, "TdsTrackerHandler"

    const-string v1, "------handleMessage------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :try_start_7
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_8e

    goto/16 :goto_87

    .line 195
    :pswitch_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 196
    .local v0, "current":J
    iget-wide v2, p0, Lcom/tds/common/tracker/TdsTrackerHandler;->lastSaveTime:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2b

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_23

    goto :goto_2b

    .line 200
    :cond_23
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/tds/common/tracker/TdsTrackerConfig;

    invoke-virtual {p0, v2, v4, v5}, Lcom/tds/common/tracker/TdsTrackerHandler;->sendSaveLogMessageDelay(Lcom/tds/common/tracker/TdsTrackerConfig;J)V

    .line 202
    goto :goto_87

    .line 197
    :cond_2b
    :goto_2b
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/tds/common/tracker/TdsTrackerConfig;

    invoke-direct {p0, v2}, Lcom/tds/common/tracker/TdsTrackerHandler;->saveUnSendTrackMessageToFile(Lcom/tds/common/tracker/TdsTrackerConfig;)V

    .line 198
    iput-wide v0, p0, Lcom/tds/common/tracker/TdsTrackerHandler;->lastSaveTime:J

    goto :goto_87

    .line 191
    .end local v0    # "current":J
    :pswitch_35
    const-string v1, "LOG_DELAY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0}, Lcom/tds/common/tracker/TdsTrackerHandler;->doUploadLog()V

    .line 193
    goto :goto_87

    .line 180
    :pswitch_3e
    const-string v1, "LOG_SEND"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/tds/common/tracker/entities/TrackMessage;

    if-nez v0, :cond_4a

    return-void

    .line 182
    :cond_4a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tds/common/tracker/entities/TrackMessage;

    .line 184
    .local v0, "logMessage":Lcom/tds/common/tracker/entities/TrackMessage;
    invoke-static {}, Lcom/tds/common/reactor/RxBus;->getInstance()Lcom/tds/common/reactor/RxBus;

    move-result-object v1

    new-instance v2, Lcom/tds/common/tracker/model/TrackEventUpdateAction;

    new-instance v3, Lcom/tds/common/tracker/entities/TwoTuple;

    iget-object v4, v0, Lcom/tds/common/tracker/entities/TrackMessage;->tdsTrackerConfig:Lcom/tds/common/tracker/TdsTrackerConfig;

    iget-object v4, v4, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    iget-object v5, v0, Lcom/tds/common/tracker/entities/TrackMessage;->logContentsMap:Ljava/util/Map;

    const-string v6, "tds_user_id"

    .line 185
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/tds/common/tracker/entities/TwoTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lcom/tds/common/tracker/model/TrackEventUpdateAction;-><init>(Lcom/tds/common/tracker/entities/TwoTuple;)V

    .line 184
    invoke-virtual {v1, v2}, Lcom/tds/common/reactor/RxBus;->send(Ljava/lang/Object;)V

    .line 186
    sget-object v1, Lcom/tds/common/tracker/TdsTrackerHandler;->unReadCacheSet:Ljava/util/Set;

    iget-object v2, v0, Lcom/tds/common/tracker/entities/TrackMessage;->tdsTrackerConfig:Lcom/tds/common/tracker/TdsTrackerConfig;

    iget-object v2, v2, Lcom/tds/common/tracker/TdsTrackerConfig;->cachePath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {p0, v0}, Lcom/tds/common/tracker/TdsTrackerHandler;->doUploadLog(Lcom/tds/common/tracker/entities/TrackMessage;)V

    .line 188
    iget-object v1, v0, Lcom/tds/common/tracker/entities/TrackMessage;->tdsTrackerConfig:Lcom/tds/common/tracker/TdsTrackerConfig;

    invoke-virtual {p0, v1}, Lcom/tds/common/tracker/TdsTrackerHandler;->sendSaveLogMessage(Lcom/tds/common/tracker/TdsTrackerConfig;)V

    .line 189
    goto :goto_87

    .line 174
    .end local v0    # "logMessage":Lcom/tds/common/tracker/entities/TrackMessage;
    :pswitch_7d
    iget-boolean v0, p0, Lcom/tds/common/tracker/TdsTrackerHandler;->readUnSendData:Z

    if-nez v0, :cond_87

    .line 175
    invoke-direct {p0}, Lcom/tds/common/tracker/TdsTrackerHandler;->readUnSendTrackMessageFromCache()V

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/tracker/TdsTrackerHandler;->readUnSendData:Z
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_87} :catch_88

    .line 208
    :cond_87
    :goto_87
    goto :goto_8c

    .line 206
    :catch_88
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8c
    return-void

    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_3e
        :pswitch_35
        :pswitch_e
    .end packed-switch
.end method

.method public makeCommonParams(Lcom/tds/common/tracker/TdsTrackerConfig;)Ljava/util/Map;
    .registers 5
    .param p1, "tdsTrackerConfig"    # Lcom/tds/common/tracker/TdsTrackerConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/tracker/TdsTrackerConfig;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p1, Lcom/tds/common/tracker/TdsTrackerConfig;->sdkVersionCode:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, p1, Lcom/tds/common/tracker/TdsTrackerConfig;->sdkVersionName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk_version_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v1, Lcom/tds/common/utils/GUIDHelper;->INSTANCE:Lcom/tds/common/utils/GUIDHelper;

    invoke-virtual {v1}, Lcom/tds/common/utils/GUIDHelper;->getUID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "t_log_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v1, "version"

    const-string v2, "1.0.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {}, Lcom/tds/common/utils/DeviceUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dv"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {}, Lcom/tds/common/utils/DeviceUtils;->getModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "md"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {}, Lcom/tds/common/utils/DeviceUtils;->getCpuInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cpu"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p1, Lcom/tds/common/tracker/TdsTrackerConfig;->appPackageName:Ljava/lang/String;

    const-string v2, "app_package_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, p1, Lcom/tds/common/tracker/TdsTrackerConfig;->appVersion:Ljava/lang/String;

    const-string v2, "app_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, p1, Lcom/tds/common/tracker/TdsTrackerConfig;->ramSize:Ljava/lang/String;

    const-string v2, "ram"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, p1, Lcom/tds/common/tracker/TdsTrackerConfig;->romSize:Ljava/lang/String;

    const-string v2, "rom"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, p1, Lcom/tds/common/tracker/TdsTrackerConfig;->networkType:Ljava/lang/String;

    const-string v2, "network_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v1, p1, Lcom/tds/common/tracker/TdsTrackerConfig;->mobileType:Ljava/lang/String;

    const-string v2, "mobile_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {}, Lcom/tds/common/utils/DeviceUtils;->getPlatform()Ljava/lang/String;

    move-result-object v1

    const-string v2, "os"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {}, Lcom/tds/common/utils/DeviceUtils;->getOSVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sv"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-object v0
.end method

.method public sendLogMessageDelayed()V
    .registers 4

    .line 105
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tds/common/tracker/TdsTrackerHandler;->removeMessages(I)V

    .line 106
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 107
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/tds/common/tracker/TdsTrackerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 108
    return-void
.end method

.method public sendReadFromCacheMessage()V
    .registers 2

    .line 92
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 93
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/tds/common/tracker/TdsTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 94
    return-void
.end method

.method public sendSaveLogMessage(Lcom/tds/common/tracker/TdsTrackerConfig;)V
    .registers 3
    .param p1, "tdsTrackerConfig"    # Lcom/tds/common/tracker/TdsTrackerConfig;

    .line 111
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tds/common/tracker/TdsTrackerHandler;->removeMessages(I)V

    .line 112
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 113
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    invoke-virtual {p0, v0}, Lcom/tds/common/tracker/TdsTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    return-void
.end method

.method public sendSaveLogMessageDelay(Lcom/tds/common/tracker/TdsTrackerConfig;J)V
    .registers 5
    .param p1, "tdsTrackerConfig"    # Lcom/tds/common/tracker/TdsTrackerConfig;
    .param p2, "delay"    # J

    .line 118
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tds/common/tracker/TdsTrackerHandler;->removeMessages(I)V

    .line 119
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 120
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    invoke-virtual {p0, v0, p2, p3}, Lcom/tds/common/tracker/TdsTrackerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 122
    return-void
.end method

.method public sendTrackMessage(Lcom/tds/common/tracker/TdsTrackerConfig;Ljava/util/Map;)V
    .registers 10
    .param p1, "tdsTrackerConfig"    # Lcom/tds/common/tracker/TdsTrackerConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/tracker/TdsTrackerConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p2, "logContentsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lcom/tds/common/tracker/entities/TrackMessage;

    .line 98
    invoke-static {}, Lcom/tds/common/utils/TimeUtil;->getUnixTimestamp()J

    move-result-wide v3

    invoke-virtual {p0, p1}, Lcom/tds/common/tracker/TdsTrackerHandler;->makeCommonParams(Lcom/tds/common/tracker/TdsTrackerConfig;)Ljava/util/Map;

    move-result-object v5

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/tds/common/tracker/entities/TrackMessage;-><init>(Lcom/tds/common/tracker/TdsTrackerConfig;Ljava/util/Map;JLjava/util/Map;)V

    .line 99
    .local v0, "trackMessage":Lcom/tds/common/tracker/entities/TrackMessage;
    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 100
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/tds/common/tracker/TdsTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    return-void
.end method
