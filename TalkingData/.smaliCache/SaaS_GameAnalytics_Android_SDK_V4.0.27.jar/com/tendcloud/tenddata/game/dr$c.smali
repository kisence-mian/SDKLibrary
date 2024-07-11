.class Lcom/tendcloud/tenddata/game/dr$c;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/dr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private callback:Lcom/tendcloud/tenddata/game/dt;

.field private features:Lcom/tendcloud/tenddata/game/a;

.field private mFolderPath:Ljava/lang/String;

.field private final mOperation:Lcom/tendcloud/tenddata/game/dq;

.field final synthetic this$0:Lcom/tendcloud/tenddata/game/dr;


# direct methods
.method private constructor <init>(Lcom/tendcloud/tenddata/game/dr;Lcom/tendcloud/tenddata/game/dq;Lcom/tendcloud/tenddata/game/dl;)V
    .registers 6

    .line 388
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/dr$c;->this$0:Lcom/tendcloud/tenddata/game/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/a;->getDataFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dr$c;->mFolderPath:Ljava/lang/String;

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p3, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->getRootFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p3, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    .line 392
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->getDataFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/dr$c;->mFolderPath:Ljava/lang/String;

    .line 393
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/dr$c;->mOperation:Lcom/tendcloud/tenddata/game/dq;

    .line 394
    iget-object p1, p3, Lcom/tendcloud/tenddata/game/dl;->f:Lcom/tendcloud/tenddata/game/dt;

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/dr$c;->callback:Lcom/tendcloud/tenddata/game/dt;

    .line 395
    iget-object p1, p3, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/dr$c;->features:Lcom/tendcloud/tenddata/game/a;

    .line 396
    return-void
.end method

.method synthetic constructor <init>(Lcom/tendcloud/tenddata/game/dr;Lcom/tendcloud/tenddata/game/dq;Lcom/tendcloud/tenddata/game/dl;Lcom/tendcloud/tenddata/game/ds;)V
    .registers 5

    .line 381
    invoke-direct {p0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/dr$c;-><init>(Lcom/tendcloud/tenddata/game/dr;Lcom/tendcloud/tenddata/game/dq;Lcom/tendcloud/tenddata/game/dl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 400
    nop

    .line 402
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/dr$c;->mFolderPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 404
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 405
    if-nez v2, :cond_1d

    .line 443
    nop

    .line 406
    return-void

    .line 409
    :cond_1d
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/dr$c;->this$0:Lcom/tendcloud/tenddata/game/dr;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/dr$c;->features:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v2, v1, v3}, Lcom/tendcloud/tenddata/game/dr;->a(Lcom/tendcloud/tenddata/game/dr;Ljava/io/File;Lcom/tendcloud/tenddata/game/a;)V

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/dr$c;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/dr$c;->mOperation:Lcom/tendcloud/tenddata/game/dq;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/dq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 411
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_56

    .line 413
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v1

    .line 414
    if-nez v1, :cond_56

    .line 443
    nop

    .line 415
    return-void

    .line 418
    :cond_56
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_2 .. :try_end_5d} :catchall_95

    .line 420
    const-wide/16 v2, 0x1

    :try_start_5f
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 426
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dr$c;->mOperation:Lcom/tendcloud/tenddata/game/dq;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/dq;->d()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 427
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dr$c;->mOperation:Lcom/tendcloud/tenddata/game/dq;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/dq;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 428
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dr$c;->mOperation:Lcom/tendcloud/tenddata/game/dq;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/dq;->c()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 429
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 431
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dr$c;->callback:Lcom/tendcloud/tenddata/game/dt;

    if-eqz v0, :cond_8b

    .line 432
    invoke-interface {v0}, Lcom/tendcloud/tenddata/game/dt;->onStoreSuccess()V
    :try_end_8b
    .catchall {:try_start_5f .. :try_end_8b} :catchall_90

    .line 443
    :cond_8b
    nop

    .line 445
    :try_start_8c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_a6

    goto :goto_a5

    .line 434
    :catchall_90
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_96

    :catchall_95
    move-exception v1

    .line 435
    :goto_96
    :try_start_96
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/dr$c;->callback:Lcom/tendcloud/tenddata/game/dt;

    if-eqz v2, :cond_9d

    .line 436
    invoke-interface {v2}, Lcom/tendcloud/tenddata/game/dt;->onStoreFailed()V

    .line 441
    :cond_9d
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_a9

    .line 443
    if-eqz v0, :cond_a8

    .line 445
    :try_start_a2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_a6

    .line 450
    :goto_a5
    goto :goto_a8

    .line 446
    :catchall_a6
    move-exception v0

    goto :goto_a5

    .line 453
    :cond_a8
    :goto_a8
    return-void

    .line 443
    :catchall_a9
    move-exception v1

    if-eqz v0, :cond_b1

    .line 445
    :try_start_ac
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_b0

    .line 450
    goto :goto_b1

    .line 446
    :catchall_b0
    move-exception v0

    .line 450
    :cond_b1
    :goto_b1
    goto :goto_b3

    :goto_b2
    throw v1

    :goto_b3
    goto :goto_b2
.end method
