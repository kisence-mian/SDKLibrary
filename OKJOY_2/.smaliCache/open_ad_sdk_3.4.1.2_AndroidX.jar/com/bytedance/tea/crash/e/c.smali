.class public Lcom/bytedance/tea/crash/e/c;
.super Ljava/lang/Object;
.source "CpuInfo.java"


# direct methods
.method public static a(I)J
    .registers 7

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/self/task/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/stat"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/tea/crash/g/d;->d(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 12
    if-nez p0, :cond_22

    .line 13
    const-wide/16 v0, -0x1

    return-wide v0

    .line 15
    :cond_22
    const/16 v0, 0xb

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Lcom/bytedance/tea/crash/e/i$a;->a()J

    move-result-wide v2

    mul-long/2addr v0, v2

    .line 16
    const/16 v2, 0xc

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Lcom/bytedance/tea/crash/e/i$a;->a()J

    move-result-wide v4

    mul-long/2addr v2, v4

    .line 18
    add-long/2addr v0, v2

    return-wide v0
.end method
