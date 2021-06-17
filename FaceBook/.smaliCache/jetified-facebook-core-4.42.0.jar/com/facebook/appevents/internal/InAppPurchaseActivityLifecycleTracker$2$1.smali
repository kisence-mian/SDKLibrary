.class Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2$1;
.super Ljava/lang/Object;
.source "InAppPurchaseActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2;

    .line 115
    iput-object p1, p0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2$1;->this$0:Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 118
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 119
    .local v0, "context":Landroid/content/Context;
    nop

    .line 120
    # getter for: Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->inAppBillingObj:Ljava/lang/Object;
    invoke-static {}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->access$000()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getPurchasesInapp(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 121
    .local v1, "purchasesInapp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    # invokes: Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->logPurchaseInapp(Landroid/content/Context;Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->access$100(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 123
    nop

    .line 124
    # getter for: Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->inAppBillingObj:Ljava/lang/Object;
    invoke-static {}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->access$000()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getPurchasesSubs(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 125
    .local v2, "purchasesSubs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/appevents/internal/SubscriptionType;>;"
    nop

    .line 126
    # getter for: Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->inAppBillingObj:Ljava/lang/Object;
    invoke-static {}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->access$000()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getPurchasesSubsExpire(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 127
    .local v3, "purchasesSubsExpire":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 128
    .local v5, "purchase":Ljava/lang/String;
    sget-object v6, Lcom/facebook/appevents/internal/SubscriptionType;->EXPIRE:Lcom/facebook/appevents/internal/SubscriptionType;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local v5    # "purchase":Ljava/lang/String;
    goto :goto_26

    .line 130
    :cond_38
    # invokes: Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->logPurchaseSubs(Landroid/content/Context;Ljava/util/Map;)V
    invoke-static {v0, v2}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->access$200(Landroid/content/Context;Ljava/util/Map;)V

    .line 131
    return-void
.end method
