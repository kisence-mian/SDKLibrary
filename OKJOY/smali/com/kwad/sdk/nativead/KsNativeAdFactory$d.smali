.class final Lcom/kwad/sdk/nativead/KsNativeAdFactory$d;
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

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/nativead/KsNativeAdFactory$d;->a:Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;

    iput-object p2, p0, Lcom/kwad/sdk/nativead/KsNativeAdFactory$d;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/nativead/KsNativeAdFactory$d;->a:Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;

    iget-object v1, p0, Lcom/kwad/sdk/nativead/KsNativeAdFactory$d;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;->onNativeAdLoad(Ljava/util/List;)V

    return-void
.end method
