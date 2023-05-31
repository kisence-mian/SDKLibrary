.class public Lcom/ksad/download/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksad/download/d$b;,
        Lcom/ksad/download/d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ksad/download/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ksad/download/c;

.field private d:Landroid/content/Context;

.field private e:Lcom/ksad/download/d$b;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ksad/download/d;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ksad/download/d;->b:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ksad/download/d;->f:Z

    return-void
.end method

.method private a(ILcom/ksad/download/DownloadTask$DownloadRequest;)V
    .registers 5

    iget-object v0, p0, Lcom/ksad/download/d;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/download/DownloadTask;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p2}, Lcom/ksad/download/DownloadTask;->resume(Lcom/ksad/download/DownloadTask$DownloadRequest;)V

    :cond_11
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Lcom/ksad/download/f;)V
    .registers 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ksad/download/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/ksad/download/b;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/ksad/download/b;->a(Ljava/io/File;)V

    invoke-static {}, Lcom/ksad/download/e;->a()Lcom/ksad/download/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ksad/download/e;->a(Lcom/ksad/download/f;)V

    new-instance v0, Lcom/kwai/filedownloader/services/c$a;

    invoke-direct {v0}, Lcom/kwai/filedownloader/services/c$a;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/services/c$a;->a(I)Lcom/kwai/filedownloader/services/c$a;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_1a
    new-instance v0, Lcom/ksad/download/h$b;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/ksad/download/h$b;-><init>(Z)V
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_29

    :goto_20
    if-eqz v0, :cond_25

    invoke-virtual {v2, v0}, Lcom/kwai/filedownloader/services/c$a;->a(Lcom/kwai/filedownloader/h0/c$b;)Lcom/kwai/filedownloader/services/c$a;

    :cond_25
    invoke-static {p0, v2}, Lcom/kwai/filedownloader/q;->a(Landroid/content/Context;Lcom/kwai/filedownloader/services/c$a;)V

    return-void

    :catchall_29
    move-exception v0

    move-object v0, v1

    goto :goto_20
.end method

.method public static e()Lcom/ksad/download/d;
    .registers 1

    invoke-static {}, Lcom/ksad/download/d$a;->a()Lcom/ksad/download/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ksad/download/DownloadTask$DownloadRequest;Lcom/ksad/download/c;)I
    .registers 10
    .param p1    # Lcom/ksad/download/DownloadTask$DownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/ksad/download/DownloadTask;

    invoke-direct {v0, p1}, Lcom/ksad/download/DownloadTask;-><init>(Lcom/ksad/download/DownloadTask$DownloadRequest;)V

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask$DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "downali.game.uc.cn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {p0}, Lcom/ksad/download/d;->c()V

    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/ksad/download/d;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_51

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/ksad/download/d;->a(ILcom/ksad/download/DownloadTask$DownloadRequest;)V

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ksad/download/d;->b(I)V

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v1

    new-array v2, v6, [Lcom/ksad/download/c;

    aput-object p2, v2, v4

    iget-object v3, p0, Lcom/ksad/download/d;->c:Lcom/ksad/download/c;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/ksad/download/d;->a(I[Lcom/ksad/download/c;)V

    :goto_44
    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v0

    return v0

    :cond_49
    iget-boolean v1, p0, Lcom/ksad/download/d;->f:Z

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/ksad/download/d;->b()V

    goto :goto_17

    :cond_51
    iget-object v1, p0, Lcom/ksad/download/d;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ksad/download/d;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->submit()V

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v1

    new-array v2, v6, [Lcom/ksad/download/c;

    aput-object p2, v2, v4

    iget-object v3, p0, Lcom/ksad/download/d;->c:Lcom/ksad/download/c;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/ksad/download/d;->a(I[Lcom/ksad/download/c;)V

    goto :goto_44
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/ksad/download/d;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/download/DownloadTask;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->cancel()V

    invoke-virtual {p0, v0}, Lcom/ksad/download/d;->a(Lcom/ksad/download/DownloadTask;)V

    :cond_14
    return-void
.end method

.method public varargs a(I[Lcom/ksad/download/c;)V
    .registers 7

    iget-object v0, p0, Lcom/ksad/download/d;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/download/DownloadTask;

    if-eqz v0, :cond_21

    if-eqz p2, :cond_21

    array-length v2, p2

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v2, :cond_21

    aget-object v3, p2, v1

    if-eqz v3, :cond_1e

    invoke-virtual {v3, p1}, Lcom/ksad/download/c;->a(I)V

    invoke-virtual {v0, v3}, Lcom/ksad/download/DownloadTask;->addListener(Lcom/ksad/download/c;)V

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_21
    return-void
.end method

.method a(Lcom/ksad/download/DownloadTask;)V
    .registers 4
    .param p1    # Lcom/ksad/download/DownloadTask;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ksad/download/d;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ksad/download/d;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/ksad/download/c;)V
    .registers 2

    iput-object p1, p0, Lcom/ksad/download/d;->c:Lcom/ksad/download/c;

    return-void
.end method

.method public a()Z
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ksad/download/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_d
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/download/DownloadTask;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->getStatus()I

    move-result v1

    const/4 v5, -0x2

    if-eq v1, v5, :cond_52

    if-eq v1, v3, :cond_52

    const/4 v5, 0x2

    if-eq v1, v5, :cond_52

    const/4 v5, 0x3

    if-eq v1, v5, :cond_52

    const/4 v5, 0x5

    if-eq v1, v5, :cond_52

    const/4 v5, 0x6

    if-eq v1, v5, :cond_52

    const/16 v5, 0xa

    if-eq v1, v5, :cond_52

    const/16 v5, 0xb

    if-eq v1, v5, :cond_52

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->getStatusUpdateTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v6, 0x1d4c0

    cmp-long v0, v0, v6

    if-gtz v0, :cond_54

    :cond_52
    move v1, v2

    goto :goto_d

    :cond_54
    move v1, v3

    goto :goto_d

    :cond_56
    return v1
.end method

.method public b()V
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Lcom/ksad/download/h$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/ksad/download/h$b;-><init>(Z)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_21

    :goto_7
    if-eqz v0, :cond_20

    invoke-static {}, Lcom/kwai/filedownloader/download/b;->h()Lcom/kwai/filedownloader/download/b;

    move-result-object v1

    new-instance v2, Lcom/kwai/filedownloader/services/c$a;

    invoke-direct {v2}, Lcom/kwai/filedownloader/services/c$a;-><init>()V

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lcom/kwai/filedownloader/services/c$a;->a(I)Lcom/kwai/filedownloader/services/c$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kwai/filedownloader/services/c$a;->a(Lcom/kwai/filedownloader/h0/c$b;)Lcom/kwai/filedownloader/services/c$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/download/b;->a(Lcom/kwai/filedownloader/services/c$a;)V

    :cond_20
    return-void

    :catchall_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_7
.end method

.method public b(I)V
    .registers 4

    iget-object v0, p0, Lcom/ksad/download/d;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/download/DownloadTask;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->clearListener()V

    :cond_11
    return-void
.end method

.method public c(I)Lcom/ksad/download/DownloadTask;
    .registers 4

    iget-object v0, p0, Lcom/ksad/download/d;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/download/DownloadTask;

    return-object v0
.end method

.method public c()V
    .registers 6

    const/4 v4, 0x1

    const/4 v1, 0x0

    :try_start_2
    new-instance v0, Lcom/ksad/download/h$b;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/ksad/download/h$b;-><init>(Z)V
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_24

    :goto_8
    if-eqz v0, :cond_23

    invoke-static {}, Lcom/kwai/filedownloader/download/b;->h()Lcom/kwai/filedownloader/download/b;

    move-result-object v1

    new-instance v2, Lcom/kwai/filedownloader/services/c$a;

    invoke-direct {v2}, Lcom/kwai/filedownloader/services/c$a;-><init>()V

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lcom/kwai/filedownloader/services/c$a;->a(I)Lcom/kwai/filedownloader/services/c$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kwai/filedownloader/services/c$a;->a(Lcom/kwai/filedownloader/h0/c$b;)Lcom/kwai/filedownloader/services/c$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/download/b;->a(Lcom/kwai/filedownloader/services/c$a;)V

    iput-boolean v4, p0, Lcom/ksad/download/d;->f:Z

    :cond_23
    return-void

    :catchall_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_8
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/ksad/download/d;->e:Lcom/ksad/download/d$b;

    if-eqz v0, :cond_9

    :try_start_4
    iget-object v1, p0, Lcom/ksad/download/d;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public d(I)V
    .registers 4

    iget-object v0, p0, Lcom/ksad/download/d;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/download/DownloadTask;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->userPause()V

    :cond_11
    return-void
.end method

.method public e(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ksad/download/d;->a(ILcom/ksad/download/DownloadTask$DownloadRequest;)V

    return-void
.end method

.method protected finalize()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/ksad/download/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/download/DownloadTask;

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->cancel()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_a

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_27
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/ksad/download/d;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Lcom/ksad/download/d;->d()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_33} :catch_23

    goto :goto_27
.end method
