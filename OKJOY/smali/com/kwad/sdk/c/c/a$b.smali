.class Lcom/kwad/sdk/c/c/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/c/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/io/BufferedOutputStream;

.field private volatile b:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/c/c/a$b;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/c/c/a$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/c/c/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/kwad/sdk/c/c/a$b;->b:Z

    if-eqz v0, :cond_82

    :try_start_4
    invoke-static {}, Lcom/kwad/sdk/c/c/a;->b()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_45

    :cond_16
    invoke-static {}, Lcom/kwad/sdk/c/c/a;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_40

    :try_start_1b
    invoke-static {}, Lcom/kwad/sdk/c/c/a;->a()Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_7f

    :try_start_25
    invoke-static {}, Lcom/kwad/sdk/c/c/a;->b()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kwad/sdk/c/c/a$b;->a:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kwad/sdk/c/c/a$b;->a:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_38} :catch_39

    goto :goto_0

    :catch_39
    move-exception v0

    :try_start_3a
    iget-object v0, p0, Lcom/kwad/sdk/c/c/a$b;->a:Ljava/io/BufferedOutputStream;

    :goto_3c
    invoke-static {v0}, Lcom/kwad/sdk/c/c/a;->a(Ljava/io/OutputStream;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3f} :catch_40

    goto :goto_0

    :catch_40
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_45
    :try_start_45
    invoke-static {}, Lcom/kwad/sdk/c/c/a;->c()Ljava/io/BufferedOutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/c/c/a$b;->a:Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/kwad/sdk/c/c/a$b;->a:Ljava/io/BufferedOutputStream;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4d} :catch_40

    if-eqz v1, :cond_0

    :try_start_4f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/kwad/sdk/c/c/a$b;->a:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_68} :catch_69
    .catchall {:try_start_4f .. :try_end_68} :catchall_78

    goto :goto_53

    :catch_69
    move-exception v0

    :try_start_6a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_78

    :try_start_6d
    iget-object v0, p0, Lcom/kwad/sdk/c/c/a$b;->a:Ljava/io/BufferedOutputStream;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6f} :catch_40

    goto :goto_3c

    :cond_70
    :try_start_70
    iget-object v0, p0, Lcom/kwad/sdk/c/c/a$b;->a:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_75} :catch_69
    .catchall {:try_start_70 .. :try_end_75} :catchall_78

    :try_start_75
    iget-object v0, p0, Lcom/kwad/sdk/c/c/a$b;->a:Ljava/io/BufferedOutputStream;

    goto :goto_3c

    :catchall_78
    move-exception v0

    iget-object v1, p0, Lcom/kwad/sdk/c/c/a$b;->a:Ljava/io/BufferedOutputStream;

    invoke-static {v1}, Lcom/kwad/sdk/c/c/a;->a(Ljava/io/OutputStream;)V

    throw v0
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7f} :catch_40

    :catchall_7f
    move-exception v0

    :try_start_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    :try_start_81
    throw v0
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_82} :catch_40

    :cond_82
    return-void
.end method
