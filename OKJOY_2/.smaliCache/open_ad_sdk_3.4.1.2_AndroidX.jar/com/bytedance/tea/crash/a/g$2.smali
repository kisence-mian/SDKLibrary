.class final Lcom/bytedance/tea/crash/a/g$2;
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

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .registers 18

    .line 240
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->i()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/tea/crash/a/g;->b:J

    .line 241
    sget-wide v0, Lcom/bytedance/tea/crash/a/g;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_13

    .line 242
    return-void

    .line 244
    :cond_13
    sget-wide v0, Lcom/bytedance/tea/crash/a/g;->b:J

    sget-wide v4, Lcom/bytedance/tea/crash/a/g;->a:J

    sub-long v11, v0, v4

    .line 246
    cmp-long v0, v11, v2

    if-gtz v0, :cond_1e

    .line 247
    return-void

    .line 250
    :cond_1e
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->l()J

    move-result-wide v0

    .line 251
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 252
    nop

    .line 254
    const-wide/16 v4, 0x1

    cmp-long v4, v11, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_39

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v7

    if-le v7, v6, :cond_39

    .line 256
    const/16 v4, 0x9

    move v13, v4

    goto :goto_5c

    .line 257
    :cond_39
    if-nez v4, :cond_44

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v7

    if-ne v7, v6, :cond_44

    .line 259
    const/4 v4, 0x2

    move v13, v4

    goto :goto_5c

    .line 260
    :cond_44
    if-lez v4, :cond_4f

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v7

    if-le v7, v6, :cond_4f

    .line 262
    const/4 v4, 0x4

    move v13, v4

    goto :goto_5c

    .line 263
    :cond_4f
    if-lez v4, :cond_5b

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v4

    if-ne v4, v6, :cond_5b

    .line 265
    const/16 v4, 0x8

    move v13, v4

    goto :goto_5c

    .line 268
    :cond_5b
    move v13, v5

    :goto_5c
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->m()Z

    move-result v4

    if-nez v4, :cond_7b

    .line 269
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->n()Lcom/bytedance/tea/crash/a/g$a;

    move-result-object v6

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->o()J

    move-result-wide v7

    sub-long v7, v0, v7

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->p()J

    move-result-wide v9

    sub-long v9, v2, v9

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v14

    move-object/from16 v15, p1

    invoke-static/range {v6 .. v15}, Lcom/bytedance/tea/crash/a/g;->a(Lcom/bytedance/tea/crash/a/g$a;JJJIILjava/lang/String;)V

    .line 271
    :cond_7b
    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/a/g;->b(J)J

    .line 272
    invoke-static {v2, v3}, Lcom/bytedance/tea/crash/a/g;->c(J)J

    .line 273
    invoke-static {v5}, Lcom/bytedance/tea/crash/a/g;->b(I)I

    .line 274
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/bytedance/tea/crash/a/g;->a:J

    .line 275
    return-void
.end method
