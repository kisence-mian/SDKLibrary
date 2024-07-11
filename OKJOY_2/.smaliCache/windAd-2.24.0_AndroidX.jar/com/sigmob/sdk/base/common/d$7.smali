.class Lcom/sigmob/sdk/base/common/d$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/d;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/d$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/d$b;

.field final synthetic b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic c:Lcom/sigmob/sdk/base/common/d;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/d;Lcom/sigmob/sdk/base/common/d$b;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/d$7;->c:Lcom/sigmob/sdk/base/common/d;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/d$7;->a:Lcom/sigmob/sdk/base/common/d$b;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/d$7;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$7;->a:Lcom/sigmob/sdk/base/common/d$b;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/d$7;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v2, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/sigmob/sdk/base/common/d$b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/common/models/SigmobError;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public onSuccess()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$7;->a:Lcom/sigmob/sdk/base/common/d$b;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/d$7;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/d$b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_9
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$7;->c:Lcom/sigmob/sdk/base/common/d;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/d;->d(Lcom/sigmob/sdk/base/common/d;)V

    return-void
.end method
