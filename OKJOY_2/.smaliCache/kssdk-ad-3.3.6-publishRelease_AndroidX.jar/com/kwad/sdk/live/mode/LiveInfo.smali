.class public Lcom/kwad/sdk/live/mode/LiveInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/live/mode/LiveInfo$CoverThumbnailUrl;,
        Lcom/kwad/sdk/live/mode/LiveInfo$User;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5893efc50972f551L


# instance fields
.field public audienceCount:Ljava/lang/String;

.field public caption:Ljava/lang/String;

.field public cover_thumbnail_urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/live/mode/LiveInfo$CoverThumbnailUrl;",
            ">;"
        }
    .end annotation
.end field

.field public exp_tag:Ljava/lang/String;

.field public liveStreamId:Ljava/lang/String;

.field public transient pcursor:Ljava/lang/String;

.field public playInfo:Ljava/lang/String;

.field public user:Lcom/kwad/sdk/live/mode/LiveInfo$User;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kwad/sdk/live/mode/LiveInfo$User;

    invoke-direct {v0}, Lcom/kwad/sdk/live/mode/LiveInfo$User;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/live/mode/LiveInfo;->user:Lcom/kwad/sdk/live/mode/LiveInfo$User;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/live/mode/LiveInfo;->cover_thumbnail_urls:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "liveStreamId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/live/mode/LiveInfo;->liveStreamId:Ljava/lang/String;

    iget-object v0, p0, Lcom/kwad/sdk/live/mode/LiveInfo;->user:Lcom/kwad/sdk/live/mode/LiveInfo$User;

    const-string v1, "user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/live/mode/LiveInfo$User;->parseJson(Lorg/json/JSONObject;)V

    const-string v0, "playInfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/live/mode/LiveInfo;->playInfo:Ljava/lang/String;

    const-string v0, "audienceCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/live/mode/LiveInfo;->audienceCount:Ljava/lang/String;

    const-string v0, "caption"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/live/mode/LiveInfo;->caption:Ljava/lang/String;

    const-string v0, "cover_thumbnail_urls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_59

    const/4 v1, 0x0

    :goto_3d
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_59

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_56

    new-instance v3, Lcom/kwad/sdk/live/mode/LiveInfo$CoverThumbnailUrl;

    invoke-direct {v3}, Lcom/kwad/sdk/live/mode/LiveInfo$CoverThumbnailUrl;-><init>()V

    invoke-virtual {v3, v2}, Lcom/kwad/sdk/live/mode/LiveInfo$CoverThumbnailUrl;->parseJson(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/kwad/sdk/live/mode/LiveInfo;->cover_thumbnail_urls:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_59
    const-string v0, "exp_tag"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/live/mode/LiveInfo;->exp_tag:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/live/mode/LiveInfo;->liveStreamId:Ljava/lang/String;

    const-string v2, "liveStreamId"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/live/mode/LiveInfo;->user:Lcom/kwad/sdk/live/mode/LiveInfo$User;

    const-string v2, "user"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    iget-object v1, p0, Lcom/kwad/sdk/live/mode/LiveInfo;->playInfo:Ljava/lang/String;

    const-string v2, "playInfo"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/live/mode/LiveInfo;->audienceCount:Ljava/lang/String;

    const-string v2, "audienceCount"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/live/mode/LiveInfo;->caption:Ljava/lang/String;

    const-string v2, "caption"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/live/mode/LiveInfo;->cover_thumbnail_urls:Ljava/util/List;

    const-string v2, "cover_thumbnail_urls"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lcom/kwad/sdk/live/mode/LiveInfo;->exp_tag:Ljava/lang/String;

    const-string v2, "exp_tag"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
