.class Lcom/tendcloud/tenddata/game/dr$b;
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
    name = "b"
.end annotation


# instance fields
.field private final mFolderPath:Ljava/lang/String;

.field private final mOperation:Lcom/tendcloud/tenddata/game/dq;

.field final synthetic this$0:Lcom/tendcloud/tenddata/game/dr;


# direct methods
.method private constructor <init>(Lcom/tendcloud/tenddata/game/dr;Lcom/tendcloud/tenddata/game/dq;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;)V
    .registers 6

    .line 545
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/dr$b;->this$0:Lcom/tendcloud/tenddata/game/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 547
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 550
    :cond_2c
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 551
    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/a;->getDataFolder()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/dr$b;->mFolderPath:Ljava/lang/String;

    .line 552
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/dr$b;->mOperation:Lcom/tendcloud/tenddata/game/dq;

    .line 553
    return-void
.end method

.method synthetic constructor <init>(Lcom/tendcloud/tenddata/game/dr;Lcom/tendcloud/tenddata/game/dq;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Lcom/tendcloud/tenddata/game/ds;)V
    .registers 6

    .line 541
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tendcloud/tenddata/game/dr$b;-><init>(Lcom/tendcloud/tenddata/game/dr;Lcom/tendcloud/tenddata/game/dq;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 558
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/dr$b;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/dr$b;->mOperation:Lcom/tendcloud/tenddata/game/dq;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/dq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 559
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 561
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    .line 576
    :cond_2d
    goto :goto_32

    .line 571
    :catchall_2e
    move-exception v0

    .line 575
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 577
    :goto_32
    return-void
.end method
