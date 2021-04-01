.class public final Lcom/tonyodev/fetch/Fetch;
.super Ljava/lang/Object;
.source "Fetch.java"

# interfaces
.implements Lcom/tonyodev/fetch/FetchConst;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch/Fetch$Settings;
    }
.end annotation


# static fields
.field private static final callsCallback:Lcom/tonyodev/fetch/FetchCallRunnable$Callback;

.field private static final callsMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/tonyodev/fetch/request/Request;",
            "Lcom/tonyodev/fetch/FetchCallRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final mainHandler:Landroid/os/Handler;


# instance fields
.field private final broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private final context:Landroid/content/Context;

.field private final dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

.field private volatile isReleased:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tonyodev/fetch/listener/FetchListener;",
            ">;"
        }
    .end annotation
.end field

.field private final networkReceiver:Landroid/content/BroadcastReceiver;

.field private final updateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tonyodev/fetch/Fetch;->mainHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tonyodev/fetch/Fetch;->callsMap:Ljava/util/concurrent/ConcurrentMap;

    .line 158
    new-instance v0, Lcom/tonyodev/fetch/Fetch$1;

    invoke-direct {v0}, Lcom/tonyodev/fetch/Fetch$1;-><init>()V

    sput-object v0, Lcom/tonyodev/fetch/Fetch;->callsCallback:Lcom/tonyodev/fetch/FetchCallRunnable$Callback;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tonyodev/fetch/Fetch;->listeners:Ljava/util/List;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tonyodev/fetch/Fetch;->isReleased:Z

    .line 954
    new-instance v0, Lcom/tonyodev/fetch/Fetch$4;

    invoke-direct {v0, p0}, Lcom/tonyodev/fetch/Fetch$4;-><init>(Lcom/tonyodev/fetch/Fetch;)V

    iput-object v0, p0, Lcom/tonyodev/fetch/Fetch;->updateReceiver:Landroid/content/BroadcastReceiver;

    .line 991
    new-instance v0, Lcom/tonyodev/fetch/Fetch$5;

    invoke-direct {v0, p0}, Lcom/tonyodev/fetch/Fetch$5;-><init>(Lcom/tonyodev/fetch/Fetch;)V

    iput-object v0, p0, Lcom/tonyodev/fetch/Fetch;->networkReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tonyodev/fetch/Fetch;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 74
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tonyodev/fetch/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/tonyodev/fetch/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    .line 75
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-direct {p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch/DatabaseHelper;->setLoggingEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->updateReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    invoke-static {}, Lcom/tonyodev/fetch/FetchService;->getEventUpdateFilter()Landroid/content/IntentFilter;

    move-result-object v2

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 80
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->networkReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tonyodev/fetch/Fetch;->startService(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentMap;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/tonyodev/fetch/Fetch;->callsMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tonyodev/fetch/Fetch;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/tonyodev/fetch/Fetch;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tonyodev/fetch/Fetch;)Ljava/util/Iterator;
    .registers 2
    .param p0, "x0"    # Lcom/tonyodev/fetch/Fetch;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tonyodev/fetch/Fetch;->getListenerIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/tonyodev/fetch/Fetch;)Z
    .registers 2
    .param p0, "x0"    # Lcom/tonyodev/fetch/Fetch;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method public static call(Lcom/tonyodev/fetch/request/Request;Lcom/tonyodev/fetch/callback/FetchCall;)V
    .registers 5
    .param p0, "request"    # Lcom/tonyodev/fetch/request/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/tonyodev/fetch/callback/FetchCall;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch/request/Request;",
            "Lcom/tonyodev/fetch/callback/FetchCall",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "fetchCall":Lcom/tonyodev/fetch/callback/FetchCall;, "Lcom/tonyodev/fetch/callback/FetchCall<Ljava/lang/String;>;"
    if-nez p0, :cond_a

    .line 140
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Request cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_a
    if-nez p1, :cond_14

    .line 144
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "FetchCall cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_14
    sget-object v1, Lcom/tonyodev/fetch/Fetch;->callsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 156
    :goto_1c
    return-void

    .line 151
    :cond_1d
    new-instance v0, Lcom/tonyodev/fetch/FetchCallRunnable;

    sget-object v1, Lcom/tonyodev/fetch/Fetch;->callsCallback:Lcom/tonyodev/fetch/FetchCallRunnable$Callback;

    invoke-direct {v0, p0, p1, v1}, Lcom/tonyodev/fetch/FetchCallRunnable;-><init>(Lcom/tonyodev/fetch/request/Request;Lcom/tonyodev/fetch/callback/FetchCall;Lcom/tonyodev/fetch/FetchCallRunnable$Callback;)V

    .line 153
    .local v0, "callRunnable":Lcom/tonyodev/fetch/FetchCallRunnable;
    sget-object v1, Lcom/tonyodev/fetch/Fetch;->callsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1c
.end method

.method public static cancelCall(Lcom/tonyodev/fetch/request/Request;)V
    .registers 3
    .param p0, "request"    # Lcom/tonyodev/fetch/request/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 172
    if-nez p0, :cond_3

    .line 184
    :cond_2
    :goto_2
    return-void

    .line 176
    :cond_3
    sget-object v1, Lcom/tonyodev/fetch/Fetch;->callsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    sget-object v1, Lcom/tonyodev/fetch/Fetch;->callsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch/FetchCallRunnable;

    .line 180
    .local v0, "fetchCallRunnable":Lcom/tonyodev/fetch/FetchCallRunnable;
    if-eqz v0, :cond_2

    .line 181
    invoke-virtual {v0}, Lcom/tonyodev/fetch/FetchCallRunnable;->interrupt()V

    goto :goto_2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tonyodev/fetch/Fetch;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 107
    invoke-static {p0}, Lcom/tonyodev/fetch/Fetch;->newInstance(Landroid/content/Context;)Lcom/tonyodev/fetch/Fetch;

    move-result-object v0

    return-object v0
.end method

.method private getListenerIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/tonyodev/fetch/listener/FetchListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private isLoggingEnabled()Z
    .registers 2

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tonyodev/fetch/FetchService;->isLoggingEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/tonyodev/fetch/Fetch;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 119
    if-nez p0, :cond_a

    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_a
    new-instance v0, Lcom/tonyodev/fetch/Fetch;

    invoke-direct {v0, p0}, Lcom/tonyodev/fetch/Fetch;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private setReleased(Z)V
    .registers 2
    .param p1, "released"    # Z

    .prologue
    .line 1003
    iput-boolean p1, p0, Lcom/tonyodev/fetch/Fetch;->isReleased:Z

    .line 1004
    return-void
.end method

.method public static startService(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 99
    invoke-static {p0}, Lcom/tonyodev/fetch/FetchService;->processPendingRequests(Landroid/content/Context;)V

    .line 100
    return-void
.end method


# virtual methods
.method public addCompletedDownload(Ljava/lang/String;)J
    .registers 20
    .param p1, "filePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 746
    invoke-static/range {p0 .. p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 748
    if-nez p1, :cond_d

    .line 749
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v7, "File path cannot be null"

    invoke-direct {v3, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 756
    :cond_d
    :try_start_d
    invoke-static/range {p1 .. p1}, Lcom/tonyodev/fetch/Utils;->fileExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 757
    new-instance v3, Lcom/tonyodev/fetch/exception/EnqueueException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File does not exist at filePath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, -0x66

    invoke-direct {v3, v7, v8}, Lcom/tonyodev/fetch/exception/EnqueueException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_30
    .catch Lcom/tonyodev/fetch/exception/EnqueueException; {:try_start_d .. :try_end_30} :catch_30

    .line 774
    :catch_30
    move-exception v2

    .line 776
    .local v2, "e":Lcom/tonyodev/fetch/exception/EnqueueException;
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 777
    invoke-virtual {v2}, Lcom/tonyodev/fetch/exception/EnqueueException;->printStackTrace()V

    .line 780
    :cond_3a
    const-wide/16 v4, -0x1

    .line 783
    .end local v2    # "e":Lcom/tonyodev/fetch/exception/EnqueueException;
    .local v4, "id":J
    :cond_3c
    return-wide v4

    .line 761
    .end local v4    # "id":J
    :cond_3d
    :try_start_3d
    invoke-static {}, Lcom/tonyodev/fetch/Utils;->generateRequestId()J

    move-result-wide v4

    .line 762
    .restart local v4    # "id":J
    invoke-static/range {p1 .. p1}, Lcom/tonyodev/fetch/Utils;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 763
    .local v16, "file":Ljava/io/File;
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 764
    .local v6, "url":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result v7

    invoke-static {v3, v7}, Lcom/tonyodev/fetch/Utils;->headerListToString(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v9

    .line 765
    .local v9, "headers":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 767
    .local v10, "fileSize":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    const/16 v8, 0x387

    const/16 v14, 0x258

    const/4 v15, -0x1

    move-object/from16 v7, p1

    move-wide v12, v10

    invoke-virtual/range {v3 .. v15}, Lcom/tonyodev/fetch/DatabaseHelper;->insert(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJII)Z

    move-result v17

    .line 770
    .local v17, "inserted":Z
    if-nez v17, :cond_3c

    .line 771
    new-instance v3, Lcom/tonyodev/fetch/exception/EnqueueException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not insert request:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, -0x75

    invoke-direct {v3, v7, v8}, Lcom/tonyodev/fetch/exception/EnqueueException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_89
    .catch Lcom/tonyodev/fetch/exception/EnqueueException; {:try_start_3d .. :try_end_89} :catch_30
.end method

.method public addCompletedDownloads(Ljava/util/List;)Ljava/util/List;
    .registers 28
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 799
    .local p1, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 801
    if-nez p1, :cond_f

    .line 802
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v24, "Request list cannot be null"

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 805
    :cond_f
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ge v3, v0, :cond_22

    .line 806
    new-instance v18, Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 876
    :cond_21
    return-object v18

    .line 809
    :cond_22
    new-instance v18, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 810
    .local v18, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 824
    .local v22, "statements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_32
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 825
    .local v23, "stringBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v3}, Lcom/tonyodev/fetch/DatabaseHelper;->getInsertStatementOpen()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_48
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 828
    .local v20, "path":Ljava/lang/String;
    const-wide/16 v4, -0x1

    .line 830
    .local v4, "id":J
    if-eqz v20, :cond_100

    .line 832
    invoke-static/range {v20 .. v20}, Lcom/tonyodev/fetch/Utils;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 834
    .local v16, "file":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_c6

    .line 856
    .end local v4    # "id":J
    .end local v16    # "file":Ljava/io/File;
    .end local v20    # "path":Ljava/lang/String;
    :cond_62
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    move-object/from16 v24, v0

    .line 857
    invoke-virtual/range {v24 .. v24}, Lcom/tonyodev/fetch/DatabaseHelper;->getInsertStatementClose()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch/DatabaseHelper;->insert(Ljava/lang/String;)Z

    move-result v19

    .line 860
    .local v19, "inserted":Z
    if-nez v19, :cond_21

    .line 861
    new-instance v3, Lcom/tonyodev/fetch/exception/EnqueueException;

    const-string v24, "could not insert requests"

    const/16 v25, -0x75

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v3, v0, v1}, Lcom/tonyodev/fetch/exception/EnqueueException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_a1
    .catch Lcom/tonyodev/fetch/exception/EnqueueException; {:try_start_32 .. :try_end_a1} :catch_a1

    .line 864
    .end local v19    # "inserted":Z
    .end local v23    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_a1
    move-exception v2

    .line 866
    .local v2, "e":Lcom/tonyodev/fetch/exception/EnqueueException;
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 867
    invoke-virtual {v2}, Lcom/tonyodev/fetch/exception/EnqueueException;->printStackTrace()V

    .line 870
    :cond_ab
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    .line 871
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_b0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_21

    .line 872
    const-wide/16 v24, -0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    add-int/lit8 v17, v17, 0x1

    goto :goto_b0

    .line 838
    .end local v2    # "e":Lcom/tonyodev/fetch/exception/EnqueueException;
    .end local v17    # "i":I
    .restart local v4    # "id":J
    .restart local v16    # "file":Ljava/io/File;
    .restart local v20    # "path":Ljava/lang/String;
    .restart local v23    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_c6
    :try_start_c6
    invoke-static {}, Lcom/tonyodev/fetch/Utils;->generateRequestId()J

    move-result-wide v4

    .line 839
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 840
    .local v6, "url":Ljava/lang/String;
    move-object/from16 v7, v20

    .line 841
    .local v7, "filePath":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result v25

    move/from16 v0, v25

    invoke-static {v3, v0}, Lcom/tonyodev/fetch/Utils;->headerListToString(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v9

    .line 842
    .local v9, "headers":Ljava/lang/String;
    const/16 v8, 0x387

    .line 843
    .local v8, "status":I
    const/16 v14, 0x258

    .line 844
    .local v14, "priority":I
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 845
    .local v10, "downloadedBytes":J
    move-wide v12, v10

    .line 846
    .local v12, "fileSize":J
    const/4 v15, -0x1

    .line 848
    .local v15, "error":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual/range {v3 .. v15}, Lcom/tonyodev/fetch/DatabaseHelper;->getRowInsertStatement(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJII)Ljava/lang/String;

    move-result-object v21

    .line 849
    .local v21, "statement":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v25, ","

    .line 850
    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v8    # "status":I
    .end local v9    # "headers":Ljava/lang/String;
    .end local v10    # "downloadedBytes":J
    .end local v12    # "fileSize":J
    .end local v14    # "priority":I
    .end local v15    # "error":I
    .end local v16    # "file":Ljava/io/File;
    .end local v21    # "statement":Ljava/lang/String;
    :cond_100
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_109
    .catch Lcom/tonyodev/fetch/exception/EnqueueException; {:try_start_c6 .. :try_end_109} :catch_a1

    goto/16 :goto_48
.end method

.method public addFetchListener(Lcom/tonyodev/fetch/listener/FetchListener;)V
    .registers 4
    .param p1, "fetchListener"    # Lcom/tonyodev/fetch/listener/FetchListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 216
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 218
    if-nez p1, :cond_d

    .line 219
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fetchListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_d
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 227
    :goto_15
    return-void

    .line 226
    :cond_16
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15
.end method

.method public declared-synchronized contains(Lcom/tonyodev/fetch/request/Request;)Z
    .registers 6
    .param p1, "request"    # Lcom/tonyodev/fetch/request/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 935
    monitor-enter p0

    :try_start_1
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 937
    if-nez p1, :cond_11

    .line 938
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Request cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    .line 935
    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 941
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {p1}, Lcom/tonyodev/fetch/request/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tonyodev/fetch/request/Request;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tonyodev/fetch/DatabaseHelper;->getByUrlAndFilePath(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 943
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tonyodev/fetch/Utils;->containsRequest(Landroid/database/Cursor;Z)Z
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_e

    move-result v1

    monitor-exit p0

    return v1
.end method

.method public enableLogging(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1020
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 1021
    new-instance v0, Lcom/tonyodev/fetch/Fetch$Settings;

    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch/Fetch$Settings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch/Fetch$Settings;->enableLogging(Z)Lcom/tonyodev/fetch/Fetch$Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch/Fetch$Settings;->apply()V

    .line 1022
    return-void
.end method

.method public enqueue(Lcom/tonyodev/fetch/request/Request;)J
    .registers 20
    .param p1, "request"    # Lcom/tonyodev/fetch/request/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 270
    invoke-static/range {p0 .. p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 272
    if-nez p1, :cond_d

    .line 273
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v8, "Request cannot be null"

    invoke-direct {v3, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 276
    :cond_d
    invoke-static {}, Lcom/tonyodev/fetch/Utils;->generateRequestId()J

    move-result-wide v4

    .line 280
    .local v4, "id":J
    :try_start_11
    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch/request/Request;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, "url":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch/request/Request;->getFilePath()Ljava/lang/String;

    move-result-object v7

    .line 282
    .local v7, "filePath":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch/request/Request;->getPriority()I

    move-result v14

    .line 283
    .local v14, "priority":I
    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch/request/Request;->getHeaders()Ljava/util/List;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result v8

    invoke-static {v3, v8}, Lcom/tonyodev/fetch/Utils;->headerListToString(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v9

    .line 284
    .local v9, "headers":Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 285
    .local v12, "fileSize":J
    const-wide/16 v10, 0x0

    .line 287
    .local v10, "downloadedBytes":J
    invoke-static {v7}, Lcom/tonyodev/fetch/Utils;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    .line 289
    .local v17, "file":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 290
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 293
    :cond_3b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    const/16 v8, 0x384

    const/4 v15, -0x1

    invoke-virtual/range {v3 .. v15}, Lcom/tonyodev/fetch/DatabaseHelper;->insert(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJII)Z

    move-result v16

    .line 296
    .local v16, "enqueued":Z
    if-nez v16, :cond_5f

    .line 297
    new-instance v3, Lcom/tonyodev/fetch/exception/EnqueueException;

    const-string v8, "could not insert request"

    const/16 v15, -0x75

    invoke-direct {v3, v8, v15}, Lcom/tonyodev/fetch/exception/EnqueueException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_52
    .catch Lcom/tonyodev/fetch/exception/EnqueueException; {:try_start_11 .. :try_end_52} :catch_52

    .line 302
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v9    # "headers":Ljava/lang/String;
    .end local v10    # "downloadedBytes":J
    .end local v12    # "fileSize":J
    .end local v14    # "priority":I
    .end local v16    # "enqueued":Z
    .end local v17    # "file":Ljava/io/File;
    :catch_52
    move-exception v2

    .line 304
    .local v2, "e":Lcom/tonyodev/fetch/exception/EnqueueException;
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 305
    invoke-virtual {v2}, Lcom/tonyodev/fetch/exception/EnqueueException;->printStackTrace()V

    .line 308
    :cond_5c
    const-wide/16 v4, -0x1

    .line 311
    .end local v2    # "e":Lcom/tonyodev/fetch/exception/EnqueueException;
    :goto_5e
    return-wide v4

    .line 300
    .restart local v6    # "url":Ljava/lang/String;
    .restart local v7    # "filePath":Ljava/lang/String;
    .restart local v9    # "headers":Ljava/lang/String;
    .restart local v10    # "downloadedBytes":J
    .restart local v12    # "fileSize":J
    .restart local v14    # "priority":I
    .restart local v16    # "enqueued":Z
    .restart local v17    # "file":Ljava/io/File;
    :cond_5f
    :try_start_5f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/tonyodev/fetch/Fetch;->startService(Landroid/content/Context;)V
    :try_end_66
    .catch Lcom/tonyodev/fetch/exception/EnqueueException; {:try_start_5f .. :try_end_66} :catch_52

    goto :goto_5e
.end method

.method public enqueue(Ljava/util/List;)Ljava/util/List;
    .registers 28
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tonyodev/fetch/request/Request;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/tonyodev/fetch/request/Request;>;"
    invoke-static/range {p0 .. p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 329
    if-nez p1, :cond_f

    .line 330
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v24, "Request list cannot be null"

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 333
    :cond_f
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ge v3, v0, :cond_22

    .line 334
    new-instance v18, Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 407
    :cond_21
    :goto_21
    return-object v18

    .line 337
    :cond_22
    new-instance v18, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 338
    .local v18, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v22, "statements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_32
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .local v23, "stringBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v3}, Lcom/tonyodev/fetch/DatabaseHelper;->getInsertStatementOpen()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_48
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d1

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/tonyodev/fetch/request/Request;

    .line 357
    .local v20, "request":Lcom/tonyodev/fetch/request/Request;
    const-wide/16 v4, -0x1

    .line 359
    .local v4, "id":J
    if-eqz v20, :cond_a2

    .line 361
    invoke-static {}, Lcom/tonyodev/fetch/Utils;->generateRequestId()J

    move-result-wide v4

    .line 362
    invoke-virtual/range {v20 .. v20}, Lcom/tonyodev/fetch/request/Request;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 363
    .local v6, "url":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/tonyodev/fetch/request/Request;->getFilePath()Ljava/lang/String;

    move-result-object v7

    .line 364
    .local v7, "filePath":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/tonyodev/fetch/request/Request;->getHeaders()Ljava/util/List;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result v25

    move/from16 v0, v25

    invoke-static {v3, v0}, Lcom/tonyodev/fetch/Utils;->headerListToString(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v9

    .line 365
    .local v9, "headers":Ljava/lang/String;
    const/16 v8, 0x384

    .line 366
    .local v8, "status":I
    invoke-virtual/range {v20 .. v20}, Lcom/tonyodev/fetch/request/Request;->getPriority()I

    move-result v14

    .line 367
    .local v14, "priority":I
    const-wide/16 v10, 0x0

    .line 368
    .local v10, "downloadedBytes":J
    const-wide/16 v12, 0x0

    .line 370
    .local v12, "fileSize":J
    invoke-static {v7}, Lcom/tonyodev/fetch/Utils;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 372
    .local v16, "file":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 373
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 376
    :cond_8a
    const/4 v15, -0x1

    .line 378
    .local v15, "error":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual/range {v3 .. v15}, Lcom/tonyodev/fetch/DatabaseHelper;->getRowInsertStatement(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJII)Ljava/lang/String;

    move-result-object v21

    .line 379
    .local v21, "statement":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v25, ", "

    .line 380
    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v8    # "status":I
    .end local v9    # "headers":Ljava/lang/String;
    .end local v10    # "downloadedBytes":J
    .end local v12    # "fileSize":J
    .end local v14    # "priority":I
    .end local v15    # "error":I
    .end local v16    # "file":Ljava/io/File;
    .end local v21    # "statement":Ljava/lang/String;
    :cond_a2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ab
    .catch Lcom/tonyodev/fetch/exception/EnqueueException; {:try_start_32 .. :try_end_ab} :catch_ac

    goto :goto_48

    .line 395
    .end local v4    # "id":J
    .end local v20    # "request":Lcom/tonyodev/fetch/request/Request;
    .end local v23    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_ac
    move-exception v2

    .line 397
    .local v2, "e":Lcom/tonyodev/fetch/exception/EnqueueException;
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 398
    invoke-virtual {v2}, Lcom/tonyodev/fetch/exception/EnqueueException;->printStackTrace()V

    .line 401
    :cond_b6
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    .line 402
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_bb
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_21

    .line 403
    const-wide/16 v24, -0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    add-int/lit8 v17, v17, 0x1

    goto :goto_bb

    .line 386
    .end local v2    # "e":Lcom/tonyodev/fetch/exception/EnqueueException;
    .end local v17    # "i":I
    .restart local v23    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_d1
    :try_start_d1
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    move-object/from16 v24, v0

    .line 387
    invoke-virtual/range {v24 .. v24}, Lcom/tonyodev/fetch/DatabaseHelper;->getInsertStatementClose()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/tonyodev/fetch/DatabaseHelper;->insert(Ljava/lang/String;)Z

    move-result v19

    .line 390
    .local v19, "inserted":Z
    if-nez v19, :cond_110

    .line 391
    new-instance v3, Lcom/tonyodev/fetch/exception/EnqueueException;

    const-string v24, "could not insert requests"

    const/16 v25, -0x75

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v3, v0, v1}, Lcom/tonyodev/fetch/exception/EnqueueException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 394
    :cond_110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/tonyodev/fetch/Fetch;->startService(Landroid/content/Context;)V
    :try_end_117
    .catch Lcom/tonyodev/fetch/exception/EnqueueException; {:try_start_d1 .. :try_end_117} :catch_ac

    goto/16 :goto_21
.end method

.method public declared-synchronized get(J)Lcom/tonyodev/fetch/request/RequestInfo;
    .registers 6
    .param p1, "id"    # J
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 589
    monitor-enter p0

    :try_start_1
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 591
    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v1, p1, p2}, Lcom/tonyodev/fetch/DatabaseHelper;->get(J)Landroid/database/Cursor;

    move-result-object v0

    .line 593
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tonyodev/fetch/Utils;->cursorToRequestInfo(Landroid/database/Cursor;ZZ)Lcom/tonyodev/fetch/request/RequestInfo;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_15

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 589
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(Lcom/tonyodev/fetch/request/Request;)Lcom/tonyodev/fetch/request/RequestInfo;
    .registers 6
    .param p1, "request"    # Lcom/tonyodev/fetch/request/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 667
    monitor-enter p0

    :try_start_1
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 669
    if-nez p1, :cond_11

    .line 670
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Request cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    .line 667
    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 673
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {p1}, Lcom/tonyodev/fetch/request/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tonyodev/fetch/request/Request;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tonyodev/fetch/DatabaseHelper;->getByUrlAndFilePath(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 675
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tonyodev/fetch/Utils;->cursorToRequestInfo(Landroid/database/Cursor;ZZ)Lcom/tonyodev/fetch/request/RequestInfo;
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_e

    move-result-object v1

    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized get()Ljava/util/List;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tonyodev/fetch/request/RequestInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 606
    monitor-enter p0

    :try_start_1
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 608
    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v1}, Lcom/tonyodev/fetch/DatabaseHelper;->get()Landroid/database/Cursor;

    move-result-object v0

    .line 610
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tonyodev/fetch/Utils;->cursorToRequestInfoList(Landroid/database/Cursor;ZZ)Ljava/util/List;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_15

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 606
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public varargs declared-synchronized get([J)Ljava/util/List;
    .registers 5
    .param p1, "ids"    # [J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List",
            "<",
            "Lcom/tonyodev/fetch/request/RequestInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    monitor-enter p0

    :try_start_1
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 626
    if-nez p1, :cond_d

    .line 627
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1d

    .line 632
    :goto_b
    monitor-exit p0

    return-object v1

    .line 630
    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/tonyodev/fetch/DatabaseHelper;->get([J)Landroid/database/Cursor;

    move-result-object v0

    .line 632
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tonyodev/fetch/Utils;->cursorToRequestInfoList(Landroid/database/Cursor;ZZ)Ljava/util/List;
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_1d

    move-result-object v1

    goto :goto_b

    .line 624
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getByStatus(I)Ljava/util/List;
    .registers 5
    .param p1, "status"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/tonyodev/fetch/request/RequestInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    monitor-enter p0

    :try_start_1
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 648
    invoke-static {p1}, Lcom/tonyodev/fetch/Utils;->throwIfInvalidStatus(I)V

    .line 650
    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/tonyodev/fetch/DatabaseHelper;->getByStatus(I)Landroid/database/Cursor;

    move-result-object v0

    .line 652
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tonyodev/fetch/Utils;->cursorToRequestInfoList(Landroid/database/Cursor;ZZ)Ljava/util/List;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 647
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getDownloadedFile(J)Ljava/io/File;
    .registers 10
    .param p1, "id"    # J
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 690
    monitor-enter p0

    :try_start_2
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 692
    iget-object v4, p0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v4, p1, p2}, Lcom/tonyodev/fetch/DatabaseHelper;->get(J)Landroid/database/Cursor;

    move-result-object v0

    .line 693
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/tonyodev/fetch/Utils;->cursorToRequestInfo(Landroid/database/Cursor;ZZ)Lcom/tonyodev/fetch/request/RequestInfo;

    move-result-object v2

    .line 695
    .local v2, "requestInfo":Lcom/tonyodev/fetch/request/RequestInfo;
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/tonyodev/fetch/request/RequestInfo;->getStatus()I
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_31

    move-result v4

    const/16 v5, 0x387

    if-eq v4, v5, :cond_21

    :cond_1e
    move-object v1, v3

    .line 704
    :cond_1f
    :goto_1f
    monitor-exit p0

    return-object v1

    .line 699
    :cond_21
    :try_start_21
    invoke-virtual {v2}, Lcom/tonyodev/fetch/request/RequestInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tonyodev/fetch/Utils;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 701
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_31

    move-result v4

    if-nez v4, :cond_1f

    move-object v1, v3

    .line 704
    goto :goto_1f

    .line 690
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "requestInfo":Lcom/tonyodev/fetch/request/RequestInfo;
    :catchall_31
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getFilePath(J)Ljava/lang/String;
    .registers 8
    .param p1, "id"    # J
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 723
    monitor-enter p0

    :try_start_1
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 725
    iget-object v2, p0, Lcom/tonyodev/fetch/Fetch;->dbHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v2, p1, p2}, Lcom/tonyodev/fetch/DatabaseHelper;->get(J)Landroid/database/Cursor;

    move-result-object v0

    .line 726
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/tonyodev/fetch/Fetch;->isLoggingEnabled()Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/tonyodev/fetch/Utils;->cursorToRequestInfo(Landroid/database/Cursor;ZZ)Lcom/tonyodev/fetch/request/RequestInfo;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1d

    move-result-object v1

    .line 728
    .local v1, "requestInfo":Lcom/tonyodev/fetch/request/RequestInfo;
    if-nez v1, :cond_18

    .line 729
    const/4 v2, 0x0

    .line 731
    :goto_16
    monitor-exit p0

    return-object v2

    :cond_18
    :try_start_18
    invoke-virtual {v1}, Lcom/tonyodev/fetch/request/RequestInfo;->getFilePath()Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1d

    move-result-object v2

    goto :goto_16

    .line 723
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "requestInfo":Lcom/tonyodev/fetch/request/RequestInfo;
    :catchall_1d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method isReleased()Z
    .registers 2

    .prologue
    .line 999
    iget-boolean v0, p0, Lcom/tonyodev/fetch/Fetch;->isReleased:Z

    return v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 951
    invoke-virtual {p0}, Lcom/tonyodev/fetch/Fetch;->isReleased()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public pause(J)V
    .registers 6
    .param p1, "id"    # J

    .prologue
    .line 490
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 492
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 493
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "com.tonyodev.fetch.action_type"

    const/16 v2, 0x137

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 494
    const-string v1, "com.tonyodev.fetch.extra_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 496
    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tonyodev/fetch/FetchService;->sendToService(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 497
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/tonyodev/fetch/Fetch;->isReleased()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 198
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tonyodev/fetch/Fetch;->setReleased(Z)V

    .line 199
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 200
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->updateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 201
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->networkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    :cond_1d
    return-void
.end method

.method public remove(J)V
    .registers 6
    .param p1, "id"    # J

    .prologue
    .line 421
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 423
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 424
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "com.tonyodev.fetch.action_type"

    const/16 v2, 0x139

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 425
    const-string v1, "com.tonyodev.fetch.extra_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 427
    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tonyodev/fetch/FetchService;->sendToService(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 428
    return-void
.end method

.method public removeAll()V
    .registers 4

    .prologue
    .line 439
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 441
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 442
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "com.tonyodev.fetch.action_type"

    const/16 v2, 0x13f

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 444
    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tonyodev/fetch/FetchService;->sendToService(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 445
    return-void
.end method

.method public removeFetchListener(Lcom/tonyodev/fetch/listener/FetchListener;)V
    .registers 3
    .param p1, "fetchListener"    # Lcom/tonyodev/fetch/listener/FetchListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 238
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 240
    if-nez p1, :cond_6

    .line 245
    :goto_5
    return-void

    .line 244
    :cond_6
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public removeFetchListeners()V
    .registers 2

    .prologue
    .line 255
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 256
    iget-object v0, p0, Lcom/tonyodev/fetch/Fetch;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 257
    return-void
.end method

.method public removeRequest(J)V
    .registers 6
    .param p1, "id"    # J

    .prologue
    .line 454
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 456
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 457
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "com.tonyodev.fetch.action_type"

    const/16 v2, 0x144

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    const-string v1, "com.tonyodev.fetch.extra_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 460
    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tonyodev/fetch/FetchService;->sendToService(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 462
    return-void
.end method

.method public removeRequests()V
    .registers 4

    .prologue
    .line 469
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 472
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 473
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "com.tonyodev.fetch.action_type"

    const/16 v2, 0x145

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 475
    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tonyodev/fetch/FetchService;->sendToService(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 476
    return-void
.end method

.method public resume(J)V
    .registers 6
    .param p1, "id"    # J

    .prologue
    .line 509
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 511
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 512
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "com.tonyodev.fetch.action_type"

    const/16 v2, 0x138

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 513
    const-string v1, "com.tonyodev.fetch.extra_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 515
    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tonyodev/fetch/FetchService;->sendToService(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 516
    return-void
.end method

.method public retry(J)V
    .registers 6
    .param p1, "id"    # J

    .prologue
    .line 568
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 570
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 571
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "com.tonyodev.fetch.action_type"

    const/16 v2, 0x13e

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 572
    const-string v1, "com.tonyodev.fetch.extra_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 574
    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tonyodev/fetch/FetchService;->sendToService(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 575
    return-void
.end method

.method public runOnBackgroundThread(Lcom/tonyodev/fetch/callback/FetchTask;)V
    .registers 4
    .param p1, "fetchTask"    # Lcom/tonyodev/fetch/callback/FetchTask;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 889
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 890
    invoke-static {p1}, Lcom/tonyodev/fetch/Utils;->throwIfFetchTaskNull(Lcom/tonyodev/fetch/callback/FetchTask;)V

    .line 892
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tonyodev/fetch/Fetch$2;

    invoke-direct {v1, p0, p1}, Lcom/tonyodev/fetch/Fetch$2;-><init>(Lcom/tonyodev/fetch/Fetch;Lcom/tonyodev/fetch/callback/FetchTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 899
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 900
    return-void
.end method

.method public runOnMainThread(Lcom/tonyodev/fetch/callback/FetchTask;)V
    .registers 4
    .param p1, "fetchTask"    # Lcom/tonyodev/fetch/callback/FetchTask;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 911
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 912
    invoke-static {p1}, Lcom/tonyodev/fetch/Utils;->throwIfFetchTaskNull(Lcom/tonyodev/fetch/callback/FetchTask;)V

    .line 914
    sget-object v0, Lcom/tonyodev/fetch/Fetch;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tonyodev/fetch/Fetch$3;

    invoke-direct {v1, p0, p1}, Lcom/tonyodev/fetch/Fetch$3;-><init>(Lcom/tonyodev/fetch/Fetch;Lcom/tonyodev/fetch/callback/FetchTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 922
    return-void
.end method

.method public setAllowedNetwork(I)V
    .registers 4
    .param p1, "networkType"    # I

    .prologue
    .line 529
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 530
    new-instance v0, Lcom/tonyodev/fetch/Fetch$Settings;

    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch/Fetch$Settings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch/Fetch$Settings;->setAllowedNetwork(I)Lcom/tonyodev/fetch/Fetch$Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch/Fetch$Settings;->apply()V

    .line 531
    return-void
.end method

.method public setConcurrentDownloadsLimit(I)V
    .registers 4
    .param p1, "limit"    # I

    .prologue
    .line 1032
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 1033
    new-instance v0, Lcom/tonyodev/fetch/Fetch$Settings;

    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch/Fetch$Settings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch/Fetch$Settings;->setConcurrentDownloadsLimit(I)Lcom/tonyodev/fetch/Fetch$Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch/Fetch$Settings;->apply()V

    .line 1034
    return-void
.end method

.method public setOnUpdateInterval(J)V
    .registers 6
    .param p1, "intervalMs"    # J

    .prologue
    .line 1044
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 1045
    new-instance v0, Lcom/tonyodev/fetch/Fetch$Settings;

    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch/Fetch$Settings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/tonyodev/fetch/Fetch$Settings;->setOnUpdateInterval(J)Lcom/tonyodev/fetch/Fetch$Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch/Fetch$Settings;->apply()V

    .line 1046
    return-void
.end method

.method public setPriority(JI)V
    .registers 9
    .param p1, "id"    # J
    .param p3, "priority"    # I

    .prologue
    .line 543
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 545
    const/16 v1, 0x258

    .line 547
    .local v1, "priorityType":I
    const/16 v2, 0x259

    if-ne p3, v2, :cond_b

    .line 548
    const/16 v1, 0x259

    .line 551
    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 552
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "com.tonyodev.fetch.action_type"

    const/16 v3, 0x13d

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 553
    const-string v2, "com.tonyodev.fetch.extra_id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 554
    const-string v2, "com.tonyodev.fetch.extra_priority"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 556
    iget-object v2, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/tonyodev/fetch/FetchService;->sendToService(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 557
    return-void
.end method

.method public updateUrlForRequest(JLjava/lang/String;)V
    .registers 7
    .param p1, "id"    # J
    .param p3, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1057
    invoke-static {p0}, Lcom/tonyodev/fetch/Utils;->throwIfNotUsable(Lcom/tonyodev/fetch/Fetch;)V

    .line 1059
    if-nez p3, :cond_d

    .line 1060
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Url cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1063
    :cond_d
    invoke-static {p3}, Lcom/tonyodev/fetch/Utils;->throwIfInvalidUrl(Ljava/lang/String;)V

    .line 1065
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1066
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "com.tonyodev.fetch.action_type"

    const/16 v2, 0x142

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1067
    const-string v1, "com.tonyodev.fetch.extra_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1068
    const-string v1, "com.tonyodev.fetch.extra_url"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    iget-object v1, p0, Lcom/tonyodev/fetch/Fetch;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tonyodev/fetch/FetchService;->sendToService(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1071
    return-void
.end method
