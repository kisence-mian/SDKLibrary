.class public Lcom/sigmob/sdk/base/common/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/common/d$d;,
        Lcom/sigmob/sdk/base/common/d$b;,
        Lcom/sigmob/sdk/base/common/d$a;,
        Lcom/sigmob/sdk/base/common/d$c;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/Integer;

.field private static final c:Ljava/lang/Integer;

.field private static final d:Ljava/lang/Integer;

.field private static final e:Ljava/lang/Integer;

.field private static f:Lcom/sigmob/sdk/base/common/d;

.field private static g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private static i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lcom/sigmob/volley/toolbox/f$a;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/sigmob/sdk/base/common/d$a;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/AdCache;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sigmob/sdk/base/common/d$b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/common/d;->b:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/common/d;->c:Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/common/d;->d:Ljava/lang/Integer;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/common/d;->e:Ljava/lang/Integer;

    const/4 v0, 0x0

    sput-object v0, Lcom/sigmob/sdk/base/common/d;->f:Lcom/sigmob/sdk/base/common/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/common/d;->i:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/d;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/d;->j:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/d;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/d;->m:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/d;->n:Ljava/util/HashMap;

    new-instance v0, Lcom/sigmob/sdk/base/common/d$8;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/common/d$8;-><init>(Lcom/sigmob/sdk/base/common/d;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/d;->a:Lcom/sigmob/volley/toolbox/f$a;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 11

    :try_start_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const-string v5, "1"

    new-instance v6, Lcom/sigmob/sdk/base/common/d$4;

    invoke-direct {v6, v0}, Lcom/sigmob/sdk/base/common/d$4;-><init>(Ljava/util/concurrent/LinkedBlockingDeque;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Lcom/sigmob/sdk/base/common/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/a/d;)V

    const-wide/16 p0, 0x7d0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/LinkedBlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-object p0

    :catchall_1c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/d;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/d;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/common/d;->h:Ljava/util/Map;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 7

    :try_start_0
    invoke-static {p0}, Lcom/sigmob/sdk/common/f/e;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/e;->f(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/sigmob/sdk/base/common/d;->a([Ljava/io/File;I)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_19

    const-string v0, "Download APK files  is null"

    :goto_15
    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    goto :goto_2e

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download APK files remain num: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :goto_2e
    if-eqz p0, :cond_7a

    array-length v0, p0

    if-lez v0, :cond_7a

    const/4 v0, 0x0

    :goto_34
    array-length v1, p0

    if-ge v0, v1, :cond_7a

    aget-object v1, p0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    cmp-long v2, v2, v4

    if-lez v2, :cond_71

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download APK files timeOut seven day and delete:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_0 .. :try_end_71} :catchall_74

    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :catchall_74
    move-exception p0

    const-string v0, "clean Download APK file error"

    invoke-static {v0, p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7a
    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/d;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/d$b;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/common/d;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/d$b;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/d;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lcom/sigmob/sdk/base/common/d$b;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/d;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lcom/sigmob/sdk/base/common/d$b;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lcom/sigmob/sdk/base/common/d$b;)V
    .registers 5

    if-nez p2, :cond_14

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isVideoExist()Z

    move-result p2

    if-eqz p2, :cond_13

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isEndCardIndexExist()Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_13

    :cond_f
    invoke-direct {p0, p1, p3}, Lcom/sigmob/sdk/base/common/d;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/d$b;)V

    goto :goto_1b

    :cond_13
    :goto_13
    return-void

    :cond_14
    if-eqz p3, :cond_1b

    sget-object v0, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-interface {p3, p1, v0, p2}, Lcom/sigmob/sdk/base/common/d$b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/common/models/SigmobError;Ljava/lang/String;)V

    :cond_1b
    :goto_1b
    iget-object p2, p0, Lcom/sigmob/sdk/base/common/d;->l:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/d;->n:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/a/d;)V
    .registers 16

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/common/a/a;->a()Lcom/sigmob/sdk/common/a/a;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v9, Lcom/sigmob/sdk/base/common/d$5;

    invoke-direct {v9, p5}, Lcom/sigmob/sdk/base/common/d$5;-><init>(Lcom/sigmob/sdk/common/a/d;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v9}, Lcom/sigmob/sdk/common/a/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/a/a$a;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    goto :goto_2b

    :catchall_15
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p5, :cond_2b

    new-instance p1, Ljava/lang/Error;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, p1}, Lcom/sigmob/sdk/common/a/d;->a(Ljava/lang/Error;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public static a([Ljava/io/File;I)[Ljava/io/File;
    .registers 8

    if-eqz p0, :cond_4f

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_4f

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_11
    array-length v3, p0

    if-ge v2, v3, :cond_46

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p1, :cond_1b

    goto :goto_46

    :cond_1b
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_46
    :goto_46
    new-array p0, v1, [Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;

    return-object p0

    :cond_4f
    :goto_4f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([Ljava/io/File;JJ)[Ljava/io/File;
    .registers 13

    if-eqz p0, :cond_52

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_52

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_11
    array-length v3, p0

    if-ge v2, v3, :cond_49

    aget-object v3, p0, v2

    sub-long v4, p1, p3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_46

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_49
    new-array p0, v1, [Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;

    return-object p0

    :cond_52
    :goto_52
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/d;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method static synthetic b(Lcom/sigmob/sdk/base/common/d;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/common/d;->l:Ljava/util/ArrayList;

    return-object p0
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    :try_start_1c
    const-string v2, "create_time"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const-string v3, "request_id"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "load_id"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "ad"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    if-eqz v1, :cond_10

    sget-object v5, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v5, v1}, Lcom/sigmob/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    if-eqz v1, :cond_10

    invoke-static {v1, v3, v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->adUnit(Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    if-eqz v2, :cond_57

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setCreate_time(J)V

    :cond_57
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catchall {:try_start_1c .. :try_end_5a} :catchall_5b

    goto :goto_10

    :catchall_5b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_10

    :cond_64
    return-object v0
.end method

.method private b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/d$b;)V
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v0

    if-eqz v0, :cond_f

    if-eqz p2, :cond_b

    invoke-interface {p2, p1}, Lcom/sigmob/sdk/base/common/d$b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_b
    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/d;->m()V

    goto :goto_17

    :cond_f
    new-instance v0, Lcom/sigmob/sdk/base/common/d$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/sigmob/sdk/base/common/d$7;-><init>(Lcom/sigmob/sdk/base/common/d;Lcom/sigmob/sdk/base/common/d$b;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->insertToDB(Lcom/sigmob/sdk/common/a/c$a;)V

    :goto_17
    return-void
.end method

.method static synthetic c(Lcom/sigmob/sdk/base/common/d;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/common/d;->n:Ljava/util/HashMap;

    return-object p0
.end method

.method public static c()V
    .registers 6

    new-instance v5, Lcom/sigmob/sdk/base/common/d$2;

    invoke-direct {v5}, Lcom/sigmob/sdk/base/common/d$2;-><init>()V

    const-string v0, "ads"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/a/d;)V

    return-void
.end method

.method public static c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    if-eqz p0, :cond_80

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_80

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v0

    if-eqz v0, :cond_80

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isVideoExist()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isEndCardIndexExist()Z

    move-result v0

    if-nez v0, :cond_80

    :cond_1b
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/j;->h:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v1

    if-eq v0, v1, :cond_80

    invoke-static {}, Lcom/sigmob/sdk/base/common/n;->b()Lcom/sigmob/volley/toolbox/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/g;->b()V

    sget-object v0, Lcom/sigmob/sdk/base/common/d;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/n;->a()Lcom/sigmob/volley/toolbox/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3f
    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/volley/toolbox/g$a;

    invoke-virtual {v1}, Lcom/sigmob/volley/toolbox/g$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    invoke-virtual {v1}, Lcom/sigmob/volley/toolbox/g$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    :cond_67
    invoke-virtual {v1}, Lcom/sigmob/volley/toolbox/g$a;->b()Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {v1}, Lcom/sigmob/volley/toolbox/g$a;->g()Z

    invoke-static {}, Lcom/sigmob/sdk/base/common/n;->b()Lcom/sigmob/volley/toolbox/g;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sigmob/volley/toolbox/g$a;->f()Lcom/sigmob/volley/toolbox/d;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sigmob/volley/toolbox/g$a;->e()Lcom/sigmob/volley/toolbox/f$a;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/sigmob/volley/toolbox/g;->a(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/volley/toolbox/f$a;)Lcom/sigmob/volley/toolbox/g$a;

    goto :goto_3f

    :cond_80
    sput-object p0, Lcom/sigmob/sdk/base/common/d;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-void
.end method

.method public static d()V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create_time<\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x240c8400

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/sigmob/sdk/base/common/d$3;

    invoke-direct {v6}, Lcom/sigmob/sdk/base/common/d$3;-><init>()V

    const-string v1, "ads"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/sigmob/sdk/base/common/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/a/d;)V

    return-void
.end method

.method static synthetic d(Lcom/sigmob/sdk/base/common/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/d;->m()V

    return-void
.end method

.method public static d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    sget-object v0, Lcom/sigmob/sdk/base/common/d;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p0, "current adunit is playing can\'t delete"

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crid =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and adslot_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/common/a/a;->a()Lcom/sigmob/sdk/common/a/a;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/base/common/d$1;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/base/common/d$1;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const-string p0, "ads"

    invoke-virtual {v1, p0, v0, v2}, Lcom/sigmob/sdk/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/a/c$a;)V

    return-void
.end method

.method static synthetic e(Lcom/sigmob/sdk/base/common/d;)Lcom/sigmob/sdk/base/common/d$a;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/common/d;->k:Lcom/sigmob/sdk/base/common/d$a;

    return-object p0
.end method

.method public static e()Lcom/sigmob/sdk/base/common/d;
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/base/common/d;->f:Lcom/sigmob/sdk/base/common/d;

    if-nez v0, :cond_17

    const-class v0, Lcom/sigmob/sdk/base/common/d;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/sigmob/sdk/base/common/d;->f:Lcom/sigmob/sdk/base/common/d;

    if-nez v1, :cond_12

    new-instance v1, Lcom/sigmob/sdk/base/common/d;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/common/d;-><init>()V

    sput-object v1, Lcom/sigmob/sdk/base/common/d;->f:Lcom/sigmob/sdk/base/common/d;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/sigmob/sdk/base/common/d;->f:Lcom/sigmob/sdk/base/common/d;

    return-object v0
.end method

.method static synthetic e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 1

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/d;->f(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method static synthetic f(Lcom/sigmob/sdk/base/common/d;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/common/d;->j:Ljava/util/HashMap;

    return-object p0
.end method

.method public static f()V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/common/f/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/e;->f(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/common/SDKConfig;->getSplashExpiredTime()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/base/common/d;->a([Ljava/io/File;JJ)[Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/SDKConfig;->getSplashCacheTop()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/d;->a([Ljava/io/File;I)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2c

    const-string v0, "splash ad file list is null"

    :goto_28
    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    goto :goto_47

    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "splash ad file remain num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_40
    .catchall {:try_start_0 .. :try_end_40} :catchall_41

    goto :goto_28

    :catchall_41
    move-exception v0

    const-string v1, "clean splash ad file error"

    invoke-static {v1, v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_47
    return-void
.end method

.method private static f(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 7

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_md5()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\'"

    const-string v2, "file_reference"

    const/4 v3, 0x0

    if-nez v0, :cond_33

    invoke-static {}, Lcom/sigmob/sdk/common/a/a;->a()Lcom/sigmob/sdk/common/a/a;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endcard_md5=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndcard_md5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/sigmob/sdk/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_34

    :cond_33
    move v0, v3

    :goto_34
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_md5()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_61

    invoke-static {}, Lcom/sigmob/sdk/common/a/a;->a()Lcom/sigmob/sdk/common/a/a;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video_md5=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_md5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/sigmob/sdk/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :cond_61
    if-nez v3, :cond_71

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/common/f/e;->b(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoTmpPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/common/f/e;->b(Ljava/lang/String;)Z

    :cond_71
    if-nez v0, :cond_81

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardZipPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/e;->b(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardDirPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/e;->a(Ljava/lang/String;)Z

    :cond_81
    return-void
.end method

.method public static g()V
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/common/f/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/e;->f(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    array-length v4, v0

    if-ge v3, v4, :cond_2a

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_27

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_2a
    new-array v0, v2, [Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x240c8400

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/base/common/d;->a([Ljava/io/File;JJ)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/d;->a([Ljava/io/File;I)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_4a

    const-string v0, "splash ad file list is null"

    :goto_46
    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    goto :goto_65

    :cond_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "splash ad file remain num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5e
    .catchall {:try_start_0 .. :try_end_5e} :catchall_5f

    goto :goto_46

    :catchall_5f
    move-exception v0

    const-string v1, "clean splash ad file error"

    invoke-static {v1, v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_65
    return-void
.end method

.method static synthetic h()Ljava/lang/Integer;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/d;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic i()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/d;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic j()Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/d;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method static synthetic k()Ljava/lang/Integer;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/d;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic l()Ljava/lang/Integer;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/d;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method private m()V
    .registers 9

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/SDKConfig;->getCacheTop()I

    move-result v0

    invoke-static {}, Lcom/sigmob/sdk/common/a/a;->a()Lcom/sigmob/sdk/common/a/a;

    move-result-object v1

    const-string v2, "ads"

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/common/a/a;->a(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCache: count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " top: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-le v1, v0, :cond_50

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "ads"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "create_time ASC"

    new-instance v7, Lcom/sigmob/sdk/base/common/d$6;

    invoke-direct {v7, p0}, Lcom/sigmob/sdk/base/common/d$6;-><init>(Lcom/sigmob/sdk/base/common/d;)V

    invoke-static/range {v2 .. v7}, Lcom/sigmob/sdk/base/common/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/a/d;)V
    :try_end_47
    .catchall {:try_start_0 .. :try_end_47} :catchall_48

    goto :goto_50

    :catchall_48
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_50
    :goto_50
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/AdCache;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d;->m:Ljava/util/HashMap;

    return-object v0
.end method

.method public a(Lcom/sigmob/sdk/base/common/d$a;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/d;->k:Lcom/sigmob/sdk/base/common/d$a;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 3

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_16

    :cond_d
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d;->m:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    :goto_16
    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/d$b;)V
    .registers 6

    if-nez p1, :cond_f

    const-string v0, "adUnit is null"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_e

    sget-object v1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-interface {p2, p1, v1, v0}, Lcom/sigmob/sdk/base/common/d$b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/common/models/SigmobError;Ljava/lang/String;)V

    :cond_e
    return-void

    :cond_f
    if-eqz p2, :cond_1f

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d;->n:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    :try_start_1f
    new-instance p2, Lcom/sigmob/sdk/base/common/d$d;

    invoke-direct {p2, p0, p1}, Lcom/sigmob/sdk/base/common/d$d;-><init>(Lcom/sigmob/sdk/base/common/d;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {}, Lcom/sigmob/sdk/common/b/c$a;->b()Lcom/sigmob/sdk/common/b/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/b/c$a;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lcom/sigmob/sdk/base/common/d$d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_33

    goto :goto_39

    :catchall_33
    move-exception p1

    const-string p2, "AdUnitCheckCacheTask execute error"

    invoke-static {p2, p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_39
    return-void
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 7

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_31

    :cond_d
    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdCache;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdCache;-><init>(Ljava/lang/Integer;Ljava/util/List;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/d;->m:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    :goto_31
    return-void
.end method
