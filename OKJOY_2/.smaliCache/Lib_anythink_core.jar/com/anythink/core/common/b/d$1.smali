.class final Lcom/anythink/core/common/b/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/b/d;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/d;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/anythink/core/common/b/d$1;->a:Lcom/anythink/core/common/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    .line 58
    iget-object v0, p0, Lcom/anythink/core/common/b/d$1;->a:Lcom/anythink/core/common/b/d;

    iget-object v0, v0, Lcom/anythink/core/common/b/d;->l:Lorg/json/JSONObject;

    if-eqz v0, :cond_6b

    .line 60
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v2, "APP_LAUNCHER_INFO"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/anythink/core/common/b/d$1;->a:Lcom/anythink/core/common/b/d;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/anythink/core/common/b/d;->j:J

    .line 62
    iget-object v0, p0, Lcom/anythink/core/common/b/d$1;->a:Lcom/anythink/core/common/b/d;

    iget-object v0, v0, Lcom/anythink/core/common/b/d;->l:Lorg/json/JSONObject;

    .line 63
    const-string v1, "start_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 64
    const-string v1, "end_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 65
    const-string v1, "psid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 66
    const-string v1, "launch_mode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 67
    const-string v2, "launcher_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 69
    iget-object v0, p0, Lcom/anythink/core/common/b/d$1;->a:Lcom/anythink/core/common/b/d;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/anythink/core/common/b/d;->l:Lorg/json/JSONObject;

    .line 71
    const/4 v0, 0x1

    if-ne v1, v0, :cond_48

    const/4 v0, 0x3

    :cond_48
    move v2, v0

    move-wide v3, v9

    move-wide v5, v11

    invoke-static/range {v2 .. v8}, Lcom/anythink/core/common/f/c;->a(IJJLjava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/anythink/core/common/b/d$1;->a:Lcom/anythink/core/common/b/d;

    invoke-static {v0}, Lcom/anythink/core/common/b/d;->a(Lcom/anythink/core/common/b/d;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Time up to send application playTime, reset playStartTime and send agent, playtime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v11, v9

    const-wide/16 v2, 0x3e8

    div-long/2addr v11, v2

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void

    .line 74
    :cond_6b
    iget-object v0, p0, Lcom/anythink/core/common/b/d$1;->a:Lcom/anythink/core/common/b/d;

    invoke-static {v0}, Lcom/anythink/core/common/b/d;->a(Lcom/anythink/core/common/b/d;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Time up to send application playTime, but recordObject is null."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method
