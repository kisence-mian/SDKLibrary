.class Lcom/kwad/sdk/api/loader/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/api/loader/e;->a(Lcom/kwad/sdk/api/loader/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/api/loader/e$a;

.field final synthetic b:Lcom/kwad/sdk/api/loader/e;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/api/loader/e;Lcom/kwad/sdk/api/loader/e$a;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/api/loader/e$1;->b:Lcom/kwad/sdk/api/loader/e;

    iput-object p2, p0, Lcom/kwad/sdk/api/loader/e$1;->a:Lcom/kwad/sdk/api/loader/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/e$1;->b:Lcom/kwad/sdk/api/loader/e;

    iget-object v1, p0, Lcom/kwad/sdk/api/loader/e$1;->a:Lcom/kwad/sdk/api/loader/e$a;

    invoke-static {v0, v1}, Lcom/kwad/sdk/api/loader/e;->a(Lcom/kwad/sdk/api/loader/e;Lcom/kwad/sdk/api/loader/e$a;)V

    return-void
.end method
