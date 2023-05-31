.class public abstract Lcom/qq/e/mediation/interfaces/BaseNativeUnifiedAd;
.super Ljava/lang/Object;


# static fields
.field public static final CALLBACK_CLICK:I = 0x3

.field public static final CALLBACK_IMPRESSION:I = 0x4

.field public static final CALLBACK_LOADED:I = 0x1

.field public static final CALLBACK_NO_AD:I = 0x2

.field public static final DEFAULT_PRIORITY:I = -0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdapterPriority()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public abstract getECPM()I
.end method

.method public abstract loadData(I)V
.end method

.method public abstract setAdListener(Lcom/qq/e/comm/adevent/ADListener;)V
.end method

.method public abstract setBrowserType(I)V
.end method

.method public abstract setCategories(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDownAPPConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V
.end method

.method public abstract setMaxVideoDuration(I)V
.end method

.method public abstract setMinVideoDuration(I)V
.end method

.method public abstract setVideoADContainerRender(I)V
.end method

.method public abstract setVideoPlayPolicy(I)V
.end method
