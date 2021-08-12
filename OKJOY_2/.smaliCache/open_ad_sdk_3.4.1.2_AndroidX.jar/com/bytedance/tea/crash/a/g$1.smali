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

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .registers 18

    .line 187
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->f()Z

    move-result v0

    if-nez v0, :cond_7

    .line 188
    return-void

    .line 190
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/bytedance/tea/crash/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1e

    .line 192
    invoke-static {v1}, Lcom/bytedance/tea/crash/a/g;->a(Z)Z

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

    move-result-wide v2

    sput-wide v2, Lcom/bytedance/tea/crash/a/g;->a:J

    .line 199
    sget-wide v2, Lcom/bytedance/tea/crash/a/g;->b:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_31

    .line 200
    return-void

    .line 202
    :cond_31
    sget-wide v2, Lcom/bytedance/tea/crash/a/g;->a:J

    sget-wide v4, Lcom/bytedance/tea/crash/a/g;->b:J

    sub-long v11, v2, v4

    .line 203
    const-wide/16 v2, 0x0

    cmp-long v0, v11, v2

    if-gtz v0, :cond_41

    .line 204
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->j()I

    goto :goto_9f

    .line 206
    :cond_41
    nop

    .line 207
    const-wide/16 v2, 0x1

    cmp-long v0, v11, v2

    if-nez v0, :cond_5d

    .line 208
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v0

    if-le v0, v1, :cond_51

    .line 209
    const/4 v0, 0x7

    move v13, v0

    goto :goto_70

    .line 210
    :cond_51
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v0

    if-ne v0, v1, :cond_5a

    .line 211
    const/4 v0, 0x3

    move v13, v0

    goto :goto_70

    .line 213
    :cond_5a
    const/4 v0, 0x0

    move v13, v0

    goto :goto_70

    .line 216
    :cond_5d
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v0

    if-le v0, v1, :cond_66

    .line 217
    const/4 v0, 0x5

    move v13, v0

    goto :goto_70

    .line 218
    :cond_66
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v0

    if-ne v0, v1, :cond_6f

    .line 219
    const/4 v0, 0x6

    move v13, v0

    goto :goto_70

    .line 221
    :cond_6f
    move v13, v1

    .line 225
    :goto_70
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->l()J

    move-result-wide v2

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 227
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->m()Z

    move-result v0

    if-nez v0, :cond_96

    .line 228
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->n()Lcom/bytedance/tea/crash/a/g$a;

    move-result-object v6

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->o()J

    move-result-wide v7

    sub-long v7, v2, v7

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->p()J

    move-result-wide v9

    sub-long v9, v4, v9

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v14

    const/4 v15, 0x0

    invoke-static/range {v6 .. v15}, Lcom/bytedance/tea/crash/a/g;->a(Lcom/bytedance/tea/crash/a/g$a;JJJIILjava/lang/String;)V

    .line 230
    :cond_96
    invoke-static {v2, v3}, Lcom/bytedance/tea/crash/a/g;->b(J)J

    .line 231
    invoke-static {v4, v5}, Lcom/bytedance/tea/crash/a/g;->c(J)J

    .line 232
    invoke-static {v1}, Lcom/bytedance/tea/crash/a/g;->b(I)I

    .line 234
    :goto_9f
    return-void
.end method
