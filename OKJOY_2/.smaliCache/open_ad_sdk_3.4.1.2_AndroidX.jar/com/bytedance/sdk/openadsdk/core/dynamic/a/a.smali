.class public Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;
.super Ljava/lang/Object;
.source "DynamicClient.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/dynamic/d/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private f:Lorg/json/JSONObject;

.field private g:Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;

.field private h:Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->i:Landroid/content/Context;

    .line 42
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->g:Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;

    .line 43
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->i:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->h:Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V
    .registers 5

    .line 132
    if-nez p1, :cond_8

    .line 133
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->g:Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->b()V

    .line 134
    return-void

    .line 137
    :cond_8
    :try_start_8
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidgetImp;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->g:Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;

    invoke-direct {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidgetImp;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V

    .line 138
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;)V

    .line 139
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->g:Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->setDynamicBaseWidget(Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;)V

    .line 140
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->g:Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->a()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1e} :catch_1f

    .line 143
    goto :goto_25

    .line 141
    :catch_1f
    move-exception p1

    .line 142
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->g:Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->b()V

    .line 144
    :goto_25
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;)V
    .registers 6

    .line 147
    if-eqz p1, :cond_39

    if-nez p2, :cond_5

    goto :goto_39

    .line 150
    :cond_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->f()Ljava/util/List;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_38

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_12

    goto :goto_38

    .line 154
    :cond_12
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;

    .line 155
    if-eqz v0, :cond_36

    .line 156
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->g:Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/b;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;

    move-result-object v1

    .line 157
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;)V

    .line 158
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->a(Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;)V

    .line 160
    :cond_36
    goto :goto_1a

    .line 161
    :cond_37
    return-void

    .line 152
    :cond_38
    :goto_38
    return-void

    .line 148
    :cond_39
    :goto_39
    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 5

    .line 171
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 173
    :try_start_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->f:Lorg/json/JSONObject;

    if-eqz v1, :cond_12

    .line 174
    const-string v2, "setting"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->d()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    :cond_12
    const-string v1, "templateInfo"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->f:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/a;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 178
    const-string v2, "adInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/b;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/b;-><init>()V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/b;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 180
    const-string v2, "appInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_37} :catch_38

    .line 183
    goto :goto_39

    .line 181
    :catch_38
    move-exception v1

    .line 184
    :goto_39
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    return-object v0
.end method

.method private d()Lorg/json/JSONObject;
    .registers 6

    .line 193
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 194
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 198
    :try_start_b
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v1

    .line 199
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h/h;->g(Ljava/lang/String;)I

    move-result v2

    .line 200
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/h/h;->b(Ljava/lang/String;)Z

    move-result v3

    .line 201
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->b(I)Z

    move-result v1

    .line 202
    const-string v4, "voice_control"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 203
    const-string v1, "rv_skip_time"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    const-string v1, "fv_skip_show"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 205
    const-string v1, "show_dislike"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v3, 0x0

    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aD()Z

    move-result v2

    if-eqz v2, :cond_4f

    const/4 v2, 0x1

    goto :goto_50

    :cond_4f
    move v2, v3

    :goto_50
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 206
    const-string v1, "video_adaptation"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v2, :cond_5d

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->l()I

    move-result v3

    :cond_5d
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_60} :catch_61

    .line 207
    return-object v0

    .line 208
    :catch_61
    move-exception v1

    .line 210
    return-object v0

    .line 195
    :cond_63
    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/bytedance/sdk/openadsdk/core/dynamic/d/b;
    .registers 2

    .line 82
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->c:I

    .line 83
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/c/p;)Lcom/bytedance/sdk/openadsdk/core/dynamic/d/b;
    .registers 2

    .line 105
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/core/dynamic/d/b;
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->e:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 65
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;)Lcom/bytedance/sdk/openadsdk/core/dynamic/d/b;
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->g:Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->setRenderListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;)V

    .line 48
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/dynamic/d/b;
    .registers 2

    .line 59
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/dynamic/d/b;
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->a:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/dynamic/d/b;
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->f:Lorg/json/JSONObject;

    .line 95
    return-object p0
.end method

.method public a()V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->h:Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->a(Lcom/bytedance/sdk/openadsdk/core/dynamic/d/c;)V

    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->h:Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->b(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/dynamic/d/b;
    .registers 2

    .line 100
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/dynamic/d/b;
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->b:Ljava/lang/String;

    .line 77
    return-object p0
.end method

.method public b()Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->g:Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/dynamic/d/b;
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->d:Ljava/lang/String;

    .line 89
    return-object p0
.end method
