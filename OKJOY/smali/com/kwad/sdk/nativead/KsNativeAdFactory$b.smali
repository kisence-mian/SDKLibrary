.class final Lcom/kwad/sdk/nativead/KsNativeAdFactory$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/nativead/KsNativeAdFactory;->buildNativeAd(Ljava/lang/String;Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/response/model/b;

.field final synthetic b:Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/response/model/b;Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/nativead/KsNativeAdFactory$b;->a:Lcom/kwad/sdk/core/response/model/b;

    iput-object p2, p0, Lcom/kwad/sdk/nativead/KsNativeAdFactory$b;->b:Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;

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

    iget-object v2, p0, Lcom/kwad/sdk/nativead/KsNativeAdFactory$b;->a:Lcom/kwad/sdk/core/response/model/b;

    iget v2, v2, Lcom/kwad/sdk/core/response/model/b;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/kwad/sdk/nativead/KsNativeAdFactory$b;->a:Lcom/kwad/sdk/core/response/model/b;

    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/b;->a:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s__%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KsNativeAdFactory"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/nativead/KsNativeAdFactory$b;->b:Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;

    iget-object v1, p0, Lcom/kwad/sdk/nativead/KsNativeAdFactory$b;->a:Lcom/kwad/sdk/core/response/model/b;

    iget v2, v1, Lcom/kwad/sdk/core/response/model/b;->c:I

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/b;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;->onError(ILjava/lang/String;)V

    return-void
.end method
