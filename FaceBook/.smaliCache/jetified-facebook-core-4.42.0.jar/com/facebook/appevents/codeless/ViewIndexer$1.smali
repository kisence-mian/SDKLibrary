.class Lcom/facebook/appevents/codeless/ViewIndexer$1;
.super Ljava/util/TimerTask;
.source "ViewIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/codeless/ViewIndexer;->schedule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$activityName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/codeless/ViewIndexer;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/facebook/appevents/codeless/ViewIndexer;

    .line 89
    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexer$1;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    iput-object p2, p0, Lcom/facebook/appevents/codeless/ViewIndexer$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/facebook/appevents/codeless/ViewIndexer$1;->val$activityName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer$1;->val$activity:Landroid/app/Activity;

    .line 94
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "rootView":Landroid/view/View;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getIsAppIndexingEnabled()Z

    move-result v1

    if-nez v1, :cond_15

    .line 97
    return-void

    .line 100
    :cond_15
    invoke-static {}, Lcom/facebook/internal/InternalSettings;->isUnityApp()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 101
    invoke-static {}, Lcom/facebook/appevents/codeless/internal/UnityReflection;->captureViewHierarchy()V

    .line 102
    return-void

    .line 105
    :cond_1f
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/facebook/appevents/codeless/ViewIndexer$ScreenshotTaker;

    invoke-direct {v2, v0}, Lcom/facebook/appevents/codeless/ViewIndexer$ScreenshotTaker;-><init>(Landroid/view/View;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 107
    .local v1, "screenshotFuture":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/facebook/appevents/codeless/ViewIndexer$1;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    # getter for: Lcom/facebook/appevents/codeless/ViewIndexer;->uiThreadHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$000(Lcom/facebook/appevents/codeless/ViewIndexer;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    const-string v2, ""
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_81

    .line 111
    .local v2, "screenshot":Ljava/lang/String;
    const-wide/16 v3, 0x1

    :try_start_36
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3e} :catch_40

    move-object v2, v3

    .line 114
    goto :goto_4a

    .line 112
    :catch_40
    move-exception v3

    .line 113
    .local v3, "e":Ljava/lang/Exception;
    :try_start_41
    # getter for: Lcom/facebook/appevents/codeless/ViewIndexer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed to take screenshot."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4a
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4f} :catch_81

    .line 119
    .local v3, "viewTree":Lorg/json/JSONObject;
    :try_start_4f
    const-string v4, "screenname"

    iget-object v5, p0, Lcom/facebook/appevents/codeless/ViewIndexer$1;->val$activityName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v4, "screenshot"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 123
    .local v4, "viewArray":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getDictionaryOfView(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    .line 124
    .local v5, "rootViewInfo":Lorg/json/JSONObject;
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 125
    const-string v6, "view"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_4f .. :try_end_6c} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_6c} :catch_81

    .line 128
    .end local v4    # "viewArray":Lorg/json/JSONArray;
    .end local v5    # "rootViewInfo":Lorg/json/JSONObject;
    goto :goto_77

    .line 126
    :catch_6d
    move-exception v4

    .line 127
    .local v4, "e":Lorg/json/JSONException;
    :try_start_6e
    # getter for: Lcom/facebook/appevents/codeless/ViewIndexer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Failed to create JSONObject"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_77
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "tree":Ljava/lang/String;
    iget-object v5, p0, Lcom/facebook/appevents/codeless/ViewIndexer$1;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    # invokes: Lcom/facebook/appevents/codeless/ViewIndexer;->sendToServer(Ljava/lang/String;)V
    invoke-static {v5, v4}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$200(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_80} :catch_81

    .line 134
    .end local v0    # "rootView":Landroid/view/View;
    .end local v1    # "screenshotFuture":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .end local v2    # "screenshot":Ljava/lang/String;
    .end local v3    # "viewTree":Lorg/json/JSONObject;
    .end local v4    # "tree":Ljava/lang/String;
    goto :goto_8b

    .line 132
    :catch_81
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/facebook/appevents/codeless/ViewIndexer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UI Component tree indexing failure!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8b
    return-void
.end method
