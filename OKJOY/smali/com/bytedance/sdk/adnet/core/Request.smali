.class public abstract Lcom/bytedance/sdk/adnet/core/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/core/Request$b;,
        Lcom/bytedance/sdk/adnet/core/Request$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/bytedance/sdk/adnet/core/Request",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field public static final METHOD_DELETE:I = 0x3

.field public static final METHOD_DEPRECATED_GET_OR_POST:I = -0x1

.field public static final METHOD_GET:I = 0x0

.field public static final METHOD_HEAD:I = 0x4

.field public static final METHOD_OPTIONS:I = 0x5

.field public static final METHOD_PATCH:I = 0x7

.field public static final METHOD_POST:I = 0x1

.field public static final METHOD_PUT:I = 0x2

.field public static final METHOD_TRACE:I = 0x6


# instance fields
.field protected a:Lcom/bytedance/sdk/adnet/core/n$a;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/adnet/core/n$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected b:Landroid/os/Handler;

.field private final c:Lcom/bytedance/sdk/adnet/core/p$a;

.field private final d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private final g:I

.field private final h:Ljava/lang/Object;

.field private i:Ljava/lang/Integer;

.field private j:Lcom/bytedance/sdk/adnet/core/m;

.field private k:Z

.field private l:Z
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private m:Z
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private n:Z

.field private o:Lcom/bytedance/sdk/adnet/face/d;

.field private p:Lcom/bytedance/sdk/adnet/face/a$a;

.field private q:Ljava/lang/Object;

.field private r:J

.field private s:J

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/bytedance/sdk/adnet/core/Request$a;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V
    .registers 10
    .param p3    # Lcom/bytedance/sdk/adnet/core/n$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-boolean v0, Lcom/bytedance/sdk/adnet/core/p$a;->a:Z

    if-eqz v0, :cond_4e

    new-instance v0, Lcom/bytedance/sdk/adnet/core/p$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/core/p$a;-><init>()V

    :goto_11
    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->c:Lcom/bytedance/sdk/adnet/core/p$a;

    .line 98
    const-string v0, "VADNetAgent/0"

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->f:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->h:Ljava/lang/Object;

    .line 131
    iput-boolean v3, p0, Lcom/bytedance/sdk/adnet/core/Request;->k:Z

    .line 136
    iput-boolean v2, p0, Lcom/bytedance/sdk/adnet/core/Request;->l:Z

    .line 142
    iput-boolean v2, p0, Lcom/bytedance/sdk/adnet/core/Request;->m:Z

    .line 148
    iput-boolean v2, p0, Lcom/bytedance/sdk/adnet/core/Request;->n:Z

    .line 160
    iput-object v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->p:Lcom/bytedance/sdk/adnet/face/a$a;

    .line 167
    iput-wide v4, p0, Lcom/bytedance/sdk/adnet/core/Request;->r:J

    .line 168
    iput-wide v4, p0, Lcom/bytedance/sdk/adnet/core/Request;->s:J

    .line 170
    iput-boolean v3, p0, Lcom/bytedance/sdk/adnet/core/Request;->t:Z

    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->b:Landroid/os/Handler;

    .line 203
    iput p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->d:I

    .line 204
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/core/Request;->e:Ljava/lang/String;

    .line 205
    iput-object p3, p0, Lcom/bytedance/sdk/adnet/core/Request;->a:Lcom/bytedance/sdk/adnet/core/n$a;

    .line 206
    new-instance v0, Lcom/bytedance/sdk/adnet/core/e;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/core/e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/adnet/core/Request;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 208
    invoke-static {p2}, Lcom/bytedance/sdk/adnet/core/Request;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->g:I

    .line 209
    return-void

    :cond_4e
    move-object v0, v1

    .line 85
    goto :goto_11
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/adnet/core/Request;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 194
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/adnet/core/p$a;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->c:Lcom/bytedance/sdk/adnet/core/p$a;

    return-object v0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    :try_start_5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 625
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5c

    .line 626
    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Request#getParams() or Request#getPostParams() returned a map containing a null key or value: (%s, %s). All keys and values must be non-null."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 631
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4

    .line 627
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_42
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_42} :catch_42

    .line 639
    :catch_42
    move-exception v0

    .line 640
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoding not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 633
    :cond_5c
    :try_start_5c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 635
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const/16 v0, 0x26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 638
    :cond_81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_88
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5c .. :try_end_88} :catch_42

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 304
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 305
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_18

    .line 307
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_18

    .line 309
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_17

    move-result v0

    .line 315
    :goto_16
    return v0

    .line 313
    :catch_17
    move-exception v0

    .line 315
    :cond_18
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method protected abstract a(Lcom/bytedance/sdk/adnet/core/j;)Lcom/bytedance/sdk/adnet/core/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/j;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/err/VAdError;
    .registers 2

    .prologue
    .line 756
    return-object p1
.end method

.method protected a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method a(I)V
    .registers 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->j:Lcom/bytedance/sdk/adnet/core/m;

    if-eqz v0, :cond_9

    .line 378
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->j:Lcom/bytedance/sdk/adnet/core/m;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/adnet/core/m;->a(Lcom/bytedance/sdk/adnet/core/Request;I)V

    .line 380
    :cond_9
    return-void
.end method

.method protected a(JJ)V
    .registers 5

    .prologue
    .line 761
    return-void
.end method

.method a(Lcom/bytedance/sdk/adnet/core/Request$a;)V
    .registers 4

    .prologue
    .line 794
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 795
    :try_start_3
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->w:Lcom/bytedance/sdk/adnet/core/Request$a;

    .line 796
    monitor-exit v1

    .line 797
    return-void

    .line 796
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method protected abstract a(Lcom/bytedance/sdk/adnet/core/n;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 352
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->j:Lcom/bytedance/sdk/adnet/core/m;

    if-eqz v0, :cond_9

    .line 353
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->j:Lcom/bytedance/sdk/adnet/core/m;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/adnet/core/m;->c(Lcom/bytedance/sdk/adnet/core/Request;)V

    .line 355
    :cond_9
    sget-boolean v0, Lcom/bytedance/sdk/adnet/core/p$a;->a:Z

    if-eqz v0, :cond_29

    .line 356
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 357
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_2a

    .line 360
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/Request;->b:Landroid/os/Handler;

    new-instance v3, Lcom/bytedance/sdk/adnet/core/Request$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/bytedance/sdk/adnet/core/Request$1;-><init>(Lcom/bytedance/sdk/adnet/core/Request;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    :cond_29
    :goto_29
    return-void

    .line 371
    :cond_2a
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/Request;->c:Lcom/bytedance/sdk/adnet/core/p$a;

    invoke-virtual {v2, p1, v0, v1}, Lcom/bytedance/sdk/adnet/core/p$a;->a(Ljava/lang/String;J)V

    .line 372
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->c:Lcom/bytedance/sdk/adnet/core/p$a;

    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/p$a;->a(Ljava/lang/String;)V

    goto :goto_29
.end method

.method public addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/adnet/core/Request;
    .registers 4

    .prologue
    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p2, :cond_9

    .line 222
    :cond_8
    :goto_8
    return-object p0

    .line 218
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->v:Ljava/util/Map;

    if-nez v0, :cond_14

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->v:Ljava/util/Map;

    .line 221
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->v:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method public addMarker(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 332
    sget-boolean v0, Lcom/bytedance/sdk/adnet/core/p$a;->a:Z

    if-eqz v0, :cond_11

    .line 333
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->c:Lcom/bytedance/sdk/adnet/core/p$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/bytedance/sdk/adnet/core/p$a;->a(Ljava/lang/String;J)V

    .line 335
    :cond_11
    return-void
.end method

.method protected b()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 815
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 816
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->w:Lcom/bytedance/sdk/adnet/core/Request$a;

    .line 817
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 818
    if-eqz v0, :cond_b

    .line 819
    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/adnet/core/Request$a;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/n;)V

    .line 821
    :cond_b
    return-void

    .line 817
    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public build(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 2

    .prologue
    .line 732
    if-eqz p1, :cond_5

    .line 733
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/adnet/core/m;->a(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 735
    :cond_5
    return-void
.end method

.method protected c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .prologue
    .line 574
    const/4 v0, 0x0

    return-object v0
.end method

.method public cancel()V
    .registers 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 486
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 487
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->l:Z

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->a:Lcom/bytedance/sdk/adnet/core/n$a;

    .line 489
    monitor-exit v1

    .line 490
    return-void

    .line 489
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public compareTo(Lcom/bytedance/sdk/adnet/core/Request;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getPriority()Lcom/bytedance/sdk/adnet/core/Request$b;

    move-result-object v0

    .line 844
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getPriority()Lcom/bytedance/sdk/adnet/core/Request$b;

    move-result-object v1

    .line 848
    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/Request;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_17
    return v0

    :cond_18
    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/core/Request$b;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Request$b;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_17
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 49
    check-cast p1, Lcom/bytedance/sdk/adnet/core/Request;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/core/Request;->compareTo(Lcom/bytedance/sdk/adnet/core/Request;)I

    move-result v0

    return v0
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 591
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public deliverError(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 780
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 781
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->a:Lcom/bytedance/sdk/adnet/core/n$a;

    .line 782
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 783
    if-eqz v0, :cond_b

    .line 784
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/adnet/core/n$a;->b(Lcom/bytedance/sdk/adnet/core/n;)V

    .line 786
    :cond_b
    return-void

    .line 782
    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method e()V
    .registers 3

    .prologue
    .line 829
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 830
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->w:Lcom/bytedance/sdk/adnet/core/Request$a;

    .line 831
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 832
    if-eqz v0, :cond_b

    .line 833
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/adnet/core/Request$a;->a(Lcom/bytedance/sdk/adnet/core/Request;)V

    .line 835
    :cond_b
    return-void

    .line 831
    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public getBaseListener()Lcom/bytedance/sdk/adnet/core/n$a;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 286
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->a:Lcom/bytedance/sdk/adnet/core/n$a;

    monitor-exit v1

    return-object v0

    .line 288
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getBody()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->c()Ljava/util/Map;

    move-result-object v0

    .line 612
    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 613
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    .line 615
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getBodyContentType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheEntry()Lcom/bytedance/sdk/adnet/face/a$a;
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->p:Lcom/bytedance/sdk/adnet/face/a$a;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .registers 4

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getMethod()I

    move-result v1

    .line 445
    if-eqz v1, :cond_d

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    .line 448
    :cond_d
    :goto_d
    return-object v0

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public getExtra()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->v:Ljava/util/Map;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .prologue
    .line 508
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddrStr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 800
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()I
    .registers 2

    .prologue
    .line 258
    iget v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->d:I

    return v0
.end method

.method public getNetDuration()J
    .registers 3

    .prologue
    .line 238
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->s:J

    return-wide v0
.end method

.method public getPostBody()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->a()Ljava/util/Map;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 560
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    .line 562
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getPriority()Lcom/bytedance/sdk/adnet/core/Request$b;
    .registers 2

    .prologue
    .line 693
    sget-object v0, Lcom/bytedance/sdk/adnet/core/Request$b;->b:Lcom/bytedance/sdk/adnet/core/Request$b;

    return-object v0
.end method

.method public final getRequestQueue()Lcom/bytedance/sdk/adnet/core/m;
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->j:Lcom/bytedance/sdk/adnet/core/m;

    return-object v0
.end method

.method public getRetryPolicy()Lcom/bytedance/sdk/adnet/face/d;
    .registers 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->o:Lcom/bytedance/sdk/adnet/face/d;

    return-object v0
.end method

.method public final getSequence()I
    .registers 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->i:Ljava/lang/Integer;

    if-nez v0, :cond_c

    .line 412
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getSequence called before setSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getStartTime()J
    .registers 3

    .prologue
    .line 230
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->r:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTimeoutMs()I
    .registers 2

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getRetryPolicy()Lcom/bytedance/sdk/adnet/face/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/adnet/face/d;->a()I

    move-result v0

    return v0
.end method

.method public getTrafficStatsTag()I
    .registers 2

    .prologue
    .line 295
    iget v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->g:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->f:Ljava/lang/String;

    return-object v0
.end method

.method public hasHadResponseDelivered()Z
    .registers 3

    .prologue
    .line 726
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 727
    :try_start_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->m:Z

    monitor-exit v1

    return v0

    .line 728
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isCanceled()Z
    .registers 3

    .prologue
    .line 496
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 497
    :try_start_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->l:Z

    monitor-exit v1

    return v0

    .line 498
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isResponseOnMain()Z
    .registers 2

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->t:Z

    return v0
.end method

.method public markDelivered()V
    .registers 3

    .prologue
    .line 717
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 718
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->m:Z

    .line 719
    monitor-exit v1

    .line 720
    return-void

    .line 719
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public setCacheEntry(Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/face/a$a;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 458
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->p:Lcom/bytedance/sdk/adnet/face/a$a;

    .line 459
    return-object p0
.end method

.method public setIpAddrStr(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 804
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->u:Ljava/lang/String;

    .line 805
    return-void
.end method

.method public setNetDuration(J)V
    .registers 4

    .prologue
    .line 242
    iput-wide p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->s:J

    .line 243
    return-void
.end method

.method public setRequestQueue(Lcom/bytedance/sdk/adnet/core/m;)Lcom/bytedance/sdk/adnet/core/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 389
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->j:Lcom/bytedance/sdk/adnet/core/m;

    .line 390
    return-object p0
.end method

.method public setResponseOnMain(Z)Lcom/bytedance/sdk/adnet/core/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->t:Z

    .line 251
    return-object p0
.end method

.method public setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/face/d;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 324
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->o:Lcom/bytedance/sdk/adnet/face/d;

    .line 325
    return-object p0
.end method

.method public final setSequence(I)Lcom/bytedance/sdk/adnet/core/Request;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 399
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->i:Ljava/lang/Integer;

    .line 400
    return-object p0
.end method

.method public final setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 650
    iput-boolean p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->k:Z

    .line 651
    return-object p0
.end method

.method public final setShouldRetryServerErrors(Z)Lcom/bytedance/sdk/adnet/core/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 667
    iput-boolean p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->n:Z

    .line 668
    return-object p0
.end method

.method public setStartTime()V
    .registers 3

    .prologue
    .line 234
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->r:J

    .line 235
    return-void
.end method

.method public setTag(Ljava/lang/Object;)Lcom/bytedance/sdk/adnet/core/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 268
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->q:Ljava/lang/Object;

    .line 269
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 430
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->e:Ljava/lang/String;

    .line 431
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/bytedance/sdk/adnet/core/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 342
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->f:Ljava/lang/String;

    .line 343
    return-object p0
.end method

.method public final shouldCache()Z
    .registers 2

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->k:Z

    return v0
.end method

.method public final shouldRetryServerErrors()Z
    .registers 2

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->n:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getTrafficStatsTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "[X] "

    :goto_28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 855
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 859
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getPriority()Lcom/bytedance/sdk/adnet/core/Request$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->i:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 854
    return-object v0

    :cond_5d
    const-string v0, "[ ] "

    goto :goto_28
.end method
