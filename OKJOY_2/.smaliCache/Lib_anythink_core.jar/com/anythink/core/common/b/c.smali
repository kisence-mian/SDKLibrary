.class public Lcom/anythink/core/common/b/c;
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

.field k:Ljava/lang/Runnable;

.field private final l:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .registers 5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-class v0, Lcom/anythink/core/common/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/c;->l:Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/core/common/b/c;->j:Landroid/os/Handler;

    .line 47
    new-instance v0, Lcom/anythink/core/common/b/c$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/b/c$1;-><init>(Lcom/anythink/core/common/b/c;)V

    iput-object v0, p0, Lcom/anythink/core/common/b/c;->k:Ljava/lang/Runnable;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/common/b/c;->h:I

    .line 72
    iput-wide p1, p0, Lcom/anythink/core/common/b/c;->g:J

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/b/c;)Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/anythink/core/common/b/c;->l:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 78
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 182
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 10

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 144
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v2

    .line 146
    :try_start_c
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 147
    const-string v4, "psid"

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anythink/core/common/b/g;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v4, "start_time"

    iget-wide v5, p0, Lcom/anythink/core/common/b/c;->g:J

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 149
    const-string v4, "end_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 150
    const-string v4, "launch_mode"

    iget v5, p0, Lcom/anythink/core/common/b/c;->h:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 151
    iput-object v3, p0, Lcom/anythink/core/common/b/c;->i:Lorg/json/JSONObject;

    .line 152
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

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

    invoke-static {v4, v5, v6, v7}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v4, p0, Lcom/anythink/core/common/b/c;->l:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onActivityPaused: record leave time:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_6f} :catch_70

    .line 158
    goto :goto_71

    .line 154
    :catch_70
    move-exception v3

    .line 160
    :goto_71
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lcom/anythink/core/c/a;->m()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_97

    .line 162
    iget-object v2, p0, Lcom/anythink/core/common/b/c;->j:Landroid/os/Handler;

    iget-object v3, p0, Lcom/anythink/core/common/b/c;->k:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/anythink/core/c/a;->k()I

    move-result p1

    int-to-long v4, p1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    iget-object p1, p0, Lcom/anythink/core/common/b/c;->l:Ljava/lang/String;

    const-string v2, "onActivityPaused : Start to leave application countdown."

    invoke-static {p1, v2}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_97
    iget-object p1, p0, Lcom/anythink/core/common/b/c;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityPaused: Method use time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 21

    .line 87
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 89
    iget-object v0, v1, Lcom/anythink/core/common/b/c;->j:Landroid/os/Handler;

    iget-object v4, v1, Lcom/anythink/core/common/b/c;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 92
    iget-object v4, v1, Lcom/anythink/core/common/b/c;->i:Lorg/json/JSONObject;

    const-string v5, ""

    const-string v6, "playRecord"

    const/4 v9, 0x1

    if-eqz v4, :cond_af

    .line 93
    iget-object v4, v1, Lcom/anythink/core/common/b/c;->l:Ljava/lang/String;

    const-string v10, "onActivityResumed : Time countdown is closed, check the time is up?"

    invoke-static {v4, v10}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v4, v1, Lcom/anythink/core/common/b/c;->i:Lorg/json/JSONObject;

    .line 95
    const-string v10, "start_time"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 96
    const-string v10, "end_time"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 97
    const-string v10, "psid"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 98
    const-string v10, "launch_mode"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v14

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->k()I

    move-result v0

    int-to-long v7, v0

    cmp-long v0, v10, v7

    if-lez v0, :cond_a7

    .line 101
    iget-object v0, v1, Lcom/anythink/core/common/b/c;->l:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onActivityResumed : Time countdown is closed, time up to send agent and create new psid, playtime:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v10, v14, v12

    const-wide/16 v17, 0x3e8

    div-long v10, v10, v17

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    sget-object v7, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v10

    invoke-virtual {v10}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8, v5}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    if-ne v4, v9, :cond_9e

    const/4 v0, 0x3

    move v11, v0

    goto :goto_9f

    :cond_9e
    move v11, v9

    :goto_9f
    invoke-static/range {v11 .. v16}, Lcom/anythink/core/common/f/c;->a(IJJLjava/lang/String;)V

    .line 106
    const-wide/16 v7, 0x0

    iput-wide v7, v1, Lcom/anythink/core/common/b/c;->g:J

    goto :goto_b6

    .line 108
    :cond_a7
    iget-object v0, v1, Lcom/anythink/core/common/b/c;->l:Ljava/lang/String;

    const-string v4, "onActivityResumed : Time countdown is closed, continue to record pervious start time"

    invoke-static {v0, v4}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    goto :goto_b6

    .line 111
    :cond_af
    iget-object v0, v1, Lcom/anythink/core/common/b/c;->l:Ljava/lang/String;

    const-string v4, "onActivityResumed : Time countdown is opened or doesn\'t start countdown"

    invoke-static {v0, v4}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_b6
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/anythink/core/common/b/c;->i:Lorg/json/JSONObject;

    .line 115
    iget-wide v7, v1, Lcom/anythink/core/common/b/c;->g:J

    const-wide/16 v10, 0x0

    cmp-long v0, v7, v10

    if-nez v0, :cond_e3

    .line 116
    iput v9, v1, Lcom/anythink/core/common/b/c;->h:I

    .line 117
    iget-object v0, v1, Lcom/anythink/core/common/b/c;->l:Ljava/lang/String;

    const-string v4, "onActivityResumed : restart to record starttime"

    invoke-static {v0, v4}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :try_start_ca
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v9}, Lcom/anythink/core/common/b/g;->a(Landroid/content/Context;Ljava/lang/String;I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/anythink/core/common/b/c;->g:J
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_e0} :catch_e1

    goto :goto_e2

    .line 120
    :catch_e1
    move-exception v0

    .line 124
    :goto_e2
    goto :goto_10c

    .line 128
    :cond_e3
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v7, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v7, v0, v5}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, v1, Lcom/anythink/core/common/b/c;->l:Ljava/lang/String;

    const-string v4, "onActivityResumed : Continue to record the pervious start time"

    invoke-static {v0, v4}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_10c
    iget-wide v4, v1, Lcom/anythink/core/common/b/c;->g:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_11a

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/anythink/core/common/b/c;->g:J

    .line 137
    :cond_11a
    iget-object v0, v1, Lcom/anythink/core/common/b/c;->l:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onActivityResumed: Method use time:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 177
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .line 83
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 172
    return-void
.end method
