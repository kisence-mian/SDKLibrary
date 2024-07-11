.class final Lcom/sigmob/sdk/base/common/d$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/a/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/common/a/d;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/common/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/d$5;->a:Lcom/sigmob/sdk/common/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Error;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$5;->a:Lcom/sigmob/sdk/common/a/d;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/common/a/d;->a(Ljava/lang/Error;)V

    :cond_7
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_27

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_27

    :cond_9
    :try_start_9
    invoke-static {p1}, Lcom/sigmob/sdk/base/common/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$5;->a:Lcom/sigmob/sdk/common/a/d;

    if-eqz v0, :cond_2f

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/common/a/d;->a(Ljava/util/List;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    goto :goto_2f

    :catchall_15
    move-exception p1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$5;->a:Lcom/sigmob/sdk/common/a/d;

    if-eqz v0, :cond_2f

    new-instance v1, Ljava/lang/Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/common/a/d;->a(Ljava/lang/Error;)V

    goto :goto_2f

    :cond_27
    :goto_27
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/d$5;->a:Lcom/sigmob/sdk/common/a/d;

    if-eqz p1, :cond_2f

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sigmob/sdk/common/a/d;->a(Ljava/util/List;)V

    :cond_2f
    :goto_2f
    return-void
.end method
