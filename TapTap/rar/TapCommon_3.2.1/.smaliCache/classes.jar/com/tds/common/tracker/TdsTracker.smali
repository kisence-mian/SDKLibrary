.class Lcom/tds/common/tracker/TdsTracker;
.super Ljava/lang/Object;
.source "TdsTracker.java"


# static fields
.field private static final mTagCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tds/common/tracker/TdsTracker;",
            ">;"
        }
    .end annotation
.end field

.field static sHandlerThread:Lcom/tds/common/tracker/TdsTrackerHandlerThread;


# instance fields
.field private tdsTrackerConfig:Lcom/tds/common/tracker/TdsTrackerConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tds/common/tracker/TdsTracker;->mTagCache:Ljava/util/Map;

    .line 21
    new-instance v0, Lcom/tds/common/tracker/TdsTrackerHandlerThread;

    const-string v1, "TdsTracker_Thread"

    invoke-direct {v0, v1}, Lcom/tds/common/tracker/TdsTrackerHandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tds/common/tracker/TdsTracker;->sHandlerThread:Lcom/tds/common/tracker/TdsTrackerHandlerThread;

    .line 22
    invoke-virtual {v0}, Lcom/tds/common/tracker/TdsTrackerHandlerThread;->start()V

    .line 23
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(I)Lcom/tds/common/tracker/TdsTracker;
    .registers 3
    .param p0, "trackerType"    # I

    .line 39
    new-instance v0, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    invoke-direct {v0}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;-><init>()V

    .line 40
    invoke-virtual {v0, p0}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withTrackerType(I)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->build(Landroid/content/Context;)Lcom/tds/common/tracker/TdsTrackerConfig;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/tds/common/tracker/TdsTracker;->getTracker(Lcom/tds/common/tracker/TdsTrackerConfig;)Lcom/tds/common/tracker/TdsTracker;

    move-result-object v0

    return-object v0
.end method

.method public static getTracker(Lcom/tds/common/tracker/TdsTrackerConfig;)Lcom/tds/common/tracker/TdsTracker;
    .registers 5
    .param p0, "trackerConfig"    # Lcom/tds/common/tracker/TdsTrackerConfig;

    .line 26
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 27
    const-string v0, ""

    .line 28
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    :cond_25
    sget-object v1, Lcom/tds/common/tracker/TdsTracker;->mTagCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/tracker/TdsTracker;

    return-object v1

    .line 32
    :cond_34
    new-instance v2, Lcom/tds/common/tracker/TdsTracker;

    invoke-direct {v2}, Lcom/tds/common/tracker/TdsTracker;-><init>()V

    .line 33
    .local v2, "tdsTracker":Lcom/tds/common/tracker/TdsTracker;
    iput-object p0, v2, Lcom/tds/common/tracker/TdsTracker;->tdsTrackerConfig:Lcom/tds/common/tracker/TdsTrackerConfig;

    .line 34
    iget-object v3, p0, Lcom/tds/common/tracker/TdsTrackerConfig;->topic:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-object v2

    .line 26
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "tdsTracker":Lcom/tds/common/tracker/TdsTracker;
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "topic name empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized initTdsTracker(Lcom/tds/common/tracker/TdsTrackerConfig;)V
    .registers 2
    .param p0, "trackerConfig"    # Lcom/tds/common/tracker/TdsTrackerConfig;

    const-class v0, Lcom/tds/common/tracker/TdsTracker;

    monitor-enter v0

    .line 44
    :try_start_3
    invoke-static {p0}, Lcom/tds/common/tracker/TdsTracker;->getTracker(Lcom/tds/common/tracker/TdsTrackerConfig;)Lcom/tds/common/tracker/TdsTracker;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 45
    monitor-exit v0

    return-void

    .line 43
    .end local p0    # "trackerConfig":Lcom/tds/common/tracker/TdsTrackerConfig;
    :catchall_8
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public track(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p1, "logContentsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/tds/common/tracker/TdsTracker;->sHandlerThread:Lcom/tds/common/tracker/TdsTrackerHandlerThread;

    iget-object v1, p0, Lcom/tds/common/tracker/TdsTracker;->tdsTrackerConfig:Lcom/tds/common/tracker/TdsTrackerConfig;

    invoke-virtual {v0, v1, p1}, Lcom/tds/common/tracker/TdsTrackerHandlerThread;->write(Lcom/tds/common/tracker/TdsTrackerConfig;Ljava/util/Map;)V

    .line 49
    return-void
.end method
