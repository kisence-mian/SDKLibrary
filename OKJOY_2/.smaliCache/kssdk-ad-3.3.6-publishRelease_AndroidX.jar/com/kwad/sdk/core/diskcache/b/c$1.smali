.class final Lcom/kwad/sdk/core/diskcache/b/c$1;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/kwad/sdk/core/diskcache/b/c$1;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    iput-object p2, p0, Lcom/kwad/sdk/core/diskcache/b/c$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/kwad/sdk/core/diskcache/b/c$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/b/c$1;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    iget-object v2, p0, Lcom/kwad/sdk/core/diskcache/b/c$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/lang/String;)Lcom/kwad/sdk/core/diskcache/a/a$a;

    move-result-object v1

    if-eqz v1, :cond_29

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/diskcache/a/a$a;->a(I)Ljava/io/OutputStream;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/core/diskcache/b/c$1;->c:Ljava/lang/String;

    new-instance v3, Lcom/kwad/sdk/core/diskcache/b/c$a;

    invoke-direct {v3}, Lcom/kwad/sdk/core/diskcache/b/c$a;-><init>()V

    invoke-static {v2, v0, v3}, Lcom/kwad/sdk/core/diskcache/b/c;->a(Ljava/lang/String;Ljava/io/OutputStream;Lcom/kwad/sdk/core/diskcache/b/c$a;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v1}, Lcom/kwad/sdk/core/diskcache/a/a$a;->a()V

    goto :goto_24

    :cond_21
    invoke-virtual {v1}, Lcom/kwad/sdk/core/diskcache/a/a$a;->b()V

    :goto_24
    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/b/c$1;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/diskcache/a/a;->b()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_29} :catch_2f
    .catchall {:try_start_1 .. :try_end_29} :catchall_2d

    :cond_29
    :goto_29
    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    goto :goto_3b

    :catchall_2d
    move-exception v1

    goto :goto_3c

    :catch_2f
    move-exception v1

    :try_start_30
    invoke-static {v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    const-string v2, "FileHelper"

    const-string v3, "downLoadFileAsync file crash"

    invoke-static {v2, v3, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_2d

    goto :goto_29

    :goto_3b
    return-void

    :goto_3c
    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    throw v1
.end method
