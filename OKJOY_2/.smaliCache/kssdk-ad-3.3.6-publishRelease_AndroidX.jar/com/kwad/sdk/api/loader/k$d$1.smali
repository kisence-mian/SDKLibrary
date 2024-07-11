.class Lcom/kwad/sdk/api/loader/k$d$1;
.super Lcom/kwad/sdk/api/loader/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/api/loader/k$d;->a(Lcom/kwad/sdk/api/loader/k$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/api/loader/k$a<",
        "Lcom/kwad/sdk/api/loader/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/kwad/sdk/api/loader/k$c;

.field final synthetic c:Lcom/kwad/sdk/api/loader/k$d;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/api/loader/k$d;Lcom/kwad/sdk/api/loader/k$c;Lcom/kwad/sdk/api/loader/k$c;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/api/loader/k$d$1;->c:Lcom/kwad/sdk/api/loader/k$d;

    iput-object p3, p0, Lcom/kwad/sdk/api/loader/k$d$1;->b:Lcom/kwad/sdk/api/loader/k$c;

    invoke-direct {p0, p2}, Lcom/kwad/sdk/api/loader/k$a;-><init>(Lcom/kwad/sdk/api/loader/k$c;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/api/loader/a$a;)V
    .registers 12

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/k$d$1;->c:Lcom/kwad/sdk/api/loader/k$d;

    iget-object v0, v0, Lcom/kwad/sdk/api/loader/k$d;->b:Landroid/content/Context;

    iget-object v1, p1, Lcom/kwad/sdk/api/loader/a$a;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kwad/sdk/api/loader/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-static {}, Lcom/kwad/sdk/api/loader/Loader;->get()Lcom/kwad/sdk/api/loader/Loader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/loader/Loader;->getKsAdSDKImpl()Lcom/kwad/sdk/api/core/IKsAdSDK;

    move-result-object v5

    if-eqz v5, :cond_1a

    const/16 v0, 0x3c

    const/4 v1, 0x0

    invoke-interface {v5, v0, v1}, Lcom/kwad/sdk/api/core/IKsAdSDK;->reportBatchEvent(ILjava/util/Map;)V

    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p1, Lcom/kwad/sdk/api/loader/a$a;->b:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lcom/kwad/sdk/api/loader/k$d$1$1;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/kwad/sdk/api/loader/k$d$1$1;-><init>(Lcom/kwad/sdk/api/loader/k$d$1;Lcom/kwad/sdk/api/loader/a$a;Lcom/kwad/sdk/api/core/IKsAdSDK;JLjava/io/File;)V

    invoke-static {v0, v1, v9}, Lcom/kwad/sdk/api/loader/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/api/loader/h$a;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/kwad/sdk/api/loader/a$a;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/api/loader/k$d$1;->a(Lcom/kwad/sdk/api/loader/a$a;)V

    return-void
.end method
