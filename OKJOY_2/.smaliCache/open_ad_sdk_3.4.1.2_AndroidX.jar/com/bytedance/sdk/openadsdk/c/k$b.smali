.class Lcom/bytedance/sdk/openadsdk/c/k$b;
.super Ljava/lang/Object;
.source "OpenAppSuccEvent.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public c:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 177
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 188
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/util/Map;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 177
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 191
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 192
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->d:Ljava/lang/String;

    .line 193
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->e:Ljava/util/Map;

    .line 194
    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->f:Z

    .line 195
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/util/Map;Z)Lcom/bytedance/sdk/openadsdk/c/k$b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/bytedance/sdk/openadsdk/c/k$b;"
        }
    .end annotation

    .line 184
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/k$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/c/k$b;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/util/Map;Z)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public a(Z)Lcom/bytedance/sdk/openadsdk/c/k$b;
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 199
    return-object p0
.end method

.method public b()V
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 208
    return-void
.end method

.method public run()V
    .registers 6

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_11

    goto :goto_78

    .line 218
    :cond_11
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->f:Z

    if-eqz v1, :cond_4c

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u843d\u5730\u9875\u8c03\u8d77\u5e94\u7528\u662f\u5426\u6210\u529f sResult.get() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMLibManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "lp_dpl_success"

    goto :goto_40

    :cond_3e
    const-string v0, "lp_dpl_failed"

    .line 221
    :goto_40
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    goto :goto_77

    .line 223
    :cond_4c
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "dpl_success"

    goto :goto_57

    :cond_55
    const-string v0, "dpl_failed"

    .line 224
    :goto_57
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->e:Ljava/util/Map;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_77

    .line 226
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/k;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    .line 229
    :cond_77
    :goto_77
    return-void

    .line 214
    :cond_78
    :goto_78
    const-string v0, "materialMeta or eventTag or sResult is null, pls check"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;)V

    .line 215
    return-void
.end method
