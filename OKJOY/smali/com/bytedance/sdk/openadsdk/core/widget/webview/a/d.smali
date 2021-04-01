.class Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;
.super Ljava/lang/Object;
.source "TmplDiffManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicLong;

.field private c:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .registers 5

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->n()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TmplDiffManager-Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 64
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 65
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;
    .registers 2

    .prologue
    .line 48
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    if-nez v0, :cond_13

    .line 49
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    monitor-enter v1

    .line 50
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    if-nez v0, :cond_12

    .line 51
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    .line 53
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 55
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    return-object v0

    .line 53
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;)V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->d()V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 195
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object v0

    .line 196
    new-instance v1, Lcom/bytedance/sdk/adnet/b/j;

    invoke-direct {v1, v2, p1, v0}, Lcom/bytedance/sdk/adnet/b/j;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 197
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/adnet/b/j;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v1

    .line 198
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/g/e;->d()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/m;)V

    .line 203
    :try_start_1d
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/n;->a()Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, v0, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    if-eqz v1, :cond_3c

    .line 205
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_36} :catch_38

    move-object v0, v1

    .line 210
    :goto_37
    return-object v0

    .line 207
    :catch_38
    move-exception v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    :cond_3c
    const/4 v0, 0x0

    goto :goto_37
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;)V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->e()V

    return-void
.end method

.method private d()V
    .registers 7

    .prologue
    .line 105
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->b()Ljava/util/List;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 145
    :cond_e
    return-void

    .line 110
    :cond_f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/p;

    .line 112
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 117
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 118
    if-eqz v2, :cond_13

    .line 120
    const-string v3, "md5"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    const-string v4, "version"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    const-string v5, "data"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 125
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 126
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 131
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 132
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/d/p;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    .line 135
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 136
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/d/p;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    .line 137
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a(Z)V

    .line 141
    :cond_79
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    goto :goto_13
.end method

.method private e()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 148
    const-string v0, "TmplDiffManager"

    const-string v1, "start doCheckAndDeleteTask"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    if-nez v0, :cond_f

    .line 173
    :cond_e
    :goto_e
    return-void

    .line 153
    :cond_f
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->Q()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 154
    if-lez v0, :cond_e

    .line 157
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->b()Ljava/util/List;

    move-result-object v3

    .line 158
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_56

    .line 159
    :cond_2f
    const-string v1, "TmplDiffManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end doCheckAndDeleteTask maxTplCnt,local size"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 163
    :cond_56
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    int-to-float v4, v0

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    float-to-int v4, v1

    .line 164
    const-string v1, "TmplDiffManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doCheckAndDeleteTask maxTplCnt,local size,deleteCnt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move v1, v2

    .line 166
    :goto_97
    if-ge v1, v4, :cond_aa

    .line 167
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/p;

    .line 168
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_97

    .line 170
    :cond_aa
    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Ljava/util/Set;)V

    .line 171
    const-string v0, "TmplDiffManager"

    const-string v1, "end doCheckAndDeleteTask"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_e
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;
    .registers 3

    .prologue
    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 69
    const/4 v0, 0x0

    .line 72
    :goto_7
    return-object v0

    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v0

    goto :goto_7
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 7

    .prologue
    .line 214
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->x()Lcom/bytedance/sdk/openadsdk/core/d/k$a;

    move-result-object v0

    if-nez v0, :cond_9

    .line 226
    :cond_8
    :goto_8
    return-void

    .line 217
    :cond_9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->x()Lcom/bytedance/sdk/openadsdk/core/d/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->x()Lcom/bytedance/sdk/openadsdk/core/d/k$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k$a;->d()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->x()Lcom/bytedance/sdk/openadsdk/core/d/k$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k$a;->c()Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v3

    .line 221
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/m;->a()Lcom/bytedance/sdk/openadsdk/core/h/m;

    move-result-object v4

    .line 222
    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/h/m;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/m;

    move-result-object v0

    .line 223
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/h/m;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/m;

    move-result-object v0

    .line 224
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/m;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/m;

    move-result-object v0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/h/m;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public declared-synchronized a(Lcom/bytedance/sdk/openadsdk/core/h/m;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 229
    monitor-enter p0

    if-nez p1, :cond_5

    .line 283
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .line 232
    :cond_5
    :try_start_5
    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/h/m;->a:Ljava/lang/String;

    .line 233
    iget-object v4, p1, Lcom/bytedance/sdk/openadsdk/core/h/m;->c:Ljava/lang/String;

    .line 234
    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/core/h/m;->b:Ljava/lang/String;

    .line 235
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->e()Ljava/lang/String;

    move-result-object v5

    .line 236
    :goto_19
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 240
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v6

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {v6, v0, v1}, Lcom/bytedance/sdk/openadsdk/i/a;->c(Ljava/lang/Runnable;I)V
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3b

    goto :goto_3

    .line 229
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3e
    move-object v5, p2

    .line 235
    goto :goto_19
.end method

.method public a(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a(Ljava/util/Set;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 295
    :goto_7
    return-void

    .line 293
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public b()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 76
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->n()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 79
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3e

    .line 80
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->c:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 81
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->c:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v6}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 83
    :cond_27
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->b:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 84
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$a;

    invoke-direct {v1, p0, v6}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 86
    :cond_3e
    return-void
.end method

.method public c()V
    .registers 5

    .prologue
    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_18

    .line 178
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    .line 185
    :cond_18
    return-void
.end method
