.class public Lcom/kwai/filedownloader/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/a;
.implements Lcom/kwai/filedownloader/a$b;
.implements Lcom/kwai/filedownloader/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/c$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/kwai/filedownloader/x;

.field private final b:Lcom/kwai/filedownloader/x$a;

.field private c:I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kwai/filedownloader/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Lcom/kwai/filedownloader/f0/b;

.field private j:Lcom/kwai/filedownloader/i;

.field private k:Ljava/lang/Object;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:Z

.field volatile r:I

.field private s:Z

.field private final t:Ljava/lang/Object;

.field private final u:Ljava/lang/Object;

.field private volatile v:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/kwai/filedownloader/c;->l:I

    iput-boolean v1, p0, Lcom/kwai/filedownloader/c;->m:Z

    iput-boolean v1, p0, Lcom/kwai/filedownloader/c;->n:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/kwai/filedownloader/c;->o:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/kwai/filedownloader/c;->p:I

    iput-boolean v1, p0, Lcom/kwai/filedownloader/c;->q:Z

    iput v1, p0, Lcom/kwai/filedownloader/c;->r:I

    iput-boolean v1, p0, Lcom/kwai/filedownloader/c;->s:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/c;->u:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/kwai/filedownloader/c;->v:Z

    iput-object p1, p0, Lcom/kwai/filedownloader/c;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/c;->t:Ljava/lang/Object;

    new-instance v0, Lcom/kwai/filedownloader/d;

    iget-object v1, p0, Lcom/kwai/filedownloader/c;->t:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/kwai/filedownloader/d;-><init>(Lcom/kwai/filedownloader/d$a;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kwai/filedownloader/c;->a:Lcom/kwai/filedownloader/x;

    iput-object v0, p0, Lcom/kwai/filedownloader/c;->b:Lcom/kwai/filedownloader/x$a;

    return-void
.end method

.method private P()V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->i:Lcom/kwai/filedownloader/f0/b;

    if-nez v0, :cond_13

    iget-object v1, p0, Lcom/kwai/filedownloader/c;->u:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/kwai/filedownloader/c;->i:Lcom/kwai/filedownloader/f0/b;

    if-nez v0, :cond_12

    new-instance v0, Lcom/kwai/filedownloader/f0/b;

    invoke-direct {v0}, Lcom/kwai/filedownloader/f0/b;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/c;->i:Lcom/kwai/filedownloader/f0/b;

    :cond_12
    monitor-exit v1

    :cond_13
    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private Q()I
    .registers 5

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->O()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "This task is running %d, if you want to start the same task, please create a new one by FileDownloader.create"

    invoke-static {v2, v1}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This task is dirty to restart, If you want to reuse this task, please invoke #reuse method manually and retry to restart again."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kwai/filedownloader/c;->a:Lcom/kwai/filedownloader/x;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->D()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->u()V

    :cond_4e
    iget-object v0, p0, Lcom/kwai/filedownloader/c;->a:Lcom/kwai/filedownloader/x;

    invoke-interface {v0}, Lcom/kwai/filedownloader/x;->j()V

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->getId()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/kwai/filedownloader/c;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwai/filedownloader/c;->s:Z

    return p1
.end method


# virtual methods
.method public A()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/c;->l:I

    return v0
.end method

.method public B()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public C()J
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->a:Lcom/kwai/filedownloader/x;

    invoke-interface {v0}, Lcom/kwai/filedownloader/x;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public D()Z
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/c;->r:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public E()Lcom/kwai/filedownloader/i;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->j:Lcom/kwai/filedownloader/i;

    return-object v0
.end method

.method public F()Z
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public G()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/c;->p:I

    return v0
.end method

.method public H()I
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->a:Lcom/kwai/filedownloader/x;

    invoke-interface {v0}, Lcom/kwai/filedownloader/x;->k()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    const v0, 0x7fffffff

    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lcom/kwai/filedownloader/c;->a:Lcom/kwai/filedownloader/x;

    invoke-interface {v0}, Lcom/kwai/filedownloader/x;->k()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_10
.end method

.method public I()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwai/filedownloader/c;->v:Z

    return-void
.end method

.method public J()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/c;->m:Z

    return v0
.end method

.method public K()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/c;->r:I

    return v0
.end method

.method public L()Lcom/kwai/filedownloader/a$b;
    .registers 1

    return-object p0
.end method

.method public M()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public N()Z
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1a

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "This task[%d] is running, if you want start the same task, please create a new one by FileDownloader#create"

    invoke-static {p0, v2, v1}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_19
    return v0

    :cond_1a
    iput v0, p0, Lcom/kwai/filedownloader/c;->r:I

    iput-boolean v0, p0, Lcom/kwai/filedownloader/c;->s:Z

    iput-boolean v0, p0, Lcom/kwai/filedownloader/c;->v:Z

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->a:Lcom/kwai/filedownloader/x;

    invoke-interface {v0}, Lcom/kwai/filedownloader/x;->b()V

    move v0, v1

    goto :goto_19
.end method

.method public O()Z
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->a:Lcom/kwai/filedownloader/x;

    invoke-interface {v0}, Lcom/kwai/filedownloader/x;->i()B

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public a(Lcom/kwai/filedownloader/i;)Lcom/kwai/filedownloader/a;
    .registers 4

    iput-object p1, p0, Lcom/kwai/filedownloader/c;->j:Lcom/kwai/filedownloader/i;

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "setListener %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/kwai/filedownloader/a;
    .registers 4

    iput-object p1, p0, Lcom/kwai/filedownloader/c;->k:Ljava/lang/Object;

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "setTag %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/kwai/filedownloader/a;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kwai/filedownloader/c;->a(Ljava/lang/String;Z)Lcom/kwai/filedownloader/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/kwai/filedownloader/a;
    .registers 4

    invoke-direct {p0}, Lcom/kwai/filedownloader/c;->P()V

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->i:Lcom/kwai/filedownloader/f0/b;

    invoke-virtual {v0, p1, p2}, Lcom/kwai/filedownloader/f0/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;Z)Lcom/kwai/filedownloader/a;
    .registers 5

    iput-object p1, p0, Lcom/kwai/filedownloader/c;->f:Ljava/lang/String;

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "setPath %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iput-boolean p2, p0, Lcom/kwai/filedownloader/c;->h:Z

    if-eqz p2, :cond_19

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwai/filedownloader/c;->g:Ljava/lang/String;

    :goto_18
    return-object p0

    :cond_19
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/c;->g:Ljava/lang/String;

    goto :goto_18
.end method

.method public a(Z)Lcom/kwai/filedownloader/a;
    .registers 2

    iput-boolean p1, p0, Lcom/kwai/filedownloader/c;->n:Z

    return-object p0
.end method

.method public a()Z
    .registers 3

    iget-object v1, p0, Lcom/kwai/filedownloader/c;->t:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/kwai/filedownloader/c;->a:Lcom/kwai/filedownloader/x;

    invoke-interface {v0}, Lcom/kwai/filedownloader/x;->a()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public a(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->getId()I

    move-result v0

    if-ne v0, p1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b(I)Lcom/kwai/filedownloader/a;
    .registers 2

    iput p1, p0, Lcom/kwai/filedownloader/c;->l:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/kwai/filedownloader/a;
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->i:Lcom/kwai/filedownloader/f0/b;

    if-nez v0, :cond_e

    iget-object v1, p0, Lcom/kwai/filedownloader/c;->u:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/kwai/filedownloader/c;->i:Lcom/kwai/filedownloader/f0/b;

    if-nez v0, :cond_d

    monitor-exit v1

    :goto_c
    return-object p0

    :cond_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    :cond_e
    iget-object v0, p0, Lcom/kwai/filedownloader/c;->i:Lcom/kwai/filedownloader/f0/b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/f0/b;->a(Ljava/lang/String;)V

    goto :goto_c

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public b(Z)Lcom/kwai/filedownloader/a;
    .registers 2

    iput-boolean p1, p0, Lcom/kwai/filedownloader/c;->q:Z

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->a:Lcom/kwai/filedownloader/x;

    invoke-interface {v0}, Lcom/kwai/filedownloader/x;->c()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/c;->g:Ljava/lang/String;

    return-void
.end method

.method public cancel()Z
    .registers 2

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->a()Z

    move-result v0

    return v0
.end method

.method public d()I
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->a:Lcom/kwai/filedownloader/x;

    invoke-interface {v0}, Lcom/kwai/filedownloader/r;->d()I

    move-result v0

    return v0
.end method

.method public e()J
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->a:Lcom/kwai/filedownloader/x;

    invoke-interface {v0}, Lcom/kwai/filedownloader/x;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->a:Lcom/kwai/filedownloader/x;

    invoke-interface {v0}, Lcom/kwai/filedownloader/x;->f()Z

    move-result v0

    return v0
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->a:Lcom/kwai/filedownloader/x;

    invoke-interface {v0}, Lcom/kwai/filedownloader/x;->g()V

    invoke-static {}, Lcom/kwai/filedownloader/h;->b()Lcom/kwai/filedownloader/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kwai/filedownloader/h;->c(Lcom/kwai/filedownloader/a$b;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwai/filedownloader/c;->v:Z

    :cond_12
    return-void
.end method

.method public getId()I
    .registers 4

    iget v0, p0, Lcom/kwai/filedownloader/c;->c:I

    if-eqz v0, :cond_5

    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Lcom/kwai/filedownloader/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/kwai/filedownloader/c;->f:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/kwai/filedownloader/c;->h:Z

    invoke-static {v0, v1, v2}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/kwai/filedownloader/c;->c:I

    goto :goto_4

    :cond_22
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public h()I
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->a:Lcom/kwai/filedownloader/x;

    invoke-interface {v0}, Lcom/kwai/filedownloader/x;->h()I

    move-result v0

    return v0
.end method

.method public i()B
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->a:Lcom/kwai/filedownloader/x;

    invoke-interface {v0}, Lcom/kwai/filedownloader/x;->i()B

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .registers 2

    invoke-static {}, Lcom/kwai/filedownloader/q;->e()Lcom/kwai/filedownloader/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/q;->b()Lcom/kwai/filedownloader/v;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/kwai/filedownloader/v;->a(Lcom/kwai/filedownloader/a$b;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->i()B

    move-result v0

    invoke-static {v0}, Lcom/kwai/filedownloader/f0/d;->a(I)Z

    move-result v0

    goto :goto_f
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/c;->q:Z

    return v0
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/c;->v:Z

    return v0
.end method

.method public m()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kwai/filedownloader/a$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public n()Lcom/kwai/filedownloader/a$c;
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kwai/filedownloader/c$b;-><init>(Lcom/kwai/filedownloader/c;Lcom/kwai/filedownloader/c$a;)V

    return-object v0
.end method

.method public o()J
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->a:Lcom/kwai/filedownloader/x;

    invoke-interface {v0}, Lcom/kwai/filedownloader/x;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public p()Lcom/kwai/filedownloader/f0/b;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->i:Lcom/kwai/filedownloader/f0/b;

    return-object v0
.end method

.method public q()Lcom/kwai/filedownloader/x$a;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->b:Lcom/kwai/filedownloader/x$a;

    return-object v0
.end method

.method public r()I
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->a:Lcom/kwai/filedownloader/x;

    invoke-interface {v0}, Lcom/kwai/filedownloader/x;->l()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    const v0, 0x7fffffff

    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lcom/kwai/filedownloader/c;->a:Lcom/kwai/filedownloader/x;

    invoke-interface {v0}, Lcom/kwai/filedownloader/x;->l()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_10
.end method

.method public s()Z
    .registers 2

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->i()B

    move-result v0

    invoke-static {v0}, Lcom/kwai/filedownloader/f0/d;->b(I)Z

    move-result v0

    return v0
.end method

.method public start()I
    .registers 3

    iget-boolean v0, p0, Lcom/kwai/filedownloader/c;->s:Z

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/kwai/filedownloader/c;->Q()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you start the task manually, it means this task doesn\'t belong to a queue, so you must not invoke BaseDownloadTask#ready() or InQueueTask#enqueue() before you start() this method. For detail: If this task doesn\'t belong to a queue, what is just an isolated task, you just need to invoke BaseDownloadTask#start() to start this task, that\'s all. In other words, If this task doesn\'t belong to a queue, you must not invoke BaseDownloadTask#ready() method or InQueueTask#enqueue() method before invoke BaseDownloadTask#start(), If you do that and if there is the same listener object to start a queue in another thread, this task may be assembled by the queue, in that case, when you invoke BaseDownloadTask#start() manually to start this task or this task is started by the queue, there is an exception buried in there, because this task object is started two times without declare BaseDownloadTask#reuse() : 1. you invoke BaseDownloadTask#start() manually;  2. the queue start this task automatically."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/c;->h:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%d@%s"

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .registers 2

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->E()Lcom/kwai/filedownloader/i;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->E()Lcom/kwai/filedownloader/i;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_e
    iput v0, p0, Lcom/kwai/filedownloader/c;->r:I

    return-void

    :cond_11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_e
.end method

.method public v()V
    .registers 1

    invoke-direct {p0}, Lcom/kwai/filedownloader/c;->Q()I

    return-void
.end method

.method public w()Lcom/kwai/filedownloader/a;
    .registers 1

    return-object p0
.end method

.method public x()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->t()Z

    move-result v1

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->M()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/c;->o:I

    return v0
.end method

.method public z()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/c;->n:Z

    return v0
.end method
