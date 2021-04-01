.class Lcom/bytedance/tea/crash/e/a/d$a;
.super Landroid/content/BroadcastReceiver;
.source "BatteryWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/tea/crash/e/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/tea/crash/e/a/d;


# direct methods
.method private constructor <init>(Lcom/bytedance/tea/crash/e/a/d;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/bytedance/tea/crash/e/a/d$a;->a:Lcom/bytedance/tea/crash/e/a/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/tea/crash/e/a/d;Lcom/bytedance/tea/crash/e/a/d$1;)V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/bytedance/tea/crash/e/a/d$a;-><init>(Lcom/bytedance/tea/crash/e/a/d;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 46
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 48
    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 49
    const-string v1, "scale"

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 50
    iget-object v2, p0, Lcom/bytedance/tea/crash/e/a/d$a;->a:Lcom/bytedance/tea/crash/e/a/d;

    int-to-float v0, v0

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v2, v0}, Lcom/bytedance/tea/crash/e/a/d;->a(Lcom/bytedance/tea/crash/e/a/d;I)I

    .line 52
    :cond_27
    return-void
.end method
