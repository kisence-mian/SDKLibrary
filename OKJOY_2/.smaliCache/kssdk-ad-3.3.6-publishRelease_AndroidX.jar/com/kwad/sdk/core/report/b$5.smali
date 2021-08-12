.class final Lcom/kwad/sdk/core/report/b$5;
.super Lcom/kwad/sdk/core/report/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field final synthetic b:I

.field final synthetic c:Lcom/kwad/sdk/core/report/o$a;

.field final synthetic d:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V
    .registers 5

    iput-object p1, p0, Lcom/kwad/sdk/core/report/b$5;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput p2, p0, Lcom/kwad/sdk/core/report/b$5;->b:I

    iput-object p3, p0, Lcom/kwad/sdk/core/report/b$5;->c:Lcom/kwad/sdk/core/report/o$a;

    iput-object p4, p0, Lcom/kwad/sdk/core/report/b$5;->d:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/kwad/sdk/core/report/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/kwad/sdk/core/report/o;
    .registers 6

    new-instance v0, Lcom/kwad/sdk/core/report/o;

    iget-object v1, p0, Lcom/kwad/sdk/core/report/b$5;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget v2, p0, Lcom/kwad/sdk/core/report/b$5;->b:I

    iget-object v3, p0, Lcom/kwad/sdk/core/report/b$5;->c:Lcom/kwad/sdk/core/report/o$a;

    iget-object v4, p0, Lcom/kwad/sdk/core/report/b$5;->d:Lorg/json/JSONObject;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kwad/sdk/core/report/o;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method protected synthetic b()Lcom/kwad/sdk/core/network/g;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/core/report/b$5;->a()Lcom/kwad/sdk/core/report/o;

    move-result-object v0

    return-object v0
.end method
