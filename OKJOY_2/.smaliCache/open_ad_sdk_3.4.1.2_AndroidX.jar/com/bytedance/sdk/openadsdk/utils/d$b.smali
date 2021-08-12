.class Lcom/bytedance/sdk/openadsdk/utils/d$b;
.super Ljava/lang/Object;
.source "AdLocationUtils.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/utils/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/location/LocationManager;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;Ljava/lang/String;)V
    .registers 3

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/d$b;->a:Landroid/location/LocationManager;

    .line 184
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/d$b;->b:Ljava/lang/String;

    .line 185
    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 190
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/d$b;->a:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/utils/d$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "location:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",getLastKnownLocation use time :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdLocationUtils"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-object v2
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/utils/d$b;->a()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
