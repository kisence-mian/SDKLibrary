.class Lcom/bytedance/embedapplog/a/h;
.super Lcom/bytedance/embedapplog/a/c;
.source "SourceFile"


# static fields
.field private static final b:[J


# instance fields
.field private final c:Lcom/bytedance/embedapplog/d/b;

.field private final d:Lcom/bytedance/embedapplog/b/i;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/32 v2, 0xea60

    aput-wide v2, v0, v1

    sput-object v0, Lcom/bytedance/embedapplog/a/h;->b:[J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/d/b;)V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/a/c;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p3, p0, Lcom/bytedance/embedapplog/a/h;->c:Lcom/bytedance/embedapplog/d/b;

    .line 33
    iput-object p2, p0, Lcom/bytedance/embedapplog/a/h;->d:Lcom/bytedance/embedapplog/b/i;

    .line 34
    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method b()J
    .registers 5

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/bytedance/embedapplog/a/h;->e:J

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    return-wide v0
.end method

.method c()[J
    .registers 2

    .prologue
    .line 48
    sget-object v0, Lcom/bytedance/embedapplog/a/h;->b:[J

    return-object v0
.end method

.method public d()Z
    .registers 7

    .prologue
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 54
    invoke-static {}, Lcom/bytedance/embedapplog/a/e;->d()Lcom/bytedance/embedapplog/a/k;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_1b

    .line 56
    const-wide/32 v4, 0xc350

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/bytedance/embedapplog/a/k;->a(JJ)Landroid/os/Bundle;

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
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/h;->d:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/b/i;->o()I

    move-result v1

    if-eqz v1, :cond_38

    .line 65
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/h;->d:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/b/i;->b()Lorg/json/JSONObject;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_39

    .line 67
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/h;->c:Lcom/bytedance/embedapplog/d/b;

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/d/b;->a(Lorg/json/JSONObject;)Z

    move-result v0

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/embedapplog/a/h;->e:J

    .line 73
    :cond_38
    :goto_38
    return v0

    .line 70
    :cond_39
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_38
.end method

.method e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    const-string v0, "p"

    return-object v0
.end method
