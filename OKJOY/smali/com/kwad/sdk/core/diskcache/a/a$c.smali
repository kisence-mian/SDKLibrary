.class public final Lcom/kwad/sdk/core/diskcache/a/a$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/diskcache/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/diskcache/a/a$c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/kwad/sdk/core/diskcache/a/a$d;

.field private final b:[Z

.field private c:Z

.field final synthetic d:Lcom/kwad/sdk/core/diskcache/a/a;


# direct methods
.method private constructor <init>(Lcom/kwad/sdk/core/diskcache/a/a;Lcom/kwad/sdk/core/diskcache/a/a$d;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/a$c;->d:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kwad/sdk/core/diskcache/a/a$c;->a:Lcom/kwad/sdk/core/diskcache/a/a$d;

    invoke-static {p2}, Lcom/kwad/sdk/core/diskcache/a/a$d;->d(Lcom/kwad/sdk/core/diskcache/a/a$d;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$c;->b:[Z

    return-void

    :cond_11
    invoke-static {p1}, Lcom/kwad/sdk/core/diskcache/a/a;->c(Lcom/kwad/sdk/core/diskcache/a/a;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_e
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/core/diskcache/a/a;Lcom/kwad/sdk/core/diskcache/a/a$d;Lcom/kwad/sdk/core/diskcache/a/a$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/diskcache/a/a$c;-><init>(Lcom/kwad/sdk/core/diskcache/a/a;Lcom/kwad/sdk/core/diskcache/a/a$d;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/a/a$c;)Lcom/kwad/sdk/core/diskcache/a/a$d;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$c;->a:Lcom/kwad/sdk/core/diskcache/a/a$d;

    return-object v0
.end method

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/a/a$c;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/core/diskcache/a/a$c;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/kwad/sdk/core/diskcache/a/a$c;)[Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$c;->b:[Z

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .registers 6

    if-ltz p1, :cond_57

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$c;->d:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a;->c(Lcom/kwad/sdk/core/diskcache/a/a;)I

    move-result v0

    if-ge p1, v0, :cond_57

    iget-object v2, p0, Lcom/kwad/sdk/core/diskcache/a/a$c;->d:Lcom/kwad/sdk/core/diskcache/a/a;

    monitor-enter v2

    :try_start_d
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$c;->a:Lcom/kwad/sdk/core/diskcache/a/a$d;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$d;->e(Lcom/kwad/sdk/core/diskcache/a/a$d;)Lcom/kwad/sdk/core/diskcache/a/a$c;

    move-result-object v0

    if-ne v0, p0, :cond_51

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$c;->a:Lcom/kwad/sdk/core/diskcache/a/a$d;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$d;->d(Lcom/kwad/sdk/core/diskcache/a/a$d;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$c;->b:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    :cond_22
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$c;->a:Lcom/kwad/sdk/core/diskcache/a/a$d;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/diskcache/a/a$d;->b(I)Ljava/io/File;
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_4e

    move-result-object v1

    :try_start_28
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_2d} :catch_36
    .catchall {:try_start_28 .. :try_end_2d} :catchall_4e

    move-object v1, v0

    :goto_2e
    :try_start_2e
    new-instance v0, Lcom/kwad/sdk/core/diskcache/a/a$c$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/kwad/sdk/core/diskcache/a/a$c$a;-><init>(Lcom/kwad/sdk/core/diskcache/a/a$c;Ljava/io/OutputStream;Lcom/kwad/sdk/core/diskcache/a/a$a;)V

    monitor-exit v2

    :goto_35
    return-object v0

    :catch_36
    move-exception v0

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$c;->d:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a;->d(Lcom/kwad/sdk/core/diskcache/a/a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_40
    .catchall {:try_start_2e .. :try_end_40} :catchall_4e

    :try_start_40
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_45} :catch_47
    .catchall {:try_start_40 .. :try_end_45} :catchall_4e

    move-object v1, v0

    goto :goto_2e

    :catch_47
    move-exception v0

    :try_start_48
    invoke-static {}, Lcom/kwad/sdk/core/diskcache/a/a;->d()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2

    goto :goto_35

    :catchall_4e
    move-exception v0

    monitor-exit v2
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_4e

    throw v0

    :cond_51
    :try_start_51
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_4e

    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to be greater than 0 and less than the maximum value count of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/diskcache/a/a$c;->d:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {v2}, Lcom/kwad/sdk/core/diskcache/a/a;->c(Lcom/kwad/sdk/core/diskcache/a/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$c;->d:Lcom/kwad/sdk/core/diskcache/a/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Lcom/kwad/sdk/core/diskcache/a/a;Lcom/kwad/sdk/core/diskcache/a/a$c;Z)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-boolean v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$c;->c:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$c;->d:Lcom/kwad/sdk/core/diskcache/a/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Lcom/kwad/sdk/core/diskcache/a/a;Lcom/kwad/sdk/core/diskcache/a/a$c;Z)V

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$c;->d:Lcom/kwad/sdk/core/diskcache/a/a;

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a$c;->a:Lcom/kwad/sdk/core/diskcache/a/a$d;

    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/a$d;->b(Lcom/kwad/sdk/core/diskcache/a/a$d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/diskcache/a/a;->b(Ljava/lang/String;)Z

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$c;->d:Lcom/kwad/sdk/core/diskcache/a/a;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Lcom/kwad/sdk/core/diskcache/a/a;Lcom/kwad/sdk/core/diskcache/a/a$c;Z)V

    goto :goto_15
.end method
