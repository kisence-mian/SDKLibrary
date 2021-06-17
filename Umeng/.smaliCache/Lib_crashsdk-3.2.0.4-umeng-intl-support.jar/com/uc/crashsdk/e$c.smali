.class final Lcom/uc/crashsdk/e$c;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/crashsdk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 3436
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 3436
    invoke-direct {p0}, Lcom/uc/crashsdk/e$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 3441
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3445
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 3446
    const-string p1, "level"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/uc/crashsdk/e;->c(I)I

    .line 3447
    const-string p1, "scale"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/uc/crashsdk/e;->d(I)I

    .line 3449
    const-string p1, "voltage"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/uc/crashsdk/e;->e(I)I

    .line 3450
    const-string p1, "health"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/uc/crashsdk/e;->f(I)I

    .line 3451
    const-string p1, "plugged"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/uc/crashsdk/e;->g(I)I

    .line 3452
    const-string p1, "status"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/uc/crashsdk/e;->h(I)I

    .line 3453
    const-string p1, "temperature"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/uc/crashsdk/e;->i(I)I

    .line 3455
    const-string p1, "technology"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uc/crashsdk/e;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 3465
    invoke-static {}, Lcom/uc/crashsdk/e;->I()I

    move-result p1

    const/4 p2, 0x2

    if-lt p1, p2, :cond_84

    .line 3466
    invoke-static {}, Lcom/uc/crashsdk/e;->J()V

    .line 3467
    invoke-static {}, Lcom/uc/crashsdk/e;->K()I

    return-void

    .line 3469
    :cond_63
    const-string p2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    .line 3470
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    goto :goto_85

    .line 3478
    :cond_74
    const-string p2, "android.intent.action.ANR"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_84

    .line 3480
    :try_start_7c
    invoke-static {p1}, Lcom/uc/crashsdk/e;->c(Landroid/content/Context;)Z
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    .line 3483
    return-void

    .line 3481
    :catchall_80
    move-exception p1

    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3485
    :cond_84
    return-void

    .line 3471
    :cond_85
    :goto_85
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/uc/crashsdk/e;->f(Z)Z

    .line 3477
    invoke-static {}, Lcom/uc/crashsdk/e;->J()V

    return-void
.end method
