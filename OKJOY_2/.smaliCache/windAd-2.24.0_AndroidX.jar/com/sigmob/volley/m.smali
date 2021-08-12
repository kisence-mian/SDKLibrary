.class public abstract Lcom/sigmob/volley/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/volley/m$a;,
        Lcom/sigmob/volley/m$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/sigmob/volley/m<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Object;

.field private final b:Lcom/sigmob/volley/u$a;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:I

.field private f:Lcom/sigmob/volley/o$a;

.field private g:Ljava/lang/Integer;

.field private h:Lcom/sigmob/volley/n;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/sigmob/volley/q;

.field private n:Lcom/sigmob/volley/b$a;

.field private o:Ljava/lang/Object;

.field private p:Lcom/sigmob/volley/m$a;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/sigmob/volley/o$a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/sigmob/volley/u$a;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/sigmob/volley/u$a;

    invoke-direct {v0}, Lcom/sigmob/volley/u$a;-><init>()V

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    iput-object v0, p0, Lcom/sigmob/volley/m;->b:Lcom/sigmob/volley/u$a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/m;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/volley/m;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/volley/m;->j:Z

    iput-boolean v0, p0, Lcom/sigmob/volley/m;->k:Z

    iput-boolean v0, p0, Lcom/sigmob/volley/m;->l:Z

    iput-object v1, p0, Lcom/sigmob/volley/m;->n:Lcom/sigmob/volley/b$a;

    iput p1, p0, Lcom/sigmob/volley/m;->c:I

    iput-object p2, p0, Lcom/sigmob/volley/m;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/volley/m;->f:Lcom/sigmob/volley/o$a;

    new-instance p1, Lcom/sigmob/volley/d;

    invoke-direct {p1}, Lcom/sigmob/volley/d;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sigmob/volley/m;->a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/m;

    invoke-static {p2}, Lcom/sigmob/volley/m;->d(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sigmob/volley/m;->e:I

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_46
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_46} :catch_47

    return-object p1

    :catch_47
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic b(Lcom/sigmob/volley/m;)Lcom/sigmob/volley/u$a;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/volley/m;->b:Lcom/sigmob/volley/u$a;

    return-object p0
.end method

.method private static d(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/m;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/m<",
            "TT;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sigmob/volley/m;->r()Lcom/sigmob/volley/m$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/volley/m;->r()Lcom/sigmob/volley/m$b;

    move-result-object v1

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/sigmob/volley/m;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/sigmob/volley/m;->g:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_22

    :cond_18
    invoke-virtual {v1}, Lcom/sigmob/volley/m$b;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Lcom/sigmob/volley/m$b;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_22
    return v0
.end method

.method public final a(I)Lcom/sigmob/volley/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sigmob/volley/m<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/volley/m;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Lcom/sigmob/volley/b$a;)Lcom/sigmob/volley/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/b$a;",
            ")",
            "Lcom/sigmob/volley/m<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/volley/m;->n:Lcom/sigmob/volley/b$a;

    return-object p0
.end method

.method public a(Lcom/sigmob/volley/n;)Lcom/sigmob/volley/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/n;",
            ")",
            "Lcom/sigmob/volley/m<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/volley/m;->h:Lcom/sigmob/volley/n;

    return-object p0
.end method

.method public a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q;",
            ")",
            "Lcom/sigmob/volley/m<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/volley/m;->m:Lcom/sigmob/volley/q;

    return-object p0
.end method

.method public final a(Z)Lcom/sigmob/volley/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/sigmob/volley/m<",
            "*>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/sigmob/volley/m;->i:Z

    return-object p0
.end method

.method protected abstract a(Lcom/sigmob/volley/j;)Lcom/sigmob/volley/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/j;",
            ")",
            "Lcom/sigmob/volley/o<",
            "TT;>;"
        }
    .end annotation
.end method

.method public a()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/volley/m;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/sigmob/volley/m$a;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/volley/m;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/sigmob/volley/m;->p:Lcom/sigmob/volley/m$a;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public a(Lcom/sigmob/volley/o;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/o<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/volley/m;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/sigmob/volley/m;->p:Lcom/sigmob/volley/m$a;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    invoke-interface {v1, p0, p1}, Lcom/sigmob/volley/m$a;->a(Lcom/sigmob/volley/m;Lcom/sigmob/volley/o;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public a(Lcom/sigmob/volley/t;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/volley/m;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/sigmob/volley/m;->f:Lcom/sigmob/volley/o$a;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    invoke-interface {v1, p1}, Lcom/sigmob/volley/o$a;->onErrorResponse(Lcom/sigmob/volley/t;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    sget-boolean v0, Lcom/sigmob/volley/u$a;->a:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sigmob/volley/m;->b:Lcom/sigmob/volley/u$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/volley/u$a;->a(Ljava/lang/String;J)V

    :cond_11
    return-void
.end method

.method public b(Ljava/lang/Object;)Lcom/sigmob/volley/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/sigmob/volley/m<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/volley/m;->o:Ljava/lang/Object;

    return-object p0
.end method

.method public final b(Z)Lcom/sigmob/volley/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/sigmob/volley/m<",
            "*>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/sigmob/volley/m;->l:Z

    return-object p0
.end method

.method protected b(Lcom/sigmob/volley/t;)Lcom/sigmob/volley/t;
    .registers 2

    return-object p1
.end method

.method b(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/volley/m;->h:Lcom/sigmob/volley/n;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lcom/sigmob/volley/n;->b(Lcom/sigmob/volley/m;)V

    :cond_7
    sget-boolean v0, Lcom/sigmob/volley/u$a;->a:Z

    if-eqz v0, :cond_3d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_2f

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/sigmob/volley/m$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/sigmob/volley/m$1;-><init>(Lcom/sigmob/volley/m;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2f
    iget-object v2, p0, Lcom/sigmob/volley/m;->b:Lcom/sigmob/volley/u$a;

    invoke-virtual {v2, p1, v0, v1}, Lcom/sigmob/volley/u$a;->a(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/sigmob/volley/m;->b:Lcom/sigmob/volley/u$a;

    invoke-virtual {p0}, Lcom/sigmob/volley/m;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/u$a;->a(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method public b()[B
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/volley/m;->n()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_15

    invoke-virtual {p0}, Lcom/sigmob/volley/m;->o()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sigmob/volley/m;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/volley/m;->q:Ljava/lang/String;

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/sigmob/volley/m;

    invoke-virtual {p0, p1}, Lcom/sigmob/volley/m;->a(Lcom/sigmob/volley/m;)I

    move-result p1

    return p1
.end method

.method public d()I
    .registers 2

    const/high16 v0, -0x80000000

    return v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/sigmob/volley/m;->c:I

    return v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/sigmob/volley/m;->e:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/m;->q:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sigmob/volley/m;->d:Ljava/lang/String;

    :cond_6
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/sigmob/volley/m;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/volley/m;->g()I

    move-result v1

    if-eqz v1, :cond_29

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    goto :goto_29

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

    :cond_29
    :goto_29
    return-object v0
.end method

.method public k()Lcom/sigmob/volley/b$a;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/m;->n:Lcom/sigmob/volley/b$a;

    return-object v0
.end method

.method public l()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/volley/m;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/sigmob/volley/m;->j:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sigmob/volley/m;->f:Lcom/sigmob/volley/o$a;

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public m()Z
    .registers 3

    iget-object v0, p0, Lcom/sigmob/volley/m;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/sigmob/volley/m;->j:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected n()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected o()Ljava/lang/String;
    .registers 2

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public final p()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/volley/m;->i:Z

    return v0
.end method

.method public final q()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/volley/m;->l:Z

    return v0
.end method

.method public r()Lcom/sigmob/volley/m$b;
    .registers 2

    sget-object v0, Lcom/sigmob/volley/m$b;->b:Lcom/sigmob/volley/m$b;

    return-object v0
.end method

.method public final s()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/volley/m;->u()Lcom/sigmob/volley/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/volley/q;->a()I

    move-result v0

    return v0
.end method

.method public final t()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/volley/m;->u()Lcom/sigmob/volley/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/volley/q;->c()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/volley/m;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sigmob/volley/m;->m()Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v2, "[X] "

    goto :goto_2b

    :cond_29
    const-string v2, "[ ] "

    :goto_2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/volley/m;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/volley/m;->r()Lcom/sigmob/volley/m$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/volley/m;->g:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/sigmob/volley/q;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/m;->m:Lcom/sigmob/volley/q;

    return-object v0
.end method

.method public v()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/volley/m;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/sigmob/volley/m;->k:Z

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public w()Z
    .registers 3

    iget-object v0, p0, Lcom/sigmob/volley/m;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/sigmob/volley/m;->k:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public x()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/volley/m;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/sigmob/volley/m;->p:Lcom/sigmob/volley/m$a;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    invoke-interface {v1, p0}, Lcom/sigmob/volley/m$a;->a(Lcom/sigmob/volley/m;)V

    :cond_b
    return-void

    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method
