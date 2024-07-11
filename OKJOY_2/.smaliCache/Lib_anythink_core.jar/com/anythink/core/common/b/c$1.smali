.class final Lcom/anythink/core/common/b/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/b/c;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/c;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/anythink/core/common/b/c$1;->a:Lcom/anythink/core/common/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    .line 50
    iget-object v0, p0, Lcom/anythink/core/common/b/c$1;->a:Lcom/anythink/core/common/b/c;

    iget-object v0, v0, Lcom/anythink/core/common/b/c;->i:Lorg/json/JSONObject;

    if-eqz v0, :cond_80

    .line 52
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "playRecord"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/anythink/core/common/b/c$1;->a:Lcom/anythink/core/common/b/c;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/anythink/core/common/b/c;->g:J

    .line 54
    iget-object v0, p0, Lcom/anythink/core/common/b/c$1;->a:Lcom/anythink/core/common/b/c;

    iget-object v0, v0, Lcom/anythink/core/common/b/c;->i:Lorg/json/JSONObject;

    .line 55
    const-string v1, "start_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 56
    const-string v1, "end_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 57
    const-string v1, "psid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 58
    const-string v1, "launch_mode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/anythink/core/common/b/c$1;->a:Lcom/anythink/core/common/b/c;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/anythink/core/common/b/c;->i:Lorg/json/JSONObject;

    .line 62
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5d

    const/4 v0, 0x3

    move v2, v0

    goto :goto_5e

    :cond_5d
    move v2, v1

    :goto_5e
    move-wide v3, v8

    move-wide v5, v10

    invoke-static/range {v2 .. v7}, Lcom/anythink/core/common/f/c;->a(IJJLjava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/anythink/core/common/b/c$1;->a:Lcom/anythink/core/common/b/c;

    invoke-static {v0}, Lcom/anythink/core/common/b/c;->a(Lcom/anythink/core/common/b/c;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Time up to send application playTime, reset playStartTime and send agent, playtime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v10, v8

    const-wide/16 v2, 0x3e8

    div-long/2addr v10, v2

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void

    .line 65
    :cond_80
    iget-object v0, p0, Lcom/anythink/core/common/b/c$1;->a:Lcom/anythink/core/common/b/c;

    invoke-static {v0}, Lcom/anythink/core/common/b/c;->a(Lcom/anythink/core/common/b/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Time up to send application playTime, but recordObject is null."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method
