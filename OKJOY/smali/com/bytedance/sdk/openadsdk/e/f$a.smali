.class Lcom/bytedance/sdk/openadsdk/e/f$a;
.super Landroid/content/BroadcastReceiver;
.source "VolumeChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bytedance/sdk/openadsdk/e/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/e/f;)V
    .registers 3

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/f$a;->a:Ljava/lang/ref/WeakReference;

    .line 101
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 107
    :try_start_0
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v1, -0x1

    .line 108
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_36

    .line 109
    const-string v0, "VolumeChangeObserver"

    const-string v1, "\u5a92\u4f53\u97f3\u91cf\u6539\u53d8\u901a......."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/f$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/e/f;

    .line 111
    if-eqz v0, :cond_36

    .line 112
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/e/f;->d()Lcom/bytedance/sdk/openadsdk/e/e;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_36

    .line 114
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/e/f;->c()I

    move-result v0

    .line 115
    if-ltz v0, :cond_36

    .line 116
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/e/e;->c(I)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_36} :catch_37

    .line 124
    :cond_36
    :goto_36
    return-void

    .line 121
    :catch_37
    move-exception v0

    .line 122
    const-string v1, "VolumeChangeObserver"

    const-string v2, "onVolumeChangedError: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_36
.end method
