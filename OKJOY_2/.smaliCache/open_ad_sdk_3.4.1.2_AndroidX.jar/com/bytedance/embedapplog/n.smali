.class Lcom/bytedance/embedapplog/n;
.super Lcom/bytedance/embedapplog/i;
.source "SourceFile"


# static fields
.field private static final b:[J


# instance fields
.field private final c:Lcom/bytedance/embedapplog/as;

.field private final d:Lcom/bytedance/embedapplog/aa;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/32 v2, 0xea60

    aput-wide v2, v0, v1

    sput-object v0, Lcom/bytedance/embedapplog/n;->b:[J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/aa;Lcom/bytedance/embedapplog/as;)V
    .registers 4

    .line 31
    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/i;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p3, p0, Lcom/bytedance/embedapplog/n;->c:Lcom/bytedance/embedapplog/as;

    .line 33
    iput-object p2, p0, Lcom/bytedance/embedapplog/n;->d:Lcom/bytedance/embedapplog/aa;

    .line 34
    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method b()J
    .registers 5

    .line 43
    iget-wide v0, p0, Lcom/bytedance/embedapplog/n;->e:J

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    return-wide v0
.end method

.method c()[J
    .registers 2

    .line 48
    sget-object v0, Lcom/bytedance/embedapplog/n;->b:[J

    return-object v0
.end method

.method public d()Z
    .registers 6

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 54
    invoke-static {}, Lcom/bytedance/embedapplog/k;->d()Lcom/bytedance/embedapplog/q;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_1b

    .line 56
    const-wide/32 v3, 0xc350

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/bytedance/embedapplog/q;->a(JJ)Landroid/os/Bundle;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_1b

    .line 58
    const-string v1, "play_session"

    invoke-static {v1, v0}, Lcom/bytedance/embedapplog/AppLog;->onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 59
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->flush()V

    .line 63
    :cond_1b
    const/4 v0, 0x0

    .line 64
    iget-object v1, p0, Lcom/bytedance/embedapplog/n;->d:Lcom/bytedance/embedapplog/aa;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/aa;->o()I

    move-result v1

    if-eqz v1, :cond_3d

    .line 65
    iget-object v1, p0, Lcom/bytedance/embedapplog/n;->d:Lcom/bytedance/embedapplog/aa;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/aa;->b()Lorg/json/JSONObject;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_39

    .line 67
    iget-object v0, p0, Lcom/bytedance/embedapplog/n;->c:Lcom/bytedance/embedapplog/as;

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/as;->a(Lorg/json/JSONObject;)Z

    move-result v0

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/embedapplog/n;->e:J

    goto :goto_3d

    .line 70
    :cond_39
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 73
    :cond_3d
    :goto_3d
    return v0
.end method

.method e()Ljava/lang/String;
    .registers 2

    .line 78
    const-string v0, "p"

    return-object v0
.end method
