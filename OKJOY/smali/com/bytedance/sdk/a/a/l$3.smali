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

    .prologue
    .line 252
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/l$3;->b:Ljava/net/Socket;

    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a_()V
    .registers 6

    .prologue
    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/l$3;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_5} :catch_24

    .line 277
    :goto_5
    return-void

    .line 266
    :catch_6
    move-exception v0

    .line 267
    sget-object v1, Lcom/bytedance/sdk/a/a/l;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to close timed out socket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/a/a/l$3;->b:Ljava/net/Socket;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 268
    :catch_24
    move-exception v0

    .line 269
    invoke-static {v0}, Lcom/bytedance/sdk/a/a/l;->a(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 272
    sget-object v1, Lcom/bytedance/sdk/a/a/l;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to close timed out socket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/a/a/l$3;->b:Ljava/net/Socket;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 274
    :cond_48
    throw v0
.end method

.method protected b(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    .prologue
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
