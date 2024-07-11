.class public Lcom/kwai/filedownloader/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/q$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final c:Ljava/lang/Object;


# instance fields
.field private b:Lcom/kwai/filedownloader/v;

.field private d:Lcom/kwai/filedownloader/u;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kwai/filedownloader/q;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kwai/filedownloader/q;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/kwai/filedownloader/q;
    .registers 1

    invoke-static {}, Lcom/kwai/filedownloader/q$a;->a()Lcom/kwai/filedownloader/q;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/kwai/filedownloader/services/c$a;)V
    .registers 5

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_14

    const-class v0, Lcom/kwai/filedownloader/q;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "init Downloader with params: %s %s"

    invoke-static {v0, v2, v1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    if-eqz p0, :cond_25

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/kwai/filedownloader/f/c;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/kwai/filedownloader/download/b;->a()Lcom/kwai/filedownloader/download/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/download/b;->a(Lcom/kwai/filedownloader/services/c$a;)V

    return-void

    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the provided context must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(I)I
    .registers 4

    invoke-static {}, Lcom/kwai/filedownloader/h;->a()Lcom/kwai/filedownloader/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/h;->c(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_2e

    :cond_11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwai/filedownloader/a$b;

    invoke-interface {v1}, Lcom/kwai/filedownloader/a$b;->F()Lcom/kwai/filedownloader/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->f()Z

    goto :goto_15

    :cond_29
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_2e
    :goto_2e
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "request pause but not exist %d"

    invoke-static {p0, p1, v0}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public a(Ljava/lang/String;)Lcom/kwai/filedownloader/a;
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/c;

    invoke-direct {v0, p1}, Lcom/kwai/filedownloader/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/kwai/filedownloader/e;)V
    .registers 4

    invoke-static {}, Lcom/kwai/filedownloader/f;->a()Lcom/kwai/filedownloader/f;

    move-result-object v0

    const-string v1, "event.service.connect.changed"

    invoke-virtual {v0, v1, p1}, Lcom/kwai/filedownloader/f;->a(Ljava/lang/String;Lcom/kwai/filedownloader/event/c;)Z

    return-void
.end method

.method public a(ILjava/lang/String;)Z
    .registers 5

    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/q;->a(I)I

    invoke-static {}, Lcom/kwai/filedownloader/m;->a()Lcom/kwai/filedownloader/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/m;->c(I)Z

    move-result p1

    if-eqz p1, :cond_36

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_15

    return v0

    :cond_15
    new-instance p1, Ljava/io/File;

    invoke-static {p2}, Lcom/kwai/filedownloader/f/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_27
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_35

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_35
    return v0

    :cond_36
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .registers 3

    invoke-virtual {p0}, Lcom/kwai/filedownloader/q;->c()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/kwai/filedownloader/m;->a()Lcom/kwai/filedownloader/m;

    move-result-object v0

    invoke-static {}, Lcom/kwai/filedownloader/f/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/m;->a(Landroid/content/Context;)V

    :cond_11
    return-void
.end method

.method public c()Z
    .registers 2

    invoke-static {}, Lcom/kwai/filedownloader/m;->a()Lcom/kwai/filedownloader/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/m;->c()Z

    move-result v0

    return v0
.end method

.method d()Lcom/kwai/filedownloader/v;
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/q;->b:Lcom/kwai/filedownloader/v;

    if-nez v0, :cond_17

    sget-object v0, Lcom/kwai/filedownloader/q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/kwai/filedownloader/q;->b:Lcom/kwai/filedownloader/v;

    if-nez v1, :cond_12

    new-instance v1, Lcom/kwai/filedownloader/aa;

    invoke-direct {v1}, Lcom/kwai/filedownloader/aa;-><init>()V

    iput-object v1, p0, Lcom/kwai/filedownloader/q;->b:Lcom/kwai/filedownloader/v;

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
    iget-object v0, p0, Lcom/kwai/filedownloader/q;->b:Lcom/kwai/filedownloader/v;

    return-object v0
.end method

.method e()Lcom/kwai/filedownloader/u;
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/q;->d:Lcom/kwai/filedownloader/u;

    if-nez v0, :cond_1c

    sget-object v0, Lcom/kwai/filedownloader/q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/kwai/filedownloader/q;->d:Lcom/kwai/filedownloader/u;

    if-nez v1, :cond_17

    new-instance v1, Lcom/kwai/filedownloader/y;

    invoke-direct {v1}, Lcom/kwai/filedownloader/y;-><init>()V

    iput-object v1, p0, Lcom/kwai/filedownloader/q;->d:Lcom/kwai/filedownloader/u;

    check-cast v1, Lcom/kwai/filedownloader/e;

    invoke-virtual {p0, v1}, Lcom/kwai/filedownloader/q;->a(Lcom/kwai/filedownloader/e;)V

    :cond_17
    monitor-exit v0

    goto :goto_1c

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1

    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/kwai/filedownloader/q;->d:Lcom/kwai/filedownloader/u;

    return-object v0
.end method
