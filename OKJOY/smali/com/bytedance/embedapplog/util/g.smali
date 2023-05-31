.class public Lcom/bytedance/embedapplog/util/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:J

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const-wide/16 v0, 0x0

    .line 68
    sput-wide v0, Lcom/bytedance/embedapplog/util/g;->b:J

    .line 72
    sput-wide v0, Lcom/bytedance/embedapplog/util/g;->c:J

    return-void
.end method

.method public static a()J
    .registers 4

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Z)V
    .registers 1

    .prologue
    .line 103
    sput-boolean p0, Lcom/bytedance/embedapplog/util/g;->a:Z

    .line 104
    return-void
.end method

.method public static b()V
    .registers 4

    .prologue
    .line 79
    sget-wide v0, Lcom/bytedance/embedapplog/util/g;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/bytedance/embedapplog/util/g;->b:J

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addFailedCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/bytedance/embedapplog/util/g;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method public static c()Z
    .registers 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canSave "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/bytedance/embedapplog/util/g;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    sget-boolean v0, Lcom/bytedance/embedapplog/util/g;->a:Z

    return v0
.end method

.method public static d()Z
    .registers 4

    .prologue
    .line 90
    sget-wide v0, Lcom/bytedance/embedapplog/util/g;->b:J

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-gez v0, :cond_2f

    .line 91
    invoke-static {}, Lcom/bytedance/embedapplog/util/g;->a()J

    move-result-wide v0

    sget-wide v2, Lcom/bytedance/embedapplog/util/g;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2f

    sget-boolean v0, Lcom/bytedance/embedapplog/util/g;->a:Z

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    .line 93
    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canSend "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    return v0

    .line 91
    :cond_2f
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static e()V
    .registers 4

    .prologue
    .line 98
    invoke-static {}, Lcom/bytedance/embedapplog/util/g;->a()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/embedapplog/util/g;->c:J

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSendFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/bytedance/embedapplog/util/g;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    return-void
.end method
