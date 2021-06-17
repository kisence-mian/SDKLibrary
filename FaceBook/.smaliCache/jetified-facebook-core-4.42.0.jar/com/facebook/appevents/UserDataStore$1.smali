.class final Lcom/facebook/appevents/UserDataStore$1;
.super Ljava/lang/Object;
.source "UserDataStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/UserDataStore;->setUserDataAndHash(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ud:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/facebook/appevents/UserDataStore$1;->val$ud:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 77
    # getter for: Lcom/facebook/appevents/UserDataStore;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_16

    .line 78
    # getter for: Lcom/facebook/appevents/UserDataStore;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initStore should have been called before calling setUserData"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    # invokes: Lcom/facebook/appevents/UserDataStore;->initAndWait()V
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->access$200()V

    .line 82
    :cond_16
    iget-object v0, p0, Lcom/facebook/appevents/UserDataStore$1;->val$ud:Landroid/os/Bundle;

    # invokes: Lcom/facebook/appevents/UserDataStore;->updateHashUserData(Landroid/os/Bundle;)V
    invoke-static {v0}, Lcom/facebook/appevents/UserDataStore;->access$300(Landroid/os/Bundle;)V

    .line 83
    # getter for: Lcom/facebook/appevents/UserDataStore;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->access$600()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    # getter for: Lcom/facebook/appevents/UserDataStore;->hashedUserData:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    # invokes: Lcom/facebook/appevents/UserDataStore;->mapToJsonStr(Ljava/util/Map;)Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/appevents/UserDataStore;->access$500(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.facebook.appevents.UserDataStore.userData"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    return-void
.end method
