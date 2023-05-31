.class Lcom/kwad/sdk/core/request/i$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/request/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/request/i;->a(Lcom/kwad/sdk/protocol/model/AdScene;JLcom/kwad/sdk/core/request/i$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/request/i$c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/request/i;Lcom/kwad/sdk/core/request/i$c;)V
    .registers 3

    iput-object p2, p0, Lcom/kwad/sdk/core/request/i$a;->a:Lcom/kwad/sdk/core/request/i$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/response/model/PhotoShareInfo;)V
    .registers 4
    .param p1    # Lcom/kwad/sdk/core/response/model/PhotoShareInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/kwad/sdk/core/request/i;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/core/request/i$a$b;

    invoke-direct {v1, p0, p1}, Lcom/kwad/sdk/core/request/i$a$b;-><init>(Lcom/kwad/sdk/core/request/i$a;Lcom/kwad/sdk/core/response/model/PhotoShareInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/kwad/sdk/core/request/i;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/core/request/i$a$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/kwad/sdk/core/request/i$a$a;-><init>(Lcom/kwad/sdk/core/request/i$a;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
