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

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .registers 18

    .prologue
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

    .line 275
    :cond_12
    :goto_12
    return-void

    .line 244
    :cond_13
    sget-wide v0, Lcom/bytedance/tea/crash/a/g;->b:J

    sget-wide v2, Lcom/bytedance/tea/crash/a/g;->a:J

    sub-long v6, v0, v2

    .line 246
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_12

    .line 250
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->l()J

    move-result-wide v12

    .line 251
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 252
    const/4 v8, 0x0

    .line 254
    const-wide/16 v0, 0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_65

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_65

    .line 256
    const/16 v8, 0x9

    .line 268
    :cond_37
    :goto_37
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->m()Z

    move-result v0

    if-nez v0, :cond_56

    .line 269
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

    move-object/from16 v10, p1

    invoke-static/range {v1 .. v10}, Lcom/bytedance/tea/crash/a/g;->a(Lcom/bytedance/tea/crash/a/g$a;JJJIILjava/lang/String;)V

    .line 271
    :cond_56
    invoke-static {v12, v13}, Lcom/bytedance/tea/crash/a/g;->b(J)J

    .line 272
    invoke-static {v14, v15}, Lcom/bytedance/tea/crash/a/g;->c(J)J

    .line 273
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/tea/crash/a/g;->b(I)I

    .line 274
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/bytedance/tea/crash/a/g;->a:J

    goto :goto_12

    .line 257
    :cond_65
    const-wide/16 v0, 0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_74

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_74

    .line 259
    const/4 v8, 0x2

    goto :goto_37

    .line 260
    :cond_74
    const-wide/16 v0, 0x1

    cmp-long v0, v6, v0

    if-lez v0, :cond_83

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_83

    .line 262
    const/4 v8, 0x4

    goto :goto_37

    .line 263
    :cond_83
    const-wide/16 v0, 0x1

    cmp-long v0, v6, v0

    if-lez v0, :cond_37

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_37

    .line 265
    const/16 v8, 0x8

    goto :goto_37
.end method
