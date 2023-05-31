.class Lcom/kwad/sdk/core/request/i$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/request/i$a;->a(Lcom/kwad/sdk/core/response/model/PhotoShareInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/response/model/PhotoShareInfo;

.field final synthetic b:Lcom/kwad/sdk/core/request/i$a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/request/i$a;Lcom/kwad/sdk/core/response/model/PhotoShareInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/request/i$a$b;->b:Lcom/kwad/sdk/core/request/i$a;

    iput-object p2, p0, Lcom/kwad/sdk/core/request/i$a$b;->a:Lcom/kwad/sdk/core/response/model/PhotoShareInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/request/i$a$b;->b:Lcom/kwad/sdk/core/request/i$a;

    iget-object v0, v0, Lcom/kwad/sdk/core/request/i$a;->a:Lcom/kwad/sdk/core/request/i$c;

    iget-object v1, p0, Lcom/kwad/sdk/core/request/i$a$b;->a:Lcom/kwad/sdk/core/response/model/PhotoShareInfo;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/request/i$c;->a(Lcom/kwad/sdk/core/response/model/PhotoShareInfo;)V

    return-void
.end method
