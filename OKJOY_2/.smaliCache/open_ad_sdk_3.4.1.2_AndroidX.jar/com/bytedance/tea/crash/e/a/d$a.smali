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

    .line 42
    iput-object p1, p0, Lcom/bytedance/tea/crash/e/a/d$a;->a:Lcom/bytedance/tea/crash/e/a/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/tea/crash/e/a/d;Lcom/bytedance/tea/crash/e/a/d$1;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1}, Lcom/bytedance/tea/crash/e/a/d$a;-><init>(Lcom/bytedance/tea/crash/e/a/d;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 48
    const/4 p1, 0x0

    const-string v0, "level"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 49
    const/16 v0, 0x64

    const-string v1, "scale"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 50
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a/d$a;->a:Lcom/bytedance/tea/crash/e/a/d;

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/bytedance/tea/crash/e/a/d;->a(Lcom/bytedance/tea/crash/e/a/d;I)I

    .line 52
    :cond_27
    return-void
.end method
