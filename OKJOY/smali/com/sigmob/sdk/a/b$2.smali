.class Lcom/sigmob/sdk/a/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/a/b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/a/b;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/a/b$2;->a:Lcom/sigmob/sdk/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/a/b$2;->a:Lcom/sigmob/sdk/a/b;

    invoke-static {v0}, Lcom/sigmob/sdk/a/b;->a(Lcom/sigmob/sdk/a/b;)Lcom/sigmob/sdk/a/a;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sigmob/sdk/a/b$2;->a:Lcom/sigmob/sdk/a/b;

    invoke-static {v0}, Lcom/sigmob/sdk/a/b;->a(Lcom/sigmob/sdk/a/b;)Lcom/sigmob/sdk/a/a;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/base/models/SigmobError;

    iget-object v2, p0, Lcom/sigmob/sdk/a/b$2;->a:Lcom/sigmob/sdk/a/b;

    invoke-static {v2}, Lcom/sigmob/sdk/a/b;->b(Lcom/sigmob/sdk/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/a/a;->onDriftAdError(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    :cond_19
    return-void
.end method
