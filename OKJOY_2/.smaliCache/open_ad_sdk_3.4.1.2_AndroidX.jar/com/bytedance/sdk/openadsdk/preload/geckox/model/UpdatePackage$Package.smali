.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;
.super Ljava/lang/Object;
.source "UpdatePackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Package"
.end annotation


# instance fields
.field id:J
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "id"
    .end annotation
.end field

.field length:J
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "size"
    .end annotation
.end field

.field md5:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "md5"
    .end annotation
.end field

.field url:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field urlList:Ljava/util/List;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "url_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->id:J

    .line 216
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->urlList:Ljava/util/List;

    .line 217
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->md5:Ljava/lang/String;

    .line 218
    return-void
.end method


# virtual methods
.method public getId()J
    .registers 3

    .line 221
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->id:J

    return-wide v0
.end method

.method public getLength()J
    .registers 3

    .line 245
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->length:J

    return-wide v0
.end method

.method public getMd5()Ljava/lang/String;
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->urlList:Ljava/util/List;

    return-object v0
.end method

.method public setId(I)V
    .registers 4

    .line 225
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->id:J

    .line 226
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .registers 2

    .line 241
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->md5:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->url:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setUrlList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->urlList:Ljava/util/List;

    .line 270
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package{url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", md5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->md5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
