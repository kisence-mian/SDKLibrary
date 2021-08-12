.class public Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PatchAdInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x296610d7362be1f7L


# instance fields
.field private strongStyleAdMark:Ljava/lang/String;

.field public strongStyleAppearTime:J

.field public strongStyleCardUrl:Ljava/lang/String;

.field private strongStyleEnableClose:Z

.field private strongStyleSubTitle:Ljava/lang/String;

.field private strongStyleTitle:Ljava/lang/String;

.field private typePortrait:I

.field public weakStyleAdMark:Ljava/lang/String;

.field public weakStyleAppearTime:J

.field public weakStyleDownloadingTitle:Ljava/lang/String;

.field public weakStyleEnableClose:Z

.field public weakStyleIcon:Ljava/lang/String;

.field public weakStyleTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "weakStyleIcon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->weakStyleIcon:Ljava/lang/String;

    const-string v0, "weakStyleTitle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->weakStyleTitle:Ljava/lang/String;

    const-string v0, "weakStyleDownloadingTitle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->weakStyleDownloadingTitle:Ljava/lang/String;

    const-string v0, "weakStyleAdMark"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->weakStyleAdMark:Ljava/lang/String;

    const-string v0, "weakStyleAppearTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->weakStyleAppearTime:J

    const-string v0, "weakStyleEnableClose"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->weakStyleEnableClose:Z

    const-string v0, "typePortrait"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->typePortrait:I

    const-string v0, "strongStyleCardUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->strongStyleCardUrl:Ljava/lang/String;

    const-string v0, "strongStyleAppearTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->strongStyleAppearTime:J

    const-string v0, "strongStyleTitle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->strongStyleTitle:Ljava/lang/String;

    const-string v0, "strongStyleSubTitle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->strongStyleSubTitle:Ljava/lang/String;

    const-string v0, "strongStyleAdMark"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->strongStyleAdMark:Ljava/lang/String;

    const-string v0, "strongStyleEnableClose"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->strongStyleEnableClose:Z

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->weakStyleIcon:Ljava/lang/String;

    const-string v2, "weakStyleIcon"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->weakStyleTitle:Ljava/lang/String;

    const-string v2, "weakStyleTitle"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->weakStyleDownloadingTitle:Ljava/lang/String;

    const-string v2, "weakStyleDownloadingTitle"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->weakStyleAdMark:Ljava/lang/String;

    const-string v2, "weakStyleAdMark"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->weakStyleAppearTime:J

    const-string v3, "weakStyleAppearTime"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-boolean v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->weakStyleEnableClose:Z

    const-string v2, "weakStyleEnableClose"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->typePortrait:I

    const-string v2, "typePortrait"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->strongStyleCardUrl:Ljava/lang/String;

    const-string v2, "strongStyleCardUrl"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->strongStyleAppearTime:J

    const-string v3, "strongStyleAppearTime"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->strongStyleTitle:Ljava/lang/String;

    const-string v2, "strongStyleTitle"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->strongStyleSubTitle:Ljava/lang/String;

    const-string v2, "strongStyleSubTitle"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->strongStyleAdMark:Ljava/lang/String;

    const-string v2, "strongStyleAdMark"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->strongStyleEnableClose:Z

    const-string v2, "strongStyleEnableClose"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-object v0
.end method
