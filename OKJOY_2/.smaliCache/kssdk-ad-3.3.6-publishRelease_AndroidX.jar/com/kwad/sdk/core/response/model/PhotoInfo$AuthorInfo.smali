.class public Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;
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
    name = "AuthorInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x329d4272666f45b9L


# instance fields
.field public authorGender:Ljava/lang/String;

.field public authorIcon:Ljava/lang/String;

.field public authorIconGuide:Ljava/lang/String;

.field public authorId:J

.field public authorName:Ljava/lang/String;

.field public authorText:Ljava/lang/String;

.field public rawAuthorName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "authorId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;->authorId:J

    const-string v0, "authorName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;->authorName:Ljava/lang/String;

    const-string v0, "rawAuthorName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;->rawAuthorName:Ljava/lang/String;

    const-string v0, "authorIcon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;->authorIcon:Ljava/lang/String;

    const-string v0, "authorGender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;->authorGender:Ljava/lang/String;

    const-string v0, "authorText"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;->authorText:Ljava/lang/String;

    const-string v0, "authorIconGuide"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;->authorIconGuide:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;->authorId:J

    const-string v3, "authorId"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;->authorName:Ljava/lang/String;

    const-string v2, "authorName"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;->rawAuthorName:Ljava/lang/String;

    const-string v2, "rawAuthorName"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;->authorIcon:Ljava/lang/String;

    const-string v2, "authorIcon"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;->authorGender:Ljava/lang/String;

    const-string v2, "authorGender"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;->authorText:Ljava/lang/String;

    const-string v2, "authorText"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;->authorIconGuide:Ljava/lang/String;

    const-string v2, "authorIconGuide"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
