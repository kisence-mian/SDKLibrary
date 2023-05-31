.class Lcom/sigmob/sdk/base/common/e$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/e;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/g;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/g;

.field final synthetic b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic c:Lcom/sigmob/sdk/base/common/e;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/e;Lcom/sigmob/sdk/base/common/g;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/e$5;->c:Lcom/sigmob/sdk/base/common/e;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/e$5;->a:Lcom/sigmob/sdk/base/common/g;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/e$5;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$5;->a:Lcom/sigmob/sdk/base/common/g;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$5;->a:Lcom/sigmob/sdk/base/common/g;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/e$5;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v2, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/common/g;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onSuccess()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$5;->a:Lcom/sigmob/sdk/base/common/g;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$5;->a:Lcom/sigmob/sdk/base/common/g;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/e$5;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/g;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_b
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/e$5;->c:Lcom/sigmob/sdk/base/common/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->d(Lcom/sigmob/sdk/base/common/e;)V

    return-void
.end method
