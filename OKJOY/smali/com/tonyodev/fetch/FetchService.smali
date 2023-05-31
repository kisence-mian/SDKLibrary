.class public final Lcom/tonyodev/fetch/FetchService;
.super Ljava/lang/Object;
.source "FetchService.java"

# interfaces
.implements Lcom/tonyodev/fetch/FetchConst;


# static fields
.field public static final ACTION_CONCURRENT_DOWNLOADS_LIMIT:I = 0x141

.field public static final ACTION_ENQUEUE:I = 0x136

.field public static final ACTION_LOGGING:I = 0x140

.field public static final ACTION_NETWORK:I = 0x13a

.field public static final ACTION_ON_UPDATE_INTERVAL:I = 0x143

.field public static final ACTION_PAUSE:I = 0x137

.field public static final ACTION_PRIORITY:I = 0x13d

.field public static final ACTION_PROCESS_PENDING:I = 0x13b

.field public static final ACTION_QUERY:I = 0x13c

.field public static final ACTION_REMOVE:I = 0x139

.field public static final ACTION_REMOVE_ALL:I = 0x13f

.field public static final ACTION_REMOVE_REQUEST:I = 0x144

.field public static final ACTION_REMOVE_REQUEST_ALL:I = 0x145

.field public static final ACTION_RESUME:I = 0x138

.field public static final ACTION_RETRY:I = 0x13e

.field public static final ACTION_TYPE:Ljava/lang/String; = "com.tonyodev.fetch.action_type"

.field public static final ACTION_UPDATE_REQUEST_URL:I = 0x142

.field public static final EVENT_ACTION_ENQUEUED:Ljava/lang/String; = "com.tonyodev.fetch.event_action_enqueued"

.field public static final EVENT_ACTION_ENQUEUE_FAILED:Ljava/lang/String; = "com.tonyodev.fetch.event_action_enqueue_failed"

.field public static final EVENT_ACTION_QUERY:Ljava/lang/String; = "com.tonyodev.fetch.event_action_query"

.field public static final EVENT_ACTION_UPDATE:Ljava/lang/String; = "com.tonyodev.fetch.event_action_update"

.field public static final EXTRA_CONCURRENT_DOWNLOADS_LIMIT:Ljava/lang/String; = "com.tonyodev.fetch.extra_concurrent_download_limit"

.field public static final EXTRA_DOWNLOADED_BYTES:Ljava/lang/String; = "com.tonyodev.fetch.extra_downloaded_bytes"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "com.tonyodev.fetch.extra_error"

.field public static final EXTRA_FILE_PATH:Ljava/lang/String; = "com.tonyodev.fetch.extra_file_path"

.field public static final EXTRA_FILE_SIZE:Ljava/lang/String; = "com.tonyodev.fetch.extra_file_size"

.field public static final EXTRA_HEADERS:Ljava/lang/String; = "com.tonyodev.fetch.extra_headers"

.field public static final EXTRA_HEADER_NAME:Ljava/lang/String; = "com.tonyodev.fetch.extra_header_name"

.field public static final EXTRA_HEADER_VALUE:Ljava/lang/String; = "com.tonyodev.fetch.extra_header_value"

.field public static final EXTRA_ID:Ljava/lang/String; = "com.tonyodev.fetch.extra_id"

.field public static final EXTRA_LOGGING_ID:Ljava/lang/String; = "com.tonyodev.fetch.extra_logging_id"

.field public static final EXTRA_NETWORK_ID:Ljava/lang/String; = "com.tonyodev.fetch.extra_network_id"

.field public static final EXTRA_ON_UPDATE_INTERVAL:Ljava/lang/String; = "com.tonyodev.fetch.extra_on_update_interval"

.field public static final EXTRA_PRIORITY:Ljava/lang/String; = "com.tonyodev.fetch.extra_priority"

.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "com.tonyodev.fetch.extra_progress"

.field public static final EXTRA_QUERY_ID:Ljava/lang/String; = "com.tonyodev.fetch.extra_query_id"

.field public static final EXTRA_QUERY_RESULT:Ljava/lang/String; = "com.tonyodev.fetch.extra_query_result"

.field public static final EXTRA_QUERY_TYPE:Ljava/lang/String; = "com.tonyodev.fetch.extra_query_type"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "com.tonyodev.fetch.extra_status"

.field public static final EXTRA_URL:Ljava/lang/String; = "com.tonyodev.fetch.extra_url"

.field public static final QUERY_ALL:I = 0x1e1

.field public static final QUERY_BY_STATUS:I = 0x1e2

.field public static final QUERY_SINGLE:I = 0x1e0

.field private static final SHARED_PREFERENCES:Ljava/lang/String; = "com.tonyodev.fetch.shared_preferences"

.field private static fetchService:Lcom/tonyodev/fetch/FetchService;


# instance fields
.field private final activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/tonyodev/fetch/FetchRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private final broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private final context:Landroid/content/Context;

.field private final databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

.field private final doneReceiver:Landroid/content/BroadcastReceiver;

.field private downloadsLimit:I

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private loggingEnabled:Z

.field private onUpdateInterval:J

.field private preferredNetwork:I

.field private final registeredReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private volatile runningTask:Z

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private volatile shuttingDown:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tonyodev/fetch/FetchService;->executor:Ljava/util/concurrent/ExecutorService;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tonyodev/fetch/FetchService;->registeredReceivers:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 116
    iput-boolean v2, p0, Lcom/tonyodev/fetch/FetchService;->runningTask:Z

    .line 117
    iput-boolean v2, p0, Lcom/tonyodev/fetch/FetchService;->shuttingDown:Z

    .line 118
    iput v1, p0, Lcom/tonyodev/fetch/FetchService;->downloadsLimit:I

    .line 119
    iput-boolean v1, p0, Lcom/tonyodev/fetch/FetchService;->loggingEnabled:Z

    .line 120
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/tonyodev/fetch/FetchService;->onUpdateInterval:J

    .line 121
    const/16 v0, 0xc8

    iput v0, p0, Lcom/tonyodev/fetch/FetchService;->preferredNetwork:I

    .line 829
    new-instance v0, Lcom/tonyodev/fetch/FetchService$9;

    invoke-direct {v0, p0}, Lcom/tonyodev/fetch/FetchService$9;-><init>(Lcom/tonyodev/fetch/FetchService;)V

    iput-object v0, p0, Lcom/tonyodev/fetch/FetchService;->doneReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tonyodev/fetch/FetchService;->context:Landroid/content/Context;

    .line 180
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tonyodev/fetch/FetchService;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 181
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->context:Landroid/content/Context;

    const-string v1, "com.tonyodev.fetch.shared_preferences"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tonyodev/fetch/FetchService;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 182
    invoke-static {p1}, Lcom/tonyodev/fetch/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/tonyodev/fetch/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    .line 183
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->doneReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/tonyodev/fetch/FetchRunnable;->getDoneFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 184
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->registeredReceivers:Ljava/util/List;

    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->doneReceiver:Landroid/content/BroadcastReceiver;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->getDownloadsLimit()I

    move-result v0

    iput v0, p0, Lcom/tonyodev/fetch/FetchService;->downloadsLimit:I

    .line 186
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->getAllowedNetwork()I

    move-result v0

    iput v0, p0, Lcom/tonyodev/fetch/FetchService;->preferredNetwork:I

    .line 187
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->isLoggingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tonyodev/fetch/FetchService;->loggingEnabled:Z

    .line 188
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->getOnUpdateInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tonyodev/fetch/FetchService;->onUpdateInterval:J

    .line 189
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    iget-boolean v1, p0, Lcom/tonyodev/fetch/FetchService;->loggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch/DatabaseHelper;->setLoggingEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 192
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tonyodev/fetch/FetchService$1;

    invoke-direct {v1, p0}, Lcom/tonyodev/fetch/FetchService$1;-><init>(Lcom/tonyodev/fetch/FetchService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 200
    :cond_8f
    return-void
.end method

.method static synthetic access$000(Lcom/tonyodev/fetch/FetchService;)Lcom/tonyodev/fetch/DatabaseHelper;
    .registers 2
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tonyodev/fetch/FetchService;J)V
    .registers 4
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;
    .param p1, "x1"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch/FetchService;->pause(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/tonyodev/fetch/FetchService;J)V
    .registers 4
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;
    .param p1, "x1"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch/FetchService;->retry(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/tonyodev/fetch/FetchService;)V
    .registers 1
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->removeAll()V

    return-void
.end method

.method static synthetic access$1200(Lcom/tonyodev/fetch/FetchService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/tonyodev/fetch/FetchService;->setDownloadsLimit(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/tonyodev/fetch/FetchService;J)V
    .registers 4
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;
    .param p1, "x1"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch/FetchService;->setOnUpdateInterval(J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/tonyodev/fetch/FetchService;JLjava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/tonyodev/fetch/FetchService;->updateRequestUrl(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/tonyodev/fetch/FetchService;J)V
    .registers 4
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;
    .param p1, "x1"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch/FetchService;->removeRequest(J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/tonyodev/fetch/FetchService;)V
    .registers 1
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->removeRequestAll()V

    return-void
.end method

.method static synthetic access$1700(Lcom/tonyodev/fetch/FetchService;J)V
    .registers 4
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;
    .param p1, "x1"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch/FetchService;->pauseAction(J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/tonyodev/fetch/FetchService;)Landroid/support/v4/content/LocalBroadcastManager;
    .registers 2
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/tonyodev/fetch/FetchService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->registeredReceivers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tonyodev/fetch/FetchService;J)V
    .registers 4
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;
    .param p1, "x1"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch/FetchService;->remove(J)V

    return-void
.end method

.method static synthetic access$2002(Lcom/tonyodev/fetch/FetchService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/tonyodev/fetch/FetchService;->runningTask:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/tonyodev/fetch/FetchService;J)V
    .registers 4
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;
    .param p1, "x1"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch/FetchService;->removeAction(J)V

    return-void
.end method

.method static synthetic access$2200(Lcom/tonyodev/fetch/FetchService;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/tonyodev/fetch/FetchService;)V
    .registers 1
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->removeAllAction()V

    return-void
.end method

.method static synthetic access$2400(Lcom/tonyodev/fetch/FetchService;J)V
    .registers 4
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;
    .param p1, "x1"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch/FetchService;->removeRequestAction(J)V

    return-void
.end method

.method static synthetic access$2500(Lcom/tonyodev/fetch/FetchService;)V
    .registers 1
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->removeRequestAllAction()V

    return-void
.end method

.method static synthetic access$2600(Lcom/tonyodev/fetch/FetchService;JLjava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/tonyodev/fetch/FetchService;->updateRequestUrlAction(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tonyodev/fetch/FetchService;J)V
    .registers 4
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;
    .param p1, "x1"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch/FetchService;->resume(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/tonyodev/fetch/FetchService;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .registers 5
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tonyodev/fetch/FetchService;->enqueue(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/tonyodev/fetch/FetchService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/tonyodev/fetch/FetchService;->setAllowedNetwork(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/tonyodev/fetch/FetchService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/tonyodev/fetch/FetchService;->setLoggingEnabled(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/tonyodev/fetch/FetchService;)V
    .registers 1
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->startDownload()V

    return-void
.end method

.method static synthetic access$800(Lcom/tonyodev/fetch/FetchService;IJJI)V
    .registers 7
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # J
    .param p6, "x4"    # I

    .prologue
    .line 53
    invoke-direct/range {p0 .. p6}, Lcom/tonyodev/fetch/FetchService;->query(IJJI)V

    return-void
.end method

.method static synthetic access$900(Lcom/tonyodev/fetch/FetchService;JI)V
    .registers 5
    .param p0, "x0"    # Lcom/tonyodev/fetch/FetchService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/tonyodev/fetch/FetchService;->setRequestPriority(JI)V

    return-void
.end method

.method private enqueue(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .registers 32
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p4, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p3, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_52

    .line 417
    :cond_4
    :try_start_4
    new-instance v3, Lcom/tonyodev/fetch/exception/EnqueueException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request was not properly formatted. url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", filePath:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, -0x74

    invoke-direct {v3, v6, v7}, Lcom/tonyodev/fetch/exception/EnqueueException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_2d
    .catch Lcom/tonyodev/fetch/exception/EnqueueException; {:try_start_4 .. :try_end_2d} :catch_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_98

    .line 446
    :catch_2d
    move-exception v2

    .line 448
    .local v2, "e":Lcom/tonyodev/fetch/exception/EnqueueException;
    :try_start_2e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tonyodev/fetch/FetchService;->loggingEnabled:Z

    if-eqz v3, :cond_37

    .line 449
    invoke-virtual {v2}, Lcom/tonyodev/fetch/exception/EnqueueException;->printStackTrace()V

    .line 452
    :cond_37
    const-string v15, "com.tonyodev.fetch.event_action_enqueue_failed"

    const-wide/16 v16, -0x1

    const/16 v20, -0x384

    .line 453
    invoke-virtual {v2}, Lcom/tonyodev/fetch/exception/EnqueueException;->getErrorCode()I

    move-result v23

    move-object/from16 v14, p0

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v21, p3

    move/from16 v22, p4

    .line 452
    invoke-direct/range {v14 .. v23}, Lcom/tonyodev/fetch/FetchService;->sendEnqueueEvent(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;II)V
    :try_end_4e
    .catchall {:try_start_2e .. :try_end_4e} :catchall_98

    .line 456
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/FetchService;->startDownload()V

    .line 458
    .end local v2    # "e":Lcom/tonyodev/fetch/exception/EnqueueException;
    :goto_51
    return-void

    .line 421
    :cond_52
    if-nez p3, :cond_5b

    .line 422
    :try_start_54
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .end local p3    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .local v26, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    move-object/from16 p3, v26

    .line 425
    .end local v26    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local p3    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_5b
    invoke-static {}, Lcom/tonyodev/fetch/Utils;->generateRequestId()J

    move-result-wide v4

    .line 426
    .local v4, "id":J
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tonyodev/fetch/FetchService;->loggingEnabled:Z

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/tonyodev/fetch/Utils;->bundleListToHeaderString(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v9

    .line 427
    .local v9, "headerString":Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 428
    .local v12, "fileSize":J
    const-wide/16 v10, 0x0

    .line 430
    .local v10, "downloadedBytes":J
    invoke-static/range {p2 .. p2}, Lcom/tonyodev/fetch/Utils;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v25

    .line 432
    .local v25, "file":Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 433
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 436
    :cond_7b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    const/16 v8, 0x384

    const/4 v15, -0x1

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v14, p4

    invoke-virtual/range {v3 .. v15}, Lcom/tonyodev/fetch/DatabaseHelper;->insert(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJII)Z

    move-result v24

    .line 439
    .local v24, "enqueued":Z
    if-nez v24, :cond_9d

    .line 440
    new-instance v3, Lcom/tonyodev/fetch/exception/EnqueueException;

    const-string v6, "could not enqueue request"

    const/16 v7, -0x75

    invoke-direct {v3, v6, v7}, Lcom/tonyodev/fetch/exception/EnqueueException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_98
    .catch Lcom/tonyodev/fetch/exception/EnqueueException; {:try_start_54 .. :try_end_98} :catch_2d
    .catchall {:try_start_54 .. :try_end_98} :catchall_98

    .line 456
    .end local v4    # "id":J
    .end local v9    # "headerString":Ljava/lang/String;
    .end local v10    # "downloadedBytes":J
    .end local v12    # "fileSize":J
    .end local v24    # "enqueued":Z
    .end local v25    # "file":Ljava/io/File;
    :catchall_98
    move-exception v3

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/FetchService;->startDownload()V

    throw v3

    .line 443
    .restart local v4    # "id":J
    .restart local v9    # "headerString":Ljava/lang/String;
    .restart local v10    # "downloadedBytes":J
    .restart local v12    # "fileSize":J
    .restart local v24    # "enqueued":Z
    .restart local v25    # "file":Ljava/io/File;
    :cond_9d
    :try_start_9d
    const-string v15, "com.tonyodev.fetch.event_action_enqueued"

    const/16 v20, 0x384

    const/16 v23, -0x1

    move-object/from16 v14, p0

    move-wide/from16 v16, v4

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v21, p3

    move/from16 v22, p4

    invoke-direct/range {v14 .. v23}, Lcom/tonyodev/fetch/FetchService;->sendEnqueueEvent(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;II)V
    :try_end_b2
    .catch Lcom/tonyodev/fetch/exception/EnqueueException; {:try_start_9d .. :try_end_b2} :catch_2d
    .catchall {:try_start_9d .. :try_end_b2} :catchall_98

    .line 456
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/FetchService;->startDownload()V

    goto :goto_51
.end method

.method private getAllowedNetwork()I
    .registers 4

    .prologue
    .line 826
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "com.tonyodev.fetch.extra_network_id"

    const/16 v2, 0xc8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getDownloadsLimit()I
    .registers 4

    .prologue
    .line 874
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "com.tonyodev.fetch.extra_concurrent_download_limit"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getEventEnqueueFailedFilter()Landroid/content/IntentFilter;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.tonyodev.fetch.event_action_enqueue_failed"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getEventEnqueuedFilter()Landroid/content/IntentFilter;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.tonyodev.fetch.event_action_enqueued"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getEventQueryFilter()Landroid/content/IntentFilter;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.tonyodev.fetch.event_action_query"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getEventUpdateFilter()Landroid/content/IntentFilter;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.tonyodev.fetch.event_action_update"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tonyodev/fetch/FetchService;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 148
    if-nez p0, :cond_a

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_a
    sget-object v0, Lcom/tonyodev/fetch/FetchService;->fetchService:Lcom/tonyodev/fetch/FetchService;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/tonyodev/fetch/FetchService;->fetchService:Lcom/tonyodev/fetch/FetchService;

    iget-boolean v0, v0, Lcom/tonyodev/fetch/FetchService;->shuttingDown:Z

    if-eqz v0, :cond_1b

    .line 152
    :cond_14
    new-instance v0, Lcom/tonyodev/fetch/FetchService;

    invoke-direct {v0, p0}, Lcom/tonyodev/fetch/FetchService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tonyodev/fetch/FetchService;->fetchService:Lcom/tonyodev/fetch/FetchService;

    .line 154
    :cond_1b
    sget-object v0, Lcom/tonyodev/fetch/FetchService;->fetchService:Lcom/tonyodev/fetch/FetchService;

    return-object v0
.end method

.method private getOnUpdateInterval()J
    .registers 5

    .prologue
    .line 922
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "com.tonyodev.fetch.extra_on_update_interval"

    const-wide/16 v2, 0x7d0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tonyodev/fetch/FetchService;->onUpdateInterval:J

    .line 923
    iget-wide v0, p0, Lcom/tonyodev/fetch/FetchService;->onUpdateInterval:J

    return-wide v0
.end method

.method private interruptActiveDownload(J)V
    .registers 6
    .param p1, "id"    # J

    .prologue
    .line 403
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 404
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch/FetchRunnable;

    .line 406
    .local v0, "fetchRunnable":Lcom/tonyodev/fetch/FetchRunnable;
    if-eqz v0, :cond_1d

    .line 407
    invoke-virtual {v0}, Lcom/tonyodev/fetch/FetchRunnable;->interrupt()V

    .line 410
    .end local v0    # "fetchRunnable":Lcom/tonyodev/fetch/FetchRunnable;
    :cond_1d
    return-void
.end method

.method private interruptActiveDownloads()V
    .registers 5

    .prologue
    .line 391
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 393
    .local v1, "id":Ljava/lang/Long;
    iget-object v3, p0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch/FetchRunnable;

    .line 395
    .local v0, "fetchRunnable":Lcom/tonyodev/fetch/FetchRunnable;
    if-eqz v0, :cond_a

    .line 396
    invoke-virtual {v0}, Lcom/tonyodev/fetch/FetchRunnable;->interrupt()V

    goto :goto_a

    .line 399
    .end local v0    # "fetchRunnable":Lcom/tonyodev/fetch/FetchRunnable;
    .end local v1    # "id":Ljava/lang/Long;
    :cond_24
    return-void
.end method

.method private isLoggingEnabled()Z
    .registers 4

    .prologue
    .line 902
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "com.tonyodev.fetch.extra_logging_id"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isLoggingEnabled(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 906
    const-string v0, "com.tonyodev.fetch.shared_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.tonyodev.fetch.extra_logging_id"

    const/4 v2, 0x1

    .line 907
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 906
    return v0
.end method

.method private pause(J)V
    .registers 6
    .param p1, "id"    # J

    .prologue
    .line 487
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 489
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tonyodev/fetch/FetchService;->runningTask:Z

    .line 491
    new-instance v0, Lcom/tonyodev/fetch/FetchService$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/tonyodev/fetch/FetchService$3;-><init>(Lcom/tonyodev/fetch/FetchService;J)V

    .line 506
    .local v0, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->registeredReceivers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-static {}, Lcom/tonyodev/fetch/FetchRunnable;->getDoneFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 508
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch/FetchService;->interruptActiveDownload(J)V

    .line 514
    .end local v0    # "broadcastReceiver":Landroid/content/BroadcastReceiver;
    :goto_25
    return-void

    .line 511
    :cond_26
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch/FetchService;->pauseAction(J)V

    .line 512
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->startDownload()V

    goto :goto_25
.end method

.method private pauseAction(J)V
    .registers 16
    .param p1, "id"    # J

    .prologue
    .line 518
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v1, p1, p2}, Lcom/tonyodev/fetch/DatabaseHelper;->pause(J)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 520
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v1, p1, p2}, Lcom/tonyodev/fetch/DatabaseHelper;->get(J)Landroid/database/Cursor;

    move-result-object v0

    .line 521
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/tonyodev/fetch/FetchService;->loggingEnabled:Z

    invoke-static {v0, v1, v2}, Lcom/tonyodev/fetch/Utils;->cursorToRequestInfo(Landroid/database/Cursor;ZZ)Lcom/tonyodev/fetch/request/RequestInfo;

    move-result-object v11

    .line 523
    .local v11, "requestInfo":Lcom/tonyodev/fetch/request/RequestInfo;
    if-eqz v11, :cond_34

    .line 525
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getId()J

    move-result-wide v2

    .line 526
    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getStatus()I

    move-result v4

    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getProgress()I

    move-result v5

    .line 527
    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getDownloadedBytes()J

    move-result-wide v6

    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getFileSize()J

    move-result-wide v8

    .line 528
    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getError()I

    move-result v10

    .line 525
    invoke-static/range {v1 .. v10}, Lcom/tonyodev/fetch/Utils;->sendEventUpdate(Landroid/support/v4/content/LocalBroadcastManager;JIIJJI)V

    .line 532
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v11    # "requestInfo":Lcom/tonyodev/fetch/request/RequestInfo;
    :cond_34
    return-void
.end method

.method private processAction(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_12

    .line 230
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/tonyodev/fetch/FetchService$2;

    invoke-direct {v2, p0, p1}, Lcom/tonyodev/fetch/FetchService$2;-><init>(Lcom/tonyodev/fetch/FetchService;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 331
    :cond_12
    :goto_12
    return-void

    .line 326
    :catch_13
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/tonyodev/fetch/FetchService;->loggingEnabled:Z

    if-eqz v1, :cond_12

    .line 328
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public static processPendingRequests(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 138
    if-nez p0, :cond_a

    .line 139
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Context cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "com.tonyodev.fetch.action_type"

    const/16 v2, 0x13b

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    invoke-static {p0}, Lcom/tonyodev/fetch/FetchService;->getInstance(Landroid/content/Context;)Lcom/tonyodev/fetch/FetchService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tonyodev/fetch/FetchService;->runAction(Landroid/os/Bundle;)V

    .line 145
    return-void
.end method

.method private query(IJJI)V
    .registers 11
    .param p1, "queryType"    # I
    .param p2, "queryId"    # J
    .param p4, "requestId"    # J
    .param p6, "status"    # I

    .prologue
    .line 726
    packed-switch p1, :pswitch_data_26

    .line 736
    :pswitch_3
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v2}, Lcom/tonyodev/fetch/DatabaseHelper;->get()Landroid/database/Cursor;

    move-result-object v0

    .line 741
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_9
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/tonyodev/fetch/FetchService;->loggingEnabled:Z

    invoke-static {v0, v2, v3}, Lcom/tonyodev/fetch/Utils;->cursorToQueryResultList(Landroid/database/Cursor;ZZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 742
    .local v1, "queryResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-direct {p0, p2, p3, v1}, Lcom/tonyodev/fetch/FetchService;->sendEventQuery(JLjava/util/ArrayList;)V

    .line 743
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->startDownload()V

    .line 744
    return-void

    .line 728
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "queryResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :pswitch_17
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v2, p4, p5}, Lcom/tonyodev/fetch/DatabaseHelper;->get(J)Landroid/database/Cursor;

    move-result-object v0

    .line 729
    .restart local v0    # "cursor":Landroid/database/Cursor;
    goto :goto_9

    .line 732
    .end local v0    # "cursor":Landroid/database/Cursor;
    :pswitch_1e
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v2, p6}, Lcom/tonyodev/fetch/DatabaseHelper;->getByStatus(I)Landroid/database/Cursor;

    move-result-object v0

    .line 733
    .restart local v0    # "cursor":Landroid/database/Cursor;
    goto :goto_9

    .line 726
    nop

    :pswitch_data_26
    .packed-switch 0x1e0
        :pswitch_17
        :pswitch_3
        :pswitch_1e
    .end packed-switch
.end method

.method private remove(J)V
    .registers 6
    .param p1, "id"    # J

    .prologue
    .line 536
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 538
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tonyodev/fetch/FetchService;->runningTask:Z

    .line 540
    new-instance v0, Lcom/tonyodev/fetch/FetchService$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/tonyodev/fetch/FetchService$4;-><init>(Lcom/tonyodev/fetch/FetchService;J)V

    .line 555
    .local v0, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->registeredReceivers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-static {}, Lcom/tonyodev/fetch/FetchRunnable;->getDoneFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 557
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch/FetchService;->interruptActiveDownload(J)V

    .line 562
    .end local v0    # "broadcastReceiver":Landroid/content/BroadcastReceiver;
    :goto_25
    return-void

    .line 559
    :cond_26
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch/FetchService;->removeAction(J)V

    .line 560
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->startDownload()V

    goto :goto_25
.end method

.method private removeAction(J)V
    .registers 16
    .param p1, "id"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 566
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v1, p1, p2}, Lcom/tonyodev/fetch/DatabaseHelper;->get(J)Landroid/database/Cursor;

    move-result-object v0

    .line 567
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/tonyodev/fetch/FetchService;->loggingEnabled:Z

    invoke-static {v0, v1, v2}, Lcom/tonyodev/fetch/Utils;->cursorToRequestInfo(Landroid/database/Cursor;ZZ)Lcom/tonyodev/fetch/request/RequestInfo;

    move-result-object v11

    .line 569
    .local v11, "request":Lcom/tonyodev/fetch/request/RequestInfo;
    if-eqz v11, :cond_2b

    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v1, p1, p2}, Lcom/tonyodev/fetch/DatabaseHelper;->delete(J)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 571
    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tonyodev/fetch/Utils;->deleteFile(Ljava/lang/String;)Z

    .line 573
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    const/16 v4, 0x389

    const/4 v5, 0x0

    const/4 v10, -0x1

    move-wide v2, p1

    move-wide v8, v6

    invoke-static/range {v1 .. v10}, Lcom/tonyodev/fetch/Utils;->sendEventUpdate(Landroid/support/v4/content/LocalBroadcastManager;JIIJJI)V

    .line 576
    :cond_2b
    return-void
.end method

.method private removeAll()V
    .registers 4

    .prologue
    .line 580
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_22

    .line 582
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tonyodev/fetch/FetchService;->runningTask:Z

    .line 584
    new-instance v0, Lcom/tonyodev/fetch/FetchService$5;

    invoke-direct {v0, p0}, Lcom/tonyodev/fetch/FetchService$5;-><init>(Lcom/tonyodev/fetch/FetchService;)V

    .line 603
    .local v0, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->registeredReceivers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-static {}, Lcom/tonyodev/fetch/FetchRunnable;->getDoneFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 605
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->interruptActiveDownloads()V

    .line 610
    .end local v0    # "broadcastReceiver":Landroid/content/BroadcastReceiver;
    :goto_21
    return-void

    .line 607
    :cond_22
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->removeAllAction()V

    .line 608
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->startDownload()V

    goto :goto_21
.end method

.method private removeAllAction()V
    .registers 15

    .prologue
    const-wide/16 v6, 0x0

    .line 614
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v1}, Lcom/tonyodev/fetch/DatabaseHelper;->get()Landroid/database/Cursor;

    move-result-object v0

    .line 615
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/tonyodev/fetch/FetchService;->loggingEnabled:Z

    invoke-static {v0, v1, v2}, Lcom/tonyodev/fetch/Utils;->cursorToRequestInfoList(Landroid/database/Cursor;ZZ)Ljava/util/List;

    move-result-object v12

    .line 617
    .local v12, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/tonyodev/fetch/request/RequestInfo;>;"
    if-eqz v12, :cond_3f

    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v1}, Lcom/tonyodev/fetch/DatabaseHelper;->deleteAll()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 619
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tonyodev/fetch/request/RequestInfo;

    .line 621
    .local v11, "request":Lcom/tonyodev/fetch/request/RequestInfo;
    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tonyodev/fetch/Utils;->deleteFile(Ljava/lang/String;)Z

    .line 623
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getId()J

    move-result-wide v2

    const/16 v4, 0x389

    const/4 v5, 0x0

    const/4 v10, -0x1

    move-wide v8, v6

    invoke-static/range {v1 .. v10}, Lcom/tonyodev/fetch/Utils;->sendEventUpdate(Landroid/support/v4/content/LocalBroadcastManager;JIIJJI)V

    goto :goto_1d

    .line 627
    .end local v11    # "request":Lcom/tonyodev/fetch/request/RequestInfo;
    :cond_3f
    return-void
.end method

.method private removeRequest(J)V
    .registers 6
    .param p1, "id"    # J

    .prologue
    .line 681
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 683
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tonyodev/fetch/FetchService;->runningTask:Z

    .line 685
    new-instance v0, Lcom/tonyodev/fetch/FetchService$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/tonyodev/fetch/FetchService$7;-><init>(Lcom/tonyodev/fetch/FetchService;J)V

    .line 700
    .local v0, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->registeredReceivers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-static {}, Lcom/tonyodev/fetch/FetchRunnable;->getDoneFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 702
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch/FetchService;->interruptActiveDownload(J)V

    .line 707
    .end local v0    # "broadcastReceiver":Landroid/content/BroadcastReceiver;
    :goto_25
    return-void

    .line 704
    :cond_26
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch/FetchService;->removeRequestAction(J)V

    .line 705
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->startDownload()V

    goto :goto_25
.end method

.method private removeRequestAction(J)V
    .registers 16
    .param p1, "id"    # J

    .prologue
    .line 711
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v1, p1, p2}, Lcom/tonyodev/fetch/DatabaseHelper;->get(J)Landroid/database/Cursor;

    move-result-object v0

    .line 712
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/tonyodev/fetch/FetchService;->loggingEnabled:Z

    invoke-static {v0, v1, v2}, Lcom/tonyodev/fetch/Utils;->cursorToRequestInfo(Landroid/database/Cursor;ZZ)Lcom/tonyodev/fetch/request/RequestInfo;

    move-result-object v11

    .line 714
    .local v11, "request":Lcom/tonyodev/fetch/request/RequestInfo;
    if-eqz v11, :cond_2c

    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v1, p1, p2}, Lcom/tonyodev/fetch/DatabaseHelper;->delete(J)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 716
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    const/16 v4, 0x389

    .line 717
    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getProgress()I

    move-result v5

    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getDownloadedBytes()J

    move-result-wide v6

    .line 718
    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getFileSize()J

    move-result-wide v8

    const/4 v10, -0x1

    move-wide v2, p1

    .line 716
    invoke-static/range {v1 .. v10}, Lcom/tonyodev/fetch/Utils;->sendEventUpdate(Landroid/support/v4/content/LocalBroadcastManager;JIIJJI)V

    .line 720
    :cond_2c
    return-void
.end method

.method private removeRequestAll()V
    .registers 4

    .prologue
    .line 631
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_22

    .line 633
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tonyodev/fetch/FetchService;->runningTask:Z

    .line 635
    new-instance v0, Lcom/tonyodev/fetch/FetchService$6;

    invoke-direct {v0, p0}, Lcom/tonyodev/fetch/FetchService$6;-><init>(Lcom/tonyodev/fetch/FetchService;)V

    .line 654
    .local v0, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->registeredReceivers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-static {}, Lcom/tonyodev/fetch/FetchRunnable;->getDoneFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 656
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->interruptActiveDownloads()V

    .line 661
    .end local v0    # "broadcastReceiver":Landroid/content/BroadcastReceiver;
    :goto_21
    return-void

    .line 658
    :cond_22
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->removeRequestAllAction()V

    .line 659
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->startDownload()V

    goto :goto_21
.end method

.method private removeRequestAllAction()V
    .registers 15

    .prologue
    .line 665
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v1}, Lcom/tonyodev/fetch/DatabaseHelper;->get()Landroid/database/Cursor;

    move-result-object v0

    .line 666
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/tonyodev/fetch/FetchService;->loggingEnabled:Z

    invoke-static {v0, v1, v2}, Lcom/tonyodev/fetch/Utils;->cursorToRequestInfoList(Landroid/database/Cursor;ZZ)Ljava/util/List;

    move-result-object v12

    .line 668
    .local v12, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/tonyodev/fetch/request/RequestInfo;>;"
    if-eqz v12, :cond_40

    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v1}, Lcom/tonyodev/fetch/DatabaseHelper;->deleteAll()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 670
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tonyodev/fetch/request/RequestInfo;

    .line 672
    .local v11, "request":Lcom/tonyodev/fetch/request/RequestInfo;
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getId()J

    move-result-wide v2

    const/16 v4, 0x389

    .line 673
    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getProgress()I

    move-result v5

    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getDownloadedBytes()J

    move-result-wide v6

    .line 674
    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getFileSize()J

    move-result-wide v8

    const/4 v10, -0x1

    .line 672
    invoke-static/range {v1 .. v10}, Lcom/tonyodev/fetch/Utils;->sendEventUpdate(Landroid/support/v4/content/LocalBroadcastManager;JIIJJI)V

    goto :goto_1b

    .line 677
    .end local v11    # "request":Lcom/tonyodev/fetch/request/RequestInfo;
    :cond_40
    return-void
.end method

.method private resume(J)V
    .registers 16
    .param p1, "id"    # J

    .prologue
    .line 462
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 483
    :goto_c
    return-void

    .line 466
    :cond_d
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v1, p1, p2}, Lcom/tonyodev/fetch/DatabaseHelper;->resume(J)Z

    move-result v12

    .line 468
    .local v12, "resumed":Z
    if-eqz v12, :cond_41

    .line 470
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v1, p1, p2}, Lcom/tonyodev/fetch/DatabaseHelper;->get(J)Landroid/database/Cursor;

    move-result-object v0

    .line 471
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/tonyodev/fetch/FetchService;->loggingEnabled:Z

    invoke-static {v0, v1, v2}, Lcom/tonyodev/fetch/Utils;->cursorToRequestInfo(Landroid/database/Cursor;ZZ)Lcom/tonyodev/fetch/request/RequestInfo;

    move-result-object v11

    .line 473
    .local v11, "requestInfo":Lcom/tonyodev/fetch/request/RequestInfo;
    if-eqz v11, :cond_41

    .line 475
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getId()J

    move-result-wide v2

    .line 476
    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getStatus()I

    move-result v4

    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getProgress()I

    move-result v5

    .line 477
    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getDownloadedBytes()J

    move-result-wide v6

    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getFileSize()J

    move-result-wide v8

    .line 478
    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getError()I

    move-result v10

    .line 475
    invoke-static/range {v1 .. v10}, Lcom/tonyodev/fetch/Utils;->sendEventUpdate(Landroid/support/v4/content/LocalBroadcastManager;JIIJJI)V

    .line 482
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v11    # "requestInfo":Lcom/tonyodev/fetch/request/RequestInfo;
    :cond_41
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->startDownload()V

    goto :goto_c
.end method

.method private retry(J)V
    .registers 16
    .param p1, "id"    # J

    .prologue
    .line 769
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 787
    :goto_c
    return-void

    .line 773
    :cond_d
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v1, p1, p2}, Lcom/tonyodev/fetch/DatabaseHelper;->retry(J)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 775
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v1, p1, p2}, Lcom/tonyodev/fetch/DatabaseHelper;->get(J)Landroid/database/Cursor;

    move-result-object v0

    .line 776
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/tonyodev/fetch/FetchService;->loggingEnabled:Z

    invoke-static {v0, v1, v2}, Lcom/tonyodev/fetch/Utils;->cursorToRequestInfo(Landroid/database/Cursor;ZZ)Lcom/tonyodev/fetch/request/RequestInfo;

    move-result-object v11

    .line 778
    .local v11, "requestInfo":Lcom/tonyodev/fetch/request/RequestInfo;
    if-eqz v11, :cond_41

    .line 779
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getId()J

    move-result-wide v2

    .line 780
    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getStatus()I

    move-result v4

    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getProgress()I

    move-result v5

    .line 781
    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getDownloadedBytes()J

    move-result-wide v6

    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getFileSize()J

    move-result-wide v8

    .line 782
    invoke-virtual {v11}, Lcom/tonyodev/fetch/request/RequestInfo;->getError()I

    move-result v10

    .line 779
    invoke-static/range {v1 .. v10}, Lcom/tonyodev/fetch/Utils;->sendEventUpdate(Landroid/support/v4/content/LocalBroadcastManager;JIIJJI)V

    .line 786
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v11    # "requestInfo":Lcom/tonyodev/fetch/request/RequestInfo;
    :cond_41
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->startDownload()V

    goto :goto_c
.end method

.method private sendEnqueueEvent(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;II)V
    .registers 14
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "filePath"    # Ljava/lang/String;
    .param p6, "status"    # I
    .param p8, "priority"    # I
    .param p9, "error"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 850
    .local p7, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 851
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.tonyodev.fetch.extra_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 852
    const-string v1, "com.tonyodev.fetch.extra_status"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 853
    const-string v1, "com.tonyodev.fetch.extra_url"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 854
    const-string v1, "com.tonyodev.fetch.extra_file_path"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 855
    const-string v1, "com.tonyodev.fetch.extra_headers"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 856
    const-string v1, "com.tonyodev.fetch.extra_progress"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 857
    const-string v1, "com.tonyodev.fetch.extra_file_size"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 858
    const-string v1, "com.tonyodev.fetch.extra_error"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 859
    const-string v1, "com.tonyodev.fetch.extra_priority"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 861
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 862
    return-void
.end method

.method private sendEventQuery(JLjava/util/ArrayList;)V
    .registers 7
    .param p1, "queryId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 866
    .local p3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tonyodev.fetch.event_action_query"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 867
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.tonyodev.fetch.extra_query_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 868
    const-string v1, "com.tonyodev.fetch.extra_query_result"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 870
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 871
    return-void
.end method

.method public static sendToService(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 125
    if-nez p0, :cond_a

    .line 126
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_a
    if-nez p1, :cond_11

    .line 130
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "extras":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 133
    .restart local p1    # "extras":Landroid/os/Bundle;
    :cond_11
    invoke-static {p0}, Lcom/tonyodev/fetch/FetchService;->getInstance(Landroid/content/Context;)Lcom/tonyodev/fetch/FetchService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch/FetchService;->runAction(Landroid/os/Bundle;)V

    .line 134
    return-void
.end method

.method private setAllowedNetwork(I)V
    .registers 4
    .param p1, "networkType"    # I

    .prologue
    .line 757
    iput p1, p0, Lcom/tonyodev/fetch/FetchService;->preferredNetwork:I

    .line 758
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.tonyodev.fetch.extra_network_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 760
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 761
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->interruptActiveDownloads()V

    .line 764
    :cond_1c
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->startDownload()V

    .line 765
    return-void
.end method

.method private setDownloadsLimit(I)V
    .registers 4
    .param p1, "limit"    # I

    .prologue
    .line 879
    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    .line 880
    const/4 p1, 0x1

    .line 883
    :cond_4
    iput p1, p0, Lcom/tonyodev/fetch/FetchService;->downloadsLimit:I

    .line 884
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.tonyodev.fetch.extra_concurrent_download_limit"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 886
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_20

    .line 887
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->interruptActiveDownloads()V

    .line 890
    :cond_20
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->startDownload()V

    .line 891
    return-void
.end method

.method private setLoggingEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 895
    iput-boolean p1, p0, Lcom/tonyodev/fetch/FetchService;->loggingEnabled:Z

    .line 896
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.tonyodev.fetch.extra_logging_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 897
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    iget-boolean v1, p0, Lcom/tonyodev/fetch/FetchService;->loggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch/DatabaseHelper;->setLoggingEnabled(Z)V

    .line 898
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->startDownload()V

    .line 899
    return-void
.end method

.method private setOnUpdateInterval(J)V
    .registers 6
    .param p1, "intervalMs"    # J

    .prologue
    .line 911
    iput-wide p1, p0, Lcom/tonyodev/fetch/FetchService;->onUpdateInterval:J

    .line 912
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.tonyodev.fetch.extra_on_update_interval"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 914
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 915
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->interruptActiveDownloads()V

    .line 918
    :cond_1c
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->startDownload()V

    .line 919
    return-void
.end method

.method private setRequestPriority(JI)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "priority"    # I

    .prologue
    .line 748
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tonyodev/fetch/DatabaseHelper;->setPriority(JI)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 749
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->interruptActiveDownloads()V

    .line 752
    :cond_13
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->startDownload()V

    .line 753
    return-void
.end method

.method private declared-synchronized startDownload()V
    .registers 20

    .prologue
    .line 335
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tonyodev/fetch/FetchService;->shuttingDown:Z

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tonyodev/fetch/FetchService;->runningTask:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_43

    if-eqz v3, :cond_f

    .line 387
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 339
    :cond_f
    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/FetchService;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/tonyodev/fetch/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v16

    .line 340
    .local v16, "networkAvailable":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/FetchService;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/tonyodev/fetch/Utils;->isOnWiFi(Landroid/content/Context;)Z

    move-result v17

    .line 342
    .local v17, "onWiFi":Z
    if-eqz v16, :cond_2b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tonyodev/fetch/FetchService;->preferredNetwork:I

    const/16 v4, 0xc9

    if-ne v3, v4, :cond_46

    if-nez v17, :cond_46

    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-lez v3, :cond_46

    .line 344
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/tonyodev/fetch/FetchService;->runningTask:Z

    .line 345
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/FetchService;->interruptActiveDownloads()V

    .line 346
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/tonyodev/fetch/FetchService;->runningTask:Z
    :try_end_42
    .catchall {:try_start_f .. :try_end_42} :catchall_43

    goto :goto_d

    .line 335
    .end local v16    # "networkAvailable":Z
    .end local v17    # "onWiFi":Z
    :catchall_43
    move-exception v3

    monitor-exit p0

    throw v3

    .line 348
    .restart local v16    # "networkAvailable":Z
    .restart local v17    # "onWiFi":Z
    :cond_46
    if-eqz v16, :cond_101

    :try_start_48
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tonyodev/fetch/FetchService;->runningTask:Z

    if-nez v3, :cond_101

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tonyodev/fetch/FetchService;->downloadsLimit:I

    if-ge v3, v4, :cond_101

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    .line 349
    invoke-virtual {v3}, Lcom/tonyodev/fetch/DatabaseHelper;->hasPendingRequests()Z

    move-result v3

    if-eqz v3, :cond_101

    .line 351
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/tonyodev/fetch/FetchService;->runningTask:Z
    :try_end_6b
    .catchall {:try_start_48 .. :try_end_6b} :catchall_43

    .line 355
    :try_start_6b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v3}, Lcom/tonyodev/fetch/DatabaseHelper;->getNextPendingRequest()Landroid/database/Cursor;

    move-result-object v14

    .line 357
    .local v14, "cursor":Landroid/database/Cursor;
    if-eqz v14, :cond_d4

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_d4

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_d4

    .line 359
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tonyodev/fetch/FetchService;->loggingEnabled:Z

    invoke-static {v14, v3, v4}, Lcom/tonyodev/fetch/Utils;->cursorToRequestInfo(Landroid/database/Cursor;ZZ)Lcom/tonyodev/fetch/request/RequestInfo;

    move-result-object v18

    .line 361
    .local v18, "requestInfo":Lcom/tonyodev/fetch/request/RequestInfo;
    new-instance v2, Lcom/tonyodev/fetch/FetchRunnable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/FetchService;->context:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Lcom/tonyodev/fetch/request/RequestInfo;->getId()J

    move-result-wide v4

    .line 362
    invoke-virtual/range {v18 .. v18}, Lcom/tonyodev/fetch/request/RequestInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Lcom/tonyodev/fetch/request/RequestInfo;->getFilePath()Ljava/lang/String;

    move-result-object v7

    .line 363
    invoke-virtual/range {v18 .. v18}, Lcom/tonyodev/fetch/request/RequestInfo;->getHeaders()Ljava/util/List;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Lcom/tonyodev/fetch/request/RequestInfo;->getFileSize()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/tonyodev/fetch/FetchService;->loggingEnabled:Z

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/tonyodev/fetch/FetchService;->onUpdateInterval:J

    invoke-direct/range {v2 .. v13}, Lcom/tonyodev/fetch/FetchRunnable;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;JZJ)V

    .line 365
    .local v2, "fetchRunnable":Lcom/tonyodev/fetch/FetchRunnable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual/range {v18 .. v18}, Lcom/tonyodev/fetch/request/RequestInfo;->getId()J

    move-result-wide v4

    const/16 v6, 0x385

    const/4 v7, -0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/tonyodev/fetch/DatabaseHelper;->updateStatus(JII)Z

    .line 366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/tonyodev/fetch/FetchRunnable;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_d4} :catch_f6
    .catchall {:try_start_6b .. :try_end_d4} :catchall_43

    .line 378
    .end local v2    # "fetchRunnable":Lcom/tonyodev/fetch/FetchRunnable;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v18    # "requestInfo":Lcom/tonyodev/fetch/request/RequestInfo;
    :cond_d4
    :goto_d4
    const/4 v3, 0x0

    :try_start_d5
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/tonyodev/fetch/FetchService;->runningTask:Z

    .line 380
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tonyodev/fetch/FetchService;->downloadsLimit:I

    if-ge v3, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v3}, Lcom/tonyodev/fetch/DatabaseHelper;->hasPendingRequests()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 381
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/FetchService;->startDownload()V

    goto/16 :goto_d

    .line 371
    :catch_f6
    move-exception v15

    .line 373
    .local v15, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tonyodev/fetch/FetchService;->loggingEnabled:Z

    if-eqz v3, :cond_d4

    .line 374
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d4

    .line 383
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_101
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tonyodev/fetch/FetchService;->runningTask:Z

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v3}, Lcom/tonyodev/fetch/DatabaseHelper;->hasPendingRequests()Z

    move-result v3

    if-nez v3, :cond_d

    .line 384
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/tonyodev/fetch/FetchService;->shuttingDown:Z

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch/FetchService;->shutdown()V
    :try_end_123
    .catchall {:try_start_d5 .. :try_end_123} :catchall_43

    goto/16 :goto_d
.end method

.method private updateRequestUrl(JLjava/lang/String;)V
    .registers 7
    .param p1, "id"    # J
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 791
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->activeDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 793
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tonyodev/fetch/FetchService;->runningTask:Z

    .line 795
    new-instance v0, Lcom/tonyodev/fetch/FetchService$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tonyodev/fetch/FetchService$8;-><init>(Lcom/tonyodev/fetch/FetchService;JLjava/lang/String;)V

    .line 810
    .local v0, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->registeredReceivers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-static {}, Lcom/tonyodev/fetch/FetchRunnable;->getDoneFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 812
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch/FetchService;->interruptActiveDownload(J)V

    .line 817
    .end local v0    # "broadcastReceiver":Landroid/content/BroadcastReceiver;
    :goto_25
    return-void

    .line 814
    :cond_26
    invoke-direct {p0, p1, p2, p3}, Lcom/tonyodev/fetch/FetchService;->updateRequestUrlAction(JLjava/lang/String;)V

    .line 815
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->startDownload()V

    goto :goto_25
.end method

.method private updateRequestUrlAction(JLjava/lang/String;)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 821
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tonyodev/fetch/DatabaseHelper;->updateUrl(JLjava/lang/String;)Z

    .line 822
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/tonyodev/fetch/DatabaseHelper;->retry(J)Z

    .line 823
    return-void
.end method


# virtual methods
.method public runAction(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 203
    if-nez p1, :cond_a

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bundle cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_a
    invoke-direct {p0, p1}, Lcom/tonyodev/fetch/FetchService;->processAction(Landroid/os/Bundle;)V

    .line 207
    return-void
.end method

.method public shutdown()V
    .registers 4

    .prologue
    .line 211
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tonyodev/fetch/FetchService;->shuttingDown:Z

    .line 213
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_10

    .line 214
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 217
    :cond_10
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchService;->interruptActiveDownloads()V

    .line 219
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->registeredReceivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 220
    .local v0, "registeredReceiver":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchService;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_19

    .line 223
    .end local v0    # "registeredReceiver":Landroid/content/BroadcastReceiver;
    :cond_2b
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService;->registeredReceivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 224
    return-void
.end method
