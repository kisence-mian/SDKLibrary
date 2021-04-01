.class public Lcom/kwad/sdk/core/download/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kwad/sdk/core/download/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Landroid/content/BroadcastReceiver;

.field private static final e:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/download/d;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/kwad/sdk/core/download/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/download/d;->c:Ljava/util/Map;

    new-instance v0, Lcom/kwad/sdk/core/download/d$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/download/d$a;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/download/d;->d:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/kwad/sdk/core/download/d$b;

    invoke-direct {v0}, Lcom/kwad/sdk/core/download/d$b;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/download/d;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static final a()V
    .registers 3

    sget-object v0, Lcom/kwad/sdk/core/download/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    sget-object v0, Lcom/kwad/sdk/core/download/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/kwad/sdk/core/download/d;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/kwad/sdk/core/download/d;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_e
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    :try_start_0
    sget-object v0, Lcom/kwad/sdk/core/download/d;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/kwad/sdk/core/download/d;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/kwad/sdk/core/download/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/kwad/sdk/core/download/d;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method

.method static synthetic a(Landroid/content/Intent;)V
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/core/download/d;->d(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/download/e;)V
    .registers 4

    invoke-static {}, Lcom/kwad/sdk/core/download/d;->a()V

    sget-object v1, Lcom/kwad/sdk/core/download/d;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_6
    invoke-static {}, Lcom/kwad/sdk/core/download/d;->b()V

    sget-object v0, Lcom/kwad/sdk/core/download/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/download/e;

    if-ne v0, p0, :cond_f

    monitor-exit v1

    :goto_24
    return-void

    :cond_25
    sget-object v0, Lcom/kwad/sdk/core/download/d;->a:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_24

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 4

    invoke-static {}, Lcom/kwad/sdk/core/download/d;->a()V

    sget-object v1, Lcom/kwad/sdk/core/download/d;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_6
    invoke-static {p0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->i(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    sget-object v2, Lcom/kwad/sdk/core/download/d;->c:Ljava/util/Map;

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_1b
    .catchall {:try_start_6 .. :try_end_19} :catchall_20

    :cond_19
    :goto_19
    :try_start_19
    monitor-exit v1

    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    throw v0
.end method

.method private static a(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/kwad/sdk/core/download/d;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v2, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mDownloadFinishReported:Z

    if-nez v2, :cond_a

    invoke-static {v0}, Lcom/kwad/sdk/c/f/b;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mDownloadFinishReported:Z

    goto :goto_a

    :cond_3d
    return-void
.end method

.method private static final b()V
    .registers 2

    sget-object v0, Lcom/kwad/sdk/core/download/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/download/e;

    if-nez v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_1e
    return-void
.end method

.method static synthetic b(Landroid/content/Intent;)V
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/core/download/d;->c(Landroid/content/Intent;)V

    return-void
.end method

.method private static c(Landroid/content/Intent;)V
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :goto_1c
    return-void

    :cond_1d
    sget-object v1, Lcom/kwad/sdk/core/download/d;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_20
    invoke-static {}, Lcom/kwad/sdk/core/download/d;->b()V

    sget-object v0, Lcom/kwad/sdk/core/download/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_29
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/download/e;

    if-eqz v0, :cond_29

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    invoke-interface {v0}, Lcom/kwad/sdk/core/download/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Lcom/kwad/sdk/core/download/e;->b(Ljava/lang/String;I)V

    goto :goto_29

    :catchall_53
    move-exception v0

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_20 .. :try_end_55} :catchall_53

    throw v0

    :cond_56
    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_53

    sget-object v3, Lcom/kwad/sdk/core/download/d;->c:Ljava/util/Map;

    monitor-enter v3

    :try_start_5a
    sget-object v0, Lcom/kwad/sdk/core/download/d;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_64
    :goto_64
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_64

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_64

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-static {v0}, Lcom/kwad/sdk/c/f/b;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_64

    :catchall_91
    move-exception v0

    monitor-exit v3
    :try_end_93
    .catchall {:try_start_5a .. :try_end_93} :catchall_91

    throw v0

    :cond_94
    :try_start_94
    monitor-exit v3
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_91

    goto :goto_1c

    :cond_96
    move-object v2, v0

    goto/16 :goto_16
.end method

.method private static final d(Landroid/content/Intent;)V
    .registers 15

    const/4 v8, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x3

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    const-string v3, "RESULT_DOWNLOAD_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/kwad/sdk/core/download/a;->b:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_57

    move v2, v1

    move v3, v1

    move v4, v5

    move-object v1, v0

    :goto_24
    sget-object v11, Lcom/kwad/sdk/core/download/d;->a:Ljava/util/ArrayList;

    monitor-enter v11

    :try_start_27
    invoke-static {}, Lcom/kwad/sdk/core/download/d;->b()V

    sget-object v0, Lcom/kwad/sdk/core/download/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_30
    :goto_30
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/download/e;

    if-eqz v0, :cond_30

    invoke-interface {v0}, Lcom/kwad/sdk/core/download/e;->b()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_30

    if-ne v4, v5, :cond_fb

    invoke-interface {v0, v10}, Lcom/kwad/sdk/core/download/e;->c(Ljava/lang/String;)V

    goto :goto_30

    :catchall_54
    move-exception v0

    monitor-exit v11
    :try_end_56
    .catchall {:try_start_27 .. :try_end_56} :catchall_54

    throw v0

    :cond_57
    sget-object v4, Lcom/kwad/sdk/core/download/a;->c:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_69

    const-string v3, "KEY_RESULT_PROGRESS"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move v3, v1

    move v4, v6

    move-object v1, v0

    goto :goto_24

    :cond_69
    sget-object v4, Lcom/kwad/sdk/core/download/a;->d:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7c

    const-string v0, "KEY_REUSLT_FILEPATH"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v2, v1

    move v3, v1

    move v4, v7

    move-object v1, v0

    goto :goto_24

    :cond_7c
    sget-object v4, Lcom/kwad/sdk/core/download/a;->e:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8f

    const-string v3, "KEY_RESULT_ERROR_CODE"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move v3, v2

    move v4, v8

    move v2, v1

    move-object v1, v0

    goto :goto_24

    :cond_8f
    sget-object v2, Lcom/kwad/sdk/core/download/a;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9d

    const/4 v2, 0x5

    move v3, v1

    move v4, v2

    move v2, v1

    move-object v1, v0

    goto :goto_24

    :cond_9d
    sget-object v2, Lcom/kwad/sdk/core/download/a;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ac

    const/4 v2, 0x6

    move v3, v1

    move v4, v2

    move v2, v1

    move-object v1, v0

    goto/16 :goto_24

    :cond_ac
    sget-object v2, Lcom/kwad/sdk/core/download/a;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_bb

    const/4 v2, 0x7

    move v3, v1

    move v4, v2

    move v2, v1

    move-object v1, v0

    goto/16 :goto_24

    :cond_bb
    sget-object v2, Lcom/kwad/sdk/core/download/a;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_cb

    const/16 v2, 0x8

    move v3, v1

    move v4, v2

    move v2, v1

    move-object v1, v0

    goto/16 :goto_24

    :cond_cb
    sget-object v2, Lcom/kwad/sdk/core/download/a;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_db

    const/16 v2, 0x9

    move v3, v1

    move v4, v2

    move v2, v1

    move-object v1, v0

    goto/16 :goto_24

    :cond_db
    sget-object v2, Lcom/kwad/sdk/core/download/a;->k:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_eb

    const/16 v2, 0xa

    move v3, v1

    move v4, v2

    move v2, v1

    move-object v1, v0

    goto/16 :goto_24

    :cond_eb
    sget-object v2, Lcom/kwad/sdk/core/download/a;->l:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_154

    const/16 v2, 0xb

    move v3, v1

    move v4, v2

    move v2, v1

    move-object v1, v0

    goto/16 :goto_24

    :cond_fb
    if-ne v4, v6, :cond_102

    :try_start_fd
    invoke-interface {v0, v10, v2}, Lcom/kwad/sdk/core/download/e;->a(Ljava/lang/String;I)V

    goto/16 :goto_30

    :cond_102
    if-ne v4, v7, :cond_109

    invoke-interface {v0, v10, v1}, Lcom/kwad/sdk/core/download/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_109
    if-ne v4, v8, :cond_110

    invoke-interface {v0, v10, v3}, Lcom/kwad/sdk/core/download/e;->c(Ljava/lang/String;I)V

    goto/16 :goto_30

    :cond_110
    const/4 v13, 0x5

    if-ne v4, v13, :cond_118

    invoke-interface {v0, v10}, Lcom/kwad/sdk/core/download/e;->b(Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_118
    const/4 v13, 0x6

    if-ne v4, v13, :cond_120

    invoke-interface {v0, v10}, Lcom/kwad/sdk/core/download/e;->f(Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_120
    const/4 v13, 0x7

    if-ne v4, v13, :cond_128

    invoke-interface {v0, v10}, Lcom/kwad/sdk/core/download/e;->e(Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_128
    const/16 v13, 0x8

    if-ne v4, v13, :cond_131

    invoke-interface {v0, v10}, Lcom/kwad/sdk/core/download/e;->g(Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_131
    const/16 v13, 0x9

    if-ne v4, v13, :cond_13a

    invoke-interface {v0, v10}, Lcom/kwad/sdk/core/download/e;->d(Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_13a
    const/16 v13, 0xa

    if-ne v4, v13, :cond_143

    invoke-interface {v0, v10, v9}, Lcom/kwad/sdk/core/download/e;->b(Ljava/lang/String;I)V

    goto/16 :goto_30

    :cond_143
    const/16 v13, 0xb

    if-ne v4, v13, :cond_30

    invoke-interface {v0, v10}, Lcom/kwad/sdk/core/download/e;->a(Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_14c
    monitor-exit v11
    :try_end_14d
    .catchall {:try_start_fd .. :try_end_14d} :catchall_54

    if-ne v4, v7, :cond_d

    invoke-static {v10}, Lcom/kwad/sdk/core/download/d;->a(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_154
    move v2, v1

    move v3, v1

    move v4, v1

    move-object v1, v0

    goto/16 :goto_24
.end method
