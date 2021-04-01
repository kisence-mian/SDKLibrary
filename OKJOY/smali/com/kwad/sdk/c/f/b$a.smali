.class final Lcom/kwad/sdk/c/f/b$a;
.super Lcom/kwad/sdk/c/f/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/c/f/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/c/f/k$a;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field final synthetic c:I

.field final synthetic d:Lcom/kwad/sdk/c/f/k$a;

.field final synthetic e:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/c/f/k$a;Lorg/json/JSONObject;)V
    .registers 5

    iput-object p1, p0, Lcom/kwad/sdk/c/f/b$a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput p2, p0, Lcom/kwad/sdk/c/f/b$a;->c:I

    iput-object p3, p0, Lcom/kwad/sdk/c/f/b$a;->d:Lcom/kwad/sdk/c/f/k$a;

    iput-object p4, p0, Lcom/kwad/sdk/c/f/b$a;->e:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/kwad/sdk/c/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/kwad/sdk/c/f/k;
    .registers 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/kwad/sdk/c/f/k;

    iget-object v1, p0, Lcom/kwad/sdk/c/f/b$a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget v2, p0, Lcom/kwad/sdk/c/f/b$a;->c:I

    iget-object v3, p0, Lcom/kwad/sdk/c/f/b$a;->d:Lcom/kwad/sdk/c/f/k$a;

    iget-object v4, p0, Lcom/kwad/sdk/c/f/b$a;->e:Lorg/json/JSONObject;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kwad/sdk/c/f/k;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/c/f/k$a;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method protected bridge synthetic a()Lcom/kwad/sdk/core/request/k/b;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/kwad/sdk/c/f/b$a;->a()Lcom/kwad/sdk/c/f/k;

    move-result-object v0

    return-object v0
.end method
