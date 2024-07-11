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

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final f:Landroid/content/Context;

.field private final g:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private h:Ljava/lang/String;

.field private i:J

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
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/d/d;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/d/d;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/String;

.field private v:Lorg/json/JSONObject;

.field private w:Lcom/bytedance/sdk/openadsdk/c/p;

.field private x:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/webkit/WebView;)V
    .registers 7

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->a:I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->b:Z

    .line 50
    const/4 v1, -0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->c:I

    .line 56
    const-string v1, "landingpage"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->h:Ljava/lang/String;

    .line 57
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->i:J

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->j:J

    .line 58
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->k:J

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->l:J

    .line 59
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->m:J

    .line 60
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->n:Z

    .line 61
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->q:Z

    .line 64
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    const-string v1, ""

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->u:Ljava/lang/String;

    .line 70
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->f:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 75
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/c/j;->p:Landroid/webkit/WebView;

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->s:Ljava/util/List;

    .line 78
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->t:Ljava/util/concurrent/ConcurrentHashMap;

    .line 79
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_60

    .line 80
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->p:Landroid/webkit/WebView;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/c/j$a;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/bytedance/sdk/openadsdk/c/j$a;-><init>(Lcom/bytedance/sdk/openadsdk/c/j;Lcom/bytedance/sdk/openadsdk/c/j$1;)V

    const-string p3, "JS_LANDING_PAGE_LOG_OBJ"

    invoke-virtual {p1, p2, p3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    :cond_60
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/c/j;)Landroid/webkit/WebView;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->p:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/c/j;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->s:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/c/j;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->t:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p1
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    .line 300
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V

    .line 301
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .registers 11

    .line 304
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->q:Z

    if-nez v0, :cond_5

    .line 305
    return-void

    .line 307
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_9e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_9e

    .line 311
    :cond_11
    const/4 v0, 0x0

    .line 312
    if-eqz p2, :cond_5a

    .line 314
    :try_start_14
    const-string v1, "is_playable"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_22

    move v2, v3

    goto :goto_23

    :cond_22
    move v2, v4

    :goto_23
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 315
    const-string v1, "usecache"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a()Lcom/bytedance/sdk/openadsdk/core/g/a;

    move-result-object v2

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/c/j;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v2

    if-eqz v2, :cond_35

    goto :goto_36

    :cond_35
    move v3, v4

    :goto_36
    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_39} :catch_3a

    .line 317
    goto :goto_3b

    .line 316
    :catch_3a
    move-exception v1

    .line 319
    :goto_3b
    :try_start_3b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_40} :catch_59

    .line 320
    :try_start_40
    const-string v0, "ad_extra_data"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-wide/16 v2, 0x0

    cmp-long p2, p3, v2

    if-lez p2, :cond_54

    .line 322
    const-string p2, "duration"

    invoke-virtual {v1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_54} :catch_56

    .line 325
    :cond_54
    move-object v0, v1

    goto :goto_5a

    .line 324
    :catch_56
    move-exception p2

    move-object v0, v1

    goto :goto_5a

    :catch_59
    move-exception p2

    .line 328
    :cond_5a
    :goto_5a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendEvent: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/c/j;->h:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", ext="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "LandingPageLog"

    invoke-static {p3, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->f:Landroid/content/Context;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/c/j;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/c/j;->h:Ljava/lang/String;

    invoke-static {p2, p3, p4, p1, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 331
    return-void

    .line 308
    :cond_9e
    :goto_9e
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Z
    .registers 4

    .line 334
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->v()I

    move-result v0

    if-nez v0, :cond_12

    goto :goto_31

    .line 337
    :cond_12
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    move-result-object p1

    .line 338
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    if-eq p1, v0, :cond_1b

    .line 339
    return v1

    .line 341
    :cond_1b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object p1

    .line 342
    if-nez p1, :cond_22

    .line 343
    return v1

    .line 345
    :cond_22
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->m()I

    move-result p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gt p1, v0, :cond_2f

    .line 346
    return v1

    .line 348
    :cond_2f
    const/4 p1, 0x1

    return p1

    .line 335
    :cond_31
    :goto_31
    return v1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/lang/String;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->u:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->t:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/util/List;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->s:Ljava/util/List;

    return-object p0
.end method

.method private e()V
    .registers 5

    .line 352
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->s:Ljava/util/List;

    if-eqz v0, :cond_2f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2f

    .line 355
    :cond_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->v()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 357
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_21

    .line 358
    return-void

    .line 360
    :cond_21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->s:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/j;->v:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/g/a;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;)V

    .line 361
    return-void

    .line 353
    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public a(Z)Lcom/bytedance/sdk/openadsdk/c/j;
    .registers 2

    .line 103
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->q:Z

    .line 104
    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/openadsdk/c/p;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->w:Lcom/bytedance/sdk/openadsdk/c/p;

    return-object v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWebError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LandingPageLog"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->w:Lcom/bytedance/sdk/openadsdk/c/p;

    if-eqz v0, :cond_3b

    .line 227
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/p;->g()V

    .line 229
    :cond_3b
    if-eqz p4, :cond_47

    const-string v0, "image"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_47

    const/4 p4, 0x1

    goto :goto_48

    :cond_47
    const/4 p4, 0x0

    .line 230
    :goto_48
    if-nez p4, :cond_4d

    .line 231
    const/4 p4, 0x3

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/c/j;->a:I

    .line 233
    :cond_4d
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->c:I

    .line 234
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->d:Ljava/lang/String;

    .line 235
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/c/j;->e:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public a(Landroid/webkit/WebView;I)V
    .registers 7

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onWebProgress: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LandingPageLog"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->k:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_29

    if-lez p2, :cond_29

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->k:J

    goto :goto_39

    .line 111
    :cond_29
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->l:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_39

    const/16 p1, 0x64

    if-ne p2, p1, :cond_39

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->l:J

    .line 114
    :cond_39
    :goto_39
    return-void
.end method

.method public a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)V
    .registers 5

    .line 278
    if-eqz p2, :cond_52

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_52

    .line 281
    :cond_11
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 282
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 283
    return-void

    .line 285
    :cond_20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->t:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_2b

    .line 286
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->t:Ljava/util/concurrent/ConcurrentHashMap;

    .line 289
    :cond_2b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->t:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 290
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->t:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/d;

    goto :goto_4a

    .line 292
    :cond_3c
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/d;-><init>()V

    .line 293
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->t:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/d;->a(Ljava/lang/String;)V

    move-object p1, v0

    .line 296
    :goto_4a
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/d;->a(Ljava/util/Map;)V

    .line 297
    return-void

    .line 279
    :cond_52
    :goto_52
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 13

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWebFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LandingPageLog"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->w:Lcom/bytedance/sdk/openadsdk/c/p;

    if-eqz v0, :cond_23

    .line 137
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/p;->f()V

    .line 139
    :cond_23
    const/4 v0, 0x1

    if-eqz p1, :cond_49

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->n:Z

    if-nez v1, :cond_49

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->q:Z

    if-eqz v1, :cond_49

    .line 140
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->n:Z

    .line 141
    nop

    .line 159
    const-string v1, "javascript:\n    function sendScroll() {\n        try {\n            var totalH = document.body.scrollHeight || document.documentElement.scrollHeight;\n            var clientH = window.innerHeight || document.documentElement.clientHeight;\n            var scrollH = document.body.scrollTop || document.documentElement.scrollTop;\n            var validH = scrollH + clientH;\n            var result = (validH / totalH * 100).toFixed(2);\n            console.log(\'LandingPageLogscroll status: (\' + scrollH + \'+\' + clientH + \')/\' + totalH + \'=\' + result);\n            window.JS_LANDING_PAGE_LOG_OBJ.readPercent(result);\n        } catch (e) {\n            console.log(\'sendScroll error\' + e)\n        }\n    }\nsendScroll();\nwindow.addEventListener(\'scroll\', function (e) {\n    sendScroll();\n});"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/c/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 163
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->u:Ljava/lang/String;

    .line 164
    nop

    .line 166
    const-string p2, "javascript:var url = window.JS_LANDING_PAGE_LOG_OBJ.getUrl();window.JS_LANDING_PAGE_LOG_OBJ.readHtml(url,document.documentElement.outerHTML);"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 171
    :cond_49
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_52

    .line 172
    return-void

    .line 175
    :cond_52
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->a:I

    const/4 p2, 0x3

    const/4 v1, 0x2

    if-eq p1, p2, :cond_5a

    .line 177
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->a:I

    .line 180
    :cond_5a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->i:J

    .line 183
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->a:I

    const/4 p2, 0x0

    if-ne p1, v1, :cond_6b

    goto :goto_6c

    :cond_6b
    move v0, p2

    .line 184
    :goto_6c
    const-string p1, "render_type_2"

    const-string v1, "h5"

    const-string v2, "render_type"

    const-string v3, "error_url"

    const-string v4, "error_msg"

    const-string v5, "error_code"

    if-eqz v0, :cond_a5

    .line 185
    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/c/j;->l:J

    iget-wide v8, p0, Lcom/bytedance/sdk/openadsdk/c/j;->k:J

    sub-long/2addr v6, v8

    .line 186
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 188
    :try_start_84
    iget v8, p0, Lcom/bytedance/sdk/openadsdk/c/j;->c:I

    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/c/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/c/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_9d} :catch_9e

    .line 194
    goto :goto_9f

    .line 193
    :catch_9e
    move-exception p1

    .line 195
    :goto_9f
    const-string p1, "load_finish"

    invoke-direct {p0, p1, v0, v6, v7}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V

    .line 196
    goto :goto_ca

    .line 197
    :cond_a5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 199
    :try_start_aa
    iget v6, p0, Lcom/bytedance/sdk/openadsdk/c/j;->c:I

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 200
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/c/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/c/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_c3} :catch_c4

    .line 205
    goto :goto_c5

    .line 204
    :catch_c4
    move-exception p1

    .line 206
    :goto_c5
    const-string p1, "load_fail"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 208
    :goto_ca
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onWebStarted: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LandingPageLog"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->w:Lcom/bytedance/sdk/openadsdk/c/p;

    if-eqz p1, :cond_23

    .line 119
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/p;->e()V

    .line 121
    :cond_23
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->b:Z

    if-nez p1, :cond_47

    .line 122
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->b:Z

    .line 123
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 125
    :try_start_2f
    const-string p2, "render_type"

    const-string p3, "h5"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string p2, "render_type_2"

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_40} :catch_41

    .line 129
    goto :goto_42

    .line 127
    :catch_41
    move-exception p2

    .line 130
    :goto_42
    const-string p2, "load_start"

    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 132
    :cond_47
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/c/p;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->w:Lcom/bytedance/sdk/openadsdk/c/p;

    .line 97
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 86
    return-void

    .line 88
    :cond_7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->h:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->v:Lorg/json/JSONObject;

    .line 101
    return-void
.end method

.method public b()V
    .registers 5

    .line 239
    const-string v0, "LandingPageLog"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->m:J

    .line 243
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->i:J

    .line 244
    return-void
.end method

.method public c()V
    .registers 7

    .line 247
    const-string v0, "LandingPageLog"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    move v0, v1

    .line 250
    :goto_10
    if-nez v0, :cond_13

    .line 251
    return-void

    .line 253
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->j:J

    .line 255
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/c/j;->i:J

    sub-long/2addr v2, v4

    .line 256
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 258
    :try_start_21
    const-string v4, "load_status"

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/c/j;->a:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 259
    const-string v4, "max_scroll_percent"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/c/j;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 260
    const-string v4, "render_type"

    const-string v5, "h5"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v4, "render_type_2"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_43} :catch_44

    .line 263
    goto :goto_45

    .line 262
    :catch_44
    move-exception v1

    .line 264
    :goto_45
    const-string v1, "stay_page"

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V

    .line 265
    return-void
.end method

.method public d()V
    .registers 8

    .line 268
    const-string v0, "LandingPageLog"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/j;->e()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->p:Landroid/webkit/WebView;

    .line 271
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_25

    .line 272
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j;->g:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/j;->h:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/c/j;->m:J

    sub-long/2addr v3, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;J)V

    .line 274
    :cond_25
    return-void
.end method
