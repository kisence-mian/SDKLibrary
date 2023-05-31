.class final Lcom/anythink/core/b/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/a/c;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/a/c;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/anythink/core/b/a/c$1;->a:Lcom/anythink/core/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 43
    iget-object v1, p0, Lcom/anythink/core/b/a/c$1;->a:Lcom/anythink/core/b/a/c;

    iget-object v1, v1, Lcom/anythink/core/b/a/c;->i:Lorg/json/JSONObject;

    if-eqz v1, :cond_73

    .line 45
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "playRecord"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/anythink/core/b/a/c$1;->a:Lcom/anythink/core/b/a/c;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/anythink/core/b/a/c;->g:J

    .line 47
    iget-object v1, p0, Lcom/anythink/core/b/a/c$1;->a:Lcom/anythink/core/b/a/c;

    iget-object v1, v1, Lcom/anythink/core/b/a/c;->i:Lorg/json/JSONObject;

    .line 48
    const-string v2, "start_time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 49
    const-string v4, "end_time"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 50
    const-string v6, "psid"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    const-string v6, "launch_mode"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 53
    if-ne v1, v0, :cond_55

    const/4 v0, 0x3

    :cond_55
    invoke-static {v0, v2, v3, v4, v5}, Lcom/anythink/core/b/f/c;->a(IJJ)V

    .line 54
    iget-object v0, p0, Lcom/anythink/core/b/a/c$1;->a:Lcom/anythink/core/b/a/c;

    invoke-static {v0}, Lcom/anythink/core/b/a/c;->a(Lcom/anythink/core/b/a/c;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Time up to send application playTime, reset playStartTime and send agent, playtime:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_72
    return-void

    .line 56
    :cond_73
    iget-object v0, p0, Lcom/anythink/core/b/a/c$1;->a:Lcom/anythink/core/b/a/c;

    invoke-static {v0}, Lcom/anythink/core/b/a/c;->a(Lcom/anythink/core/b/a/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Time up to send application playTime, but recordObject is null."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72
.end method
