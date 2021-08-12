.class Lcom/kwad/sdk/core/report/c$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/report/c;->b(Lcom/kwad/sdk/core/report/h;)V
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

    iput-object p1, p0, Lcom/kwad/sdk/core/report/c$4;->b:Lcom/kwad/sdk/core/report/c;

    iput-object p2, p0, Lcom/kwad/sdk/core/report/c$4;->a:Lcom/kwad/sdk/core/report/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/report/c$4;->a:Lcom/kwad/sdk/core/report/h;

    invoke-interface {v0}, Lcom/kwad/sdk/core/report/h;->a()Lcom/kwad/sdk/core/report/d;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/report/c$4;->b:Lcom/kwad/sdk/core/report/c;

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/report/c;->a(Lcom/kwad/sdk/core/report/d;)V

    return-void
.end method
