.class public interface abstract Lcom/mintegral/msdk/MIntegralSDK;
.super Ljava/lang/Object;
.source "MIntegralSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;
    }
.end annotation


# virtual methods
.method public abstract getConsentStatus(Landroid/content/Context;)Z
.end method

.method public abstract getMTGConfigurationMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatus()Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;
.end method

.method public abstract init(Ljava/util/Map;Landroid/app/Application;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Application;",
            ")V"
        }
    .end annotation
.end method

.method public abstract init(Ljava/util/Map;Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation
.end method

.method public abstract initAsync(Ljava/util/Map;Landroid/app/Application;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Application;",
            ")V"
        }
    .end annotation
.end method

.method public abstract initAsync(Ljava/util/Map;Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation
.end method

.method public abstract preload(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract preloadFrame(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract reportUser(Lcom/mintegral/msdk/MIntegralUser;)V
.end method

.method public abstract setAdMobClickListener(Lcom/mintegral/msdk/out/AdMobClickListener;)V
.end method

.method public abstract setConsentStatus(Landroid/content/Context;I)V
.end method

.method public abstract setDoNotTrackStatus(Z)V
.end method

.method public abstract setThirdPartyFeatures(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setUserPrivateInfoType(Landroid/content/Context;Ljava/lang/String;I)V
.end method

.method public abstract showUserPrivateInfoTips(Landroid/content/Context;Lcom/mintegral/msdk/base/controller/authoritycontroller/CallBackForDeveloper;)V
.end method

.method public abstract userPrivateInfo(Landroid/content/Context;)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;
.end method
