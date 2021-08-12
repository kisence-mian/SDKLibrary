.class public Lcom/anythink/core/common/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static final a:Ljava/lang/String; = "APP_LAUNCHER_INFO"

.field public static final b:Ljava/lang/String; = "start_time"

.field public static final c:Ljava/lang/String; = "end_time"

.field public static final d:Ljava/lang/String; = "psid"

.field public static final e:Ljava/lang/String; = "launcher_id"

.field public static final f:Ljava/lang/String; = "launch_mode"

.field public static final g:I = 0x0

.field public static final h:I = 0x1


# instance fields
.field i:Landroid/content/Context;

.field j:J

.field k:I

.field l:Lorg/json/JSONObject;

.field m:Landroid/os/Handler;

.field n:Ljava/lang/String;

.field o:Ljava/lang/Runnable;

.field private final p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;)V
    .registers 7

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-class v0, Lcom/anythink/core/common/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/d;->p:Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/core/common/b/d;->m:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/anythink/core/common/b/d$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/b/d$1;-><init>(Lcom/anythink/core/common/b/d;)V

    iput-object v0, p0, Lcom/anythink/core/common/b/d;->o:Ljava/lang/Runnable;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/common/b/d;->k:I

    .line 81
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_29

    .line 82
    iput-wide p2, p0, Lcom/anythink/core/common/b/d;->j:J

    goto :goto_2f

    .line 84
    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/anythink/core/common/b/d;->j:J

    .line 87
    :goto_2f
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_38

    .line 88
    iput-object p4, p0, Lcom/anythink/core/common/b/d;->n:Ljava/lang/String;

    goto :goto_3e

    .line 90
    :cond_38
    invoke-static {p1}, Lcom/anythink/core/common/g/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/core/common/b/d;->n:Ljava/lang/String;

    .line 93
    :goto_3e
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/b/d;->i:Landroid/content/Context;

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/b/d;)Ljava/lang/String;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/core/common/b/d;->p:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 99
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 198
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 10

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 159
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v2

    .line 161
    :try_start_c
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 162
    const-string v4, "psid"

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anythink/core/common/b/g;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v4, "start_time"

    iget-wide v5, p0, Lcom/anythink/core/common/b/d;->j:J

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 164
    const-string v4, "end_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 165
    const-string v4, "launch_mode"

    iget v5, p0, Lcom/anythink/core/common/b/d;->k:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 166
    const-string v4, "launcher_id"

    iget-object v5, p0, Lcom/anythink/core/common/b/d;->n:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    iput-object v3, p0, Lcom/anythink/core/common/b/d;->l:Lorg/json/JSONObject;

    .line 168
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v6, "APP_LAUNCHER_INFO"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v4, p0, Lcom/anythink/core/common/b/d;->p:Ljava/lang/String;

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
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_65} :catch_66

    .line 174
    goto :goto_67

    .line 170
    :catch_66
    move-exception v3

    .line 176
    :goto_67
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object p1

    .line 177
    invoke-virtual {p1}, Lcom/anythink/core/c/a;->m()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8d

    .line 178
    iget-object v2, p0, Lcom/anythink/core/common/b/d;->m:Landroid/os/Handler;

    iget-object v3, p0, Lcom/anythink/core/common/b/d;->o:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/anythink/core/c/a;->k()I

    move-result p1

    int-to-long v4, p1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    iget-object p1, p0, Lcom/anythink/core/common/b/d;->p:Ljava/lang/String;

    const-string v2, "onActivityPaused : Start to leave application countdown."

    invoke-static {p1, v2}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_8d
    iget-object p1, p0, Lcom/anythink/core/common/b/d;->p:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityPaused: Method use time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 22

    .line 108
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 110
    iget-object v3, v0, Lcom/anythink/core/common/b/d;->m:Landroid/os/Handler;

    iget-object v4, v0, Lcom/anythink/core/common/b/d;->o:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v3

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v3

    .line 113
    iget-object v4, v0, Lcom/anythink/core/common/b/d;->l:Lorg/json/JSONObject;

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_ab

    .line 114
    iget-object v4, v0, Lcom/anythink/core/common/b/d;->p:Ljava/lang/String;

    const-string v8, "onActivityResumed : Time countdown is closed, check the time is up?"

    invoke-static {v4, v8}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v4, v0, Lcom/anythink/core/common/b/d;->l:Lorg/json/JSONObject;

    .line 116
    const-string v8, "start_time"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 117
    const-string v8, "end_time"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 118
    const-string v8, "psid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 119
    const-string v8, "launch_mode"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 120
    const-string v9, "launcher_id"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-virtual {v3}, Lcom/anythink/core/c/a;->k()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v16, v3

    if-gtz v3, :cond_72

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v12

    cmp-long v3, v3, v6

    if-gez v3, :cond_68

    goto :goto_72

    .line 130
    :cond_68
    iput-object v15, v0, Lcom/anythink/core/common/b/d;->n:Ljava/lang/String;

    .line 131
    iget-object v3, v0, Lcom/anythink/core/common/b/d;->p:Ljava/lang/String;

    const-string v4, "onActivityResumed : Time countdown is closed, continue to record pervious start time"

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    goto :goto_b2

    .line 123
    :cond_72
    :goto_72
    iget-object v3, v0, Lcom/anythink/core/common/b/d;->p:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "onActivityResumed : Time countdown is closed, time up to send agent and create new psid, playtime:"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v16, v12, v10

    const-wide/16 v18, 0x3e8

    div-long v6, v16, v18

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v6, "APP_LAUNCHER_INFO"

    const-string v7, ""

    invoke-static {v3, v4, v6, v7}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    if-ne v8, v5, :cond_a2

    const/4 v3, 0x3

    move v9, v3

    goto :goto_a3

    :cond_a2
    move v9, v5

    :goto_a3
    invoke-static/range {v9 .. v15}, Lcom/anythink/core/common/f/c;->a(IJJLjava/lang/String;Ljava/lang/String;)V

    .line 128
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/anythink/core/common/b/d;->j:J

    goto :goto_b2

    .line 134
    :cond_ab
    iget-object v3, v0, Lcom/anythink/core/common/b/d;->p:Ljava/lang/String;

    const-string v4, "onActivityResumed : Time countdown is opened or doesn\'t start countdown"

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_b2
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/anythink/core/common/b/d;->l:Lorg/json/JSONObject;

    .line 138
    iget-wide v3, v0, Lcom/anythink/core/common/b/d;->j:J

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-nez v3, :cond_d4

    .line 139
    iput v5, v0, Lcom/anythink/core/common/b/d;->k:I

    .line 140
    iget-object v3, v0, Lcom/anythink/core/common/b/d;->p:Ljava/lang/String;

    const-string v4, "onActivityResumed : restart to record starttime"

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/anythink/core/common/b/d;->j:J

    .line 142
    iget-object v3, v0, Lcom/anythink/core/common/b/d;->i:Landroid/content/Context;

    invoke-static {v3}, Lcom/anythink/core/common/g/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/anythink/core/common/b/d;->n:Ljava/lang/String;

    .line 152
    :cond_d4
    iget-object v3, v0, Lcom/anythink/core/common/b/d;->p:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onActivityResumed: Method use time:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 193
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .line 104
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 188
    return-void
.end method
