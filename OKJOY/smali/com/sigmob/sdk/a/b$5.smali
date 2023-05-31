.class Lcom/sigmob/sdk/a/b$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/a/b;->a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/SigmobError;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/sigmob/sdk/a/b;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/a/b;Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/sdk/a/b$5;->c:Lcom/sigmob/sdk/a/b;

    iput-object p2, p0, Lcom/sigmob/sdk/a/b$5;->a:Lcom/sigmob/sdk/base/models/SigmobError;

    iput-object p3, p0, Lcom/sigmob/sdk/a/b$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/a/b$5;->c:Lcom/sigmob/sdk/a/b;

    invoke-static {v0}, Lcom/sigmob/sdk/a/b;->a(Lcom/sigmob/sdk/a/b;)Lcom/sigmob/sdk/a/a;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sigmob/sdk/a/b$5;->c:Lcom/sigmob/sdk/a/b;

    invoke-static {v0}, Lcom/sigmob/sdk/a/b;->a(Lcom/sigmob/sdk/a/b;)Lcom/sigmob/sdk/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/a/b$5;->a:Lcom/sigmob/sdk/base/models/SigmobError;

    iget-object v2, p0, Lcom/sigmob/sdk/a/b$5;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/a/a;->onDriftAdError(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    :cond_15
    return-void
.end method
