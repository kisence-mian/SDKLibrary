.class public Lcom/bytedance/sdk/openadsdk/core/x;
.super Ljava/lang/Object;
.source "TTAndroidObject.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/d/b;
.implements Lcom/bytedance/sdk/openadsdk/utils/ak$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/x$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:Z

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/bytedance/sdk/openadsdk/utils/ak;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/bytedance/sdk/openadsdk/d/c;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private n:Z

.field private o:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

.field private p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

.field private q:Lorg/json/JSONObject;

.field private r:Lcom/bytedance/sdk/openadsdk/d/d;

.field private s:Lcom/bytedance/sdk/openadsdk/e/a;

.field private t:Lcom/bytedance/sdk/openadsdk/e/d;

.field private u:Lcom/bytedance/sdk/openadsdk/e/c;

.field private v:Lorg/json/JSONObject;

.field private w:Lcom/bytedance/sdk/openadsdk/core/a/d;

.field private x:Z

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/x;->f:Ljava/util/Map;

    .line 105
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/x;->f:Ljava/util/Map;

    const-string v1, "log_event"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/x;->f:Ljava/util/Map;

    const-string v1, "private"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/x;->f:Ljava/util/Map;

    const-string v1, "dispatch_message"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/x;->f:Ljava/util/Map;

    const-string v1, "custom_event"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/x;->f:Ljava/util/Map;

    const-string v1, "log_event_v3"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->n:Z

    .line 91
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->x:Z

    .line 99
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->A:Z

    .line 101
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->c:Z

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->g:Ljava/lang/ref/WeakReference;

    .line 114
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/ak$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->e:Lcom/bytedance/sdk/openadsdk/utils/ak;

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/x;Ljava/util/List;)Lorg/json/JSONArray;
    .registers 3

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/x$a;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 281
    const-string v0, "call"

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 393
    :cond_c
    :goto_c
    return-void

    .line 285
    :cond_d
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 288
    const-string v0, "appInfo"

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 289
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 290
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->e:I

    invoke-direct {p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lorg/json/JSONObject;I)V

    .line 291
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_c

    .line 296
    :cond_2f
    const-string v0, "adInfo"

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 297
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 298
    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/x;->c(Lorg/json/JSONObject;)V

    .line 299
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_c

    .line 304
    :cond_4a
    const-string v0, "playable_style"

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 305
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 306
    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/x;->d(Lorg/json/JSONObject;)V

    .line 307
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_c

    .line 312
    :cond_65
    const-string v0, "getTemplateInfo"

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 313
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 314
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->q:Lorg/json/JSONObject;

    if-eqz v0, :cond_86

    .line 315
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->q:Lorg/json/JSONObject;

    const-string v1, "setting"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->l()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    :cond_86
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->q:Lorg/json/JSONObject;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_c

    .line 322
    :cond_8f
    const-string v0, "getTeMaiAds"

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 323
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ac

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->v:Lorg/json/JSONObject;

    if-eqz v0, :cond_ac

    .line 324
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/x;->v:Lorg/json/JSONObject;

    invoke-direct {p0, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 328
    :cond_ac
    const-string v0, "isViewable"

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 329
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 331
    const-string v3, "viewStatus"

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->A:Z

    if-eqz v0, :cond_cf

    move v0, v1

    :goto_c5
    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 332
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_c

    :cond_cf
    move v0, v2

    .line 331
    goto :goto_c5

    .line 337
    :cond_d1
    const-string v0, "getScreenSize"

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_104

    .line 338
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 340
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->s:Lcom/bytedance/sdk/openadsdk/e/a;

    if-eqz v0, :cond_c

    .line 341
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->s:Lcom/bytedance/sdk/openadsdk/e/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/e/a;->b()I

    move-result v0

    .line 342
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->s:Lcom/bytedance/sdk/openadsdk/e/a;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/e/a;->a()I

    move-result v1

    .line 343
    const-string v2, "width"

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 344
    const-string v0, "height"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 345
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_c

    .line 352
    :cond_104
    const-string v0, "getVolume"

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_152

    .line 353
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 354
    const/4 v3, -0x1

    .line 355
    if-eqz v0, :cond_191

    .line 356
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 357
    const-string v3, "TTAndroidObject"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u97f3\u4e50\u97f3\u91cf >>>> AudioManager-->currentVolume="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :goto_13a
    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 361
    if-gtz v0, :cond_150

    .line 362
    :goto_144
    const-string v0, "endcard_mute"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 363
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_c

    :cond_150
    move v1, v2

    .line 361
    goto :goto_144

    .line 368
    :cond_152
    const-string v0, "removeLoading"

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_167

    .line 369
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->u:Lcom/bytedance/sdk/openadsdk/e/c;

    if-eqz v0, :cond_c

    .line 370
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->u:Lcom/bytedance/sdk/openadsdk/e/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/e/c;->a()V

    goto/16 :goto_c

    .line 376
    :cond_167
    const-string v0, "sendReward"

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 377
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->c:Z

    .line 378
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->t:Lcom/bytedance/sdk/openadsdk/e/d;

    if-eqz v0, :cond_17c

    .line 379
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->t:Lcom/bytedance/sdk/openadsdk/e/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/e/d;->a()V

    .line 385
    :cond_17c
    invoke-direct {p0, p1, v4}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/x$a;Lorg/json/JSONObject;)Z

    move-result v0

    .line 386
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 389
    if-eqz v0, :cond_c

    .line 390
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_c

    :cond_191
    move v0, v3

    goto :goto_13a
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/x;)V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->m()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/d/i;)V
    .registers 5

    .prologue
    .line 772
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->z:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 779
    :cond_a
    :goto_a
    return-void

    .line 775
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->z:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/i;

    .line 776
    if-eqz v0, :cond_a

    .line 777
    invoke-virtual {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/i;->a(ILcom/bytedance/sdk/openadsdk/core/d/i;)V

    goto :goto_a
.end method

.method private a(Lorg/json/JSONObject;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 245
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 246
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->j()Ljava/util/List;

    move-result-object v0

    .line 247
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d

    .line 250
    :cond_1d
    const-string v0, "appName"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v0, "innerAppName"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string v0, "aid"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v0, "sdkEdition"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v0, "appVersion"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v0, "netType"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v0, "supportList"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string v0, "deviceId"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/e/b;)V
    .registers 10

    .prologue
    .line 784
    if-nez p2, :cond_3

    .line 826
    :goto_2
    return-void

    .line 787
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 788
    :cond_f
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/e/b;->a(ZLjava/util/List;)V

    goto :goto_2

    .line 824
    :catch_15
    move-exception v0

    goto :goto_2

    .line 791
    :cond_17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->c(Ljava/lang/String;)I

    move-result v2

    .line 792
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->j()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v3

    .line 793
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/d/l;-><init>()V

    .line 794
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->x()Lcom/bytedance/sdk/openadsdk/core/d/k$a;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 795
    const/4 v0, 0x2

    iput v0, v4, Lcom/bytedance/sdk/openadsdk/core/d/l;->e:I

    .line 797
    :cond_33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Y()Lorg/json/JSONObject;

    move-result-object v0

    .line 798
    if-nez v0, :cond_6a

    .line 799
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v0

    .line 801
    :goto_41
    if-eqz p1, :cond_5b

    .line 802
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 803
    :goto_47
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 804
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 805
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_47

    .line 808
    :cond_5b
    iput-object v1, v4, Lcom/bytedance/sdk/openadsdk/core/d/l;->g:Lorg/json/JSONObject;

    .line 809
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->f()Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/x$3;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/x$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/e/b;)V

    invoke-interface {v0, v3, v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/core/p$b;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_69} :catch_15

    goto :goto_2

    :cond_6a
    move-object v1, v0

    goto :goto_41
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/x$a;Lorg/json/JSONObject;)Z
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 406
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->b:Z

    if-eqz v0, :cond_56

    .line 408
    :try_start_5
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_56

    .line 410
    const-string v1, "download_app_ad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u66ff\u6362 download_url \u524d appAdJson:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v1, "download_url"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    const-string v1, "download_app_ad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u66ff\u6362 download_url \u540e appAdJson::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_56} :catch_1cb

    .line 418
    :cond_56
    :goto_56
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->c:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1ce

    :cond_60
    :goto_60
    packed-switch v0, :pswitch_data_20c

    :cond_63
    :goto_63
    move v0, v6

    .line 490
    :goto_64
    return v0

    .line 418
    :sswitch_65
    const-string v2, "subscribe_app_ad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    move v0, v6

    goto :goto_60

    :sswitch_6f
    const-string v2, "download_app_ad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const/4 v0, 0x1

    goto :goto_60

    :sswitch_79
    const-string v2, "cancel_download_app_ad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const/4 v0, 0x2

    goto :goto_60

    :sswitch_83
    const-string v2, "unsubscribe_app_ad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const/4 v0, 0x3

    goto :goto_60

    :sswitch_8d
    const-string v2, "landscape_click"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const/4 v0, 0x4

    goto :goto_60

    :sswitch_97
    const-string v2, "clickEvent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const/4 v0, 0x5

    goto :goto_60

    :sswitch_a1
    const-string v2, "renderDidFinish"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const/4 v0, 0x6

    goto :goto_60

    :sswitch_ab
    const-string v2, "dynamicTrack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const/4 v0, 0x7

    goto :goto_60

    :sswitch_b5
    const-string v2, "skipVideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const/16 v0, 0x8

    goto :goto_60

    :sswitch_c0
    const-string v2, "muteVideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const/16 v0, 0x9

    goto :goto_60

    :sswitch_cb
    const-string v2, "changeVideoState"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const/16 v0, 0xa

    goto :goto_60

    :sswitch_d6
    const-string v2, "getCurrentVideoState"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const/16 v0, 0xb

    goto :goto_60

    :sswitch_e1
    const-string v2, "send_temai_product_ids"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const/16 v0, 0xc

    goto/16 :goto_60

    :sswitch_ed
    const-string v2, "getMaterialMeta"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const/16 v0, 0xd

    goto/16 :goto_60

    :sswitch_f9
    const-string v2, "getNetworkData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const/16 v0, 0xe

    goto/16 :goto_60

    .line 420
    :pswitch_105
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->o()V

    .line 422
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_123

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_123

    .line 423
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/x;->j:Ljava/lang/String;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/x;->k:I

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/x;->n:Z

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;IZ)V

    :cond_123
    move v0, v6

    .line 425
    goto/16 :goto_64

    .line 428
    :pswitch_126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->w:Lcom/bytedance/sdk/openadsdk/core/a/d;

    if-eqz v0, :cond_134

    .line 429
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->w:Lcom/bytedance/sdk/openadsdk/core/a/d;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->x:Z

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/d;->a(Z)V

    move v0, v6

    .line 430
    goto/16 :goto_64

    .line 432
    :cond_134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    if-nez v0, :cond_13b

    move v0, v6

    .line 433
    goto/16 :goto_64

    .line 436
    :cond_13b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_63

    .line 437
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_63

    .line 442
    :pswitch_152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    if-nez v0, :cond_159

    move v0, v6

    .line 443
    goto/16 :goto_64

    .line 445
    :cond_159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/d/c;->b(Lorg/json/JSONObject;)V

    goto/16 :goto_63

    .line 448
    :pswitch_162
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    if-nez v0, :cond_169

    move v0, v6

    .line 449
    goto/16 :goto_64

    .line 451
    :cond_169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_63

    .line 455
    :pswitch_172
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_63

    .line 456
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/b/b;

    if-eqz v1, :cond_63

    .line 457
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/b/b;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/b;->P()V

    goto/16 :goto_63

    .line 462
    :pswitch_18b
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->h(Lorg/json/JSONObject;)V

    goto/16 :goto_63

    .line 465
    :pswitch_192
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->i(Lorg/json/JSONObject;)V

    goto/16 :goto_63

    .line 468
    :pswitch_199
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->j(Lorg/json/JSONObject;)V

    goto/16 :goto_63

    .line 471
    :pswitch_1a0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->k()V

    goto/16 :goto_63

    .line 474
    :pswitch_1a5
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->e(Lorg/json/JSONObject;)V

    goto/16 :goto_63

    .line 477
    :pswitch_1ac
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->f(Lorg/json/JSONObject;)V

    goto/16 :goto_63

    .line 480
    :pswitch_1b3
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/x;->g(Lorg/json/JSONObject;)Z

    move-result v0

    goto/16 :goto_64

    .line 482
    :pswitch_1b9
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->k(Lorg/json/JSONObject;)V

    goto/16 :goto_63

    .line 485
    :pswitch_1c0
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/x;->l(Lorg/json/JSONObject;)Z

    move-result v0

    goto/16 :goto_64

    .line 487
    :pswitch_1c6
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Lcom/bytedance/sdk/openadsdk/core/x$a;Lorg/json/JSONObject;)V

    goto/16 :goto_63

    .line 414
    :catch_1cb
    move-exception v0

    goto/16 :goto_56

    .line 418
    :sswitch_data_1ce
    .sparse-switch
        -0x7966d06a -> :sswitch_65
        -0x45af975a -> :sswitch_cb
        -0x2fbc0e0e -> :sswitch_97
        -0x1d2a69be -> :sswitch_ed
        -0x1097c80a -> :sswitch_e1
        0x1a8c298 -> :sswitch_6f
        0x642ec2f -> :sswitch_83
        0x220cf04c -> :sswitch_ab
        0x281c12d3 -> :sswitch_79
        0x2a6ab279 -> :sswitch_d6
        0x44a639e2 -> :sswitch_c0
        0x49bca8fc -> :sswitch_a1
        0x66233dc2 -> :sswitch_f9
        0x7c55d63c -> :sswitch_b5
        0x7d77e304 -> :sswitch_8d
    .end sparse-switch

    :pswitch_data_20c
    .packed-switch 0x0
        :pswitch_105
        :pswitch_126
        :pswitch_152
        :pswitch_162
        :pswitch_172
        :pswitch_18b
        :pswitch_192
        :pswitch_199
        :pswitch_1a0
        :pswitch_1a5
        :pswitch_1ac
        :pswitch_1b3
        :pswitch_1b9
        :pswitch_1c0
        :pswitch_1c6
    .end packed-switch
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/x;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->y:Ljava/util/List;

    return-object p1
.end method

.method private b(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 842
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 843
    if-nez p1, :cond_9

    move-object v0, v1

    .line 851
    :goto_8
    return-object v0

    .line 846
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 847
    const/4 v0, 0x0

    move v2, v0

    :goto_f
    if-ge v2, v3, :cond_22

    .line 848
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 849
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->ae()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 847
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f

    :cond_22
    move-object v0, v1

    .line 851
    goto :goto_8
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/core/x$a;Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 717
    if-nez p1, :cond_3

    .line 737
    :goto_2
    return-void

    .line 720
    :cond_3
    :try_start_3
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/x$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/x$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/x$a;)V

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/e/b;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_e

    goto :goto_2

    .line 735
    :catch_e
    move-exception v0

    goto :goto_2
.end method

.method private b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    .line 872
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 873
    const-string v1, "__msg_type"

    const-string v2, "callback"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 874
    const-string v1, "__callback_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 875
    if-eqz p2, :cond_18

    .line 876
    const-string v1, "__params"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 878
    :cond_18
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->m(Lorg/json/JSONObject;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 881
    :goto_1b
    return-void

    .line 879
    :catch_1c
    move-exception v0

    goto :goto_1b
.end method

.method private c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    .line 899
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 911
    :goto_6
    return-void

    .line 902
    :cond_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 903
    const-string v1, "__msg_type"

    const-string v2, "event"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 904
    const-string v1, "__event_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 905
    if-eqz p2, :cond_1f

    .line 906
    const-string v1, "__params"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 908
    :cond_1f
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->m(Lorg/json/JSONObject;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_6

    .line 909
    :catch_23
    move-exception v0

    goto :goto_6
.end method

.method private c(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 262
    const-string v0, "cid"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 266
    const-string v0, "log_extra"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    :cond_1e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 270
    const-string v0, "download_url"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    :cond_2d
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 915
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 916
    const-string v1, "TTAndroidObject"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 919
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 920
    const/4 v0, 0x0

    :goto_19
    if-ge v0, v2, :cond_92

    .line 921
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/x$a;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/x$a;-><init>()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_73

    .line 924
    :try_start_20
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 925
    if-eqz v4, :cond_50

    .line 926
    const-string v5, "__msg_type"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/bytedance/sdk/openadsdk/core/x$a;->a:Ljava/lang/String;

    .line 927
    const-string v5, "__callback_id"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    .line 928
    const-string v5, "func"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/bytedance/sdk/openadsdk/core/x$a;->c:Ljava/lang/String;

    .line 929
    const-string v5, "params"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, v3, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    .line 930
    const-string v5, "JSSDK"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/bytedance/sdk/openadsdk/core/x$a;->e:I
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_50} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_50} :catch_73

    .line 934
    :cond_50
    :goto_50
    :try_start_50
    iget-object v4, v3, Lcom/bytedance/sdk/openadsdk/core/x$a;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_60

    iget-object v4, v3, Lcom/bytedance/sdk/openadsdk/core/x$a;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 920
    :cond_60
    :goto_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 937
    :cond_63
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/x;->e:Lcom/bytedance/sdk/openadsdk/utils/ak;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ak;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 938
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 939
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/x;->e:Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ak;->sendMessage(Landroid/os/Message;)Z
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_72} :catch_73

    goto :goto_60

    .line 941
    :catch_73
    move-exception v0

    .line 942
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->a()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 943
    const-string v0, "TTAndroidObject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to parse jsbridge msg queue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    :cond_92
    :goto_92
    return-void

    .line 945
    :cond_93
    const-string v0, "TTAndroidObject"

    const-string v1, "failed to parse jsbridge msg queue"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_92

    .line 932
    :catch_9b
    move-exception v4

    goto :goto_50
.end method

.method private d(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 276
    const-string v0, "playable_style"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    :cond_1b
    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->o:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    if-nez v0, :cond_a

    .line 1041
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->k:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 1043
    :cond_a
    return-object p1
.end method

.method private e(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 500
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    .line 509
    :cond_6
    :goto_6
    return-void

    .line 504
    :cond_7
    :try_start_7
    const-string v0, "mute"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 505
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;->e(Z)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    goto :goto_6

    .line 506
    :catch_14
    move-exception v0

    goto :goto_6
.end method

.method private f(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1047
    if-nez p1, :cond_3

    .line 1076
    :cond_2
    :goto_2
    return-void

    .line 1050
    :cond_3
    const-string v0, "bytedance://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1053
    const-string v0, "bytedance://dispatch_message/"

    .line 1054
    const-string v1, "bytedance://private/setresult/"

    .line 1056
    :try_start_f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1057
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->i()Landroid/webkit/WebView;

    move-result-object v0

    .line 1059
    if-eqz v0, :cond_2

    .line 1060
    const-string v1, "javascript:ToutiaoJSBridge._fetchQueue()"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/s;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_2

    .line 1074
    :catch_21
    move-exception v0

    goto :goto_2

    .line 1062
    :cond_23
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1063
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1064
    const/16 v1, 0x26

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1065
    if-lez v1, :cond_2

    .line 1068
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1069
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1070
    const-string v2, "SCENE_FETCHQUEUE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1071
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->d(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_50} :catch_21

    goto :goto_2
.end method

.method private f(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 512
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    .line 521
    :cond_6
    :goto_6
    return-void

    .line 516
    :cond_7
    :try_start_7
    const-string v0, "stateType"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 517
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;->d(I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    goto :goto_6

    .line 518
    :catch_14
    move-exception v0

    goto :goto_6
.end method

.method private g(Lorg/json/JSONObject;)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 530
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    if-eqz v1, :cond_7

    if-nez p1, :cond_8

    .line 542
    :cond_7
    :goto_7
    return v0

    .line 533
    :cond_8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;->K()J

    move-result-wide v2

    long-to-double v2, v2

    .line 534
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;->L()I

    move-result v1

    .line 536
    :try_start_15
    const-string v4, "currentTime"

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v6

    invoke-virtual {p1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 537
    const-string v2, "state"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 538
    const-string v2, "TTAndroidObject"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentTime,state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3d} :catch_3f

    .line 539
    const/4 v0, 0x1

    goto :goto_7

    .line 540
    :catch_3f
    move-exception v1

    goto :goto_7
.end method

.method private h(Lorg/json/JSONObject;)V
    .registers 32

    .prologue
    .line 572
    if-nez p1, :cond_3

    .line 614
    :cond_2
    :goto_2
    return-void

    .line 576
    :cond_3
    :try_start_3
    const-string v4, "adId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 577
    const-string v4, "areaType"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v25

    .line 578
    const-string v4, "clickInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 580
    const-wide/16 v4, 0x0

    .line 581
    if-eqz v26, :cond_10f

    .line 582
    const-string v4, "down_x"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v22

    .line 583
    const-string v4, "down_y"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v20

    .line 584
    const-string v4, "up_x"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v18

    .line 585
    const-string v4, "up_y"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v16

    .line 586
    const-string v4, "down_time"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    .line 587
    const-string v4, "up_time"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    .line 588
    const-string v4, "button_x"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    .line 589
    const-string v4, "button_y"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 590
    const-string v4, "button_width"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 591
    const-string v4, "button_height"

    const-wide/16 v28, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 593
    :goto_86
    new-instance v26, Lcom/bytedance/sdk/openadsdk/core/d/i$a;

    invoke-direct/range {v26 .. v26}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;-><init>()V

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    .line 594
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->d(I)Lcom/bytedance/sdk/openadsdk/core/d/i$a;

    move-result-object v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    .line 595
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->c(I)Lcom/bytedance/sdk/openadsdk/core/d/i$a;

    move-result-object v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    .line 596
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->b(I)Lcom/bytedance/sdk/openadsdk/core/d/i$a;

    move-result-object v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    .line 597
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->a(I)Lcom/bytedance/sdk/openadsdk/core/d/i$a;

    move-result-object v16

    double-to-long v14, v14

    .line 598
    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->b(J)Lcom/bytedance/sdk/openadsdk/core/d/i$a;

    move-result-object v14

    double-to-long v12, v12

    .line 599
    invoke-virtual {v14, v12, v13}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->a(J)Lcom/bytedance/sdk/openadsdk/core/d/i$a;

    move-result-object v12

    double-to-int v10, v10

    .line 600
    invoke-virtual {v12, v10}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->e(I)Lcom/bytedance/sdk/openadsdk/core/d/i$a;

    move-result-object v10

    double-to-int v8, v8

    .line 601
    invoke-virtual {v10, v8}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->f(I)Lcom/bytedance/sdk/openadsdk/core/d/i$a;

    move-result-object v8

    double-to-int v6, v6

    .line 602
    invoke-virtual {v8, v6}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->g(I)Lcom/bytedance/sdk/openadsdk/core/d/i$a;

    move-result-object v6

    double-to-int v4, v4

    .line 603
    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->h(I)Lcom/bytedance/sdk/openadsdk/core/d/i$a;

    move-result-object v4

    .line 604
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/i$a;->a()Lcom/bytedance/sdk/openadsdk/core/d/i;

    move-result-object v4

    .line 605
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/x;->o:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    if-eqz v5, :cond_f2

    .line 606
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/x;->o:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    move/from16 v0, v25

    invoke-interface {v5, v0, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;->a(ILcom/bytedance/sdk/openadsdk/core/d/i;)V

    .line 608
    :cond_f2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2, v4}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/d/i;)V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_fb} :catch_fd

    goto/16 :goto_2

    .line 609
    :catch_fd
    move-exception v4

    .line 610
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/x;->o:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    if-eqz v4, :cond_2

    .line 611
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/x;->o:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;->a(ILcom/bytedance/sdk/openadsdk/core/d/i;)V

    goto/16 :goto_2

    :cond_10f
    move-wide v6, v4

    move-wide v8, v4

    move-wide v10, v4

    move-wide v12, v4

    move-wide v14, v4

    move-wide/from16 v16, v4

    move-wide/from16 v18, v4

    move-wide/from16 v20, v4

    move-wide/from16 v22, v4

    goto/16 :goto_86
.end method

.method private i()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private i(Lorg/json/JSONObject;)V
    .registers 16

    .prologue
    .line 617
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->o:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    .line 658
    :cond_6
    :goto_6
    return-void

    .line 620
    :cond_7
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/d/m;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/d/m;-><init>()V

    .line 622
    :try_start_c
    const-string v0, "isRenderSuc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 623
    const-string v0, "AdSize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 624
    const-wide/16 v2, 0x0

    .line 625
    const-wide/16 v0, 0x0

    .line 626
    if-eqz v6, :cond_2a

    .line 627
    const-string v0, "width"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 628
    const-string v0, "height"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 630
    :cond_2a
    const-string v6, "videoInfo"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 635
    if-eqz v6, :cond_56

    .line 636
    const-string v7, "x"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 637
    const-string v7, "y"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 638
    const-string v7, "width"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 639
    const-string v7, "height"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 640
    invoke-virtual {v4, v8, v9}, Lcom/bytedance/sdk/openadsdk/core/d/m;->c(D)V

    .line 641
    invoke-virtual {v4, v10, v11}, Lcom/bytedance/sdk/openadsdk/core/d/m;->d(D)V

    .line 642
    invoke-virtual {v4, v12, v13}, Lcom/bytedance/sdk/openadsdk/core/d/m;->e(D)V

    .line 643
    invoke-virtual {v4, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/d/m;->f(D)V

    .line 645
    :cond_56
    const-string v6, "message"

    const/16 v7, 0x65

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 646
    const-string v7, "code"

    const/16 v8, 0x65

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 647
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/d/m;->a(Z)V

    .line 648
    invoke-virtual {v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/m;->a(D)V

    .line 649
    invoke-virtual {v4, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/m;->b(D)V

    .line 650
    invoke-virtual {v4, v6}, Lcom/bytedance/sdk/openadsdk/core/d/m;->a(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v4, v7}, Lcom/bytedance/sdk/openadsdk/core/d/m;->a(I)V

    .line 652
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->o:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;->a(Lcom/bytedance/sdk/openadsdk/core/d/m;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_7e} :catch_7f

    goto :goto_6

    .line 653
    :catch_7f
    move-exception v0

    .line 654
    const/16 v0, 0x65

    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/d/m;->a(I)V

    .line 655
    const/16 v0, 0x65

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/d/m;->a(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->o:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;->a(Lcom/bytedance/sdk/openadsdk/core/d/m;)V

    goto/16 :goto_6
.end method

.method private j()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "appInfo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "adInfo"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "getTemplateInfo"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "getTeMaiAds"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private j(Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 661
    if-nez p1, :cond_3

    .line 674
    :cond_2
    :goto_2
    return-void

    .line 665
    :cond_3
    :try_start_3
    const-string v0, "trackData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 667
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 668
    const-string v2, "bytedance"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 669
    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/x;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_20} :catch_21

    goto :goto_2

    .line 671
    :catch_21
    move-exception v0

    goto :goto_2
.end method

.method private k()V
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    if-eqz v0, :cond_9

    .line 495
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;->J()V

    .line 497
    :cond_9
    return-void
.end method

.method private k(Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 677
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->r:Lcom/bytedance/sdk/openadsdk/d/d;

    if-nez v0, :cond_9

    .line 690
    :cond_8
    :goto_8
    return-void

    .line 681
    :cond_9
    :try_start_9
    const-string v0, "temaiProductIds"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 682
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_25

    .line 683
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->r:Lcom/bytedance/sdk/openadsdk/d/d;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/d/d;->a(ZLorg/json/JSONArray;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1d} :catch_1e

    goto :goto_8

    .line 687
    :catch_1e
    move-exception v0

    .line 688
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->r:Lcom/bytedance/sdk/openadsdk/d/d;

    invoke-interface {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/d/d;->a(ZLorg/json/JSONArray;)V

    goto :goto_8

    .line 685
    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->r:Lcom/bytedance/sdk/openadsdk/d/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/d/d;->a(ZLorg/json/JSONArray;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_1e

    goto :goto_8
.end method

.method private l()Lorg/json/JSONObject;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 551
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 552
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v2

    if-eqz v2, :cond_e

    if-nez v0, :cond_f

    .line 568
    :cond_e
    :goto_e
    return-object v0

    .line 556
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/x;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v2

    .line 557
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/h/l;->g(Ljava/lang/String;)I

    move-result v3

    .line 558
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/h/l;->b(Ljava/lang/String;)Z

    move-result v4

    .line 559
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/bytedance/sdk/openadsdk/core/h/l;->b(I)Z

    move-result v2

    .line 560
    const-string v5, "voice_control"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 561
    const-string v2, "rv_skip_time"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 562
    const-string v2, "fv_skip_show"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 563
    const-string v3, "show_dislike"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->ac()Z

    move-result v2

    if-eqz v2, :cond_68

    const/4 v2, 0x1

    :goto_53
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 564
    const-string v2, "video_adaptation"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v3, :cond_62

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->f()I

    move-result v1

    :cond_62
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_65} :catch_66

    goto :goto_e

    .line 566
    :catch_66
    move-exception v1

    goto :goto_e

    :cond_68
    move v2, v1

    .line 563
    goto :goto_53
.end method

.method private l(Lorg/json/JSONObject;)Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 700
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->y:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 701
    const-string v1, "creatives"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    .line 705
    :goto_c
    return v2

    .line 703
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method private m()V
    .registers 7

    .prologue
    .line 751
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->y:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_d

    .line 768
    :cond_c
    return-void

    .line 754
    :cond_d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->z:Ljava/util/HashMap;

    .line 755
    const/4 v0, 0x0

    .line 756
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->d:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_51

    .line 757
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    .line 760
    :goto_22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_c

    .line 763
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 764
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v4

    .line 765
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/i;

    invoke-direct {v5, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/i;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Landroid/view/View;)V

    .line 766
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->z:Ljava/util/HashMap;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    :cond_51
    move-object v2, v0

    goto :goto_22
.end method

.method private m(Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    .line 884
    if-nez p1, :cond_3

    .line 895
    :cond_2
    :goto_2
    return-void

    .line 887
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->i()Landroid/webkit/WebView;

    move-result-object v0

    .line 888
    if-eqz v0, :cond_2

    .line 889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:ToutiaoJSBridge._handleMessageFromToutiao("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 890
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/s;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 891
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 892
    const-string v0, "TTAndroidObject"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "js_msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private n(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->a:Ljava/util/Map;

    if-eqz v0, :cond_4b

    .line 1013
    if-nez p1, :cond_b

    .line 1014
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1017
    :cond_b
    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1018
    const-string v1, "ad_extra_data"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1019
    if-eqz v1, :cond_56

    .line 1020
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 1022
    :goto_1f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1023
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1024
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1025
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_42} :catch_43

    goto :goto_29

    .line 1028
    :catch_43
    move-exception v0

    .line 1029
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;)V

    .line 1032
    :cond_4b
    :goto_4b
    return-object p1

    .line 1027
    :cond_4c
    :try_start_4c
    const-string v0, "ad_extra_data"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_55} :catch_43

    goto :goto_4b

    :cond_56
    move-object v2, v0

    goto :goto_1f
.end method

.method private n()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 855
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Y()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->q()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 867
    :cond_15
    :goto_15
    return v0

    .line 859
    :cond_16
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Y()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "parent_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_15

    .line 862
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->c(Ljava/lang/String;)I

    move-result v1

    .line 863
    const/16 v2, 0x8

    if-eq v1, v2, :cond_32

    const/4 v2, 0x7

    if-ne v1, v2, :cond_15

    .line 865
    :cond_32
    const/4 v0, 0x1

    goto :goto_15
.end method

.method private o()V
    .registers 2

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    if-nez v0, :cond_c

    .line 1119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Lcom/bytedance/sdk/openadsdk/d/b;Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    .line 1121
    :cond_c
    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/core/d/k;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/k;

    return-object v0
.end method

.method public a(I)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .prologue
    .line 161
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->k:I

    .line 162
    return-object p0
.end method

.method public a(Landroid/webkit/WebView;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 3

    .prologue
    .line 122
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->d:Ljava/lang/ref/WeakReference;

    .line 123
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/a/d;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .prologue
    .line 186
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->w:Lcom/bytedance/sdk/openadsdk/core/a/d;

    .line 187
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .prologue
    .line 142
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 143
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .prologue
    .line 176
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    .line 177
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .prologue
    .line 171
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->o:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    .line 172
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/d/d;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .prologue
    .line 181
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->r:Lcom/bytedance/sdk/openadsdk/d/d;

    .line 182
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/e/a;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .prologue
    .line 211
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->s:Lcom/bytedance/sdk/openadsdk/e/a;

    .line 212
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/e/c;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .prologue
    .line 221
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->u:Lcom/bytedance/sdk/openadsdk/e/c;

    .line 222
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/e/d;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .prologue
    .line 216
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->t:Lcom/bytedance/sdk/openadsdk/e/d;

    .line 217
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->i:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/x;"
        }
    .end annotation

    .prologue
    .line 226
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->y:Ljava/util/List;

    .line 227
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/x;"
        }
    .end annotation

    .prologue
    .line 206
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->a:Ljava/util/Map;

    .line 207
    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .prologue
    .line 196
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->q:Lorg/json/JSONObject;

    .line 197
    return-object p0
.end method

.method public a(Z)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->b:Z

    .line 128
    return-object p0
.end method

.method public a(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 1101
    if-nez p1, :cond_3

    .line 1114
    :cond_2
    :goto_2
    return-void

    .line 1104
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_2

    .line 1106
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/x$a;

    if-eqz v0, :cond_2

    .line 1108
    :try_start_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/x$a;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/x$a;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_2

    .line 1109
    :catch_17
    move-exception v0

    goto :goto_2

    .line 1104
    nop

    :pswitch_data_1a
    .packed-switch 0xb
        :pswitch_9
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 1125
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/x;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1126
    return-void
.end method

.method public a(Landroid/net/Uri;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 951
    if-nez p1, :cond_4

    .line 964
    :cond_3
    :goto_3
    return v0

    .line 955
    :cond_4
    :try_start_4
    const-string v1, "bytedance"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 958
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 959
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/x;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_1e

    move-result v1

    if-eqz v1, :cond_3

    .line 960
    const/4 v0, 0x1

    goto :goto_3

    .line 962
    :catch_1e
    move-exception v1

    goto :goto_3
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .prologue
    .line 155
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->j:Ljava/lang/String;

    .line 156
    return-object p0
.end method

.method public b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .prologue
    .line 201
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->v:Lorg/json/JSONObject;

    .line 202
    return-object p0
.end method

.method public b(Z)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->A:Z

    .line 133
    return-object p0
.end method

.method public b(Landroid/net/Uri;)V
    .registers 12
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v6, 0x0

    .line 970
    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 971
    const-string v1, "log_event"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "custom_event"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "log_event_v3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 972
    :cond_1e
    const-string v0, "category"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 974
    const-string v0, "tag"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 975
    const-string v0, "label"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2f} :catch_88

    move-result-object v3

    .line 978
    :try_start_30
    const-string v0, "value"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_39} :catch_6a

    move-result-wide v4

    .line 983
    :goto_3a
    :try_start_3a
    const-string v0, "ext_value"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_43} :catch_99

    move-result-wide v6

    .line 986
    :goto_44
    const/4 v0, 0x0

    .line 987
    :try_start_45
    const-string v8, "extra"

    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 988
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4e} :catch_88

    move-result v8

    if-nez v8, :cond_9b

    .line 990
    :try_start_51
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_56} :catch_6d

    .line 995
    :goto_56
    :try_start_56
    const-string v0, "click"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 996
    invoke-direct {p0, v8}, Lcom/bytedance/sdk/openadsdk/core/x;->n(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    .line 998
    :cond_62
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 999
    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    .line 1008
    :goto_69
    return-void

    .line 979
    :catch_6a
    move-exception v0

    move-wide v4, v6

    goto :goto_3a

    .line 991
    :catch_6d
    move-exception v8

    move-object v8, v0

    goto :goto_56

    .line 1000
    :cond_70
    const-string v1, "private"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    const-string v1, "dispatch_message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 1001
    :cond_80
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->f(Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_87} :catch_88

    goto :goto_69

    .line 1005
    :catch_88
    move-exception v0

    .line 1006
    const-string v1, "TTAndroidObject"

    const-string v2, "handleUri exception: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_69

    .line 1003
    :cond_91
    :try_start_91
    const-string v0, "TTAndroidObject"

    const-string v1, "handlrUir: not match schema host"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_98} :catch_88

    goto :goto_69

    .line 984
    :catch_99
    move-exception v0

    goto :goto_44

    :cond_9b
    move-object v8, v0

    goto :goto_56
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .prologue
    .line 166
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->l:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public c(Z)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->x:Z

    .line 192
    return-object p0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->c:Z

    return v0
.end method

.method public d()V
    .registers 3

    .prologue
    .line 741
    const/4 v0, 0x0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/x$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/x$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;)V

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/e/b;)V

    .line 748
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1036
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->k:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .registers 2

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    if-eqz v0, :cond_9

    .line 1080
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/d/c;->a()V

    .line 1082
    :cond_9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->n()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1083
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->d()V

    .line 1085
    :cond_12
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    if-eqz v0, :cond_9

    .line 1089
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/d/c;->b()V

    .line 1091
    :cond_9
    return-void
.end method

.method public h()V
    .registers 2

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    if-eqz v0, :cond_9

    .line 1095
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/d/c;->c()V

    .line 1097
    :cond_9
    return-void
.end method
