.class public Lcom/bytedance/sdk/openadsdk/playable/e;
.super Ljava/lang/Object;
.source "PlayablePlugin.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/bytedance/sdk/openadsdk/playable/c;

.field private d:Lcom/bytedance/sdk/openadsdk/playable/a;

.field private e:I

.field private f:I

.field private g:Lorg/json/JSONObject;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lorg/json/JSONObject;

.field private m:Lorg/json/JSONObject;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/playable/a;)V
    .registers 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->e:I

    .line 32
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->f:I

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->g:Lorg/json/JSONObject;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->k:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->a:Landroid/content/Context;

    .line 49
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->b:Ljava/lang/ref/WeakReference;

    .line 50
    new-instance p1, Lcom/bytedance/sdk/openadsdk/playable/c;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/playable/c;-><init>(Lcom/bytedance/sdk/openadsdk/playable/e;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->c:Lcom/bytedance/sdk/openadsdk/playable/c;

    .line 51
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->d:Lcom/bytedance/sdk/openadsdk/playable/a;

    .line 52
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/playable/f;->a(Landroid/webkit/WebView;)V

    .line 53
    invoke-virtual {p2}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p3, Lcom/bytedance/sdk/openadsdk/playable/e$1;

    invoke-direct {p3, p0, p2}, Lcom/bytedance/sdk/openadsdk/playable/e$1;-><init>(Lcom/bytedance/sdk/openadsdk/playable/e;Landroid/webkit/WebView;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/playable/e;)I
    .registers 1

    .line 14
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->e:I

    return p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/playable/e;I)I
    .registers 2

    .line 14
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->e:I

    return p1
.end method

.method public static a(Landroid/content/Context;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/playable/a;)Lcom/bytedance/sdk/openadsdk/playable/e;
    .registers 4

    .line 269
    if-eqz p1, :cond_b

    if-nez p2, :cond_5

    goto :goto_b

    .line 272
    :cond_5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/playable/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/playable/e;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/playable/a;)V

    return-object v0

    .line 270
    :cond_b
    :goto_b
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/playable/e;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->g:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/playable/e;)I
    .registers 1

    .line 14
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->f:I

    return p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/playable/e;I)I
    .registers 2

    .line 14
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->f:I

    return p1
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/playable/e;
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->h:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/playable/e;
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-object p0
.end method

.method public a(Z)Lcom/bytedance/sdk/openadsdk/playable/e;
    .registers 4

    .line 141
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->o:Z

    .line 143
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 144
    const-string v0, "endcard_mute"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->o:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 145
    const-string v0, "volumeChange"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/playable/e;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_14

    .line 148
    goto :goto_1c

    .line 146
    :catchall_14
    move-exception p1

    .line 147
    const-string v0, "PlayablePlugin"

    const-string v1, "setIsMute error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/playable/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    :goto_1c
    return-object p0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    .line 191
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/playable/d;->a()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CALL JS ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_22

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_24

    :cond_22
    const-string v1, ""

    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayablePlugin"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/playable/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->d:Lcom/bytedance/sdk/openadsdk/playable/a;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/playable/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 197
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/playable/e;
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->i:Ljava/lang/String;

    .line 96
    return-object p0
.end method

.method public b(Z)Lcom/bytedance/sdk/openadsdk/playable/e;
    .registers 4

    .line 157
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->p:Z

    .line 159
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 160
    const-string v0, "viewStatus"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->p:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 161
    const-string v0, "viewableChange"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/playable/e;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_14

    .line 164
    goto :goto_1c

    .line 162
    :catchall_14
    move-exception p1

    .line 163
    const-string v0, "PlayablePlugin"

    const-string v1, "setViewable error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/playable/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    :goto_1c
    return-object p0
.end method

.method public b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->k:Ljava/util/Map;

    return-object v0
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 10

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 254
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/playable/d;->a()Z

    move-result v2

    const-string v3, ""

    const-string v4, "PlayablePlugin"

    if-eqz v2, :cond_36

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PlayablePlugin JSB-REQ ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "] "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2b

    :cond_2a
    move-object v5, v3

    :goto_2b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/playable/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_36
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->c:Lcom/bytedance/sdk/openadsdk/playable/c;

    invoke-virtual {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/playable/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    .line 262
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/playable/d;->a()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PlayablePlugin JSB-RSP ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "] time:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p2, :cond_6c

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_6c
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/sdk/openadsdk/playable/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_77
    return-object p2
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/playable/e;
    .registers 4

    .line 105
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 106
    const-string v1, "playable_style"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->m:Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    .line 110
    goto :goto_15

    .line 108
    :catchall_d
    move-exception p1

    .line 109
    const-string v0, "PlayablePlugin"

    const-string v1, "setPlayableStyle error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/playable/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    :goto_15
    return-object p0
.end method

.method public c(Z)Lcom/bytedance/sdk/openadsdk/playable/e;
    .registers 4

    .line 173
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->q:Z

    .line 175
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 176
    const-string v0, "send_click"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->q:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 177
    const-string v0, "change_playable_click"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/playable/e;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_14

    .line 180
    goto :goto_1c

    .line 178
    :catchall_14
    move-exception p1

    .line 179
    const-string v0, "PlayablePlugin"

    const-string v1, "setPlayableClick error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/playable/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    :goto_1c
    return-object p0
.end method

.method public c()Lorg/json/JSONObject;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->m:Lorg/json/JSONObject;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/playable/e;
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->j:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/playable/e;
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->n:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->n:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .registers 2

    .line 153
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->o:Z

    return v0
.end method

.method public i()Z
    .registers 2

    .line 169
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->p:Z

    return v0
.end method

.method public j()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->c:Lcom/bytedance/sdk/openadsdk/playable/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/playable/c;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/bytedance/sdk/openadsdk/playable/b;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->d:Lcom/bytedance/sdk/openadsdk/playable/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/playable/a;->a()Lcom/bytedance/sdk/openadsdk/playable/b;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/bytedance/sdk/openadsdk/playable/a;
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->d:Lcom/bytedance/sdk/openadsdk/playable/a;

    return-object v0
.end method

.method public m()Lorg/json/JSONObject;
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->g:Lorg/json/JSONObject;

    return-object v0
.end method

.method public n()Lorg/json/JSONObject;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->l:Lorg/json/JSONObject;

    return-object v0
.end method

.method public o()V
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->d:Lcom/bytedance/sdk/openadsdk/playable/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/playable/a;->b()V

    .line 222
    return-void
.end method

.method public p()V
    .registers 2

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/playable/e;->b(Z)Lcom/bytedance/sdk/openadsdk/playable/e;

    .line 226
    return-void
.end method

.method public q()V
    .registers 2

    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/playable/e;->b(Z)Lcom/bytedance/sdk/openadsdk/playable/e;

    .line 230
    return-void
.end method

.method public r()V
    .registers 2

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e;->c:Lcom/bytedance/sdk/openadsdk/playable/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/playable/c;->b()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 236
    goto :goto_7

    .line 235
    :catchall_6
    move-exception v0

    .line 237
    :goto_7
    return-void
.end method
