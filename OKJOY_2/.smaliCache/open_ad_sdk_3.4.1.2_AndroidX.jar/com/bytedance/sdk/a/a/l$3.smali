.class final Lcom/bytedance/sdk/a/a/l$3;
.super Lcom/bytedance/sdk/a/a/a;
.source "Okio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/a/a/l;->c(Ljava/net/Socket;)Lcom/bytedance/sdk/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/net/Socket;


# direct methods
.method constructor <init>(Ljava/net/Socket;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/l$3;->b:Ljava/net/Socket;

    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a_()V
    .registers 6

    .line 265
    const-string v0, "Failed to close timed out socket "

    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/l$3;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_2b
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_7} :catch_8

    goto :goto_46

    .line 268
    :catch_8
    move-exception v1

    .line 269
    invoke-static {v1}, Lcom/bytedance/sdk/a/a/l;->a(Ljava/lang/AssertionError;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 272
    sget-object v2, Lcom/bytedance/sdk/a/a/l;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/a/a/l$3;->b:Ljava/net/Socket;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_47

    .line 274
    :cond_2a
    throw v1

    .line 266
    :catch_2b
    move-exception v1

    .line 267
    sget-object v2, Lcom/bytedance/sdk/a/a/l;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/a/a/l$3;->b:Ljava/net/Socket;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    :goto_46
    nop

    .line 277
    :goto_47
    return-void
.end method

.method protected b(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    .line 255
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 256
    if-eqz p1, :cond_c

    .line 257
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 259
    :cond_c
    return-object v0
.end method
