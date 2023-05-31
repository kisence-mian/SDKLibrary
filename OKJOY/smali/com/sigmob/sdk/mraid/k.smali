.class Lcom/sigmob/sdk/mraid/k;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/h;

.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/h;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/k;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sigmob/sdk/mraid/k;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/k;->b:Landroid/content/Context;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/k;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/k;->b:Landroid/content/Context;

    :cond_c
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 5

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/u;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/k;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/k;->b:Landroid/content/Context;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/k;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_19
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/k;->b:Landroid/content/Context;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/k;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->o(Lcom/sigmob/sdk/mraid/h;)I

    move-result v0

    iget v1, p0, Lcom/sigmob/sdk/mraid/k;->c:I

    if-eq v0, v1, :cond_4

    iput v0, p0, Lcom/sigmob/sdk/mraid/k;->c:I

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/k;->a:Lcom/sigmob/sdk/mraid/h;

    iget v1, p0, Lcom/sigmob/sdk/mraid/k;->c:I

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/h;->a(I)V

    goto :goto_4
.end method
