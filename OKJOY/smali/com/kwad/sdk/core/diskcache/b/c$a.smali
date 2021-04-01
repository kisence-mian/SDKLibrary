.class final Lcom/kwad/sdk/core/diskcache/b/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/diskcache/b/c;->a(Lcom/kwad/sdk/core/diskcache/a/a;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/diskcache/a/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/diskcache/a/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/core/diskcache/b/c$a;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    iput-object p2, p0, Lcom/kwad/sdk/core/diskcache/b/c$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/kwad/sdk/core/diskcache/b/c$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/b/c$a;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    iget-object v2, p0, Lcom/kwad/sdk/core/diskcache/b/c$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/lang/String;)Lcom/kwad/sdk/core/diskcache/a/a$c;

    move-result-object v1

    if-eqz v1, :cond_20

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/diskcache/a/a$c;->a(I)Ljava/io/OutputStream;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_42
    .catchall {:try_start_1 .. :try_end_f} :catchall_3a

    move-result-object v0

    :try_start_10
    iget-object v2, p0, Lcom/kwad/sdk/core/diskcache/b/c$a;->c:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/kwad/sdk/core/diskcache/b/c;->a(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1}, Lcom/kwad/sdk/core/diskcache/a/a$c;->b()V

    :goto_1b
    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/b/c$a;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/diskcache/a/a;->b()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_20} :catch_28
    .catchall {:try_start_10 .. :try_end_20} :catchall_47

    :cond_20
    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    :goto_23
    return-void

    :cond_24
    :try_start_24
    invoke-virtual {v1}, Lcom/kwad/sdk/core/diskcache/a/a$c;->a()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28
    .catchall {:try_start_24 .. :try_end_27} :catchall_47

    goto :goto_1b

    :catch_28
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2c
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "FileHelper"

    const-string v3, "downLoadFileAsync file crash"

    invoke-static {v2, v3, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_4c

    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    goto :goto_23

    :catchall_3a
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3e
    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_42
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2c

    :catchall_47
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3e

    :catchall_4c
    move-exception v0

    goto :goto_3e
.end method
