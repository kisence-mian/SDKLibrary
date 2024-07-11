.class public Lcom/bytedance/embedapplog/collector/Collector;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 21
    const-string p1, "EMBED_K_DATA"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 22
    if-eqz p1, :cond_f

    array-length p2, p1

    if-lez p2, :cond_f

    .line 23
    invoke-static {p1}, Lcom/bytedance/embedapplog/k;->a([Ljava/lang/String;)V

    goto :goto_13

    .line 25
    :cond_f
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 27
    :goto_13
    return-void
.end method
