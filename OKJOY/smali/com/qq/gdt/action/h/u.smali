.class public Lcom/qq/gdt/action/h/u;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Ljava/lang/Long;


# direct methods
.method public static a(J)V
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_18

    invoke-static {}, Lcom/qq/gdt/action/h/u;->a()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/qq/gdt/action/h/u;->a:Ljava/lang/Long;

    :cond_18
    return-void
.end method

.method public static a()Z
    .registers 1

    sget-object v0, Lcom/qq/gdt/action/h/u;->a:Ljava/lang/Long;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static b()J
    .registers 4

    invoke-static {}, Lcom/qq/gdt/action/h/u;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lcom/qq/gdt/action/h/u;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_11
    return-wide v0

    :cond_12
    const-wide/16 v0, -0x1

    goto :goto_11
.end method
