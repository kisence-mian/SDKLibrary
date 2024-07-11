.class final Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;
.super Landroid/os/FileObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FileMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;


# direct methods
.method public constructor <init>(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;Ljava/lang/String;I)V
    .registers 4

    .line 1338
    iput-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;->this$0:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;

    .line 1339
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 1340
    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .registers 3

    .line 1344
    iget-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;->this$0:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;

    # getter for: Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->access$500(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_12

    .line 1345
    iget-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;->this$0:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;

    # invokes: Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->tryReload()V
    invoke-static {p1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->access$600(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;)V

    return-void

    .line 1347
    :cond_12
    invoke-virtual {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;->stopWatching()V

    .line 1349
    return-void
.end method
