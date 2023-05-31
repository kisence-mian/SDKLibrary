.class public Lcom/bytedance/embedapplog/util/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bytedance/embedapplog/util/e;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 13
    sget-boolean v0, Lcom/bytedance/embedapplog/util/h;->b:Z

    if-eqz v0, :cond_a

    .line 14
    const-string v0, "SensitiveUtils gDI c"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :cond_a
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 44
    sget-object v0, Lcom/bytedance/embedapplog/util/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    .line 45
    :goto_9
    sget-boolean v1, Lcom/bytedance/embedapplog/util/h;->b:Z

    if-eqz v1, :cond_2e

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SensitiveUtils allowed c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    :cond_2e
    return v0

    .line 44
    :cond_2f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 21
    sget-boolean v0, Lcom/bytedance/embedapplog/util/h;->b:Z

    if-eqz v0, :cond_a

    .line 22
    const-string v0, "SensitiveUtils gSSN c"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    :cond_a
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 29
    sget-boolean v0, Lcom/bytedance/embedapplog/util/h;->b:Z

    if-eqz v0, :cond_a

    .line 30
    const-string v0, "SensitiveUtils gSI c"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    :cond_a
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 37
    sget-boolean v0, Lcom/bytedance/embedapplog/util/h;->b:Z

    if-eqz v0, :cond_a

    .line 38
    const-string v0, "SensitiveUtils gLN c"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    :cond_a
    const-string v0, ""

    return-object v0
.end method
