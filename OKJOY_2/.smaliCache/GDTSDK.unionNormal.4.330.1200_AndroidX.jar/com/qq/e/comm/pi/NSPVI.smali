.class public interface abstract Lcom/qq/e/comm/pi/NSPVI;
.super Ljava/lang/Object;


# static fields
.field public static final ext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qq/e/comm/pi/NSPVI;->ext:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public abstract fetchAdOnly()V
.end method

.method public abstract fetchAndShowIn(Landroid/view/ViewGroup;)V
.end method

.method public abstract getAdNetWorkName()Ljava/lang/String;
.end method

.method public abstract getECPMLevel()Ljava/lang/String;
.end method

.method public abstract getZoomOutBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract preload()V
.end method

.method public abstract setAdListener(Lcom/qq/e/comm/adevent/ADListener;)V
.end method

.method public abstract setAdLogoMargin(II)V
.end method

.method public abstract setFetchDelay(I)V
.end method

.method public abstract setFloatView(Landroid/view/View;)V
.end method

.method public abstract setLoadAdParams(Lcom/qq/e/comm/constants/LoadAdParams;)V
.end method

.method public abstract setPreloadView(Landroid/view/View;)V
.end method

.method public abstract setSkipView(Landroid/view/View;)V
.end method

.method public abstract setSupportZoomOut(Z)V
.end method

.method public abstract showAd(Landroid/view/ViewGroup;)V
.end method

.method public abstract zoomOutAnimationFinish()V
.end method
