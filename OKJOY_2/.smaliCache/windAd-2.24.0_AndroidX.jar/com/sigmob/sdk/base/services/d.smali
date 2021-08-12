.class public Lcom/sigmob/sdk/base/services/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/services/j$a;


# instance fields
.field a:Lcom/sigmob/sdk/base/services/c;

.field b:Lcom/sigmob/sdk/base/services/k;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/services/k;->b:Lcom/sigmob/sdk/base/services/k;

    iput-object v0, p0, Lcom/sigmob/sdk/base/services/d;->b:Lcom/sigmob/sdk/base/services/k;

    iget-object v0, p0, Lcom/sigmob/sdk/base/services/d;->a:Lcom/sigmob/sdk/base/services/c;

    if-nez v0, :cond_12

    new-instance v0, Lcom/sigmob/sdk/base/services/c;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/services/c;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/services/d;->a:Lcom/sigmob/sdk/base/services/c;

    :cond_12
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/services/d;->a:Lcom/sigmob/sdk/base/services/c;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public a()Z
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a;->Y()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/services/d;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/sigmob/sdk/base/services/k;->a:Lcom/sigmob/sdk/base/services/k;

    iput-object v0, p0, Lcom/sigmob/sdk/base/services/d;->b:Lcom/sigmob/sdk/base/services/k;

    const/4 v0, 0x0

    return v0
.end method
