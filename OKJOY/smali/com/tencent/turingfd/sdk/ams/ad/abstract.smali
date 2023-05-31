.class public Lcom/tencent/turingfd/sdk/ams/ad/abstract;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/turingfd/sdk/ams/ad/continue;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic Dc:Ljava/lang/String;

.field public final synthetic Ec:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/continue;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->Dc:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->Ec:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->Ec:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_2d

    move-result-object v0

    const-string v1, ".turingdebug"

    :try_start_8
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b([B[B)[B

    move-result-object v0

    .line 2
    iget-object v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->Dc:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_12} :catch_2d

    const/4 v2, 0x0

    .line 3
    :try_start_13
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1d} :catch_35
    .catchall {:try_start_13 .. :try_end_1d} :catchall_2f

    .line 4
    :try_start_1d
    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_23} :catch_27
    .catchall {:try_start_1d .. :try_end_23} :catchall_38

    .line 6
    :try_start_23
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Ljava/io/Closeable;)V

    :goto_26
    return-void

    :catch_27
    move-exception v0

    move-object v0, v1

    :goto_29
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Ljava/io/Closeable;)V

    goto :goto_26

    :catch_2d
    move-exception v0

    goto :goto_26

    :catchall_2f
    move-exception v0

    move-object v1, v2

    :goto_31
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_35} :catch_2d

    :catch_35
    move-exception v0

    move-object v0, v2

    goto :goto_29

    :catchall_38
    move-exception v0

    goto :goto_31
.end method
