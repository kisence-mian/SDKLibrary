.class final Lcom/facebook/appevents/UserDataStore$2;
.super Ljava/lang/Object;
.source "UserDataStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/UserDataStore;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 139
    # getter for: Lcom/facebook/appevents/UserDataStore;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_16

    .line 140
    # getter for: Lcom/facebook/appevents/UserDataStore;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initStore should have been called before calling setUserData"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    # invokes: Lcom/facebook/appevents/UserDataStore;->initAndWait()V
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->access$200()V

    .line 143
    :cond_16
    # getter for: Lcom/facebook/appevents/UserDataStore;->hashedUserData:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 144
    # getter for: Lcom/facebook/appevents/UserDataStore;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->access$600()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.facebook.appevents.UserDataStore.userData"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 145
    return-void
.end method
