.class Lcom/sigmob/sdk/base/common/e$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/a/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/e;->n()V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/e;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/e;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/e$4;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Error;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/sigmob/sdk/base/a/e;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b
.end method
