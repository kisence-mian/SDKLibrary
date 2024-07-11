.class Lcom/kwad/sdk/core/report/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/report/c;->a(Lcom/kwad/sdk/core/report/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/report/h;

.field final synthetic b:Lcom/kwad/sdk/core/report/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/report/c;Lcom/kwad/sdk/core/report/h;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/report/c$1;->b:Lcom/kwad/sdk/core/report/c;

    iput-object p2, p0, Lcom/kwad/sdk/core/report/c$1;->a:Lcom/kwad/sdk/core/report/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/report/c$1;->b:Lcom/kwad/sdk/core/report/c;

    invoke-static {v0}, Lcom/kwad/sdk/core/report/c;->a(Lcom/kwad/sdk/core/report/c;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x1010111

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/kwad/sdk/core/report/c$1;->b:Lcom/kwad/sdk/core/report/c;

    invoke-static {v0}, Lcom/kwad/sdk/core/report/c;->b(Lcom/kwad/sdk/core/report/c;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/report/c;->a(Lcom/kwad/sdk/core/report/c;J)V

    :cond_18
    iget-object v0, p0, Lcom/kwad/sdk/core/report/c$1;->a:Lcom/kwad/sdk/core/report/h;

    invoke-interface {v0}, Lcom/kwad/sdk/core/report/h;->a()Lcom/kwad/sdk/core/report/d;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/report/c$1;->b:Lcom/kwad/sdk/core/report/c;

    invoke-static {v1}, Lcom/kwad/sdk/core/report/c;->c(Lcom/kwad/sdk/core/report/c;)Lcom/kwad/sdk/core/report/i;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/kwad/sdk/core/report/i;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/report/c$1;->b:Lcom/kwad/sdk/core/report/c;

    invoke-static {v0}, Lcom/kwad/sdk/core/report/c;->d(Lcom/kwad/sdk/core/report/c;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/kwad/sdk/core/report/c$1;->b:Lcom/kwad/sdk/core/report/c;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/report/c;->a()V

    :cond_34
    return-void
.end method
