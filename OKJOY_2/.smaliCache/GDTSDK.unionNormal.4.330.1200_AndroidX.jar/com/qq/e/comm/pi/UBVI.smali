.class public interface abstract Lcom/qq/e/comm/pi/UBVI;
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

    sput-object v0, Lcom/qq/e/comm/pi/UBVI;->ext:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract fetchAd()V
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public abstract setDownAPPConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V
.end method

.method public abstract setLoadAdParams(Lcom/qq/e/comm/constants/LoadAdParams;)V
.end method

.method public abstract setRefresh(I)V
.end method
