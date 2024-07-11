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

.field private final b:Lcom/bytedance/sdk/adnet/core/m;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/m;Ljava/lang/Runnable;)V
    .registers 4

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    .line 127
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/m;

    .line 128
    iput-object p3, p0, Lcom/bytedance/sdk/adnet/core/g$a;->c:Ljava/lang/Runnable;

    .line 129
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Request;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->a(Ljava/lang/String;)V

    .line 144
    return-void

    .line 147
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/m;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/core/Request;->getExtra()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/adnet/core/m;->g:Ljava/util/Map;

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/m;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    invoke-virtual {v3}, Lcom/bytedance/sdk/adnet/core/Request;->getStartTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/adnet/core/m;->a(J)Lcom/bytedance/sdk/adnet/core/m;

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/m;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/core/Request;->getNetDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/adnet/core/m;->b(J)Lcom/bytedance/sdk/adnet/core/m;

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/m;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/m;->a()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 154
    :try_start_3d
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/m;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->a(Lcom/bytedance/sdk/adnet/core/m;)V
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_45

    goto :goto_46

    .line 155
    :catchall_45
    move-exception v0

    .line 156
    :goto_46
    goto :goto_50

    .line 159
    :cond_47
    :try_start_47
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/m;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->deliverError(Lcom/bytedance/sdk/adnet/core/m;)V
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_4f

    .line 161
    goto :goto_50

    .line 160
    :catchall_4f
    move-exception v0

    .line 166
    :goto_50
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/m;

    iget-boolean v0, v0, Lcom/bytedance/sdk/adnet/core/m;->d:Z

    if-eqz v0, :cond_5e

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    goto :goto_65

    .line 169
    :cond_5e
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->a(Ljava/lang/String;)V

    .line 173
    :goto_65
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_6e

    .line 175
    :try_start_69
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6d

    .line 177
    goto :goto_6e

    .line 176
    :catchall_6d
    move-exception v0

    .line 179
    :cond_6e
    :goto_6e
    return-void
.end method
