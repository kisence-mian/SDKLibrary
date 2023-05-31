.class public Lcom/anythink/core/b/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static final a:Ljava/lang/String; = "start_time"

.field public static final b:Ljava/lang/String; = "end_time"

.field public static final c:Ljava/lang/String; = "psid"

.field public static final d:Ljava/lang/String; = "launch_mode"

.field public static final e:I = 0x0

.field public static final f:I = 0x1


# instance fields
.field g:J

.field h:I

.field i:Lorg/json/JSONObject;

.field j:Landroid/os/Handler;

.field k:Z

.field l:Ljava/lang/Runnable;

.field private final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Lcom/anythink/core/b/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/a/c;->m:Ljava/lang/String;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/core/b/a/c;->j:Landroid/os/Handler;

    .line 38
    iput-boolean v2, p0, Lcom/anythink/core/b/a/c;->k:Z

    .line 40
    new-instance v0, Lcom/anythink/core/b/a/c$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/b/a/c$1;-><init>(Lcom/anythink/core/b/a/c;)V

    iput-object v0, p0, Lcom/anythink/core/b/a/c;->l:Ljava/lang/Runnable;

    .line 62
    iput v2, p0, Lcom/anythink/core/b/a/c;->h:I

    .line 63
    iput-wide p1, p0, Lcom/anythink/core/b/a/c;->g:J

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/a/c;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/anythink/core/b/a/c;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 69
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 175
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 11

    .prologue
    const/4 v8, 0x1

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 136
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v2

    .line 138
    :try_start_d
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 139
    const-string v4, "psid"

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anythink/core/b/a/e;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v4, "start_time"

    iget-wide v6, p0, Lcom/anythink/core/b/a/c;->g:J

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 141
    const-string v4, "end_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 142
    const-string v4, "launch_mode"

    iget v5, p0, Lcom/anythink/core/b/a/c;->h:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    iput-object v3, p0, Lcom/anythink/core/b/a/c;->i:Lorg/json/JSONObject;

    .line 144
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "playRecord"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v4, p0, Lcom/anythink/core/b/a/c;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onActivityPaused: record leave time:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_70} :catch_b2

    .line 152
    :goto_70
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v2

    .line 153
    invoke-virtual {v2}, Lcom/anythink/core/c/a;->c()I

    move-result v3

    if-ne v3, v8, :cond_97

    .line 154
    iput-boolean v8, p0, Lcom/anythink/core/b/a/c;->k:Z

    .line 155
    iget-object v3, p0, Lcom/anythink/core/b/a/c;->j:Landroid/os/Handler;

    iget-object v4, p0, Lcom/anythink/core/b/a/c;->l:Ljava/lang/Runnable;

    invoke-virtual {v2}, Lcom/anythink/core/c/a;->a()I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    iget-object v2, p0, Lcom/anythink/core/b/a/c;->m:Ljava/lang/String;

    const-string v3, "onActivityPaused : Start to leave application countdown."

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_97
    iget-object v2, p0, Lcom/anythink/core/b/a/c;->m:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onActivityPaused: Method use time:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void

    :catch_b2
    move-exception v3

    goto :goto_70
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 14

    .prologue
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 80
    iget-object v0, p0, Lcom/anythink/core/b/a/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/core/b/a/c;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->c()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2a

    iget-boolean v1, p0, Lcom/anythink/core/b/a/c;->k:Z

    if-nez v1, :cond_109

    :cond_2a
    iget-object v1, p0, Lcom/anythink/core/b/a/c;->i:Lorg/json/JSONObject;

    if-eqz v1, :cond_109

    .line 84
    iget-object v1, p0, Lcom/anythink/core/b/a/c;->m:Ljava/lang/String;

    const-string v4, "onActivityResumed : Time countdown is closed, check the time is up?"

    invoke-static {v1, v4}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/anythink/core/b/a/c;->i:Lorg/json/JSONObject;

    .line 86
    const-string v4, "start_time"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 87
    const-string v6, "end_time"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 88
    const-string v8, "psid"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    const-string v8, "launch_mode"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->a()I

    move-result v0

    int-to-long v10, v0

    cmp-long v0, v8, v10

    if-lez v0, :cond_101

    .line 92
    iget-object v0, p0, Lcom/anythink/core/b/a/c;->m:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onActivityResumed : Time countdown is closed, time up to send agent and create new psid, playtime:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v10, v6, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    sget-object v8, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v10

    invoke-virtual {v10}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "playRecord"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-static {v0, v8, v9, v10}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x1

    if-ne v1, v0, :cond_ff

    const/4 v0, 0x3

    :goto_a0
    invoke-static {v0, v4, v5, v6, v7}, Lcom/anythink/core/b/f/c;->a(IJJ)V

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/core/b/a/c;->g:J

    .line 104
    :goto_a7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/core/b/a/c;->i:Lorg/json/JSONObject;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/b/a/c;->k:Z

    .line 107
    iget-wide v0, p0, Lcom/anythink/core/b/a/c;->g:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_111

    .line 108
    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/core/b/a/c;->h:I

    .line 109
    iget-object v0, p0, Lcom/anythink/core/b/a/c;->m:Ljava/lang/String;

    const-string v1, "onActivityResumed : restart to record starttime"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :try_start_bf
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v4, v5}, Lcom/anythink/core/b/a/e;->a(Landroid/content/Context;Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/b/a/c;->g:J

    .line 112
    iget-wide v0, p0, Lcom/anythink/core/b/a/c;->g:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_e4

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/b/a/c;->g:J
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_e4} :catch_13f

    .line 129
    :cond_e4
    :goto_e4
    iget-object v0, p0, Lcom/anythink/core/b/a/c;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "onActivityResumed: Method use time:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void

    .line 96
    :cond_ff
    const/4 v0, 0x1

    goto :goto_a0

    .line 99
    :cond_101
    iget-object v0, p0, Lcom/anythink/core/b/a/c;->m:Ljava/lang/String;

    const-string v1, "onActivityResumed : Time countdown is closed, continue to record pervious start time"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a7

    .line 102
    :cond_109
    iget-object v0, p0, Lcom/anythink/core/b/a/c;->m:Ljava/lang/String;

    const-string v1, "onActivityResumed : Time countdown is opened or doesn\'t start countdown"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a7

    .line 123
    :cond_111
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v4, Lcom/anythink/core/b/a/d;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "playRecord"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-static {v1, v4, v0, v5}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/anythink/core/b/a/c;->m:Ljava/lang/String;

    const-string v1, "onActivityResumed : Continue to record the pervious start time"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e4

    .line 119
    :catch_13f
    move-exception v0

    goto :goto_e4
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 170
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 74
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 165
    return-void
.end method
