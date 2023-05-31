.class Lcom/bytedance/tea/crash/e/a/d;
.super Ljava/lang/Object;
.source "BatteryWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/tea/crash/e/a/d$a;
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    :try_start_3
    invoke-direct {p0, p1}, Lcom/bytedance/tea/crash/e/a/d;->a(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    .line 21
    :goto_6
    return-void

    .line 19
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method static synthetic a(Lcom/bytedance/tea/crash/e/a/d;I)I
    .registers 2

    .prologue
    .line 13
    iput p1, p0, Lcom/bytedance/tea/crash/e/a/d;->a:I

    return p1
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 30
    new-instance v0, Lcom/bytedance/tea/crash/e/a/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/tea/crash/e/a/d$a;-><init>(Lcom/bytedance/tea/crash/e/a/d;Lcom/bytedance/tea/crash/e/a/d$1;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 31
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/bytedance/tea/crash/e/a/d;->a:I

    return v0
.end method
