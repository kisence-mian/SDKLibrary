.class public abstract Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;
.super Lcom/anythink/core/b/a/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/anythink/core/b/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public isAdReady()Z
    .registers 2

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public abstract loadNativeAd(Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
