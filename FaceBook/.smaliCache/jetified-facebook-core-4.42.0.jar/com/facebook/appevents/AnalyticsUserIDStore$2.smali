.class final Lcom/facebook/appevents/AnalyticsUserIDStore$2;
.super Ljava/lang/Object;
.source "AnalyticsUserIDStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AnalyticsUserIDStore;->setUserID(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/facebook/appevents/AnalyticsUserIDStore$2;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 64
    # getter for: Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->access$100()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 66
    :try_start_b
    iget-object v0, p0, Lcom/facebook/appevents/AnalyticsUserIDStore$2;->val$id:Ljava/lang/String;

    # setter for: Lcom/facebook/appevents/AnalyticsUserIDStore;->userID:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/appevents/AnalyticsUserIDStore;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 71
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "com.facebook.appevents.AnalyticsUserIDStore.userID"

    # getter for: Lcom/facebook/appevents/AnalyticsUserIDStore;->userID:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_35

    .line 74
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    # getter for: Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->access$100()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 75
    nop

    .line 76
    return-void

    .line 74
    :catchall_35
    move-exception v0

    # getter for: Lcom/facebook/appevents/AnalyticsUserIDStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->access$100()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 75
    throw v0
.end method
