.class public Lcom/kwad/sdk/core/response/model/PhotoComment;
.super Lcom/kwad/sdk/core/response/a/a;

# interfaces
.implements Lcom/kwad/sdk/core/b;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x713bdf14cc94dfe0L


# instance fields
.field public author_id:J

.field public author_name:Ljava/lang/String;

.field public comment_id:J

.field public content:Ljava/lang/String;

.field public headurl:Ljava/lang/String;

.field public hot:Z

.field public likedCount:J

.field public photo_id:J

.field public subCommentCount:J

.field public time:Ljava/lang/String;

.field public timestamp:J

.field public user_id:J

.field public user_sex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "subCommentCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->subCommentCount:J

    const-string v0, "hot"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->hot:Z

    const-string v0, "likedCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->likedCount:J

    const-string v0, "time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->time:Ljava/lang/String;

    const-string v0, "timestamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->timestamp:J

    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->content:Ljava/lang/String;

    const-string v0, "photo_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->photo_id:J

    const-string v0, "author_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->author_id:J

    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->user_id:J

    const-string v0, "user_sex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->user_sex:Ljava/lang/String;

    const-string v0, "comment_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->comment_id:J

    const-string v0, "headurl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->headurl:Ljava/lang/String;

    const-string v0, "author_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->author_name:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->subCommentCount:J

    const-string v3, "subCommentCount"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-boolean v1, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->hot:Z

    const-string v2, "hot"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->likedCount:J

    const-string v3, "likedCount"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->time:Ljava/lang/String;

    const-string v2, "time"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->timestamp:J

    const-string v3, "timestamp"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->content:Ljava/lang/String;

    const-string v2, "content"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->photo_id:J

    const-string v3, "photo_id"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->author_id:J

    const-string v3, "author_id"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->user_id:J

    const-string v3, "user_id"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->user_sex:Ljava/lang/String;

    const-string v2, "user_sex"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->comment_id:J

    const-string v3, "comment_id"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->headurl:Ljava/lang/String;

    const-string v2, "headurl"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/PhotoComment;->author_name:Ljava/lang/String;

    const-string v2, "author_name"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
