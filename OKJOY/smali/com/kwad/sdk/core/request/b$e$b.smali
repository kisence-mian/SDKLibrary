.class Lcom/kwad/sdk/core/request/b$e$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/request/b$e;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/kwad/sdk/core/request/b$e;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/request/b$e;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/request/b$e$b;->b:Lcom/kwad/sdk/core/request/b$e;

    iput-object p2, p0, Lcom/kwad/sdk/core/request/b$e$b;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/request/b$e$b;->b:Lcom/kwad/sdk/core/request/b$e;

    iget-object v0, v0, Lcom/kwad/sdk/core/request/b$e;->a:Lcom/kwad/sdk/export/i/IAdRequestManager$DrawAdListener;

    iget-object v1, p0, Lcom/kwad/sdk/core/request/b$e$b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/export/i/IAdRequestManager$DrawAdListener;->onDrawAdLoad(Ljava/util/List;)V

    return-void
.end method
