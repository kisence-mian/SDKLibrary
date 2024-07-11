.class Lcom/kwad/sdk/KsAdSDKImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/g/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/KsAdSDKImpl;->init(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/api/SdkConfig;

.field final synthetic b:Lcom/kwad/sdk/KsAdSDKImpl;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/KsAdSDKImpl;Lcom/kwad/sdk/api/SdkConfig;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/KsAdSDKImpl$1;->b:Lcom/kwad/sdk/KsAdSDKImpl;

    iput-object p2, p0, Lcom/kwad/sdk/KsAdSDKImpl$1;->a:Lcom/kwad/sdk/api/SdkConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/kwad/sdk/KsAdSDKImpl$1;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const-string v0, "KsAdSDKImpl"

    const-string v1, "onCacheLoaded()"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->f()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/kwad/sdk/KsAdSDKImpl$1;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/kwad/sdk/KsAdSDKImpl$1;->b:Lcom/kwad/sdk/KsAdSDKImpl;

    # getter for: Lcom/kwad/sdk/KsAdSDKImpl;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->access$200(Lcom/kwad/sdk/KsAdSDKImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/video/a/e;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/kwad/sdk/KsAdSDKImpl$1;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_24
    const-class v0, Lcom/kwad/sdk/plugin/b;

    invoke-static {v0}, Lcom/kwad/sdk/plugin/f;->a(Ljava/lang/Class;)Lcom/kwad/sdk/plugin/d;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/plugin/b;

    if-eqz v0, :cond_37

    iget-object v1, p0, Lcom/kwad/sdk/KsAdSDKImpl$1;->b:Lcom/kwad/sdk/KsAdSDKImpl;

    # getter for: Lcom/kwad/sdk/KsAdSDKImpl;->mAppContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kwad/sdk/KsAdSDKImpl;->access$200(Lcom/kwad/sdk/KsAdSDKImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kwad/sdk/plugin/b;->a(Landroid/content/Context;)V

    :cond_37
    iget-object v0, p0, Lcom/kwad/sdk/KsAdSDKImpl$1;->b:Lcom/kwad/sdk/KsAdSDKImpl;

    # getter for: Lcom/kwad/sdk/KsAdSDKImpl;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->access$200(Lcom/kwad/sdk/KsAdSDKImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/KsAdSDKImpl$1;->a:Lcom/kwad/sdk/api/SdkConfig;

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/a/a;->a(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)V

    :try_start_42
    invoke-static {}, Lcom/kwad/sdk/core/config/c;->m()Z

    move-result v0

    if-nez v0, :cond_50

    sget-object v0, Lcom/kwad/sdk/b;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5b

    :cond_50
    iget-object v0, p0, Lcom/kwad/sdk/KsAdSDKImpl$1;->b:Lcom/kwad/sdk/KsAdSDKImpl;

    # getter for: Lcom/kwad/sdk/KsAdSDKImpl;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->access$200(Lcom/kwad/sdk/KsAdSDKImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver;->registerToApp(Landroid/content/Context;)V
    :try_end_59
    .catchall {:try_start_42 .. :try_end_59} :catchall_5a

    goto :goto_5b

    :catchall_5a
    move-exception v0

    :cond_5b
    :goto_5b
    iget-object v0, p0, Lcom/kwad/sdk/KsAdSDKImpl$1;->b:Lcom/kwad/sdk/KsAdSDKImpl;

    # invokes: Lcom/kwad/sdk/KsAdSDKImpl;->initSpeedLimitConfig()V
    invoke-static {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->access$300(Lcom/kwad/sdk/KsAdSDKImpl;)V

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/response/model/SdkConfigData;)V
    .registers 4

    const-string v0, "KsAdSDKImpl"

    const-string v1, "onCacheLoaded()"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->f()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/kwad/sdk/KsAdSDKImpl$1;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/kwad/sdk/KsAdSDKImpl$1;->b:Lcom/kwad/sdk/KsAdSDKImpl;

    # getter for: Lcom/kwad/sdk/KsAdSDKImpl;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->access$200(Lcom/kwad/sdk/KsAdSDKImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/video/a/e;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/kwad/sdk/KsAdSDKImpl$1;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_24
    const-class v0, Lcom/kwad/sdk/plugin/b;

    invoke-static {v0}, Lcom/kwad/sdk/plugin/f;->a(Ljava/lang/Class;)Lcom/kwad/sdk/plugin/d;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/plugin/b;

    if-eqz v0, :cond_31

    invoke-interface {v0, p1}, Lcom/kwad/sdk/plugin/b;->a(Lcom/kwad/sdk/core/response/model/SdkConfigData;)V

    :cond_31
    iget-object p1, p0, Lcom/kwad/sdk/KsAdSDKImpl$1;->b:Lcom/kwad/sdk/KsAdSDKImpl;

    # invokes: Lcom/kwad/sdk/KsAdSDKImpl;->initSpeedLimitConfig()V
    invoke-static {p1}, Lcom/kwad/sdk/KsAdSDKImpl;->access$300(Lcom/kwad/sdk/KsAdSDKImpl;)V

    return-void
.end method
