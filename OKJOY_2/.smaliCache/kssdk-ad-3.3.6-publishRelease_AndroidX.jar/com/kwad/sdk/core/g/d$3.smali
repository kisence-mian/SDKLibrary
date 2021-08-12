.class Lcom/kwad/sdk/core/g/d$3;
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
.field final synthetic a:Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/kwad/sdk/core/g/d;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/g/d;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;Ljava/util/List;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/core/g/d$3;->c:Lcom/kwad/sdk/core/g/d;

    iput-object p2, p0, Lcom/kwad/sdk/core/g/d$3;->a:Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;

    iput-object p3, p0, Lcom/kwad/sdk/core/g/d$3;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/g/d$3;->a:Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;

    iget-object v1, p0, Lcom/kwad/sdk/core/g/d$3;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;->onNativeAdLoad(Ljava/util/List;)V

    return-void
.end method
