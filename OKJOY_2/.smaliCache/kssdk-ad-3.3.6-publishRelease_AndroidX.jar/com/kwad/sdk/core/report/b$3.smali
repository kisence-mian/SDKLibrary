.class final Lcom/kwad/sdk/core/report/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/report/b;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
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

    iput-object p1, p0, Lcom/kwad/sdk/core/report/b$3;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/report/b$3;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->o(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/utils/u;->b(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/kwad/sdk/core/report/o$a;

    invoke-direct {v1}, Lcom/kwad/sdk/core/report/o$a;-><init>()V

    iget-object v2, p0, Lcom/kwad/sdk/core/report/b$3;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget v2, v2, Lcom/kwad/sdk/core/response/model/AdTemplate;->downloadSource:I

    iput v2, v1, Lcom/kwad/sdk/core/report/o$a;->h:I

    iput v0, v1, Lcom/kwad/sdk/core/report/o$a;->i:I

    iget-object v0, p0, Lcom/kwad/sdk/core/report/b$3;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->installFrom:Ljava/lang/String;

    iput-object v0, v1, Lcom/kwad/sdk/core/report/o$a;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/kwad/sdk/core/report/b$3;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method
