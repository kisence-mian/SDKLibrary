.class public Lcom/bytedance/tea/crash/f/b;
.super Lcom/bytedance/tea/crash/f/a;
.source "DeviceIdTask.java"


# direct methods
.method constructor <init>(Landroid/os/Handler;JJ)V
    .registers 6

    .line 17
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/tea/crash/f/a;-><init>(Landroid/os/Handler;JJ)V

    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 22
    invoke-static {}, Lcom/bytedance/tea/crash/h;->a()Lcom/bytedance/tea/crash/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/e/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_35

    .line 29
    :cond_17
    invoke-static {}, Lcom/bytedance/tea/crash/h;->c()Lcom/bytedance/tea/crash/e/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/tea/crash/e/j;->a(Ljava/lang/String;)V

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DeviceIdTask] did is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->a(Ljava/lang/String;)V

    goto :goto_41

    .line 25
    :cond_35
    :goto_35
    invoke-virtual {p0}, Lcom/bytedance/tea/crash/f/b;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/tea/crash/f/b;->a(J)V

    .line 26
    const-string v0, "[DeviceIdTask] did is null, continue check."

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->a(Ljava/lang/String;)V

    .line 32
    :goto_41
    return-void
.end method
