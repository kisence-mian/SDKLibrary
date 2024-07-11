.class public Lcom/kwai/filedownloader/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwai/filedownloader/a;
.implements Lcom/kwai/filedownloader/a$b;
.implements Lcom/kwai/filedownloader/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/c$a;
    }
.end annotation


# instance fields
.field volatile a:I

.field private final b:Lcom/kwai/filedownloader/w;

.field private final c:Lcom/kwai/filedownloader/w$a;

.field private d:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kwai/filedownloader/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Lcom/kwai/filedownloader/d/b;

.field private k:Lcom/kwai/filedownloader/i;

.field private l:Ljava/lang/Object;

.field private m:I

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private final t:Ljava/lang/Object;

.field private final u:Ljava/lang/Object;

.field private volatile v:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwai/filedownloader/c;->m:I

    iput-boolean v0, p0, Lcom/kwai/filedownloader/c;->n:Z

    iput-boolean v0, p0, Lcom/kwai/filedownloader/c;->o:Z

    const/16 v1, 0x64

    iput v1, p0, Lcom/kwai/filedownloader/c;->p:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/kwai/filedownloader/c;->q:I

    iput-boolean v0, p0, Lcom/kwai/filedownloader/c;->r:Z

    iput v0, p0, Lcom/kwai/filedownloader/c;->a:I

    iput-boolean v0, p0, Lcom/kwai/filedownloader/c;->s:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/kwai/filedownloader/c;->u:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/kwai/filedownloader/c;->v:Z

    iput-object p1, p0, Lcom/kwai/filedownloader/c;->f:Ljava/lang/String;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwai/filedownloader/c;->t:Ljava/lang/Object;

    new-instance v0, Lcom/kwai/filedownloader/d;

    invoke-direct {v0, p0, p1}, Lcom/kwai/filedownloader/d;-><init>(Lcom/kwai/filedownloader/d$a;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kwai/filedownloader/c;->b:Lcom/kwai/filedownloader/w;

    iput-object v0, p0, Lcom/kwai/filedownloader/c;->c:Lcom/kwai/filedownloader/w$a;

    return-void
.end method

.method private T()I
    .registers 5

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->P()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->c()Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "This task is running %d, if you want to start the same task, please create a new one by FileDownloader.create"

    invoke-static {v2, v1}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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

    iget-object v2, p0, Lcom/kwai/filedownloader/c;->b:Lcom/kwai/filedownloader/w;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->d()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->J()V

    :cond_4e
    iget-object v0, p0, Lcom/kwai/filedownloader/c;->b:Lcom/kwai/filedownloader/w;

    invoke-interface {v0}, Lcom/kwai/filedownloader/w;->e()V

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->h()I

    move-result v0

    return v0
.end method

.method private U()V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->j:Lcom/kwai/filedownloader/d/b;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->u:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/kwai/filedownloader/c;->j:Lcom/kwai/filedownloader/d/b;

    if-nez v1, :cond_12

    new-instance v1, Lcom/kwai/filedownloader/d/b;

    invoke-direct {v1}, Lcom/kwai/filedownloader/d/b;-><init>()V

    iput-object v1, p0, Lcom/kwai/filedownloader/c;->j:Lcom/kwai/filedownloader/d/b;

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
    return-void
.end method

.method static synthetic a(Lcom/kwai/filedownloader/c;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwai/filedownloader/c;->s:Z

    return p1
.end method


# virtual methods
.method public A()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/c;->m:I

    return v0
.end method

.method public B()I
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->b:Lcom/kwai/filedownloader/w;

    invoke-interface {v0}, Lcom/kwai/filedownloader/w;->m()I

    move-result v0

    return v0
.end method

.method public C()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/c;->n:Z

    return v0
.end method

.method public D()Z
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->b:Lcom/kwai/filedownloader/w;

    invoke-interface {v0}, Lcom/kwai/filedownloader/w;->n()Z

    move-result v0

    return v0
.end method

.method public E()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/c;->o:Z

    return v0
.end method

.method public F()Lcom/kwai/filedownloader/a;
    .registers 1

    return-object p0
.end method

.method public G()Lcom/kwai/filedownloader/w$a;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->c:Lcom/kwai/filedownloader/w$a;

    return-object v0
.end method

.method public H()Z
    .registers 2

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->v()B

    move-result v0

    invoke-static {v0}, Lcom/kwai/filedownloader/d/d;->a(I)Z

    move-result v0

    return v0
.end method

.method public I()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/c;->a:I

    return v0
.end method

.method public J()V
    .registers 2

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->p()Lcom/kwai/filedownloader/i;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->p()Lcom/kwai/filedownloader/i;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_13
    iput v0, p0, Lcom/kwai/filedownloader/c;->a:I

    return-void
.end method

.method public K()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/c;->v:Z

    return v0
.end method

.method public L()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwai/filedownloader/c;->v:Z

    return-void
.end method

.method public M()V
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->b:Lcom/kwai/filedownloader/w;

    invoke-interface {v0}, Lcom/kwai/filedownloader/w;->o()V

    invoke-static {}, Lcom/kwai/filedownloader/h;->a()Lcom/kwai/filedownloader/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kwai/filedownloader/h;->a(Lcom/kwai/filedownloader/a$b;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwai/filedownloader/c;->v:Z

    :cond_12
    return-void
.end method

.method public N()V
    .registers 1

    invoke-direct {p0}, Lcom/kwai/filedownloader/c;->T()I

    return-void
.end method

.method public O()Z
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public P()Z
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->b:Lcom/kwai/filedownloader/w;

    invoke-interface {v0}, Lcom/kwai/filedownloader/w;->g()B

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public Q()Lcom/kwai/filedownloader/d/b;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->j:Lcom/kwai/filedownloader/d/b;

    return-object v0
.end method

.method public R()Lcom/kwai/filedownloader/a$b;
    .registers 1

    return-object p0
.end method

.method public S()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/kwai/filedownloader/a$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a()Lcom/kwai/filedownloader/a$c;
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kwai/filedownloader/c$a;-><init>(Lcom/kwai/filedownloader/c;Lcom/kwai/filedownloader/c$1;)V

    return-object v0
.end method

.method public a(I)Lcom/kwai/filedownloader/a;
    .registers 2

    iput p1, p0, Lcom/kwai/filedownloader/c;->m:I

    return-object p0
.end method

.method public a(Lcom/kwai/filedownloader/i;)Lcom/kwai/filedownloader/a;
    .registers 4

    iput-object p1, p0, Lcom/kwai/filedownloader/c;->k:Lcom/kwai/filedownloader/i;

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "setListener %s"

    invoke-static {p0, p1, v0}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/kwai/filedownloader/a;
    .registers 4

    iput-object p1, p0, Lcom/kwai/filedownloader/c;->l:Ljava/lang/Object;

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "setTag %s"

    invoke-static {p0, p1, v0}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/kwai/filedownloader/a;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kwai/filedownloader/c;->a(Ljava/lang/String;Z)Lcom/kwai/filedownloader/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/kwai/filedownloader/a;
    .registers 4

    invoke-direct {p0}, Lcom/kwai/filedownloader/c;->U()V

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->j:Lcom/kwai/filedownloader/d/b;

    invoke-virtual {v0, p1, p2}, Lcom/kwai/filedownloader/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;Z)Lcom/kwai/filedownloader/a;
    .registers 5

    iput-object p1, p0, Lcom/kwai/filedownloader/c;->g:Ljava/lang/String;

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "setPath %s"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iput-boolean p2, p0, Lcom/kwai/filedownloader/c;->i:Z

    if-eqz p2, :cond_17

    const/4 p1, 0x0

    goto :goto_20

    :cond_17
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_20
    iput-object p1, p0, Lcom/kwai/filedownloader/c;->h:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/kwai/filedownloader/a;
    .registers 2

    iput-boolean p1, p0, Lcom/kwai/filedownloader/c;->r:Z

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/kwai/filedownloader/a;
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->j:Lcom/kwai/filedownloader/d/b;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->u:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/kwai/filedownloader/c;->j:Lcom/kwai/filedownloader/d/b;

    if-nez v1, :cond_d

    monitor-exit v0

    return-object p0

    :cond_d
    monitor-exit v0

    goto :goto_12

    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p1

    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/kwai/filedownloader/c;->j:Lcom/kwai/filedownloader/d/b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/d/b;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Z)Lcom/kwai/filedownloader/a;
    .registers 2

    iput-boolean p1, p0, Lcom/kwai/filedownloader/c;->o:Z

    return-object p0
.end method

.method public b()Z
    .registers 4

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->c()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "This task[%d] is running, if you want start the same task, please create a new one by FileDownloader#create"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1a
    iput v2, p0, Lcom/kwai/filedownloader/c;->a:I

    iput-boolean v2, p0, Lcom/kwai/filedownloader/c;->s:Z

    iput-boolean v2, p0, Lcom/kwai/filedownloader/c;->v:Z

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->b:Lcom/kwai/filedownloader/w;

    invoke-interface {v0}, Lcom/kwai/filedownloader/w;->i()V

    return v1
.end method

.method public b(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->h()I

    move-result v0

    if-ne v0, p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/c;->h:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .registers 2

    invoke-static {}, Lcom/kwai/filedownloader/q;->a()Lcom/kwai/filedownloader/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/q;->e()Lcom/kwai/filedownloader/u;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/kwai/filedownloader/u;->a(Lcom/kwai/filedownloader/a$b;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->v()B

    move-result v0

    invoke-static {v0}, Lcom/kwai/filedownloader/d/d;->b(I)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/c;->a:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public e()I
    .registers 3

    iget-boolean v0, p0, Lcom/kwai/filedownloader/c;->s:Z

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/kwai/filedownloader/c;->T()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you start the task manually, it means this task doesn\'t belong to a queue, so you must not invoke BaseDownloadTask#ready() or InQueueTask#enqueue() before you start() this method. For detail: If this task doesn\'t belong to a queue, what is just an isolated task, you just need to invoke BaseDownloadTask#start() to start this task, that\'s all. In other words, If this task doesn\'t belong to a queue, you must not invoke BaseDownloadTask#ready() method or InQueueTask#enqueue() method before invoke BaseDownloadTask#start(), If you do that and if there is the same listener object to start a queue in another thread, this task may be assembled by the queue, in that case, when you invoke BaseDownloadTask#start() manually to start this task or this task is started by the queue, there is an exception buried in there, because this task object is started two times without declare BaseDownloadTask#reuse() : 1. you invoke BaseDownloadTask#start() manually;  2. the queue start this task automatically."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/kwai/filedownloader/c;->b:Lcom/kwai/filedownloader/w;

    invoke-interface {v1}, Lcom/kwai/filedownloader/w;->f()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public g()Z
    .registers 2

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->f()Z

    move-result v0

    return v0
.end method

.method public h()I
    .registers 4

    iget v0, p0, Lcom/kwai/filedownloader/c;->d:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    iget-object v0, p0, Lcom/kwai/filedownloader/c;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/kwai/filedownloader/c;->g:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/kwai/filedownloader/c;->i:Z

    invoke-static {v0, v1, v2}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/kwai/filedownloader/c;->d:I

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/c;->p:I

    return v0
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/c;->q:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/c;->i:Z

    return v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->m()Z

    move-result v1

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Lcom/kwai/filedownloader/i;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->k:Lcom/kwai/filedownloader/i;

    return-object v0
.end method

.method public q()I
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->b:Lcom/kwai/filedownloader/w;

    invoke-interface {v0}, Lcom/kwai/filedownloader/w;->j()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    const v0, 0x7fffffff

    return v0

    :cond_11
    iget-object v0, p0, Lcom/kwai/filedownloader/c;->b:Lcom/kwai/filedownloader/w;

    invoke-interface {v0}, Lcom/kwai/filedownloader/w;->j()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public r()J
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->b:Lcom/kwai/filedownloader/w;

    invoke-interface {v0}, Lcom/kwai/filedownloader/w;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public s()I
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->b:Lcom/kwai/filedownloader/w;

    invoke-interface {v0}, Lcom/kwai/filedownloader/w;->k()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    const v0, 0x7fffffff

    return v0

    :cond_11
    iget-object v0, p0, Lcom/kwai/filedownloader/c;->b:Lcom/kwai/filedownloader/w;

    invoke-interface {v0}, Lcom/kwai/filedownloader/w;->k()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public t()J
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->b:Lcom/kwai/filedownloader/w;

    invoke-interface {v0}, Lcom/kwai/filedownloader/w;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/kwai/filedownloader/c;->h()I

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

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->b:Lcom/kwai/filedownloader/w;

    invoke-interface {v0}, Lcom/kwai/filedownloader/w;->b()I

    move-result v0

    return v0
.end method

.method public v()B
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->b:Lcom/kwai/filedownloader/w;

    invoke-interface {v0}, Lcom/kwai/filedownloader/w;->g()B

    move-result v0

    return v0
.end method

.method public w()J
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->b:Lcom/kwai/filedownloader/w;

    invoke-interface {v0}, Lcom/kwai/filedownloader/w;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public x()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/c;->r:Z

    return v0
.end method

.method public y()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->b:Lcom/kwai/filedownloader/w;

    invoke-interface {v0}, Lcom/kwai/filedownloader/w;->l()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/c;->l:Ljava/lang/Object;

    return-object v0
.end method
