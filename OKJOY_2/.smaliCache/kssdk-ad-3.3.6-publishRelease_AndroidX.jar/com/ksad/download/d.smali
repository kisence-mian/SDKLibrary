.class public Lcom/ksad/download/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksad/download/d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ksad/download/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ksad/download/c;

.field private d:Z


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

    iput-boolean v0, p0, Lcom/ksad/download/d;->d:Z

    return-void
.end method

.method public static a()Lcom/ksad/download/d;
    .registers 1

    invoke-static {}, Lcom/ksad/download/d$a;->a()Lcom/ksad/download/d;

    move-result-object v0

    return-object v0
.end method

.method private a(ILcom/ksad/download/DownloadTask$DownloadRequest;)V
    .registers 4

    iget-object v0, p0, Lcom/ksad/download/d;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ksad/download/DownloadTask;

    if-eqz p1, :cond_11

    invoke-virtual {p1, p2}, Lcom/ksad/download/DownloadTask;->resume(Lcom/ksad/download/DownloadTask$DownloadRequest;)V

    :cond_11
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Lcom/ksad/download/f;)V
    .registers 4

    invoke-static {p0}, Lcom/ksad/download/b;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/ksad/download/b;->a(Ljava/io/File;)V

    invoke-static {}, Lcom/ksad/download/e;->a()Lcom/ksad/download/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ksad/download/e;->a(Lcom/ksad/download/f;)V

    new-instance p1, Lcom/kwai/filedownloader/services/c$a;

    invoke-direct {p1}, Lcom/kwai/filedownloader/services/c$a;-><init>()V

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Lcom/kwai/filedownloader/services/c$a;->a(I)Lcom/kwai/filedownloader/services/c$a;

    move-result-object p1

    :try_start_19
    new-instance p2, Lcom/ksad/download/h$a;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/ksad/download/h$a;-><init>(Z)V
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_20

    goto :goto_22

    :catchall_20
    move-exception p2

    const/4 p2, 0x0

    :goto_22
    if-eqz p2, :cond_27

    invoke-virtual {p1, p2}, Lcom/kwai/filedownloader/services/c$a;->a(Lcom/kwai/filedownloader/f/c$b;)Lcom/kwai/filedownloader/services/c$a;

    :cond_27
    invoke-static {p0, p1}, Lcom/kwai/filedownloader/q;->a(Landroid/content/Context;Lcom/kwai/filedownloader/services/c$a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ksad/download/DownloadTask$DownloadRequest;Lcom/ksad/download/c;)I
    .registers 9

    new-instance v0, Lcom/ksad/download/DownloadTask;

    invoke-direct {v0, p1}, Lcom/ksad/download/DownloadTask;-><init>(Lcom/ksad/download/DownloadTask$DownloadRequest;)V

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask$DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "downali.game.uc.cn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/ksad/download/d;->b()V

    goto :goto_1c

    :cond_15
    iget-boolean v1, p0, Lcom/ksad/download/d;->d:Z

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lcom/ksad/download/d;->c()V

    :cond_1c
    :goto_1c
    iget-object v1, p0, Lcom/ksad/download/d;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_4d

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/ksad/download/d;->a(ILcom/ksad/download/DownloadTask$DownloadRequest;)V

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ksad/download/d;->b(I)V

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result p1

    new-array v1, v4, [Lcom/ksad/download/c;

    aput-object p2, v1, v3

    iget-object p2, p0, Lcom/ksad/download/d;->c:Lcom/ksad/download/c;

    aput-object p2, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/ksad/download/d;->a(I[Lcom/ksad/download/c;)V

    goto :goto_7d

    :cond_4d
    iget-object p1, p0, Lcom/ksad/download/d;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ksad/download/d;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->submit()V

    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result p1

    new-array v1, v4, [Lcom/ksad/download/c;

    aput-object p2, v1, v3

    iget-object p2, p0, Lcom/ksad/download/d;->c:Lcom/ksad/download/c;

    aput-object p2, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/ksad/download/d;->a(I[Lcom/ksad/download/c;)V

    :goto_7d
    invoke-virtual {v0}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result p1

    return p1
.end method

.method public a(I)Lcom/ksad/download/DownloadTask;
    .registers 3

    iget-object v0, p0, Lcom/ksad/download/d;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ksad/download/DownloadTask;

    return-object p1
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

    array-length v1, p2

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_21

    aget-object v3, p2, v2

    if-eqz v3, :cond_1e

    invoke-virtual {v3, p1}, Lcom/ksad/download/c;->a(I)V

    invoke-virtual {v0, v3}, Lcom/ksad/download/DownloadTask;->addListener(Lcom/ksad/download/c;)V

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_21
    return-void
.end method

.method a(Lcom/ksad/download/DownloadTask;)V
    .registers 4

    iget-object v0, p0, Lcom/ksad/download/d;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ksad/download/d;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/ksad/download/c;)V
    .registers 2

    iput-object p1, p0, Lcom/ksad/download/d;->c:Lcom/ksad/download/c;

    return-void
.end method

.method public b()V
    .registers 6

    const/4 v0, 0x1

    :try_start_1
    new-instance v1, Lcom/ksad/download/h$a;

    invoke-direct {v1, v0}, Lcom/ksad/download/h$a;-><init>(Z)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    goto :goto_c

    :catchall_7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_27

    invoke-static {}, Lcom/kwai/filedownloader/download/b;->a()Lcom/kwai/filedownloader/download/b;

    move-result-object v2

    new-instance v3, Lcom/kwai/filedownloader/services/c$a;

    invoke-direct {v3}, Lcom/kwai/filedownloader/services/c$a;-><init>()V

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Lcom/kwai/filedownloader/services/c$a;->a(I)Lcom/kwai/filedownloader/services/c$a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/kwai/filedownloader/services/c$a;->a(Lcom/kwai/filedownloader/f/c$b;)Lcom/kwai/filedownloader/services/c$a;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/kwai/filedownloader/download/b;->b(Lcom/kwai/filedownloader/services/c$a;)V

    iput-boolean v0, p0, Lcom/ksad/download/d;->d:Z

    :cond_27
    return-void
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/download/d;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ksad/download/DownloadTask;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->clearListener()V

    :cond_11
    return-void
.end method

.method public c()V
    .registers 5

    :try_start_0
    new-instance v0, Lcom/ksad/download/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ksad/download/h$a;-><init>(Z)V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    goto :goto_c

    :catchall_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_25

    invoke-static {}, Lcom/kwai/filedownloader/download/b;->a()Lcom/kwai/filedownloader/download/b;

    move-result-object v1

    new-instance v2, Lcom/kwai/filedownloader/services/c$a;

    invoke-direct {v2}, Lcom/kwai/filedownloader/services/c$a;-><init>()V

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lcom/kwai/filedownloader/services/c$a;->a(I)Lcom/kwai/filedownloader/services/c$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kwai/filedownloader/services/c$a;->a(Lcom/kwai/filedownloader/f/c$b;)Lcom/kwai/filedownloader/services/c$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/download/b;->b(Lcom/kwai/filedownloader/services/c$a;)V

    :cond_25
    return-void
.end method

.method public c(I)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/download/d;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ksad/download/DownloadTask;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->cancel()V

    invoke-virtual {p0, p1}, Lcom/ksad/download/d;->a(Lcom/ksad/download/DownloadTask;)V

    :cond_14
    return-void
.end method

.method public d(I)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/download/d;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ksad/download/DownloadTask;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->userPause()V

    :cond_11
    return-void
.end method

.method public d()Z
    .registers 7

    iget-object v0, p0, Lcom/ksad/download/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_b
    :pswitch_b
    move v2, v1

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ksad/download/DownloadTask;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/ksad/download/DownloadTask;->getStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_40

    :pswitch_27
    invoke-virtual {v3}, Lcom/ksad/download/DownloadTask;->getStatusUpdateTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3c

    goto :goto_b

    :cond_3c
    const/4 v2, 0x1

    goto :goto_c

    :cond_3e
    return v2

    nop

    :pswitch_data_40
    .packed-switch -0x2
        :pswitch_b
        :pswitch_27
        :pswitch_27
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_27
        :pswitch_b
        :pswitch_b
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public e(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ksad/download/d;->a(ILcom/ksad/download/DownloadTask$DownloadRequest;)V

    return-void
.end method
