.class Lcom/kwad/sdk/core/g/d$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/g/d;->loadNativeAd(Ljava/lang/String;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/response/model/AdResultData;

.field final synthetic b:Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;

.field final synthetic c:Lcom/kwad/sdk/core/g/d;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/g/d;Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/core/g/d$16;->c:Lcom/kwad/sdk/core/g/d;

    iput-object p2, p0, Lcom/kwad/sdk/core/g/d$16;->a:Lcom/kwad/sdk/core/response/model/AdResultData;

    iput-object p3, p0, Lcom/kwad/sdk/core/g/d$16;->b:Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadNativeAd onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kwad/sdk/core/g/d$16;->a:Lcom/kwad/sdk/core/response/model/AdResultData;

    iget v2, v2, Lcom/kwad/sdk/core/response/model/AdResultData;->result:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/kwad/sdk/core/g/d$16;->a:Lcom/kwad/sdk/core/response/model/AdResultData;

    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdResultData;->errorMsg:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s__%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdRequestManager"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/g/d$16;->b:Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;

    iget-object v1, p0, Lcom/kwad/sdk/core/g/d$16;->a:Lcom/kwad/sdk/core/response/model/AdResultData;

    iget v1, v1, Lcom/kwad/sdk/core/response/model/AdResultData;->result:I

    iget-object v2, p0, Lcom/kwad/sdk/core/g/d$16;->a:Lcom/kwad/sdk/core/response/model/AdResultData;

    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdResultData;->errorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;->onError(ILjava/lang/String;)V

    return-void
.end method
