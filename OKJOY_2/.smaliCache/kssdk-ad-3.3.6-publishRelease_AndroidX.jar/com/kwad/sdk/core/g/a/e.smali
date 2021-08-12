.class public Lcom/kwad/sdk/core/g/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/b;


# instance fields
.field public a:Lcom/kwad/sdk/internal/api/SceneImpl;

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/api/KsScene;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/kwad/sdk/internal/api/SceneImpl;

    iput-object p1, p0, Lcom/kwad/sdk/core/g/a/e;->a:Lcom/kwad/sdk/internal/api/SceneImpl;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kwad/sdk/core/g/a/e;->b:J

    iput-wide v0, p0, Lcom/kwad/sdk/core/g/a/e;->c:J

    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/g/a/e;->a:Lcom/kwad/sdk/internal/api/SceneImpl;

    invoke-virtual {v0}, Lcom/kwad/sdk/internal/api/SceneImpl;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    iget-wide v1, p0, Lcom/kwad/sdk/core/g/a/e;->b:J

    const-string v3, "pageScene"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/g/a/e;->c:J

    const-string v3, "subPageScene"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    return-object v0
.end method
