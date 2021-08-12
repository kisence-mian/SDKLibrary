.class Lcom/kwad/sdk/api/loader/k$d$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/loader/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/api/loader/k$d$1;->a(Lcom/kwad/sdk/api/loader/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/api/loader/a$a;

.field final synthetic b:Lcom/kwad/sdk/api/core/IKsAdSDK;

.field final synthetic c:J

.field final synthetic d:Ljava/io/File;

.field final synthetic e:Lcom/kwad/sdk/api/loader/k$d$1;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/api/loader/k$d$1;Lcom/kwad/sdk/api/loader/a$a;Lcom/kwad/sdk/api/core/IKsAdSDK;JLjava/io/File;)V
    .registers 7

    iput-object p1, p0, Lcom/kwad/sdk/api/loader/k$d$1$1;->e:Lcom/kwad/sdk/api/loader/k$d$1;

    iput-object p2, p0, Lcom/kwad/sdk/api/loader/k$d$1$1;->a:Lcom/kwad/sdk/api/loader/a$a;

    iput-object p3, p0, Lcom/kwad/sdk/api/loader/k$d$1$1;->b:Lcom/kwad/sdk/api/core/IKsAdSDK;

    iput-wide p4, p0, Lcom/kwad/sdk/api/loader/k$d$1$1;->c:J

    iput-object p6, p0, Lcom/kwad/sdk/api/loader/k$d$1$1;->d:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/k$d$1$1;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/g;->a(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    :goto_7
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/k$d$1$1;->b:Lcom/kwad/sdk/api/core/IKsAdSDK;

    if-eqz v0, :cond_27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kwad/sdk/api/loader/k$d$1$1;->c:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "downloadDuration"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/k$d$1$1;->b:Lcom/kwad/sdk/api/core/IKsAdSDK;

    const/16 v1, 0x3e

    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/api/core/IKsAdSDK;->reportBatchEvent(ILjava/util/Map;)V

    :cond_27
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/k$d$1$1;->e:Lcom/kwad/sdk/api/loader/k$d$1;

    iget-object v0, v0, Lcom/kwad/sdk/api/loader/k$d$1;->b:Lcom/kwad/sdk/api/loader/k$c;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Download failed."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/loader/k$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/io/File;)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/k$d$1$1;->a:Lcom/kwad/sdk/api/loader/a$a;

    iput-object p1, v0, Lcom/kwad/sdk/api/loader/a$a;->f:Ljava/io/File;

    iget-object p1, p0, Lcom/kwad/sdk/api/loader/k$d$1$1;->e:Lcom/kwad/sdk/api/loader/k$d$1;

    iget-object p1, p1, Lcom/kwad/sdk/api/loader/k$d$1;->b:Lcom/kwad/sdk/api/loader/k$c;

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/k$d$1$1;->a:Lcom/kwad/sdk/api/loader/a$a;

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/loader/k$c;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/kwad/sdk/api/loader/k$d$1$1;->b:Lcom/kwad/sdk/api/core/IKsAdSDK;

    if-eqz p1, :cond_2d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kwad/sdk/api/loader/k$d$1$1;->c:J

    sub-long/2addr v0, v2

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "downloadDuration"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/k$d$1$1;->b:Lcom/kwad/sdk/api/core/IKsAdSDK;

    const/16 v1, 0x3d

    invoke-interface {v0, v1, p1}, Lcom/kwad/sdk/api/core/IKsAdSDK;->reportBatchEvent(ILjava/util/Map;)V

    :cond_2d
    return-void
.end method
