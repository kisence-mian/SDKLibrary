.class Lcom/kwad/sdk/core/request/e$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/request/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    invoke-static {}, Lcom/kwad/sdk/core/request/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/kwad/sdk/core/request/e;->b()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/kwad/sdk/core/request/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/f/c;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kwad/sdk/core/request/e;->a(Z)Z

    :cond_18
    new-instance v0, Lcom/kwad/sdk/protocol/model/AdScene;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/kwad/sdk/protocol/model/AdScene;-><init>(J)V

    new-instance v1, Lcom/kwad/sdk/core/request/e;

    invoke-direct {v1}, Lcom/kwad/sdk/core/request/e;-><init>()V

    new-instance v2, Lcom/kwad/sdk/core/request/e$b$a;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/core/request/e$b$a;-><init>(Lcom/kwad/sdk/core/request/e$b;)V

    invoke-virtual {v1, v0, v2}, Lcom/kwad/sdk/core/request/e;->a(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/core/request/e$c;)V

    invoke-static {}, Lcom/kwad/sdk/core/request/e;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/request/e;->b(J)V

    return-void
.end method
