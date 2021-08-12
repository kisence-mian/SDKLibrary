.class final Lcom/kwad/sdk/core/report/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/report/b;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/response/model/AdTemplate;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/report/b$1;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v0, Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/o$a;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/core/report/b$1;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->downloadSource:I

    iput v1, v0, Lcom/kwad/sdk/core/report/o$a;->h:I

    iget-object v1, p0, Lcom/kwad/sdk/core/report/b$1;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/report/b;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/report/o$a;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/report/b$1;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method
