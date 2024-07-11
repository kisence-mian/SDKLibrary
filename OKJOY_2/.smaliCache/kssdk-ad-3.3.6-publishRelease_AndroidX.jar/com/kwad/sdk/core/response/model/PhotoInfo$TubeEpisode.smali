.class public Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/response/model/PhotoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TubeEpisode"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1cf7faa1f010399dL


# instance fields
.field public episodeName:Ljava/lang/String;

.field public hasTube:Z

.field public playCount:J

.field public tubeId:J

.field public tubeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;->tubeId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;->hasTube:Z

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-wide/16 v0, -0x1

    const-string v2, "tubeId"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;->tubeId:J

    const-string v0, "tubeName"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;->tubeName:Ljava/lang/String;

    const-string v0, "episodeName"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;->episodeName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    const-string v2, "playCount"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;->playCount:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;->hasTube:Z

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;->tubeId:J

    const-string v3, "tubeId"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;->tubeName:Ljava/lang/String;

    const-string v2, "tubeName"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;->episodeName:Ljava/lang/String;

    const-string v2, "episodeName"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;->playCount:J

    const-string v3, "playCount"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    return-object v0
.end method
