.class public Lcom/tapjoy/TapjoyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 32
    invoke-static {p1}, Lcom/tapjoy/internal/hd;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hd;

    .line 1176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1177
    const-string v1, "com.tapjoy.PUSH_CLICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_ad

    .line 1178
    const-string v0, "com.tapjoy.PUSH_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1179
    const-string v2, "com.tapjoy.PUSH_PAYLOAD"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.tapjoy.PUSH_PLACEMENT"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1178
    nop

    .line 1313
    if-eqz v0, :cond_ad

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2d

    goto/16 :goto_ad

    .line 1316
    :cond_2d
    nop

    .line 1317
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1339
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1340
    invoke-virtual {v7, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1341
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1343
    const/4 v6, 0x0

    invoke-virtual {v5, v7, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 1344
    if-eqz v5, :cond_75

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_53

    goto :goto_75

    .line 1348
    :cond_53
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1349
    const/high16 v7, 0x10000000

    invoke-virtual {v8, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1350
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v7, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1351
    goto :goto_76

    .line 1345
    :cond_75
    :goto_75
    move-object v8, v1

    .line 1317
    :goto_76
    nop

    .line 1318
    if-eqz v8, :cond_a7

    .line 1319
    if-eqz v3, :cond_7e

    .line 1320
    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1322
    :cond_7e
    invoke-static {p1}, Lcom/tapjoy/internal/hb;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hb;

    move-result-object v2

    .line 1371
    iget-object v3, v2, Lcom/tapjoy/internal/hb;->f:Lcom/tapjoy/internal/he;

    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/he;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 1372
    iget-object v2, v2, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/ha;

    .line 2222
    sget-object v3, Lcom/tapjoy/internal/ez;->a:Lcom/tapjoy/internal/ez;

    const-string v5, "push_click"

    invoke-virtual {v2, v3, v5}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ez;Ljava/lang/String;)Lcom/tapjoy/internal/ew$a;

    move-result-object v3

    .line 2223
    new-instance v5, Lcom/tapjoy/internal/fd;

    invoke-direct {v5, v1, v1, v0}, Lcom/tapjoy/internal/fd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v3, Lcom/tapjoy/internal/ew$a;->s:Lcom/tapjoy/internal/fd;

    .line 2224
    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ew$a;)V

    .line 1374
    :cond_9e
    if-eqz v4, :cond_a3

    .line 1375
    invoke-static {v0, v4}, Lcom/tapjoy/internal/hm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    :cond_a3
    invoke-virtual {p1, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_ad

    .line 1326
    :cond_a7
    const-string v0, "No intent that can be used to launch the main activity."

    invoke-static {v0}, Lcom/tapjoy/internal/gy;->b(Ljava/lang/String;)V

    nop

    .line 33
    :cond_ad
    :goto_ad
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 34
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/tapjoy/TapjoyReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 36
    :cond_b7
    return-void
.end method
