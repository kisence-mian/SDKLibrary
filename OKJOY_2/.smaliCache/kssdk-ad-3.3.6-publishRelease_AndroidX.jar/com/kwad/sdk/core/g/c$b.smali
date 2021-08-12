.class Lcom/kwad/sdk/core/g/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/g/c;
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
    .registers 2

    invoke-static {}, Lcom/kwad/sdk/core/g/c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/config/c;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/kwad/sdk/core/g/c;->c()Lcom/kwad/sdk/core/g/c$a;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/kwad/sdk/core/g/c;->c()Lcom/kwad/sdk/core/g/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/core/g/c$a;->a()V

    :cond_14
    invoke-static {}, Lcom/kwad/sdk/core/g/c;->d()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {}, Lcom/kwad/sdk/core/g/c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/report/e;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kwad/sdk/core/g/c;->a(Z)Z

    :cond_25
    invoke-static {}, Lcom/kwad/sdk/core/g/c;->a()V

    return-void
.end method
