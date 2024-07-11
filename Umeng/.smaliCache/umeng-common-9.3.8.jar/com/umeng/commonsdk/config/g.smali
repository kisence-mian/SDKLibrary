.class public Lcom/umeng/commonsdk/config/g;
.super Ljava/lang/Object;
.source "SensitiveFieldHandler.java"

# interfaces
.implements Lcom/umeng/commonsdk/config/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)V
    .registers 10

    .line 10
    const-string v0, "Config"

    if-eqz p1, :cond_65

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_b

    goto :goto_65

    .line 13
    :cond_b
    nop

    .line 15
    :try_start_c
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_5e

    .line 19
    nop

    .line 20
    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1d

    .line 21
    const-string p1, "--->>> SensitiveFieldHandler: handleConfigItem: invalid config value."

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void

    .line 25
    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--->>> CollectFieldJudgment: handleConfigItem: item : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    if-eqz p2, :cond_5d

    instance-of p1, p2, Lcom/umeng/commonsdk/config/b;

    if-eqz p1, :cond_5d

    .line 31
    const/4 p1, 0x1

    :try_start_3a
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    nop

    .line 33
    const/4 p1, 0x0

    :goto_3f
    array-length v0, p3

    if-ge p1, v0, :cond_5b

    .line 34
    aget-object v0, p3, p1

    .line 35
    invoke-static {v0}, Lcom/umeng/commonsdk/config/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 36
    invoke-static {v1, v2, p1}, Lcom/umeng/commonsdk/config/a;->a(JI)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 37
    move-object v4, p2

    check-cast v4, Lcom/umeng/commonsdk/config/b;

    invoke-virtual {v4, v0, v3}, Lcom/umeng/commonsdk/config/b;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_58
    .catchall {:try_start_3a .. :try_end_58} :catchall_5c

    .line 33
    :cond_58
    add-int/lit8 p1, p1, 0x1

    goto :goto_3f

    .line 42
    :cond_5b
    goto :goto_5d

    .line 40
    :catchall_5c
    move-exception p1

    .line 45
    :cond_5d
    :goto_5d
    return-void

    .line 16
    :catchall_5e
    move-exception p1

    .line 17
    const-string p1, "--->>> SensitiveFieldHandler: handleConfigItem: parseLong exception."

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void

    .line 11
    :cond_65
    :goto_65
    return-void
.end method
