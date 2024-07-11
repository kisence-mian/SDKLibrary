.class Lcom/bytedance/sdk/openadsdk/f/g$a;
.super Landroid/content/BroadcastReceiver;
.source "VolumeChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/f/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/f/g;)V
    .registers 3

    .line 167
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 168
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/g$a;->a:Ljava/lang/ref/WeakReference;

    .line 169
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 175
    const-string p1, "VolumeChangeObserver"

    :try_start_2
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v1, -0x1

    .line 176
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3f

    .line 177
    const-string p2, "\u5a92\u4f53\u97f3\u91cf\u6539\u53d8\u901a......."

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/f/g$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/f/g;

    .line 179
    if-eqz p2, :cond_3f

    .line 180
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/g;->h()Lcom/bytedance/sdk/openadsdk/f/f;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_3f

    .line 182
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/g;->g()I

    move-result v1

    .line 183
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/g;->a()I

    move-result v2

    if-eq v1, v2, :cond_3f

    .line 184
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/f/g;->a(I)V

    .line 185
    if-ltz v1, :cond_3f

    .line 186
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/f;->c(I)V
    :try_end_3f
    .catchall {:try_start_2 .. :try_end_3f} :catchall_40

    .line 195
    :cond_3f
    goto :goto_46

    .line 193
    :catchall_40
    move-exception p2

    .line 194
    const-string v0, "onVolumeChangedError: "

    invoke-static {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    :goto_46
    return-void
.end method
