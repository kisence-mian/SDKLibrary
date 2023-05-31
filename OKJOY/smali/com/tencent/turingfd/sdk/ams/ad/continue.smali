.class public Lcom/tencent/turingfd/sdk/ams/ad/continue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Zb:Lcom/tencent/turingfd/sdk/ams/ad/break;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/turingfd/sdk/ams/ad/break",
            "<",
            "Lcom/tencent/turingfd/sdk/ams/ad/continue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/private;

    invoke-direct {v0}, Lcom/tencent/turingfd/sdk/ams/ad/private;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/continue;->Zb:Lcom/tencent/turingfd/sdk/ams/ad/break;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/turingfd/sdk/ams/ad/continue;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/continue;->Zb:Lcom/tencent/turingfd/sdk/ams/ad/break;

    invoke-virtual {v0}, Lcom/tencent/turingfd/sdk/ams/ad/break;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/turingfd/sdk/ams/ad/continue;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 1
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/continue;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 3
    invoke-virtual {p0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/continue;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 7
    :cond_a
    :goto_a
    return-void

    .line 5
    :cond_b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    .line 6
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/abstract;

    invoke-direct {v1, p0, v0, p2}, Lcom/tencent/turingfd/sdk/ams/ad/abstract;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/continue;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_a
.end method

.method public b(Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 1
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/continue;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_4b

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".turingdebug"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4a
    return-object v0

    :catch_4b
    move-exception v0

    const-string v0, ""

    goto :goto_4a
.end method
