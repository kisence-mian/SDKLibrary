.class public Lcom/kwad/sdk/core/response/model/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/b;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public transient k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/kwad/sdk/core/response/model/a;->c:I

    iput v0, p0, Lcom/kwad/sdk/core/response/model/a;->g:I

    iput v0, p0, Lcom/kwad/sdk/core/response/model/a;->h:I

    iput v0, p0, Lcom/kwad/sdk/core/response/model/a;->i:I

    iput v0, p0, Lcom/kwad/sdk/core/response/model/a;->j:I

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 4

    const-string v0, "entryType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/response/model/a;->a:I

    const-string v0, "sourceDesc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/a;->b:Ljava/lang/String;

    iget v0, p0, Lcom/kwad/sdk/core/response/model/a;->c:I

    const-string v1, "sourceDescPos"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/response/model/a;->c:I

    const-string v0, "entryId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/a;->e:Ljava/lang/String;

    iget v0, p0, Lcom/kwad/sdk/core/response/model/a;->d:I

    const-string v1, "likePos"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/response/model/a;->d:I

    const-string v0, "entryTitle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "\u7cbe\u5f69\u77ed\u89c6\u9891"

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/a;->f:Ljava/lang/String;

    :cond_3e
    iget v0, p0, Lcom/kwad/sdk/core/response/model/a;->g:I

    const-string v1, "entryTitlePos"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/response/model/a;->g:I

    iget v0, p0, Lcom/kwad/sdk/core/response/model/a;->h:I

    const-string v1, "videoDurationPos"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/response/model/a;->h:I

    iget v0, p0, Lcom/kwad/sdk/core/response/model/a;->i:I

    const-string v1, "videoDescPos"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/response/model/a;->i:I

    iget v0, p0, Lcom/kwad/sdk/core/response/model/a;->j:I

    const-string v1, "commentsPos"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/kwad/sdk/core/response/model/a;->j:I

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p0, Lcom/kwad/sdk/core/response/model/a;->a:I

    const-string v2, "entryType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/a;->b:Ljava/lang/String;

    const-string v2, "sourceDesc"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/kwad/sdk/core/response/model/a;->c:I

    const-string v2, "sourceDescPos"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/a;->e:Ljava/lang/String;

    const-string v2, "entryId"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/kwad/sdk/core/response/model/a;->d:I

    const-string v2, "likePos"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/a;->f:Ljava/lang/String;

    const-string v2, "entryTitle"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/kwad/sdk/core/response/model/a;->g:I

    const-string v2, "entryTitlePos"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/core/response/model/a;->h:I

    const-string v2, "videoDurationPos"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/core/response/model/a;->i:I

    const-string v2, "videoDescPos"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/core/response/model/a;->j:I

    const-string v2, "commentsPos"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-object v0
.end method
