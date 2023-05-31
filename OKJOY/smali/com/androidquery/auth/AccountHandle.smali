.class public abstract Lcom/androidquery/auth/AccountHandle;
.super Ljava/lang/Object;
.source "AccountHandle.java"


# instance fields
.field private callbacks:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToken(Lcom/androidquery/callback/AbstractAjaxCallback;Ljava/net/HttpURLConnection;)V
    .registers 3
    .param p2, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<**>;",
            "Ljava/net/HttpURLConnection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "cb":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<**>;"
    return-void
.end method

.method public applyToken(Lcom/androidquery/callback/AbstractAjaxCallback;Lorg/apache/http/HttpRequest;)V
    .registers 3
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<**>;",
            "Lorg/apache/http/HttpRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "cb":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<**>;"
    return-void
.end method

.method protected abstract auth()V
.end method

.method public declared-synchronized auth(Lcom/androidquery/callback/AbstractAjaxCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "cb":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<**>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/androidquery/auth/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_16

    .line 37
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/androidquery/auth/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    .line 38
    iget-object v0, p0, Lcom/androidquery/auth/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {p0}, Lcom/androidquery/auth/AccountHandle;->auth()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1c

    .line 44
    :goto_14
    monitor-exit p0

    return-void

    .line 41
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/androidquery/auth/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    goto :goto_14

    .line 36
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract authenticated()Z
.end method

.method public abstract expired(Lcom/androidquery/callback/AbstractAjaxCallback;Lcom/androidquery/callback/AjaxStatus;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<**>;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")Z"
        }
    .end annotation
.end method

.method protected declared-synchronized failure(Landroid/content/Context;ILjava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/androidquery/auth/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_14

    .line 66
    iget-object v1, p0, Lcom/androidquery/auth/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_16

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/androidquery/auth/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_20

    .line 73
    :cond_14
    monitor-exit p0

    return-void

    .line 66
    :cond_16
    :try_start_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AbstractAjaxCallback;

    .line 67
    .local v0, "cb":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<**>;"
    invoke-virtual {v0, p2, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->failure(ILjava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_20

    goto :goto_b

    .line 64
    .end local v0    # "cb":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<**>;"
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getCacheUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 93
    return-object p1
.end method

.method public getNetworkUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 89
    return-object p1
.end method

.method public abstract reauth(Lcom/androidquery/callback/AbstractAjaxCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<**>;)Z"
        }
    .end annotation
.end method

.method protected declared-synchronized success(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/androidquery/auth/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_14

    .line 53
    iget-object v1, p0, Lcom/androidquery/auth/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_16

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/androidquery/auth/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_20

    .line 60
    :cond_14
    monitor-exit p0

    return-void

    .line 53
    :cond_16
    :try_start_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AbstractAjaxCallback;

    .line 54
    .local v0, "cb":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<**>;"
    invoke-virtual {v0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/content/Context;)V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_20

    goto :goto_b

    .line 51
    .end local v0    # "cb":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<**>;"
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public unauth()V
    .registers 1

    .prologue
    .line 97
    return-void
.end method
