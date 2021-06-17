.class Lcom/tendcloud/tenddata/game/dr$a;
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
    name = "a"
.end annotation


# instance fields
.field private final mFolderPath:Ljava/lang/String;

.field private final mNewFolder:Ljava/lang/String;

.field private final mQueue:Ljava/util/TreeSet;

.field final synthetic this$0:Lcom/tendcloud/tenddata/game/dr;


# direct methods
.method private constructor <init>(Lcom/tendcloud/tenddata/game/dr;Lcom/tendcloud/tenddata/game/a;)V
    .registers 5

    .line 475
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/dr$a;->this$0:Lcom/tendcloud/tenddata/game/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 477
    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->getDataFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dr$a;->mFolderPath:Ljava/lang/String;

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->getRootFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 479
    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->getDataFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dr$a;->mNewFolder:Ljava/lang/String;

    .line 480
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/dr;->a(Lcom/tendcloud/tenddata/game/dr;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/TreeSet;

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/dr$a;->mQueue:Ljava/util/TreeSet;

    .line 481
    return-void
.end method

.method synthetic constructor <init>(Lcom/tendcloud/tenddata/game/dr;Lcom/tendcloud/tenddata/game/a;Lcom/tendcloud/tenddata/game/ds;)V
    .registers 4

    .line 470
    invoke-direct {p0, p1, p2}, Lcom/tendcloud/tenddata/game/dr$a;-><init>(Lcom/tendcloud/tenddata/game/dr;Lcom/tendcloud/tenddata/game/a;)V

    return-void
.end method

.method private deleteFile(Ljava/lang/String;Lcom/tendcloud/tenddata/game/dq;)V
    .registers 4

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/dq;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 523
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 528
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 538
    :cond_29
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dr$a;->mQueue:Ljava/util/TreeSet;

    if-eqz v0, :cond_47

    .line 487
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    .line 492
    :goto_7
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dr$a;->mQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    .line 494
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dr$a;->mQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/dq;

    .line 495
    if-eqz v0, :cond_41

    .line 496
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/dr$a;->mFolderPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 498
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/tendcloud/tenddata/game/dr$a;->deleteFile(Ljava/lang/String;Lcom/tendcloud/tenddata/game/dq;)V

    .line 500
    :cond_2d
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/dr$a;->mNewFolder:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 502
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/tendcloud/tenddata/game/dr$a;->deleteFile(Ljava/lang/String;Lcom/tendcloud/tenddata/game/dq;)V

    .line 510
    :cond_41
    goto :goto_7

    .line 511
    :cond_42
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dr$a;->mQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V
    :try_end_47
    .catchall {:try_start_0 .. :try_end_47} :catchall_48

    .line 518
    :cond_47
    goto :goto_4c

    .line 513
    :catchall_48
    move-exception v0

    .line 517
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 519
    :goto_4c
    return-void
.end method
