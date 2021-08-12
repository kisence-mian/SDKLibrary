.class final Lcom/kwad/sdk/core/g/d$7;
.super Lcom/kwad/sdk/core/network/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/g/d;->a(Lcom/kwad/sdk/core/g/a/e;Ljava/util/List;ZLcom/kwad/sdk/core/g/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/network/i<",
        "Lcom/kwad/sdk/core/g/a;",
        "Lcom/kwad/sdk/core/response/model/AdResultData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/g/a/e;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/g/a/e;Ljava/util/List;Z)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/core/g/d$7;->a:Lcom/kwad/sdk/core/g/a/e;

    iput-object p2, p0, Lcom/kwad/sdk/core/g/d$7;->b:Ljava/util/List;

    iput-boolean p3, p0, Lcom/kwad/sdk/core/g/d$7;->c:Z

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/kwad/sdk/core/g/a;
    .registers 6

    new-instance v0, Lcom/kwad/sdk/core/g/a;

    iget-object v1, p0, Lcom/kwad/sdk/core/g/d$7;->a:Lcom/kwad/sdk/core/g/a/e;

    iget-object v2, p0, Lcom/kwad/sdk/core/g/d$7;->b:Ljava/util/List;

    iget-boolean v3, p0, Lcom/kwad/sdk/core/g/d$7;->c:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kwad/sdk/core/g/a;-><init>(Lcom/kwad/sdk/core/g/a/e;Ljava/util/List;ZLcom/kwad/sdk/core/g/a/j;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Lcom/kwad/sdk/core/response/model/AdResultData;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/kwad/sdk/core/response/model/AdResultData;

    iget-object v1, p0, Lcom/kwad/sdk/core/g/d$7;->a:Lcom/kwad/sdk/core/g/a/e;

    iget-object v1, v1, Lcom/kwad/sdk/core/g/a/e;->a:Lcom/kwad/sdk/internal/api/SceneImpl;

    invoke-direct {p1, v1}, Lcom/kwad/sdk/core/response/model/AdResultData;-><init>(Lcom/kwad/sdk/api/KsScene;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/response/model/AdResultData;->parseJson(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method protected synthetic b(Ljava/lang/String;)Lcom/kwad/sdk/core/network/BaseResultData;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/g/d$7;->a(Ljava/lang/String;)Lcom/kwad/sdk/core/response/model/AdResultData;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b()Lcom/kwad/sdk/core/network/g;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/core/g/d$7;->a()Lcom/kwad/sdk/core/g/a;

    move-result-object v0

    return-object v0
.end method
