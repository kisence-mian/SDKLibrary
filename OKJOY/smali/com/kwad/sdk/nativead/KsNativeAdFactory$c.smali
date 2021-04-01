.class final Lcom/kwad/sdk/nativead/KsNativeAdFactory$c;
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
.field final synthetic a:Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/nativead/KsNativeAdFactory$c;->a:Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/nativead/KsNativeAdFactory$c;->a:Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;

    sget-object v1, Lcom/kwad/sdk/core/request/ErrorCode;->ERROR_DATA_EMPTY:Lcom/kwad/sdk/core/request/ErrorCode;

    iget v2, v1, Lcom/kwad/sdk/core/request/ErrorCode;->errorCode:I

    iget-object v1, v1, Lcom/kwad/sdk/core/request/ErrorCode;->msg:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;->onError(ILjava/lang/String;)V

    return-void
.end method
