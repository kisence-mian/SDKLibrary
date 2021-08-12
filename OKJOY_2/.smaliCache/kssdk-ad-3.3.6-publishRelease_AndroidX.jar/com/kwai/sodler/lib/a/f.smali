.class public abstract Lcom/kwai/sodler/lib/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/kwai/sodler/lib/a/a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I

.field protected c:I

.field protected d:Ljava/lang/StringBuffer;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Z

.field protected h:Lcom/kwai/sodler/lib/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field protected i:Lcom/kwai/sodler/lib/ext/b;

.field protected j:Lcom/kwai/sodler/lib/a/e;

.field protected k:Ljava/lang/Throwable;

.field protected l:J

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwai/sodler/lib/b/a;",
            ">;"
        }
    .end annotation
.end field

.field protected p:Lcom/kwai/sodler/lib/b/b;

.field private final q:[B

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/kwai/sodler/lib/a/f;->c:I

    const/16 v0, -0x8b9

    iput v0, p0, Lcom/kwai/sodler/lib/a/f;->b:I

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/kwai/sodler/lib/a/f;->q:[B

    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/kwai/sodler/lib/a/f;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kwai/sodler/lib/a/f;->d:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Lcom/kwai/sodler/lib/a/a;
.end method

.method public a(I)Lcom/kwai/sodler/lib/a/f;
    .registers 3

    iget-object v0, p0, Lcom/kwai/sodler/lib/a/f;->q:[B

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lcom/kwai/sodler/lib/a/f;->c:I

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kwai/sodler/lib/a/f;->c(Ljava/lang/String;)Lcom/kwai/sodler/lib/a/f;

    move-result-object p1

    return-object p1

    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public a(Lcom/kwai/sodler/lib/a/e;)Lcom/kwai/sodler/lib/a/f;
    .registers 2

    iput-object p1, p0, Lcom/kwai/sodler/lib/a/f;->j:Lcom/kwai/sodler/lib/a/e;

    return-object p0
.end method

.method public a(Ljava/lang/Throwable;)Lcom/kwai/sodler/lib/a/f;
    .registers 2

    iput-object p1, p0, Lcom/kwai/sodler/lib/a/f;->k:Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kwai/sodler/lib/a/f;->c(Ljava/lang/String;)Lcom/kwai/sodler/lib/a/f;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/sodler/lib/a/f;->r:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-wide p1, p0, Lcom/kwai/sodler/lib/a/f;->l:J

    return-void
.end method

.method public a(Lcom/kwai/sodler/lib/a/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kwai/sodler/lib/a/f;->h:Lcom/kwai/sodler/lib/a/a;

    return-void
.end method

.method public a(Lcom/kwai/sodler/lib/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwai/sodler/lib/a/f;->p:Lcom/kwai/sodler/lib/b/b;

    return-void
.end method

.method public a(Lcom/kwai/sodler/lib/ext/PluginError$UpdateError;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public a(Lcom/kwai/sodler/lib/ext/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwai/sodler/lib/a/f;->i:Lcom/kwai/sodler/lib/ext/b;

    return-void
.end method

.method public b()Lcom/kwai/sodler/lib/a/e;
    .registers 2

    iget-object v0, p0, Lcom/kwai/sodler/lib/a/f;->j:Lcom/kwai/sodler/lib/a/e;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    if-lez p1, :cond_4

    iput p1, p0, Lcom/kwai/sodler/lib/a/f;->b:I

    :cond_4
    return-void
.end method

.method public b(Lcom/kwai/sodler/lib/ext/PluginError$UpdateError;)V
    .registers 2

    const/4 p1, -0x3

    invoke-virtual {p0, p1}, Lcom/kwai/sodler/lib/a/f;->a(I)Lcom/kwai/sodler/lib/a/f;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kwai/sodler/lib/a/f;->r:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .registers 3

    iget-object v0, p0, Lcom/kwai/sodler/lib/a/f;->q:[B

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/kwai/sodler/lib/a/f;->c:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public c(Ljava/lang/String;)Lcom/kwai/sodler/lib/a/f;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/kwai/sodler/lib/a/f;->d:Ljava/lang/StringBuffer;

    const-string v1, " --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/sodler/lib/a/f;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kwai/sodler/lib/a/f;->e:Ljava/lang/String;

    return-void
.end method

.method public e()V
    .registers 3

    iget-object v0, p0, Lcom/kwai/sodler/lib/a/f;->q:[B

    monitor-enter v0

    const/4 v1, -0x7

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/kwai/sodler/lib/a/f;->a(I)Lcom/kwai/sodler/lib/a/f;

    monitor-exit v0

    return-void

    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kwai/sodler/lib/a/f;->f:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kwai/sodler/lib/a/f;->m:Ljava/lang/String;

    return-void
.end method

.method public f()Z
    .registers 3

    iget v0, p0, Lcom/kwai/sodler/lib/a/f;->c:I

    const/4 v1, -0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public g()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lcom/kwai/sodler/lib/a/f;->k:Ljava/lang/Throwable;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kwai/sodler/lib/a/f;->n:Ljava/lang/String;

    return-void
.end method

.method protected h(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/kwai/sodler/lib/b/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/kwai/sodler/lib/a/f;->j:Lcom/kwai/sodler/lib/a/e;

    invoke-interface {v1}, Lcom/kwai/sodler/lib/a/e;->e()Lcom/kwai/sodler/lib/a/c;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/kwai/sodler/lib/a/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_37

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No local plugin, path = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "plugin.request"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_37
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_3d
    if-ge v3, v2, :cond_5f

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/kwai/sodler/lib/a/f;->j:Lcom/kwai/sodler/lib/a/e;

    invoke-interface {v5}, Lcom/kwai/sodler/lib/a/e;->e()Lcom/kwai/sodler/lib/a/c;

    move-result-object v5

    invoke-interface {v5, p1, v4}, Lcom/kwai/sodler/lib/a/c;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    new-instance v5, Lcom/kwai/sodler/lib/b/a;

    invoke-direct {v5}, Lcom/kwai/sodler/lib/b/a;-><init>()V

    iput-object p1, v5, Lcom/kwai/sodler/lib/b/a;->a:Ljava/lang/String;

    iput-object v4, v5, Lcom/kwai/sodler/lib/b/a;->b:Ljava/lang/String;

    const/4 v4, 0x1

    iput-boolean v4, v5, Lcom/kwai/sodler/lib/b/a;->c:Z

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :cond_5f
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public h()V
    .registers 2

    iget v0, p0, Lcom/kwai/sodler/lib/a/f;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/kwai/sodler/lib/a/f;->b:I

    if-ltz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Lcom/kwai/sodler/lib/ext/PluginError$RetryError;

    invoke-direct {v0}, Lcom/kwai/sodler/lib/ext/PluginError$RetryError;-><init>()V

    throw v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/sodler/lib/a/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/sodler/lib/a/f;->g:Z

    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/sodler/lib/a/f;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/kwai/sodler/lib/a/f;->e:Ljava/lang/String;

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/kwai/sodler/lib/a/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcom/kwai/sodler/lib/a/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwai/sodler/lib/a/f;->h:Lcom/kwai/sodler/lib/a/a;

    return-object v0
.end method

.method public m()Lcom/kwai/sodler/lib/ext/b;
    .registers 2

    iget-object v0, p0, Lcom/kwai/sodler/lib/a/f;->i:Lcom/kwai/sodler/lib/ext/b;

    return-object v0
.end method

.method public n()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/sodler/lib/a/f;->m:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/sodler/lib/a/f;->n:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kwai/sodler/lib/b/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwai/sodler/lib/a/f;->o:Ljava/util/List;

    return-object v0
.end method

.method public s()Lcom/kwai/sodler/lib/b/b;
    .registers 2

    iget-object v0, p0, Lcom/kwai/sodler/lib/a/f;->p:Lcom/kwai/sodler/lib/b/b;

    return-object v0
.end method

.method public t()V
    .registers 3

    invoke-virtual {p0}, Lcom/kwai/sodler/lib/a/f;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/kwai/sodler/lib/a/f;->o:Ljava/util/List;

    if-nez v1, :cond_14

    invoke-virtual {p0, v0}, Lcom/kwai/sodler/lib/a/f;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/sodler/lib/a/f;->o:Ljava/util/List;

    :cond_14
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PluginRequest{mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/sodler/lib/a/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
