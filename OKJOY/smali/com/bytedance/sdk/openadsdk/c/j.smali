.class public Lcom/bytedance/sdk/openadsdk/c/j;
.super Ljava/lang/Object;
.source "LandingPageLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/c/j$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Ljava/lang/String;

.field private final g:Landroid/content/Context;

.field private final h:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:Z

.field private o:Ljava/util/concurrent/atomic/AtomicInteger;

.field private p:Landroid/webkit/WebView;

.field private q:Z

.field private r:Ljava/util/concurrent/atomic/AtomicInteger;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/String;

.field private v:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Landroid/webkit/WebView;)V
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->a:I

    .line 46
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->b:Z

    .line 47
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->c:Z

    .line 48
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->d:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->e:I

    .line 54
    const-string v0, "landingpage"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->i:Ljava/lang/String;

    .line 55
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->j:J

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->k:J

    .line 56
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->l:J

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->m:J

    .line 57
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->n:Z

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->q:Z

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->u:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->g:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 70
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/c/j;->p:Landroid/webkit/WebView;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->s:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->t:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_5b

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->p:Landroid/webkit/WebView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/j$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/c/j$a;-><init>(Lcom/bytedance/sdk/openadsdk/c/j;Lcom/bytedance/sdk/openadsdk/c/j$1;)V

    const-string v2, "JS_LANDING_PAGE_LOG_OBJ"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    :cond_5b
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/c/j;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->p:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/c/j;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->s:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/c/j;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->t:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p1
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 250
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->q:Z

    if-nez v1, :cond_7

    .line 274
    :cond_6
    :goto_6
    return-void

    .line 253
    :cond_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v1, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 257
    const/4 v1, 0x0

    .line 258
    if-eqz p2, :cond_90

    .line 260
    :try_start_14
    const-string v4, "is_playable"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/j;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->q()Z

    move-result v3

    if-eqz v3, :cond_85

    move v3, v0

    :goto_1f
    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 261
    const-string v3, "usecache"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a()Lcom/bytedance/sdk/openadsdk/core/g/a;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/c/j;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z

    move-result v4

    if-eqz v4, :cond_87

    :goto_30
    invoke-virtual {p2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_33} :catch_8e

    .line 265
    :goto_33
    :try_start_33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_38} :catch_89

    .line 266
    :try_start_38
    const-string v1, "ad_extra_data"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_41} :catch_8c

    .line 271
    :goto_41
    const-string v1, "LandingPageLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/j;->i:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/j;->i:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_6

    :cond_85
    move v3, v2

    .line 260
    goto :goto_1f

    :cond_87
    move v0, v2

    .line 261
    goto :goto_30

    .line 267
    :catch_89
    move-exception v0

    move-object v0, v1

    goto :goto_41

    :catch_8c
    move-exception v1

    goto :goto_41

    .line 262
    :catch_8e
    move-exception v0

    goto :goto_33

    :cond_90
    move-object v0, v1

    goto :goto_41
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->m()I

    move-result v1

    if-nez v1, :cond_14

    .line 291
    :cond_13
    :goto_13
    return v0

    .line 280
    :cond_14
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    move-result-object v1

    .line 281
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    if-ne v1, v2, :cond_13

    .line 284
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v1

    .line 285
    if-eqz v1, :cond_13

    .line 288
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->o()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-le v1, v2, :cond_13

    .line 291
    const/4 v0, 0x1

    goto :goto_13
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->t:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private d()V
    .registers 5

    .prologue
    .line 295
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->s:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 304
    :cond_c
    :goto_c
    return-void

    .line 298
    :cond_d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->v()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 300
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 303
    :cond_22
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->s:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->h:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/j;->v:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/d/k;Lorg/json/JSONObject;)V

    goto :goto_c
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/util/List;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->s:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Z)Lcom/bytedance/sdk/openadsdk/c/j;
    .registers 2

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->q:Z

    .line 91
    return-object p0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 197
    const-string v0, "LandingPageLog"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->j:J

    .line 200
    return-void
.end method

.method public a(Landroid/webkit/WebView;I)V
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 95
    const-string v0, "LandingPageLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWebProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->l:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_29

    if-lez p2, :cond_29

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->l:J

    .line 101
    :cond_28
    :goto_28
    return-void

    .line 98
    :cond_29
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->m:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_28

    const/16 v0, 0x64

    if-ne p2, v0, :cond_28

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->m:J

    goto :goto_28
.end method

.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 190
    const-string v0, "LandingPageLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWebError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x3

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->a:I

    .line 192
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->e:I

    .line 193
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/c/j;->f:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)V
    .registers 6
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 228
    if-eqz p2, :cond_10

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 247
    :cond_10
    :goto_10
    return-void

    .line 231
    :cond_11
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->t:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_2a

    .line 236
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->t:Ljava/util/concurrent/ConcurrentHashMap;

    .line 239
    :cond_2a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->t:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 240
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->t:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/c;

    .line 246
    :goto_3a
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/c;->a(Ljava/util/Map;)V

    goto :goto_10

    .line 242
    :cond_42
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/c;-><init>()V

    .line 243
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->t:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/c;->a(Ljava/lang/String;)V

    goto :goto_3a
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 113
    const-string v0, "LandingPageLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWebFinished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    if-eqz p1, :cond_3d

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->n:Z

    if-nez v0, :cond_3d

    .line 116
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->n:Z

    .line 117
    const-string v0, "javascript:\nfunction sendScroll(){\n   var totalH = document.body.scrollHeight || document.documentElement.scrollHeight;\n   var clientH = window.innerHeight || document.documentElement.clientHeight;\n   var scrollH = document.body.scrollTop || document.documentElement.scrollTop;\n   var validH = scrollH + clientH;\n   var result = (validH/totalH*100).toFixed(2);\n   console.log(\'LandingPageLogscroll status: (\' + scrollH + \'+\' + clientH + \')/\' + totalH + \'=\' + result);\n   window.JS_LANDING_PAGE_LOG_OBJ.readPercent(result);\n}\nsendScroll();\nwindow.addEventListener(\'scroll\', function(e){\n    sendScroll();\n});"

    .line 131
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/s;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 135
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->u:Ljava/lang/String;

    .line 136
    const-string v0, "javascript:var url = window.JS_LANDING_PAGE_LOG_OBJ.getUrl();window.JS_LANDING_PAGE_LOG_OBJ.readHtml(url,document.documentElement.outerHTML);"

    .line 138
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/s;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 143
    :cond_3d
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->a:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_44

    .line 145
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/c/j;->a:I

    .line 148
    :cond_44
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->a:I

    if-ne v0, v4, :cond_66

    move v0, v1

    .line 149
    :goto_49
    if-eqz v0, :cond_68

    .line 150
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->m:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/c/j;->l:J

    sub-long/2addr v2, v4

    .line 151
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->c:Z

    if-nez v0, :cond_65

    .line 152
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->c:Z

    .line 153
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 155
    :try_start_5b
    const-string v1, "load_duration"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_60} :catch_89

    .line 158
    :goto_60
    const-string v1, "load_finish"

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 173
    :cond_65
    :goto_65
    return-void

    .line 148
    :cond_66
    const/4 v0, 0x0

    goto :goto_49

    .line 161
    :cond_68
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->d:Z

    if-nez v0, :cond_65

    .line 162
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->d:Z

    .line 163
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 165
    :try_start_73
    const-string v1, "error_code"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 166
    const-string v1, "error_msg"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_81} :catch_87

    .line 169
    :goto_81
    const-string v1, "load_fail"

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_65

    .line 167
    :catch_87
    move-exception v1

    goto :goto_81

    .line 156
    :catch_89
    move-exception v1

    goto :goto_60
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7

    .prologue
    .line 104
    const-string v0, "LandingPageLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWebStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->b:Z

    if-nez v0, :cond_2d

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->b:Z

    .line 108
    const-string v0, "load_start"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 110
    :cond_2d
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 84
    :goto_6
    return-void

    .line 83
    :cond_7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->i:Ljava/lang/String;

    goto :goto_6
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->v:Lorg/json/JSONObject;

    .line 88
    return-void
.end method

.method public b()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 203
    const-string v0, "LandingPageLog"

    const-string v2, "onStop"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3d

    const/4 v0, 0x1

    .line 206
    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->k:J

    .line 208
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->k:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/c/j;->j:J

    sub-long/2addr v2, v4

    .line 209
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 211
    :try_start_1e
    const-string v5, "load_status"

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/c/j;->a:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 212
    const-string v5, "stay_page_duration"

    invoke-virtual {v4, v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 213
    const-string v2, "max_scroll_percent"

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    :cond_34
    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_37} :catch_3f

    .line 216
    :goto_37
    const-string v0, "landing_close"

    invoke-direct {p0, v0, v4}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 217
    return-void

    :cond_3d
    move v0, v1

    .line 205
    goto :goto_e

    .line 214
    :catch_3f
    move-exception v0

    goto :goto_37
.end method

.method public c()V
    .registers 3

    .prologue
    .line 220
    const-string v0, "LandingPageLog"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/j;->d()V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->p:Landroid/webkit/WebView;

    .line 224
    return-void
.end method
