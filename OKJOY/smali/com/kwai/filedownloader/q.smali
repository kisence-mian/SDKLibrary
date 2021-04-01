.class public Lcom/kwai/filedownloader/q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/q$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/lang/Object;


# instance fields
.field private a:Lcom/kwai/filedownloader/w;

.field private b:Lcom/kwai/filedownloader/v;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kwai/filedownloader/q;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kwai/filedownloader/q;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/kwai/filedownloader/services/c$a;)V
    .registers 5

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-class v1, Lcom/kwai/filedownloader/q;

    const-string v2, "init Downloader with params: %s %s"

    invoke-static {v1, v2, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    if-eqz p0, :cond_25

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwai/filedownloader/h0/c;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/kwai/filedownloader/download/b;->h()Lcom/kwai/filedownloader/download/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/download/b;->b(Lcom/kwai/filedownloader/services/c$a;)V

    return-void

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the provided context must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e()Lcom/kwai/filedownloader/q;
    .registers 1

    invoke-static {}, Lcom/kwai/filedownloader/q$a;->a()Lcom/kwai/filedownloader/q;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/kwai/filedownloader/h;->b()Lcom/kwai/filedownloader/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/kwai/filedownloader/h;->b(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_11
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "request pause but not exist %d"

    invoke-static {p0, v2, v1}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1f
    return v0

    :cond_20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/a$b;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a$b;->w()Lcom/kwai/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->a()Z

    goto :goto_24

    :cond_38
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1f
.end method

.method public a(Ljava/lang/String;)Lcom/kwai/filedownloader/a;
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/c;

    invoke-direct {v0, p1}, Lcom/kwai/filedownloader/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a()V
    .registers 3

    invoke-virtual {p0}, Lcom/kwai/filedownloader/q;->d()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/kwai/filedownloader/m;->c()Lcom/kwai/filedownloader/m;

    move-result-object v0

    invoke-static {}, Lcom/kwai/filedownloader/h0/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/m;->a(Landroid/content/Context;)V

    :cond_11
    return-void
.end method

.method public a(Lcom/kwai/filedownloader/e;)V
    .registers 4

    invoke-static {}, Lcom/kwai/filedownloader/f;->a()Lcom/kwai/filedownloader/f;

    move-result-object v0

    const-string v1, "event.service.connect.changed"

    invoke-virtual {v0, v1, p1}, Lcom/kwai/filedownloader/event/a;->a(Ljava/lang/String;Lcom/kwai/filedownloader/event/d;)Z

    return-void
.end method

.method public a(ILjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/q;->a(I)I

    invoke-static {}, Lcom/kwai/filedownloader/m;->c()Lcom/kwai/filedownloader/m;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/kwai/filedownloader/m;->a(I)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    :goto_14
    return v0

    :cond_15
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Lcom/kwai/filedownloader/h0/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_27
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_14

    :cond_36
    const/4 v0, 0x0

    goto :goto_14
.end method

.method b()Lcom/kwai/filedownloader/v;
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/q;->b:Lcom/kwai/filedownloader/v;

    if-nez v0, :cond_1a

    sget-object v1, Lcom/kwai/filedownloader/q;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/kwai/filedownloader/q;->b:Lcom/kwai/filedownloader/v;

    if-nez v0, :cond_19

    new-instance v0, Lcom/kwai/filedownloader/z;

    invoke-direct {v0}, Lcom/kwai/filedownloader/z;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/q;->b:Lcom/kwai/filedownloader/v;

    iget-object v0, p0, Lcom/kwai/filedownloader/q;->b:Lcom/kwai/filedownloader/v;

    check-cast v0, Lcom/kwai/filedownloader/e;

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/q;->a(Lcom/kwai/filedownloader/e;)V

    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1d

    :cond_1a
    iget-object v0, p0, Lcom/kwai/filedownloader/q;->b:Lcom/kwai/filedownloader/v;

    return-object v0

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method c()Lcom/kwai/filedownloader/w;
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/q;->a:Lcom/kwai/filedownloader/w;

    if-nez v0, :cond_13

    sget-object v1, Lcom/kwai/filedownloader/q;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/kwai/filedownloader/q;->a:Lcom/kwai/filedownloader/w;

    if-nez v0, :cond_12

    new-instance v0, Lcom/kwai/filedownloader/b0;

    invoke-direct {v0}, Lcom/kwai/filedownloader/b0;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/q;->a:Lcom/kwai/filedownloader/w;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    iget-object v0, p0, Lcom/kwai/filedownloader/q;->a:Lcom/kwai/filedownloader/w;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public d()Z
    .registers 2

    invoke-static {}, Lcom/kwai/filedownloader/m;->c()Lcom/kwai/filedownloader/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/m;->a()Z

    move-result v0

    return v0
.end method
