.class public Lcom/kwad/sdk/reward/b/a;
.super Lcom/kwad/sdk/reward/d;

# interfaces
.implements Lcom/kwad/sdk/utils/ai$a;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private d:Lcom/kwad/sdk/reward/c/a;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/reward/d;-><init>()V

    new-instance v0, Lcom/kwad/sdk/reward/b/a$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/b/a$1;-><init>(Lcom/kwad/sdk/reward/b/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/a;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/b/a;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/a;->b:Landroid/os/Handler;

    return-object p0
.end method

.method private e()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v1, v1, Lcom/kwad/sdk/reward/a;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/a;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private m()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->g:Landroid/app/Activity;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/a;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_b
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/a;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/a;->d:Lcom/kwad/sdk/reward/c/a;

    new-instance v0, Lcom/kwad/sdk/utils/ai;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/utils/ai;-><init>(Lcom/kwad/sdk/utils/ai$a;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/a;->b:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/a;->e()V

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xf2

    if-ne v0, v1, :cond_2f

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2f

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/a;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object p1, p1, Lcom/kwad/sdk/reward/a;->b:Lcom/kwad/sdk/reward/a/b;

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object p1, p1, Lcom/kwad/sdk/reward/a;->b:Lcom/kwad/sdk/reward/a/b;

    invoke-interface {p1}, Lcom/kwad/sdk/reward/a/b;->e()V

    :cond_25
    iget-object p1, p0, Lcom/kwad/sdk/reward/b/a;->d:Lcom/kwad/sdk/reward/c/a;

    invoke-virtual {p1}, Lcom/kwad/sdk/reward/c/a;->h()V

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/a;->a:Lcom/kwad/sdk/reward/a;

    invoke-virtual {p1}, Lcom/kwad/sdk/reward/a;->b()V

    :cond_2f
    return-void
.end method

.method protected c()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->c()V

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/a;->m()V

    return-void
.end method
