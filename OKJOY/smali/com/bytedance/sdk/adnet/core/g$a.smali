.class Lcom/bytedance/sdk/adnet/core/g$a;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/core/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/adnet/core/Request;

.field private final b:Lcom/bytedance/sdk/adnet/core/n;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/n;Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    .line 127
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/n;

    .line 128
    iput-object p3, p0, Lcom/bytedance/sdk/adnet/core/g$a;->c:Ljava/lang/Runnable;

    .line 129
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Request;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->a(Ljava/lang/String;)V

    .line 179
    :cond_f
    :goto_f
    return-void

    .line 147
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/n;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/core/Request;->getExtra()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/adnet/core/n;->g:Ljava/util/Map;

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/n;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/core/Request;->getStartTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/adnet/core/n;->a(J)Lcom/bytedance/sdk/adnet/core/n;

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/n;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/core/Request;->getNetDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/adnet/core/n;->b(J)Lcom/bytedance/sdk/adnet/core/n;

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/n;->a()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 154
    :try_start_3d
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/n;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->a(Lcom/bytedance/sdk/adnet/core/n;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_44} :catch_6f

    .line 166
    :goto_44
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/n;

    iget-boolean v0, v0, Lcom/bytedance/sdk/adnet/core/n;->d:Z

    if-eqz v0, :cond_67

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 173
    :goto_51
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    .line 175
    :try_start_55
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_5a} :catch_5b

    goto :goto_f

    .line 176
    :catch_5b
    move-exception v0

    goto :goto_f

    .line 159
    :cond_5d
    :try_start_5d
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/n;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->deliverError(Lcom/bytedance/sdk/adnet/core/n;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_64} :catch_65

    goto :goto_44

    .line 160
    :catch_65
    move-exception v0

    goto :goto_44

    .line 169
    :cond_67
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->a(Ljava/lang/String;)V

    goto :goto_51

    .line 155
    :catch_6f
    move-exception v0

    goto :goto_44
.end method
