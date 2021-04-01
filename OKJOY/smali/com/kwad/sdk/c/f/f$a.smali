.class final Lcom/kwad/sdk/c/f/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/c/f/f;->a(Lcom/kwad/sdk/c/f/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/c/f/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/c/f/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/f/f$a;->a:Lcom/kwad/sdk/c/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "BatchReporter"

    const-string v1, "AddActionTask run"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kwad/sdk/c/f/f;->a()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x1010111

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/kwad/sdk/c/f/f;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/f/f;->a(J)V

    :cond_1b
    invoke-static {}, Lcom/kwad/sdk/c/f/f;->c()Lcom/kwad/sdk/c/f/h;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/c/f/f$a;->a:Lcom/kwad/sdk/c/f/a;

    invoke-static {v1}, Lcom/kwad/sdk/c/f/g;->a(Lcom/kwad/sdk/c/f/a;)Lcom/kwad/sdk/c/f/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/c/f/h;->a(Lcom/kwad/sdk/c/f/g;)V

    invoke-static {}, Lcom/kwad/sdk/c/f/f;->d()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/kwad/sdk/c/f/f;->g()V

    :cond_31
    return-void
.end method
