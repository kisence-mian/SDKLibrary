.class final Lcom/bytedance/embedapplog/cm;
.super Lcom/bytedance/embedapplog/bt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/embedapplog/bt<",
        "Lcom/bytedance/embedapplog/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 13
    const-string v0, "com.samsung.android.deviceidservice"

    invoke-direct {p0, v0}, Lcom/bytedance/embedapplog/bt;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected a()Lcom/bytedance/embedapplog/cn$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/embedapplog/cn$b<",
            "Lcom/bytedance/embedapplog/c;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/bytedance/embedapplog/cm$1;

    invoke-direct {v0, p0}, Lcom/bytedance/embedapplog/cm$1;-><init>(Lcom/bytedance/embedapplog/cm;)V

    return-object v0
.end method

.method protected c(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4

    .line 33
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 34
    const-string v0, "com.samsung.android.deviceidservice"

    const-string v1, "com.samsung.android.deviceidservice.DeviceIdService"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    return-object p1
.end method
