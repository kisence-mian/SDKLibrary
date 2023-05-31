.class public Lcom/kwad/sdk/protocol/model/AdScene;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x14d7a2ae591e943L


# instance fields
.field public action:I

.field public adNum:I

.field public adStyle:I

.field public height:I

.field public posId:J

.field public width:I


# direct methods
.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/kwad/sdk/protocol/model/AdScene;->adNum:I

    iput-wide p1, p0, Lcom/kwad/sdk/protocol/model/AdScene;->posId:J

    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v2, p0, Lcom/kwad/sdk/protocol/model/AdScene;->posId:J

    const-string v1, "posId"

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget v1, p0, Lcom/kwad/sdk/protocol/model/AdScene;->adNum:I

    const-string v2, "adNum"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/protocol/model/AdScene;->action:I

    const-string v2, "action"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/protocol/model/AdScene;->width:I

    const-string v2, "width"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/protocol/model/AdScene;->height:I

    const-string v2, "height"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/protocol/model/AdScene;->adStyle:I

    const-string v2, "adStyle"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-object v0
.end method
