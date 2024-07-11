.class Lcom/sigmob/sdk/mraid/c$c;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/c;

.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/c;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/c$c;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sigmob/sdk/mraid/c$c;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$c;->b:Landroid/content/Context;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/c$c;->b:Landroid/content/Context;

    :cond_a
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 4

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/c$c;->b:Landroid/content/Context;

    if-eqz p1, :cond_15

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_15
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c$c;->b:Landroid/content/Context;

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c$c;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/c;->m(Lcom/sigmob/sdk/mraid/c;)I

    move-result p1

    iget p2, p0, Lcom/sigmob/sdk/mraid/c$c;->c:I

    if-eq p1, p2, :cond_22

    iput p1, p0, Lcom/sigmob/sdk/mraid/c$c;->c:I

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/c$c;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/mraid/c;->a(I)V

    :cond_22
    return-void
.end method
