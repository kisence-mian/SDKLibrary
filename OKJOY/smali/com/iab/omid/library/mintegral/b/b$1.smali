.class Lcom/iab/omid/library/mintegral/b/b$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/mintegral/b/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iab/omid/library/mintegral/b/b;


# direct methods
.method constructor <init>(Lcom/iab/omid/library/mintegral/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/iab/omid/library/mintegral/b/b$1;->a:Lcom/iab/omid/library/mintegral/b/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const/4 v2, 0x0

    if-nez p2, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/b/b$1;->a:Lcom/iab/omid/library/mintegral/b/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iab/omid/library/mintegral/b/b;->a(Lcom/iab/omid/library/mintegral/b/b;Z)V

    goto :goto_3

    :cond_17
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/b/b$1;->a:Lcom/iab/omid/library/mintegral/b/b;

    invoke-static {v0, v2}, Lcom/iab/omid/library/mintegral/b/b;->a(Lcom/iab/omid/library/mintegral/b/b;Z)V

    goto :goto_3

    :cond_29
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/b/b$1;->a:Lcom/iab/omid/library/mintegral/b/b;

    invoke-static {v0, v2}, Lcom/iab/omid/library/mintegral/b/b;->a(Lcom/iab/omid/library/mintegral/b/b;Z)V

    goto :goto_3
.end method
