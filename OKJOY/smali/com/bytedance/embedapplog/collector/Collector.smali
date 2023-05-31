.class public Lcom/bytedance/embedapplog/collector/Collector;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 21
    const-string v0, "EMBED_K_DATA"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 22
    if-eqz v0, :cond_f

    array-length v1, v0

    if-lez v1, :cond_f

    .line 23
    invoke-static {v0}, Lcom/bytedance/embedapplog/a/e;->a([Ljava/lang/String;)V

    .line 27
    :goto_e
    return-void

    .line 25
    :cond_f
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_e
.end method
