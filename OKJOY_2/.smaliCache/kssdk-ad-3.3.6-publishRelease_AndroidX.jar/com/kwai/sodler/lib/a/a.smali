.class public abstract Lcom/kwai/sodler/lib/a/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/io/File;

.field protected b:Ljava/lang/String;

.field protected c:Lcom/kwai/sodler/lib/ext/c;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Lcom/kwai/sodler/lib/b/b;

.field private g:Z

.field private final h:[B

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/kwai/sodler/lib/a/a;->h:[B

    iput-boolean v0, p0, Lcom/kwai/sodler/lib/a/a;->g:Z

    iput-object p1, p0, Lcom/kwai/sodler/lib/a/a;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/kwai/sodler/lib/a/a;->b:Ljava/lang/String;

    invoke-static {}, Lcom/kwai/sodler/lib/j;->a()Lcom/kwai/sodler/lib/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwai/sodler/lib/j;->b()Lcom/kwai/sodler/lib/ext/c;

    move-result-object p1

    iput-object p1, p0, Lcom/kwai/sodler/lib/a/a;->c:Lcom/kwai/sodler/lib/ext/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/kwai/sodler/lib/b/b;)Lcom/kwai/sodler/lib/a/a;
    .registers 2

    iput-object p1, p0, Lcom/kwai/sodler/lib/a/a;->f:Lcom/kwai/sodler/lib/b/b;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/sodler/lib/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kwai/sodler/lib/a/a;->e:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kwai/sodler/lib/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public final b()Z
    .registers 3

    iget-boolean v0, p0, Lcom/kwai/sodler/lib/a/a;->g:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    iget-object v0, p0, Lcom/kwai/sodler/lib/a/a;->h:[B

    monitor-enter v0

    :try_start_9
    iget-boolean v1, p0, Lcom/kwai/sodler/lib/a/a;->g:Z

    monitor-exit v0

    return v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/sodler/lib/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kwai/sodler/lib/a/a;->b:Ljava/lang/String;

    return-void
.end method

.method public final d()V
    .registers 3

    iget-boolean v0, p0, Lcom/kwai/sodler/lib/a/a;->g:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/kwai/sodler/lib/a/a;->h:[B

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lcom/kwai/sodler/lib/a/a;->g:Z

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/sodler/lib/a/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Plugin{, ApkPath = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/sodler/lib/a/a;->i:Ljava/lang/String;

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
