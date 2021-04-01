.class Lcom/sigmob/sdk/base/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a/n;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/a/n;

.field final synthetic b:Lcom/sigmob/sdk/base/a/e;

.field final synthetic c:Lcom/sigmob/sdk/base/a/a;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/a/a;Lcom/sigmob/sdk/base/a/n;Lcom/sigmob/sdk/base/a/e;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/sdk/base/a/a$2;->c:Lcom/sigmob/sdk/base/a/a;

    iput-object p2, p0, Lcom/sigmob/sdk/base/a/a$2;->a:Lcom/sigmob/sdk/base/a/n;

    iput-object p3, p0, Lcom/sigmob/sdk/base/a/a$2;->b:Lcom/sigmob/sdk/base/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Error;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a$2;->a:Lcom/sigmob/sdk/base/a/n;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a$2;->a:Lcom/sigmob/sdk/base/a/n;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/base/a/n;->a(Ljava/lang/Error;)V

    :cond_9
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_8
    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a$2;->a:Lcom/sigmob/sdk/base/a/n;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a$2;->a:Lcom/sigmob/sdk/base/a/n;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/a/n;->a(Ljava/util/List;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a$2;->b:Lcom/sigmob/sdk/base/a/e;

    instance-of v0, v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_3d

    :try_start_19
    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a$2;->c:Lcom/sigmob/sdk/base/a/a;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/a/a;->a(Lcom/sigmob/sdk/base/a/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/a/a$2;->a:Lcom/sigmob/sdk/base/a/n;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/sigmob/sdk/base/a/a$2;->a:Lcom/sigmob/sdk/base/a/n;

    invoke-interface {v1, v0}, Lcom/sigmob/sdk/base/a/n;->a(Ljava/util/List;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_28} :catch_29

    goto :goto_12

    :catch_29
    move-exception v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/a/a$2;->a:Lcom/sigmob/sdk/base/a/n;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/sigmob/sdk/base/a/a$2;->a:Lcom/sigmob/sdk/base/a/n;

    new-instance v2, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sigmob/sdk/base/a/n;->a(Ljava/lang/Error;)V

    goto :goto_12

    :cond_3d
    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a$2;->a:Lcom/sigmob/sdk/base/a/n;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a$2;->a:Lcom/sigmob/sdk/base/a/n;

    new-instance v1, Ljava/lang/Error;

    const-string v2, "no support class parse"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/a/n;->a(Ljava/lang/Error;)V

    goto :goto_12
.end method
