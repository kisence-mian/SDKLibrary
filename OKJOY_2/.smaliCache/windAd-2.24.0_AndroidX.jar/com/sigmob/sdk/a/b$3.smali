.class Lcom/sigmob/sdk/a/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/a/b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/sigmob/sdk/a/b;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/a/b;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/a/b$3;->b:Lcom/sigmob/sdk/a/b;

    iput-object p2, p0, Lcom/sigmob/sdk/a/b$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/a/b$3;->b:Lcom/sigmob/sdk/a/b;

    invoke-static {v0}, Lcom/sigmob/sdk/a/b;->a(Lcom/sigmob/sdk/a/b;)Lcom/sigmob/sdk/a/a;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/sigmob/sdk/a/b$3;->b:Lcom/sigmob/sdk/a/b;

    invoke-static {v0}, Lcom/sigmob/sdk/a/b;->a(Lcom/sigmob/sdk/a/b;)Lcom/sigmob/sdk/a/a;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/a/b$3;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/a/b$3;->b:Lcom/sigmob/sdk/a/b;

    invoke-static {v3}, Lcom/sigmob/sdk/a/b;->b(Lcom/sigmob/sdk/a/b;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/sigmob/sdk/a/a;->onDriftAdError(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method
