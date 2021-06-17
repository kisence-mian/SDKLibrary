.class Lcom/loongcheer/admobsdk/admobInit/AdmobInit$1;
.super Ljava/lang/Object;
.source "AdmobInit.java"

# interfaces
.implements Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->admobInit()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loongcheer/admobsdk/admobInit/AdmobInit;


# direct methods
.method constructor <init>(Lcom/loongcheer/admobsdk/admobInit/AdmobInit;)V
    .registers 2
    .param p1, "this$0"    # Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    .line 70
    iput-object p1, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit$1;->this$0:Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V
    .registers 12
    .param p1, "initializationStatus"    # Lcom/google/android/gms/ads/initialization/InitializationStatus;

    .line 73
    invoke-interface {p1}, Lcom/google/android/gms/ads/initialization/InitializationStatus;->getAdapterStatusMap()Ljava/util/Map;

    move-result-object v0

    .line 74
    .local v0, "statusMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gms/ads/initialization/AdapterStatus;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    .local v2, "adapterClass":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/ads/initialization/AdapterStatus;

    .line 76
    .local v4, "status":Lcom/google/android/gms/ads/initialization/AdapterStatus;
    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    .line 78
    invoke-interface {v4}, Lcom/google/android/gms/ads/initialization/AdapterStatus;->getDescription()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-interface {v4}, Lcom/google/android/gms/ads/initialization/AdapterStatus;->getLatency()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v6, v9

    .line 76
    const-string v8, "\u4e2d\u4ecb\u7ec4  name: %s, Description: %s, Latency: %d"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 80
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    .line 82
    invoke-interface {v4}, Lcom/google/android/gms/ads/initialization/AdapterStatus;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-interface {v4}, Lcom/google/android/gms/ads/initialization/AdapterStatus;->getLatency()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v9

    .line 80
    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "loongcheer_ad_log"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v2    # "adapterClass":Ljava/lang/String;
    .end local v4    # "status":Lcom/google/android/gms/ads/initialization/AdapterStatus;
    goto :goto_c

    .line 86
    :cond_5d
    iget-object v1, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit$1;->this$0:Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    # invokes: Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->adColonyLog()V
    invoke-static {v1}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->access$000(Lcom/loongcheer/admobsdk/admobInit/AdmobInit;)V

    .line 87
    iget-object v1, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit$1;->this$0:Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    # invokes: Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->tapjoyLog()V
    invoke-static {v1}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->access$100(Lcom/loongcheer/admobsdk/admobInit/AdmobInit;)V

    .line 88
    iget-object v1, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit$1;->this$0:Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    # setter for: Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->isCash:Z
    invoke-static {v1, v3}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->access$202(Lcom/loongcheer/admobsdk/admobInit/AdmobInit;Z)Z

    .line 89
    iget-object v1, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit$1;->this$0:Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    # invokes: Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->cashAd(Landroid/app/Activity;)V
    invoke-static {v1, v2}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->access$300(Lcom/loongcheer/admobsdk/admobInit/AdmobInit;Landroid/app/Activity;)V

    .line 90
    iget-object v1, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit$1;->this$0:Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->onResume(Landroid/app/Activity;)V

    .line 92
    return-void
.end method
