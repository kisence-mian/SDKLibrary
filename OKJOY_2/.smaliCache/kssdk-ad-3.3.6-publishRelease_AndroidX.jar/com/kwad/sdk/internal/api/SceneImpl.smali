.class public Lcom/kwad/sdk/internal/api/SceneImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/KsScene;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x14d7a2ae591e943L


# instance fields
.field private action:I

.field private adNum:I

.field private adStyle:I

.field public entryScene:J

.field private height:I

.field private posId:J

.field private transient urlPackage:Lcom/kwad/sdk/core/scene/URLPackage;

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->adNum:I

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->adNum:I

    iput-wide p1, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->posId:J

    iput-wide p1, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->entryScene:J

    return-void
.end method

.method public constructor <init>(Lcom/kwad/sdk/api/KsScene;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->adNum:I

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsScene;->getPosId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->posId:J

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsScene;->getPosId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->entryScene:J

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsScene;->getAdNum()I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->adNum:I

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsScene;->getAction()I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->action:I

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsScene;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->width:I

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsScene;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->height:I

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsScene;->getAdStyle()I

    move-result p1

    iput p1, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->adStyle:I

    return-void
.end method

.method public static getSerialVersionUID()J
    .registers 2

    const-wide v0, 0x14d7a2ae591e943L

    return-wide v0
.end method


# virtual methods
.method public getAction()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->action:I

    return v0
.end method

.method public getAdNum()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->adNum:I

    return v0
.end method

.method public getAdStyle()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->adStyle:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->height:I

    return v0
.end method

.method public getPageScene()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->urlPackage:Lcom/kwad/sdk/core/scene/URLPackage;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget v0, v0, Lcom/kwad/sdk/core/scene/URLPackage;->page:I

    return v0
.end method

.method public getPosId()J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->posId:J

    return-wide v0
.end method

.method public getUrlPackage()Lcom/kwad/sdk/core/scene/URLPackage;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->urlPackage:Lcom/kwad/sdk/core/scene/URLPackage;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->width:I

    return v0
.end method

.method public setAction(I)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->action:I

    return-void
.end method

.method public setAdNum(I)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->adNum:I

    return-void
.end method

.method public setAdStyle(I)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->adStyle:I

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->height:I

    return-void
.end method

.method public setPosId(J)V
    .registers 3

    iput-wide p1, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->posId:J

    iput-wide p1, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->entryScene:J

    return-void
.end method

.method public setUrlPackage(Lcom/kwad/sdk/core/scene/URLPackage;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->urlPackage:Lcom/kwad/sdk/core/scene/URLPackage;

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->width:I

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->posId:J

    const-string v3, "posId"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->entryScene:J

    const-string v3, "entryScene"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget v1, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->adNum:I

    const-string v2, "adNum"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->action:I

    const-string v2, "action"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->width:I

    const-string v2, "width"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->height:I

    const-string v2, "height"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->adStyle:I

    const-string v2, "adStyle"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->urlPackage:Lcom/kwad/sdk/core/scene/URLPackage;

    const-string v2, "urlPackage"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    return-object v0
.end method
