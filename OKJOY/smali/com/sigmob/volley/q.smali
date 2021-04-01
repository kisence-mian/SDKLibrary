.class public abstract Lcom/sigmob/volley/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sigmob/volley/q",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "UTF-8"


# instance fields
.field protected final b:Ljava/lang/Object;

.field private final c:Lcom/sigmob/volley/ag;

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:I

.field private g:Lcom/sigmob/volley/y;

.field private h:Ljava/lang/Integer;

.field private i:Lcom/sigmob/volley/u;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/sigmob/volley/ab;

.field private o:Lcom/sigmob/volley/c;

.field private p:Ljava/lang/Object;

.field private q:Lcom/sigmob/volley/s;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/sigmob/volley/y;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/sigmob/volley/ag;->a:Z

    if-eqz v0, :cond_37

    new-instance v0, Lcom/sigmob/volley/ag;

    invoke-direct {v0}, Lcom/sigmob/volley/ag;-><init>()V

    :goto_e
    iput-object v0, p0, Lcom/sigmob/volley/q;->c:Lcom/sigmob/volley/ag;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/q;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/volley/q;->j:Z

    iput-boolean v2, p0, Lcom/sigmob/volley/q;->k:Z

    iput-boolean v2, p0, Lcom/sigmob/volley/q;->l:Z

    iput-boolean v2, p0, Lcom/sigmob/volley/q;->m:Z

    iput-object v1, p0, Lcom/sigmob/volley/q;->o:Lcom/sigmob/volley/c;

    iput p1, p0, Lcom/sigmob/volley/q;->d:I

    iput-object p2, p0, Lcom/sigmob/volley/q;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/volley/q;->g:Lcom/sigmob/volley/y;

    new-instance v0, Lcom/sigmob/volley/g;

    invoke-direct {v0}, Lcom/sigmob/volley/g;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sigmob/volley/q;->a(Lcom/sigmob/volley/ab;)Lcom/sigmob/volley/q;

    invoke-static {p2}, Lcom/sigmob/volley/q;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sigmob/volley/q;->f:I

    return-void

    :cond_37
    move-object v0, v1

    goto :goto_e
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/volley/y;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/sigmob/volley/q;-><init>(ILjava/lang/String;Lcom/sigmob/volley/y;)V

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)[B
    .registers 7
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

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_3d} :catch_3e

    goto :goto_d

    :catch_3e
    move-exception v0

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

    :cond_58
    :try_start_58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_58 .. :try_end_5f} :catch_3e

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/ag;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/q;->c:Lcom/sigmob/volley/ag;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public A()V
    .registers 3

    iget-object v1, p0, Lcom/sigmob/volley/q;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/sigmob/volley/q;->l:Z

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public B()Z
    .registers 3

    iget-object v1, p0, Lcom/sigmob/volley/q;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/sigmob/volley/q;->l:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public C()V
    .registers 3

    iget-object v1, p0, Lcom/sigmob/volley/q;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/volley/q;->q:Lcom/sigmob/volley/s;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v0, :cond_b

    invoke-interface {v0, p0}, Lcom/sigmob/volley/s;->a(Lcom/sigmob/volley/q;)V

    :cond_b
    return-void

    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public a(Lcom/sigmob/volley/q;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q",
            "<TT;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sigmob/volley/q;->w()Lcom/sigmob/volley/t;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->w()Lcom/sigmob/volley/t;

    move-result-object v1

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/sigmob/volley/q;->h:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/sigmob/volley/q;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_17
    return v0

    :cond_18
    invoke-virtual {v1}, Lcom/sigmob/volley/t;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcom/sigmob/volley/t;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_17
.end method

.method public final a(I)Lcom/sigmob/volley/q;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sigmob/volley/q",
            "<*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/volley/q;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Lcom/sigmob/volley/ab;)Lcom/sigmob/volley/q;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/ab;",
            ")",
            "Lcom/sigmob/volley/q",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/volley/q;->n:Lcom/sigmob/volley/ab;

    return-object p0
.end method

.method public a(Lcom/sigmob/volley/c;)Lcom/sigmob/volley/q;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/c;",
            ")",
            "Lcom/sigmob/volley/q",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/volley/q;->o:Lcom/sigmob/volley/c;

    return-object p0
.end method

.method public a(Lcom/sigmob/volley/u;)Lcom/sigmob/volley/q;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/u;",
            ")",
            "Lcom/sigmob/volley/q",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/volley/q;->i:Lcom/sigmob/volley/u;

    return-object p0
.end method

.method public final a(Z)Lcom/sigmob/volley/q;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/sigmob/volley/q",
            "<*>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/sigmob/volley/q;->j:Z

    return-object p0
.end method

.method protected abstract a(Lcom/sigmob/volley/n;)Lcom/sigmob/volley/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/n;",
            ")",
            "Lcom/sigmob/volley/x",
            "<TT;>;"
        }
    .end annotation
.end method

.method public a(Lcom/sigmob/volley/ae;)V
    .registers 4

    iget-object v1, p0, Lcom/sigmob/volley/q;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/volley/q;->g:Lcom/sigmob/volley/y;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/sigmob/volley/y;->a(Lcom/sigmob/volley/ae;)V

    :cond_b
    return-void

    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method a(Lcom/sigmob/volley/s;)V
    .registers 4

    iget-object v1, p0, Lcom/sigmob/volley/q;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/sigmob/volley/q;->q:Lcom/sigmob/volley/s;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public a(Lcom/sigmob/volley/x;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/x",
            "<*>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/sigmob/volley/q;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/volley/q;->q:Lcom/sigmob/volley/s;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v0, :cond_b

    invoke-interface {v0, p0, p1}, Lcom/sigmob/volley/s;->a(Lcom/sigmob/volley/q;Lcom/sigmob/volley/x;)V

    :cond_b
    return-void

    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    sget-boolean v0, Lcom/sigmob/volley/ag;->a:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sigmob/volley/q;->c:Lcom/sigmob/volley/ag;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/sigmob/volley/ag;->a(Ljava/lang/String;J)V

    :cond_11
    return-void
.end method

.method public a_()I
    .registers 2

    const/high16 v0, -0x80000000

    return v0
.end method

.method protected b(Lcom/sigmob/volley/ae;)Lcom/sigmob/volley/ae;
    .registers 2

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Lcom/sigmob/volley/q;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/sigmob/volley/q",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/volley/q;->p:Ljava/lang/Object;

    return-object p0
.end method

.method public final b(Z)Lcom/sigmob/volley/q;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/sigmob/volley/q",
            "<*>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/sigmob/volley/q;->m:Z

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/volley/q;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/volley/q;->i:Lcom/sigmob/volley/u;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/volley/q;->i:Lcom/sigmob/volley/u;

    invoke-virtual {v0, p0}, Lcom/sigmob/volley/u;->b(Lcom/sigmob/volley/q;)V

    :cond_9
    sget-boolean v0, Lcom/sigmob/volley/ag;->a:Z

    if-eqz v0, :cond_30

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_31

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/sigmob/volley/q$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/sigmob/volley/q$1;-><init>(Lcom/sigmob/volley/q;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_30
    :goto_30
    return-void

    :cond_31
    iget-object v2, p0, Lcom/sigmob/volley/q;->c:Lcom/sigmob/volley/ag;

    invoke-virtual {v2, p1, v0, v1}, Lcom/sigmob/volley/ag;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sigmob/volley/q;->c:Lcom/sigmob/volley/ag;

    invoke-virtual {p0}, Lcom/sigmob/volley/q;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/volley/ag;->a(Ljava/lang/String;)V

    goto :goto_30
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/volley/q;->r:Ljava/lang/String;

    return-void
.end method

.method public c()[B
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/volley/q;->s()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_15

    invoke-virtual {p0}, Lcom/sigmob/volley/q;->t()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sigmob/volley/q;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/sigmob/volley/q;

    invoke-virtual {p0, p1}, Lcom/sigmob/volley/q;->a(Lcom/sigmob/volley/q;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/util/Map;
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

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lcom/sigmob/volley/q;->d:I

    return v0
.end method

.method public j()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/q;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public k()Lcom/sigmob/volley/y;
    .registers 3

    iget-object v1, p0, Lcom/sigmob/volley/q;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/volley/q;->g:Lcom/sigmob/volley/y;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public l()I
    .registers 2

    iget v0, p0, Lcom/sigmob/volley/q;->f:I

    return v0
.end method

.method public final m()I
    .registers 3

    iget-object v0, p0, Lcom/sigmob/volley/q;->h:Ljava/lang/Integer;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getSequence called before setSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/sigmob/volley/q;->h:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/q;->r:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sigmob/volley/q;->e:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/sigmob/volley/q;->r:Ljava/lang/String;

    goto :goto_6
.end method

.method public o()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/sigmob/volley/q;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/volley/q;->i()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

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

.method public p()Lcom/sigmob/volley/c;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/q;->o:Lcom/sigmob/volley/c;

    return-object v0
.end method

.method public q()V
    .registers 3

    iget-object v1, p0, Lcom/sigmob/volley/q;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/sigmob/volley/q;->k:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/volley/q;->g:Lcom/sigmob/volley/y;

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public r()Z
    .registers 3

    iget-object v1, p0, Lcom/sigmob/volley/q;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/sigmob/volley/q;->k:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method protected s()Ljava/util/Map;
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

    const/4 v0, 0x0

    return-object v0
.end method

.method protected t()Ljava/lang/String;
    .registers 2

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/volley/q;->l()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sigmob/volley/q;->r()Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "[X] "

    :goto_28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/volley/q;->n()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/sigmob/volley/q;->w()Lcom/sigmob/volley/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/volley/q;->h:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5d
    const-string v0, "[ ] "

    goto :goto_28
.end method

.method public final u()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/volley/q;->j:Z

    return v0
.end method

.method public final v()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/volley/q;->m:Z

    return v0
.end method

.method public w()Lcom/sigmob/volley/t;
    .registers 2

    sget-object v0, Lcom/sigmob/volley/t;->b:Lcom/sigmob/volley/t;

    return-object v0
.end method

.method public final x()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/volley/q;->z()Lcom/sigmob/volley/ab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/volley/ab;->a()I

    move-result v0

    return v0
.end method

.method public final y()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/volley/q;->z()Lcom/sigmob/volley/ab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/volley/ab;->d()I

    move-result v0

    return v0
.end method

.method public z()Lcom/sigmob/volley/ab;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/q;->n:Lcom/sigmob/volley/ab;

    return-object v0
.end method
