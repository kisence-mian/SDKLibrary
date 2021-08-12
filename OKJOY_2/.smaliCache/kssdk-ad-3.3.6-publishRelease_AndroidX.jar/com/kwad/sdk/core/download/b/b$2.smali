.class Lcom/kwad/sdk/core/download/b/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/download/b/b;->a(Ljava/lang/String;ILcom/kwad/sdk/core/download/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/download/b/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/download/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/download/b/b$2;->a:Lcom/kwad/sdk/core/download/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/home/download/a;->a()Lcom/kwad/sdk/home/download/a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/download/b/b$2;->a:Lcom/kwad/sdk/core/download/b/b;

    invoke-static {v1}, Lcom/kwad/sdk/core/download/b/b;->a(Lcom/kwad/sdk/core/download/b/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/home/download/a;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-static {}, Lcom/kwad/sdk/home/download/a;->a()Lcom/kwad/sdk/home/download/a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/download/b/b$2;->a:Lcom/kwad/sdk/core/download/b/b;

    invoke-static {v1}, Lcom/kwad/sdk/core/download/b/b;->a(Lcom/kwad/sdk/core/download/b/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/home/download/a;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method
