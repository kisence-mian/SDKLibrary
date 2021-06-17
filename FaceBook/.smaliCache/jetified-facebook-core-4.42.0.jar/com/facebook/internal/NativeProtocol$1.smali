.class final Lcom/facebook/internal/NativeProtocol$1;
.super Ljava/lang/Object;
.source "NativeProtocol.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/NativeProtocol;->updateAllAvailableProtocolVersionsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 876
    const/4 v0, 0x0

    :try_start_1
    # getter for: Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->access$900()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 877
    .local v2, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    const/4 v3, 0x1

    # invokes: Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->fetchAvailableVersions(Z)V
    invoke-static {v2, v3}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->access$1000(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;Z)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_23

    .line 878
    .end local v2    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    goto :goto_9

    .line 880
    :cond_1a
    # getter for: Lcom/facebook/internal/NativeProtocol;->protocolVersionsAsyncUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->access$1100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 881
    nop

    .line 882
    return-void

    .line 880
    :catchall_23
    move-exception v1

    # getter for: Lcom/facebook/internal/NativeProtocol;->protocolVersionsAsyncUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->access$1100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 881
    goto :goto_2d

    :goto_2c
    throw v1

    :goto_2d
    goto :goto_2c
.end method
