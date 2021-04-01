.class final Lcom/bytedance/tea/crash/a/g$1;
.super Ljava/lang/Object;
.source "LooperMonitor.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/tea/crash/a/g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .registers 18

    .prologue
    .line 187
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->f()Z

    move-result v0

    if-nez v0, :cond_7

    .line 234
    :cond_6
    :goto_6
    return-void

    .line 190
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/bytedance/tea/crash/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->g()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 192
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bytedance/tea/crash/a/g;->a(Z)Z

    .line 193
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/tea/crash/a/g;->a(I)I

    .line 194
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->h()V

    .line 197
    :cond_1e
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->i()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/tea/crash/a/g;->a:J

    .line 199
    sget-wide v0, Lcom/bytedance/tea/crash/a/g;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 202
    sget-wide v0, Lcom/bytedance/tea/crash/a/g;->a:J

    sget-wide v2, Lcom/bytedance/tea/crash/a/g;->b:J

    sub-long v6, v0, v2

    .line 203
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gtz v0, :cond_40

    .line 204
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->j()I

    goto :goto_6

    .line 207
    :cond_40
    const-wide/16 v0, 0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_8a

    .line 208
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_7f

    .line 209
    const/4 v8, 0x7

    .line 225
    :goto_4e
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->l()J

    move-result-wide v12

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 227
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->m()Z

    move-result v0

    if-nez v0, :cond_74

    .line 228
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->n()Lcom/bytedance/tea/crash/a/g$a;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->o()J

    move-result-wide v2

    sub-long v2, v12, v2

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->p()J

    move-result-wide v4

    sub-long v4, v14, v4

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lcom/bytedance/tea/crash/a/g;->a(Lcom/bytedance/tea/crash/a/g$a;JJJIILjava/lang/String;)V

    .line 230
    :cond_74
    invoke-static {v12, v13}, Lcom/bytedance/tea/crash/a/g;->b(J)J

    .line 231
    invoke-static {v14, v15}, Lcom/bytedance/tea/crash/a/g;->c(J)J

    .line 232
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bytedance/tea/crash/a/g;->b(I)I

    goto :goto_6

    .line 210
    :cond_7f
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_88

    .line 211
    const/4 v8, 0x3

    goto :goto_4e

    .line 213
    :cond_88
    const/4 v8, 0x0

    goto :goto_4e

    .line 216
    :cond_8a
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_93

    .line 217
    const/4 v8, 0x5

    goto :goto_4e

    .line 218
    :cond_93
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9c

    .line 219
    const/4 v8, 0x6

    goto :goto_4e

    .line 221
    :cond_9c
    const/4 v8, 0x1

    goto :goto_4e
.end method
