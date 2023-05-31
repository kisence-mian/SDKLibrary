.class public final Ltds/androidx/core/content/LocalBroadcastManager;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/core/content/LocalBroadcastManager$BroadcastRecord;,
        Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field private static mInstance:Ltds/androidx/core/content/LocalBroadcastManager;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltds/androidx/core/content/LocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList<",
            "Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltds/androidx/core/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltds/androidx/core/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltds/androidx/core/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/core/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 99
    iput-object p1, p0, Ltds/androidx/core/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 100
    new-instance v0, Ltds/androidx/core/content/LocalBroadcastManager$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ltds/androidx/core/content/LocalBroadcastManager$1;-><init>(Ltds/androidx/core/content/LocalBroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Ltds/androidx/core/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    .line 113
    return-void
.end method

.method static synthetic access$000(Ltds/androidx/core/content/LocalBroadcastManager;)V
    .registers 1
    .param p0, "x0"    # Ltds/androidx/core/content/LocalBroadcastManager;

    .line 33
    invoke-direct {p0}, Ltds/androidx/core/content/LocalBroadcastManager;->executePendingBroadcasts()V

    return-void
.end method

.method private executePendingBroadcasts()V
    .registers 10

    .line 282
    :goto_0
    iget-object v0, p0, Ltds/androidx/core/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 283
    :try_start_3
    iget-object v1, p0, Ltds/androidx/core/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 284
    .local v1, "N":I
    if-gtz v1, :cond_d

    .line 285
    monitor-exit v0

    return-void

    .line 287
    :cond_d
    new-array v2, v1, [Ltds/androidx/core/content/LocalBroadcastManager$BroadcastRecord;

    .line 288
    .local v2, "brs":[Ltds/androidx/core/content/LocalBroadcastManager$BroadcastRecord;
    iget-object v3, p0, Ltds/androidx/core/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 289
    iget-object v3, p0, Ltds/androidx/core/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 290
    .end local v1    # "N":I
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_45

    .line 291
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    array-length v1, v2

    if-ge v0, v1, :cond_44

    .line 292
    aget-object v1, v2, v0

    .line 293
    .local v1, "br":Ltds/androidx/core/content/LocalBroadcastManager$BroadcastRecord;
    iget-object v3, v1, Ltds/androidx/core/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 294
    .local v3, "nbr":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_27
    if-ge v4, v3, :cond_41

    .line 295
    iget-object v5, v1, Ltds/androidx/core/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;

    .line 296
    .local v5, "rec":Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;
    iget-boolean v6, v5, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    if-nez v6, :cond_3e

    .line 297
    iget-object v6, v5, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Ltds/androidx/core/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    iget-object v8, v1, Ltds/androidx/core/content/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7, v8}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 294
    .end local v5    # "rec":Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;
    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 291
    .end local v1    # "br":Ltds/androidx/core/content/LocalBroadcastManager$BroadcastRecord;
    .end local v3    # "nbr":I
    .end local v4    # "j":I
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 301
    .end local v0    # "i":I
    .end local v2    # "brs":[Ltds/androidx/core/content/LocalBroadcastManager$BroadcastRecord;
    :cond_44
    goto :goto_0

    .line 290
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Ltds/androidx/core/content/LocalBroadcastManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 90
    sget-object v0, Ltds/androidx/core/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_3
    sget-object v1, Ltds/androidx/core/content/LocalBroadcastManager;->mInstance:Ltds/androidx/core/content/LocalBroadcastManager;

    if-nez v1, :cond_12

    .line 92
    new-instance v1, Ltds/androidx/core/content/LocalBroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ltds/androidx/core/content/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Ltds/androidx/core/content/LocalBroadcastManager;->mInstance:Ltds/androidx/core/content/LocalBroadcastManager;

    .line 94
    :cond_12
    sget-object v1, Ltds/androidx/core/content/LocalBroadcastManager;->mInstance:Ltds/androidx/core/content/LocalBroadcastManager;

    monitor-exit v0

    return-object v1

    .line 95
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method


# virtual methods
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 11
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .line 125
    iget-object v0, p0, Ltds/androidx/core/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 126
    :try_start_3
    new-instance v1, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;

    invoke-direct {v1, p2, p1}, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 127
    .local v1, "entry":Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;
    iget-object v2, p0, Ltds/androidx/core/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 128
    .local v2, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v3, 0x1

    if-nez v2, :cond_1e

    .line 129
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 130
    iget-object v4, p0, Ltds/androidx/core/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_1e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_22
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    if-ge v4, v5, :cond_48

    .line 134
    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "action":Ljava/lang/String;
    iget-object v6, p0, Ltds/androidx/core/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 136
    .local v6, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v6, :cond_41

    .line 137
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v7

    .line 138
    iget-object v7, p0, Ltds/androidx/core/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_41
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    nop

    .end local v5    # "action":Ljava/lang/String;
    .end local v6    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 142
    .end local v1    # "entry":Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;
    .end local v2    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v4    # "i":I
    :cond_48
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;

    .line 198
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Ltds/androidx/core/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v3

    .line 199
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, "action":Ljava/lang/String;
    iget-object v0, v1, Ltds/androidx/core/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 201
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 200
    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 203
    .local v8, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    .line 204
    .local v11, "scheme":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    .line 206
    .local v9, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    :goto_2e
    move v14, v4

    .line 208
    .local v14, "debug":Z
    if-eqz v14, :cond_5d

    const-string v4, "LocalBroadcastManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resolving type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scheme "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_5d
    iget-object v4, v1, Ltds/androidx/core/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v15, v4

    .line 213
    .local v15, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v15, :cond_178

    .line 214
    if-eqz v14, :cond_86

    const-string v4, "LocalBroadcastManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_86
    const/4 v4, 0x0

    .line 217
    .local v4, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v6, 0x0

    move-object v10, v4

    move v7, v6

    .end local v4    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v7, "i":I
    .local v10, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    :goto_8a
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v7, v4, :cond_143

    .line 218
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;

    move-object v6, v4

    .line 219
    .local v6, "receiver":Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;
    if-eqz v14, :cond_b3

    const-string v4, "LocalBroadcastManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Matching against filter "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_b3
    iget-boolean v4, v6, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    if-eqz v4, :cond_ce

    .line 222
    if-eqz v14, :cond_c7

    .line 223
    const-string v4, "LocalBroadcastManager"

    const-string v12, "  Filter\'s target already added"

    invoke-static {v4, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v17, v0

    move/from16 v16, v7

    move-object v0, v10

    goto/16 :goto_13c

    .line 222
    :cond_c7
    move-object/from16 v17, v0

    move/from16 v16, v7

    move-object v0, v10

    goto/16 :goto_13c

    .line 228
    :cond_ce
    iget-object v4, v6, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    const-string v12, "LocalBroadcastManager"

    move-object v13, v6

    .end local v6    # "receiver":Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;
    .local v13, "receiver":Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;
    move-object v6, v0

    move/from16 v16, v7

    .end local v7    # "i":I
    .local v16, "i":I
    move-object v7, v11

    move-object/from16 v17, v0

    move-object v0, v10

    .end local v10    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v0, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v17, "type":Ljava/lang/String;
    move-object v10, v12

    invoke-virtual/range {v4 .. v10}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v4

    .line 230
    .local v4, "match":I
    if-ltz v4, :cond_110

    .line 231
    if-eqz v14, :cond_ff

    const-string v6, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Filter matched!  match=0x"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 232
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 231
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_ff
    if-nez v0, :cond_108

    .line 234
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v6

    .end local v0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v10    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    goto :goto_109

    .line 233
    .end local v10    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_108
    move-object v10, v0

    .line 236
    .end local v0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v10    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    :goto_109
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, v13, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    goto :goto_13d

    .line 239
    .end local v10    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v0    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_110
    if-eqz v14, :cond_13c

    .line 241
    packed-switch v4, :pswitch_data_180

    .line 246
    const-string v6, "unknown reason"

    goto :goto_124

    .line 245
    :pswitch_118
    const-string v6, "type"

    .local v6, "reason":Ljava/lang/String;
    goto :goto_124

    .line 244
    .end local v6    # "reason":Ljava/lang/String;
    :pswitch_11b
    const-string v6, "data"

    .restart local v6    # "reason":Ljava/lang/String;
    goto :goto_124

    .line 242
    .end local v6    # "reason":Ljava/lang/String;
    :pswitch_11e
    const-string v6, "action"

    .restart local v6    # "reason":Ljava/lang/String;
    goto :goto_124

    .line 243
    .end local v6    # "reason":Ljava/lang/String;
    :pswitch_121
    const-string v6, "category"

    .restart local v6    # "reason":Ljava/lang/String;
    nop

    .line 248
    :goto_124
    const-string v7, "LocalBroadcastManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  Filter did not match: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local v4    # "match":I
    .end local v6    # "reason":Ljava/lang/String;
    .end local v13    # "receiver":Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;
    .end local v16    # "i":I
    .end local v17    # "type":Ljava/lang/String;
    .local v0, "type":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v10    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_13c
    :goto_13c
    move-object v10, v0

    .end local v0    # "type":Ljava/lang/String;
    .end local v7    # "i":I
    .restart local v16    # "i":I
    .restart local v17    # "type":Ljava/lang/String;
    :goto_13d
    add-int/lit8 v7, v16, 0x1

    move-object/from16 v0, v17

    .end local v16    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_8a

    .end local v17    # "type":Ljava/lang/String;
    .restart local v0    # "type":Ljava/lang/String;
    :cond_143
    move-object/from16 v17, v0

    move/from16 v16, v7

    move-object v0, v10

    .line 253
    .end local v7    # "i":I
    .end local v10    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v0, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v17    # "type":Ljava/lang/String;
    if-eqz v0, :cond_17a

    .line 254
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_15d

    .line 255
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;

    const/4 v7, 0x0

    iput-boolean v7, v6, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    .line 254
    add-int/lit8 v4, v4, 0x1

    goto :goto_14b

    .line 257
    .end local v4    # "i":I
    :cond_15d
    iget-object v4, v1, Ltds/androidx/core/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    new-instance v6, Ltds/androidx/core/content/LocalBroadcastManager$BroadcastRecord;

    invoke-direct {v6, v2, v0}, Ltds/androidx/core/content/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v4, v1, Ltds/androidx/core/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_175

    .line 259
    iget-object v4, v1, Ltds/androidx/core/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 261
    :cond_175
    monitor-exit v3

    const/4 v3, 0x1

    return v3

    .line 213
    .end local v17    # "type":Ljava/lang/String;
    .local v0, "type":Ljava/lang/String;
    :cond_178
    move-object/from16 v17, v0

    .line 264
    .end local v0    # "type":Ljava/lang/String;
    .end local v5    # "action":Ljava/lang/String;
    .end local v8    # "data":Landroid/net/Uri;
    .end local v9    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "scheme":Ljava/lang/String;
    .end local v14    # "debug":Z
    .end local v15    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_17a
    monitor-exit v3

    .line 265
    const/4 v0, 0x0

    return v0

    .line 264
    :catchall_17d
    move-exception v0

    monitor-exit v3
    :try_end_17f
    .catchall {:try_start_7 .. :try_end_17f} :catchall_17d

    throw v0

    :pswitch_data_180
    .packed-switch -0x4
        :pswitch_121
        :pswitch_11e
        :pswitch_11b
        :pswitch_118
    .end packed-switch
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, p1}, Ltds/androidx/core/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 275
    invoke-direct {p0}, Ltds/androidx/core/content/LocalBroadcastManager;->executePendingBroadcasts()V

    .line 277
    :cond_9
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 13
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .line 155
    iget-object v0, p0, Ltds/androidx/core/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 156
    :try_start_3
    iget-object v1, p0, Ltds/androidx/core/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 157
    .local v1, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v1, :cond_f

    .line 158
    monitor-exit v0

    return-void

    .line 160
    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_15
    if-ltz v2, :cond_62

    .line 161
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;

    .line 162
    .local v4, "filter":Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;
    iput-boolean v3, v4, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    .line 163
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_20
    iget-object v6, v4, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v6}, Landroid/content/IntentFilter;->countActions()I

    move-result v6

    if-ge v5, v6, :cond_5f

    .line 164
    iget-object v6, v4, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, "action":Ljava/lang/String;
    iget-object v7, p0, Ltds/androidx/core/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 166
    .local v7, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v7, :cond_5c

    .line 167
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    .local v8, "k":I
    :goto_3d
    if-ltz v8, :cond_51

    .line 168
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;

    .line 169
    .local v9, "rec":Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;
    iget-object v10, v9, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    if-ne v10, p1, :cond_4e

    .line 170
    iput-boolean v3, v9, Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    .line 171
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 167
    .end local v9    # "rec":Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;
    :cond_4e
    add-int/lit8 v8, v8, -0x1

    goto :goto_3d

    .line 174
    .end local v8    # "k":I
    :cond_51
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_5c

    .line 175
    iget-object v8, p0, Ltds/androidx/core/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 160
    .end local v4    # "filter":Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;
    .end local v5    # "j":I
    :cond_5f
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 180
    .end local v1    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v2    # "i":I
    :cond_62
    monitor-exit v0

    .line 181
    return-void

    .line 180
    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_64

    throw v1
.end method
