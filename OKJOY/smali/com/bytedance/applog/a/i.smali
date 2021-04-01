.class Lcom/bytedance/applog/a/i;
.super Lcom/bytedance/applog/a/c;
.source "SourceFile"


# static fields
.field private static final b:[J


# instance fields
.field private final c:Lcom/bytedance/applog/d/b;

.field private final d:Lcom/bytedance/applog/b/i;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/32 v2, 0xea60

    aput-wide v2, v0, v1

    sput-object v0, Lcom/bytedance/applog/a/i;->b:[J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bytedance/applog/b/i;Lcom/bytedance/applog/d/b;)V
    .registers 4

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/bytedance/applog/a/c;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p3, p0, Lcom/bytedance/applog/a/i;->c:Lcom/bytedance/applog/d/b;

    .line 32
    iput-object p2, p0, Lcom/bytedance/applog/a/i;->d:Lcom/bytedance/applog/b/i;

    .line 33
    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method b()J
    .registers 5

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/bytedance/applog/a/i;->e:J

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    return-wide v0
.end method

.method c()[J
    .registers 2

    .prologue
    .line 47
    sget-object v0, Lcom/bytedance/applog/a/i;->b:[J

    return-object v0
.end method

.method public d()Z
    .registers 7

    .prologue
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 53
    invoke-static {}, Lcom/bytedance/applog/a/e;->d()Lcom/bytedance/applog/a/l;

    move-result-object v2

    .line 54
    if-eqz v2, :cond_1b

    .line 55
    const-wide/32 v4, 0xc350

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/bytedance/applog/a/l;->a(JJ)Landroid/os/Bundle;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_1b

    .line 57
    const-string v1, "play_session"

    invoke-static {v1, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 58
    invoke-static {}, Lcom/bytedance/applog/AppLog;->flush()V

    .line 62
    :cond_1b
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcom/bytedance/applog/a/i;->d:Lcom/bytedance/applog/b/i;

    invoke-virtual {v1}, Lcom/bytedance/applog/b/i;->o()I

    move-result v1

    if-eqz v1, :cond_38

    .line 64
    iget-object v1, p0, Lcom/bytedance/applog/a/i;->d:Lcom/bytedance/applog/b/i;

    invoke-virtual {v1}, Lcom/bytedance/applog/b/i;->b()Lorg/json/JSONObject;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_39

    .line 66
    iget-object v0, p0, Lcom/bytedance/applog/a/i;->c:Lcom/bytedance/applog/d/b;

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/d/b;->a(Lorg/json/JSONObject;)Z

    move-result v0

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/applog/a/i;->e:J

    .line 72
    :cond_38
    :goto_38
    return v0

    .line 69
    :cond_39
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_38
.end method

.method e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    const-string v0, "p"

    return-object v0
.end method
