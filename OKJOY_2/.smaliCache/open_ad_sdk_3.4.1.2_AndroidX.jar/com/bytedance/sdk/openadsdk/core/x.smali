.class public Lcom/bytedance/sdk/openadsdk/core/x;
.super Ljava/lang/Object;
.source "TTAndroidObject.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/d/b;
.implements Lcom/bytedance/sdk/openadsdk/utils/al$a;


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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/j;",
            ">;"
        }
    .end annotation
.end field

.field private D:Z

.field private E:Z

.field private F:Lcom/bytedance/sdk/openadsdk/c/p;

.field private G:Lcom/bytedance/sdk/openadsdk/e/a/q;

.field private H:Ljava/lang/String;

.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/bytedance/sdk/openadsdk/utils/al;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/bytedance/sdk/openadsdk/d/c;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private o:Z

.field private p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

.field private q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

.field private r:Lorg/json/JSONObject;

.field private s:Lcom/bytedance/sdk/openadsdk/d/d;

.field private t:Lcom/bytedance/sdk/openadsdk/f/a;

.field private u:Lcom/bytedance/sdk/openadsdk/f/e;

.field private v:Lcom/bytedance/sdk/openadsdk/f/d;

.field private w:Lorg/json/JSONObject;

.field private x:Lcom/bytedance/sdk/openadsdk/core/a/d;

.field private y:Lcom/bytedance/sdk/openadsdk/f/b;

.field private z:Lcom/bytedance/sdk/openadsdk/f/h;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/x;->f:Ljava/util/Map;

    .line 147
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "log_event"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "private"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "dispatch_message"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "custom_event"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "log_event_v3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->o:Z

    .line 122
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->A:Z

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->D:Z

    .line 131
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->E:Z

    .line 133
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->c:Z

    .line 155
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->g:Ljava/lang/ref/WeakReference;

    .line 156
    new-instance p1, Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/al;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/al$a;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->e:Lcom/bytedance/sdk/openadsdk/utils/al;

    .line 157
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/x;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->B:Ljava/util/List;

    return-object p1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/x$a;Lorg/json/JSONObject;)V
    .registers 5

    .line 1083
    if-nez p1, :cond_3

    .line 1084
    return-void

    .line 1086
    :cond_3
    :try_start_3
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/x$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/x$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/x$a;)V

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/f/c;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_e

    .line 1102
    goto :goto_f

    .line 1101
    :catch_e
    move-exception p1

    .line 1103
    :goto_f
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/x;)V
    .registers 1

    .line 84
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->w()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/x;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/x;Lorg/json/JSONObject;)V
    .registers 2

    .line 84
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/x;->h(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 4

    .line 640
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->F:Lcom/bytedance/sdk/openadsdk/c/p;

    if-eqz v0, :cond_19

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_19

    .line 643
    :cond_b
    if-eqz p2, :cond_13

    .line 644
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/x;->F:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Ljava/lang/String;)V

    goto :goto_18

    .line 646
    :cond_13
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/x;->F:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/c/p;->b(Ljava/lang/String;)V

    .line 648
    :goto_18
    return-void

    .line 641
    :cond_19
    :goto_19
    return-void
.end method

.method private a(Lorg/json/JSONObject;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 388
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 389
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->r()Ljava/util/List;

    move-result-object v0

    .line 390
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 391
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 392
    goto :goto_d

    .line 393
    :cond_1d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appName"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "innerAppName"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aid"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdkEdition"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appVersion"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "netType"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    const-string v0, "supportList"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "deviceId"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    return-void
.end method

.method private a(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/d/j;)Z
    .registers 6

    .line 1140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->C:Ljava/util/HashMap;

    if-nez v0, :cond_c

    goto :goto_1a

    .line 1143
    :cond_c
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/j;

    .line 1144
    if-eqz p1, :cond_19

    .line 1145
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/j;->a(ILcom/bytedance/sdk/openadsdk/core/d/j;)V

    .line 1146
    const/4 p1, 0x1

    return p1

    .line 1148
    :cond_19
    return v1

    .line 1141
    :cond_1a
    :goto_1a
    return v1
.end method

.method public static b(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 1223
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1224
    if-nez p0, :cond_8

    .line 1225
    return-object v0

    .line 1227
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1228
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1f

    .line 1229
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 1230
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aF()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1228
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1232
    :cond_1f
    return-object v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/x;Lorg/json/JSONObject;)V
    .registers 2

    .line 84
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/x;->i(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/x;Lorg/json/JSONObject;)V
    .registers 2

    .line 84
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/x;->k(Lorg/json/JSONObject;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    .line 1267
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1268
    const-string v1, "__msg_type"

    const-string v2, "callback"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1269
    const-string v1, "__callback_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1270
    if-eqz p2, :cond_18

    .line 1271
    const-string p1, "__params"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1273
    :cond_18
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->p(Lorg/json/JSONObject;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 1275
    goto :goto_1d

    .line 1274
    :catch_1c
    move-exception p1

    .line 1276
    :goto_1d
    return-void
.end method

.method private d(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    .line 1294
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1295
    return-void

    .line 1297
    :cond_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1298
    const-string v1, "__msg_type"

    const-string v2, "event"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1299
    const-string v1, "__event_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1300
    if-eqz p2, :cond_1f

    .line 1301
    const-string p1, "__params"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1303
    :cond_1f
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->p(Lorg/json/JSONObject;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 1305
    goto :goto_24

    .line 1304
    :catch_23
    move-exception p1

    .line 1306
    :goto_24
    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 405
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->i:Ljava/lang/String;

    const-string v1, "cid"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 409
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->k:Ljava/lang/String;

    const-string v1, "log_extra"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    :cond_1e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 413
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Ljava/lang/String;

    const-string v1, "download_url"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    :cond_2d
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 10

    .line 1310
    const-string v0, "TTAndroidObject"

    :try_start_2
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 1311
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 1315
    const/4 v3, 0x0

    :goto_19
    if-ge v3, v1, :cond_74

    .line 1316
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/x$a;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/x$a;-><init>()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_75

    .line 1319
    :try_start_20
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1320
    if-eqz v5, :cond_4f

    .line 1321
    const-string v6, "__msg_type"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/bytedance/sdk/openadsdk/core/x$a;->a:Ljava/lang/String;

    .line 1322
    const-string v6, "__callback_id"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    .line 1323
    const-string v6, "func"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/bytedance/sdk/openadsdk/core/x$a;->c:Ljava/lang/String;

    .line 1324
    const-string v6, "params"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iput-object v6, v4, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    .line 1325
    const-string v6, "JSSDK"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/bytedance/sdk/openadsdk/core/x$a;->e:I
    :try_end_4f
    .catchall {:try_start_20 .. :try_end_4f} :catchall_50

    .line 1328
    :cond_4f
    goto :goto_51

    .line 1327
    :catchall_50
    move-exception v5

    .line 1329
    :goto_51
    :try_start_51
    iget-object v5, v4, Lcom/bytedance/sdk/openadsdk/core/x$a;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_71

    iget-object v5, v4, Lcom/bytedance/sdk/openadsdk/core/x$a;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1330
    goto :goto_71

    .line 1332
    :cond_62
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/x;->e:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/al;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1333
    iput-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1334
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/x;->e:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendMessage(Landroid/os/Message;)Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_71} :catch_75

    .line 1315
    :cond_71
    :goto_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1342
    :cond_74
    goto :goto_98

    .line 1336
    :catch_75
    move-exception v1

    .line 1337
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->a()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 1338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to parse jsbridge msg queue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    .line 1340
    :cond_93
    const-string p1, "failed to parse jsbridge msg queue"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    :goto_98
    return-void
.end method

.method private e(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->n:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 419
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->n:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "playable_style"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 421
    :cond_19
    return-void
.end method

.method private f(Lorg/json/JSONObject;)V
    .registers 3

    .line 633
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->F:Lcom/bytedance/sdk/openadsdk/c/p;

    if-nez v0, :cond_7

    goto :goto_b

    .line 636
    :cond_7
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/c/p;->b(Lorg/json/JSONObject;)V

    .line 637
    return-void

    .line 634
    :cond_b
    :goto_b
    return-void
.end method

.method private f(Ljava/lang/String;)Z
    .registers 4

    .line 1409
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1410
    return v1

    .line 1412
    :cond_8
    const-string v0, "click_other"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 1413
    return v1

    .line 1415
    :cond_11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->h()Z

    move-result p1

    if-nez p1, :cond_19

    .line 1416
    const/4 p1, 0x0

    return p1

    .line 1419
    :cond_19
    return v1
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1494
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    if-nez v0, :cond_a

    .line 1495
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->l:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 1497
    :cond_a
    return-object p1
.end method

.method private g(Lorg/json/JSONObject;)V
    .registers 7

    .line 665
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->y:Lcom/bytedance/sdk/openadsdk/f/b;

    if-eqz v0, :cond_21

    if-nez p1, :cond_7

    goto :goto_21

    .line 668
    :cond_7
    const/4 v1, 0x0

    const-string v2, "isRenderSuc"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, -0x1

    const-string v3, "code"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "msg"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/f/b;->a(ZILjava/lang/String;)V

    .line 669
    return-void

    .line 666
    :cond_21
    :goto_21
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .registers 4

    .line 1501
    if-nez p1, :cond_3

    .line 1502
    return-void

    .line 1504
    :cond_3
    const-string v0, "bytedance://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1505
    return-void

    .line 1507
    :cond_c
    const-string v0, "bytedance://dispatch_message/"

    .line 1508
    const-string v1, "bytedance://private/setresult/"

    .line 1510
    :try_start_10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1511
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->p()Landroid/webkit/WebView;

    move-result-object p1

    .line 1513
    if-eqz p1, :cond_51

    .line 1514
    const-string v0, "javascript:ToutiaoJSBridge._fetchQueue()"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_51

    .line 1516
    :cond_22
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1517
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1518
    const/16 v1, 0x26

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1519
    if-gtz v1, :cond_35

    .line 1520
    return-void

    .line 1522
    :cond_35
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1523
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1524
    const-string v1, "SCENE_FETCHQUEUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_52

    .line 1525
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/x;->e(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_50} :catch_53

    goto :goto_52

    .line 1516
    :cond_51
    :goto_51
    nop

    .line 1529
    :cond_52
    :goto_52
    goto :goto_54

    .line 1528
    :catch_53
    move-exception p1

    .line 1530
    :goto_54
    return-void
.end method

.method private h(Lorg/json/JSONObject;)V
    .registers 4

    .line 804
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    if-eqz v0, :cond_16

    if-nez p1, :cond_7

    goto :goto_16

    .line 808
    :cond_7
    :try_start_7
    const-string v0, "mute"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 809
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;->f(Z)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    .line 812
    goto :goto_15

    .line 810
    :catch_14
    move-exception p1

    .line 813
    :goto_15
    return-void

    .line 805
    :cond_16
    :goto_16
    return-void
.end method

.method private i(Lorg/json/JSONObject;)V
    .registers 4

    .line 816
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    if-eqz v0, :cond_16

    if-nez p1, :cond_7

    goto :goto_16

    .line 820
    :cond_7
    :try_start_7
    const-string v0, "stateType"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 821
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;->d(I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    .line 824
    goto :goto_15

    .line 822
    :catch_14
    move-exception p1

    .line 825
    :goto_15
    return-void

    .line 817
    :cond_16
    :goto_16
    return-void
.end method

.method private j(Lorg/json/JSONObject;)Z
    .registers 9

    .line 834
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    if-nez p1, :cond_8

    goto :goto_3f

    .line 837
    :cond_8
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;->R()J

    move-result-wide v2

    long-to-double v2, v2

    .line 838
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;->S()I

    move-result v0

    .line 840
    :try_start_13
    const-string v4, "currentTime"

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v5

    invoke-virtual {p1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 841
    const-string v2, "state"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 842
    const-string p1, "TTAndroidObject"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentTime,state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3b} :catch_3d

    .line 843
    const/4 p1, 0x1

    return p1

    .line 844
    :catch_3d
    move-exception p1

    .line 846
    return v1

    .line 835
    :cond_3f
    :goto_3f
    return v1
.end method

.method private k(Lorg/json/JSONObject;)V
    .registers 32

    .line 933
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-nez v0, :cond_7

    .line 934
    return-void

    .line 936
    :cond_7
    const-string v2, "TTAndroidObject"

    const-string v3, "TTAndroidObject handleClickEvent"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :try_start_e
    const-string v2, "adId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 939
    const-string v3, "areaType"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 940
    const-string v4, "clickInfo"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 942
    nop

    .line 943
    const-wide/16 v4, 0x0

    if-eqz v0, :cond_77

    .line 944
    const-string v6, "down_x"

    invoke-virtual {v0, v6, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 945
    const-string v8, "down_y"

    invoke-virtual {v0, v8, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 946
    const-string v10, "up_x"

    invoke-virtual {v0, v10, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    .line 947
    const-string v12, "up_y"

    invoke-virtual {v0, v12, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    .line 948
    const-string v14, "down_time"

    invoke-virtual {v0, v14, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    .line 949
    const-string v4, "up_time"

    move-wide/from16 v18, v6

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v16

    .line 950
    const-string v4, "button_x"

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v20

    .line 951
    const-string v4, "button_y"

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v22

    .line 952
    const-string v4, "button_width"

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v24

    .line 953
    const-string v4, "button_height"

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_66} :catch_e4

    move-wide/from16 v28, v4

    move-wide/from16 v6, v16

    move-wide/from16 v4, v18

    move-wide/from16 v0, v20

    move-wide/from16 v26, v24

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-wide/from16 v2, v22

    goto :goto_89

    .line 943
    :cond_77
    move-wide v5, v4

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-wide v0, v5

    move-wide v2, v0

    move-wide v8, v2

    move-wide v10, v8

    move-wide v12, v10

    move-wide v14, v12

    move-wide/from16 v26, v14

    move-wide/from16 v28, v26

    move-wide/from16 v4, v28

    move-wide v6, v4

    .line 955
    :goto_89
    move-wide/from16 v18, v2

    :try_start_8b
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;-><init>()V

    double-to-int v3, v4

    .line 956
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->d(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v2

    double-to-int v3, v8

    .line 957
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->c(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v2

    double-to-int v3, v10

    .line 958
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->b(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v2

    double-to-int v3, v12

    .line 959
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->a(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v2

    double-to-long v3, v14

    .line 960
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->b(J)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v2

    double-to-long v3, v6

    .line 961
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->a(J)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v2

    double-to-int v0, v0

    .line 962
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->e(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v0

    move-wide/from16 v5, v18

    double-to-int v1, v5

    .line 963
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->f(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v0

    move-wide/from16 v5, v26

    double-to-int v1, v5

    .line 964
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->g(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v0

    move-wide/from16 v4, v28

    double-to-int v1, v4

    .line 965
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->h(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v0

    .line 966
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->a()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v0
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_cc} :catch_e0

    .line 968
    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move/from16 v3, v17

    :try_start_d2
    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/d/j;)Z

    move-result v2

    .line 969
    if-nez v2, :cond_df

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/x;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    if-eqz v2, :cond_df

    .line 970
    invoke-interface {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;->a(ILcom/bytedance/sdk/openadsdk/core/d/j;)V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_df} :catch_e4

    .line 976
    :cond_df
    goto :goto_ee

    .line 972
    :catch_e0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_e5

    :catch_e4
    move-exception v0

    .line 973
    :goto_e5
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/x;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    if-eqz v0, :cond_ee

    .line 974
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;->a(ILcom/bytedance/sdk/openadsdk/core/d/j;)V

    .line 977
    :cond_ee
    :goto_ee
    return-void
.end method

.method private l(Lorg/json/JSONObject;)V
    .registers 19

    .line 981
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/x;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    if-eqz v2, :cond_a2

    if-nez v0, :cond_c

    goto/16 :goto_a2

    .line 984
    :cond_c
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/o;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/d/o;-><init>()V

    .line 985
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/o;->a(I)V

    .line 987
    :try_start_15
    const-string v4, "isRenderSuc"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 988
    const-string v5, "AdSize"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_21} :catch_8f

    .line 989
    nop

    .line 990
    nop

    .line 991
    const-string v6, "height"

    const-string v7, "width"

    const-wide/16 v8, 0x0

    if-eqz v5, :cond_34

    .line 992
    :try_start_2b
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 993
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    goto :goto_35

    .line 991
    :cond_34
    move-wide v10, v8

    .line 995
    :goto_35
    const-string v5, "videoInfo"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 996
    nop

    .line 997
    nop

    .line 998
    nop

    .line 999
    nop

    .line 1000
    if-eqz v5, :cond_64

    .line 1001
    const-string v12, "x"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 1002
    const-string v14, "y"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 1003
    move/from16 v16, v4

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 1004
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 1005
    invoke-virtual {v2, v12, v13}, Lcom/bytedance/sdk/openadsdk/core/d/o;->c(D)V

    .line 1006
    invoke-virtual {v2, v14, v15}, Lcom/bytedance/sdk/openadsdk/core/d/o;->d(D)V

    .line 1007
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/o;->e(D)V

    .line 1008
    invoke-virtual {v2, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/d/o;->f(D)V

    goto :goto_66

    .line 1000
    :cond_64
    move/from16 v16, v4

    .line 1010
    :goto_66
    const-string v3, "message"

    const/16 v4, 0x65

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1011
    const-string v5, "code"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 1012
    move/from16 v4, v16

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/d/o;->a(Z)V

    .line 1013
    invoke-virtual {v2, v8, v9}, Lcom/bytedance/sdk/openadsdk/core/d/o;->a(D)V

    .line 1014
    invoke-virtual {v2, v10, v11}, Lcom/bytedance/sdk/openadsdk/core/d/o;->b(D)V

    .line 1015
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/o;->a(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->b(I)V

    .line 1017
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/x;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;->a(Lcom/bytedance/sdk/openadsdk/core/d/o;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_8e} :catch_8f

    .line 1022
    goto :goto_a1

    .line 1018
    :catch_8f
    move-exception v0

    .line 1019
    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/o;->b(I)V

    .line 1020
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->a(Ljava/lang/String;)V

    .line 1021
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/x;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;->a(Lcom/bytedance/sdk/openadsdk/core/d/o;)V

    .line 1023
    :goto_a1
    return-void

    .line 982
    :cond_a2
    :goto_a2
    return-void
.end method

.method private m(Lorg/json/JSONObject;)V
    .registers 4

    .line 1026
    if-nez p1, :cond_3

    .line 1027
    return-void

    .line 1029
    :cond_3
    const-string v0, "TTAndroidObject"

    const-string v1, "TTAndroidObject handlerDynamicTrack"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :try_start_a
    const-string v0, "trackData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1032
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1033
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1034
    const-string v1, "bytedance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1035
    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/r;->a(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/x;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_27} :catch_28

    .line 1039
    :cond_27
    goto :goto_29

    .line 1037
    :catch_28
    move-exception p1

    .line 1040
    :goto_29
    return-void
.end method

.method private n(Lorg/json/JSONObject;)V
    .registers 6

    .line 1043
    if-eqz p1, :cond_2b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->s:Lcom/bytedance/sdk/openadsdk/d/d;

    if-nez v0, :cond_7

    goto :goto_2b

    .line 1047
    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_9
    const-string v2, "temaiProductIds"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1048
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1e

    .line 1049
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/x;->s:Lcom/bytedance/sdk/openadsdk/d/d;

    const/4 v3, 0x1

    invoke-interface {v2, v3, p1}, Lcom/bytedance/sdk/openadsdk/d/d;->a(ZLorg/json/JSONArray;)V

    goto :goto_23

    .line 1051
    :cond_1e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->s:Lcom/bytedance/sdk/openadsdk/d/d;

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/d/d;->a(ZLorg/json/JSONArray;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_23} :catch_24

    .line 1055
    :goto_23
    goto :goto_2a

    .line 1053
    :catch_24
    move-exception p1

    .line 1054
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->s:Lcom/bytedance/sdk/openadsdk/d/d;

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/d/d;->a(ZLorg/json/JSONArray;)V

    .line 1056
    :goto_2a
    return-void

    .line 1044
    :cond_2b
    :goto_2b
    return-void
.end method

.method private o(Lorg/json/JSONObject;)Z
    .registers 5

    .line 1066
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->B:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1067
    const-string v2, "creatives"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    .line 1068
    return v0

    .line 1069
    :catch_d
    move-exception p1

    .line 1071
    return v0
.end method

.method private p()Landroid/webkit/WebView;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method private p(Lorg/json/JSONObject;)V
    .registers 5

    .line 1279
    if-nez p1, :cond_3

    .line 1280
    return-void

    .line 1282
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->p()Landroid/webkit/WebView;

    move-result-object v0

    .line 1283
    if-eqz v0, :cond_47

    .line 1284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:ToutiaoJSBridge._handleMessageFromToutiao("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1285
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1286
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->a()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "js_msg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTAndroidObject"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    :cond_47
    return-void
.end method

.method private q()Lorg/json/JSONObject;
    .registers 11

    .line 240
    const-string v0, "TTAndroidObject"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/x;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 241
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/x;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 242
    if-eqz v2, :cond_86

    if-nez v3, :cond_18

    goto :goto_86

    .line 246
    :cond_18
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/view/View;)[I

    move-result-object v4

    .line 247
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/view/View;)[I

    move-result-object v3

    .line 248
    if-eqz v4, :cond_80

    if-nez v3, :cond_25

    goto :goto_80

    .line 252
    :cond_25
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 253
    const-string v6, "x"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    aget v9, v4, v8

    aget v8, v3, v8

    sub-int/2addr v9, v8

    int-to-float v8, v9

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 254
    const-string v6, "y"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x1

    aget v4, v4, v8

    aget v3, v3, v8

    sub-int/2addr v4, v3

    int-to-float v3, v4

    invoke-static {v7, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 255
    const-string v3, "w"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v4, v6}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 256
    const-string v3, "h"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v4, v6}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 257
    const-string v3, "isExist"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->e(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {v5, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 258
    return-object v5

    .line 249
    :cond_80
    :goto_80
    const-string v2, "setCloseButtonInfo error position or webViewPosition is null"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-object v1

    .line 243
    :cond_86
    :goto_86
    const-string v2, "setCloseButtonInfo error closeButton is null"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_3 .. :try_end_8b} :catchall_8c

    .line 244
    return-object v1

    .line 259
    :catchall_8c
    move-exception v2

    .line 260
    const-string v3, "setCloseButtonInfo error"

    invoke-static {v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    return-object v1
.end method

.method private q(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 7

    .line 1435
    const-string v0, "ad_extra_data"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->a:Ljava/util/Map;

    if-eqz v1, :cond_52

    .line 1436
    if-nez p1, :cond_d

    .line 1437
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1440
    :cond_d
    :try_start_d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1441
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1442
    if-eqz v2, :cond_1e

    .line 1443
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1445
    :cond_1e
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/x;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1446
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 1447
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1448
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1449
    goto :goto_28

    .line 1450
    :cond_42
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_49} :catch_4a

    .line 1453
    goto :goto_52

    .line 1451
    :catch_4a
    move-exception v0

    .line 1452
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;)V

    .line 1455
    :cond_52
    :goto_52
    return-object p1
.end method

.method private r()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 379
    const-string v0, "appInfo"

    const-string v1, "adInfo"

    const-string v2, "getTemplateInfo"

    const-string v3, "getTeMaiAds"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private s()V
    .registers 2

    .line 651
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->z:Lcom/bytedance/sdk/openadsdk/f/h;

    if-nez v0, :cond_5

    .line 652
    return-void

    .line 654
    :cond_5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/f/h;->a()V

    .line 655
    return-void
.end method

.method private t()V
    .registers 2

    .line 658
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->z:Lcom/bytedance/sdk/openadsdk/f/h;

    if-nez v0, :cond_5

    .line 659
    return-void

    .line 661
    :cond_5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/f/h;->b()V

    .line 662
    return-void
.end method

.method private u()V
    .registers 2

    .line 798
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    if-eqz v0, :cond_7

    .line 799
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;->Q()V

    .line 801
    :cond_7
    return-void
.end method

.method private v()Lorg/json/JSONObject;
    .registers 8

    .line 855
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 856
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v1

    if-eqz v1, :cond_87

    .line 860
    :try_start_b
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v1

    .line 861
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/x;->k:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Ljava/lang/String;)I

    move-result v2

    .line 862
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/h/h;->g(Ljava/lang/String;)I

    move-result v3

    .line 863
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->e(I)I

    move-result v4

    .line 864
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/h/h;->b(Ljava/lang/String;)Z

    move-result v5

    .line 866
    const/4 v6, 0x7

    if-eq v2, v6, :cond_48

    const/16 v6, 0x8

    if-ne v2, v6, :cond_3f

    goto :goto_48

    .line 870
    :cond_3f
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(I)Z

    move-result v1

    goto :goto_50

    .line 868
    :cond_48
    :goto_48
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->b(I)Z

    move-result v1

    .line 872
    :goto_50
    const-string v2, "voice_control"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 873
    const-string v1, "rv_skip_time"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 874
    const-string v1, "fv_skip_show"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 875
    const-string v1, "iv_skip_time"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 876
    const-string v1, "show_dislike"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/x;->n:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v3, 0x0

    if-eqz v2, :cond_73

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aD()Z

    move-result v2

    if-eqz v2, :cond_73

    const/4 v2, 0x1

    goto :goto_74

    :cond_73
    move v2, v3

    :goto_74
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 877
    const-string v1, "video_adaptation"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/x;->n:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v2, :cond_81

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->l()I

    move-result v3

    :cond_81
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_84} :catch_85

    .line 878
    return-object v0

    .line 879
    :catch_85
    move-exception v1

    .line 881
    return-object v0

    .line 857
    :cond_87
    return-object v0
.end method

.method private w()V
    .registers 8

    .line 1119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->B:Ljava/util/List;

    if-eqz v0, :cond_4f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_b

    goto :goto_4f

    .line 1122
    :cond_b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->C:Ljava/util/HashMap;

    .line 1123
    const/4 v0, 0x0

    .line 1124
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->d:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1d

    .line 1125
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1128
    :cond_1d
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->g:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-nez v1, :cond_2a

    goto :goto_4e

    .line 1131
    :cond_2a
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/x;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 1132
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v4

    .line 1133
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/j;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/x;->H:Ljava/lang/String;

    invoke-direct {v5, v1, v3, v0, v6}, Lcom/bytedance/sdk/openadsdk/core/j;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/view/View;Ljava/lang/String;)V

    .line 1134
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/x;->C:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    goto :goto_30

    .line 1136
    :cond_4d
    return-void

    .line 1129
    :cond_4e
    :goto_4e
    return-void

    .line 1120
    :cond_4f
    :goto_4f
    return-void
.end method

.method private x()Z
    .registers 4

    .line 1236
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->n:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->at()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->n:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 1237
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->D:Z

    if-eqz v0, :cond_18

    goto :goto_3b

    .line 1241
    :cond_18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->n:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->at()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "parent_type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_28

    .line 1242
    return v1

    .line 1244
    :cond_28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Ljava/lang/String;)I

    move-result v0

    .line 1245
    const/16 v2, 0x8

    if-eq v0, v2, :cond_37

    const/4 v2, 0x7

    if-ne v0, v2, :cond_36

    goto :goto_37

    .line 1250
    :cond_36
    return v1

    .line 1247
    :cond_37
    :goto_37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->D:Z

    .line 1248
    return v0

    .line 1238
    :cond_3b
    :goto_3b
    return v1
.end method

.method private y()V
    .registers 2

    .line 1589
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    if-nez v0, :cond_c

    .line 1590
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->n:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Lcom/bytedance/sdk/openadsdk/d/b;Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    .line 1592
    :cond_c
    return-void
.end method


# virtual methods
.method public a(I)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .line 304
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->l:I

    .line 305
    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 3

    .line 234
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->j:Ljava/lang/ref/WeakReference;

    .line 235
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/c/p;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->F:Lcom/bytedance/sdk/openadsdk/c/p;

    .line 215
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/a/d;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .line 329
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->x:Lcom/bytedance/sdk/openadsdk/core/a/d;

    .line 330
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .line 266
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->n:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 267
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    .line 320
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .line 314
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    .line 315
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 4

    .line 165
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/e/a/q;->a(Landroid/webkit/WebView;)Lcom/bytedance/sdk/openadsdk/e/a/j;

    move-result-object v0

    .line 166
    const-string v1, "ToutiaoJSBridge"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/e/a/j;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/e/a/j;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/x$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/x$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;)V

    .line 167
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/e/a/j;->a(Lcom/bytedance/sdk/openadsdk/e/a/l;)Lcom/bytedance/sdk/openadsdk/e/a/j;

    move-result-object v0

    .line 182
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/e/a/j;->a(Z)Lcom/bytedance/sdk/openadsdk/e/a/j;

    move-result-object v0

    .line 183
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/e/a/j;->b(Z)Lcom/bytedance/sdk/openadsdk/e/a/j;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/e/a/j;->a()Lcom/bytedance/sdk/openadsdk/e/a/j;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/e/a/j;->b()Lcom/bytedance/sdk/openadsdk/e/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->G:Lcom/bytedance/sdk/openadsdk/e/a/q;

    .line 188
    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/e/b/f;->a(Lcom/bytedance/sdk/openadsdk/e/a/q;Lcom/bytedance/sdk/openadsdk/core/x;)V

    .line 189
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->G:Lcom/bytedance/sdk/openadsdk/e/a/q;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/e/b/b;->a(Lcom/bytedance/sdk/openadsdk/e/a/q;Lcom/bytedance/sdk/openadsdk/core/x;)V

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->G:Lcom/bytedance/sdk/openadsdk/e/a/q;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/e/b/h;->a(Lcom/bytedance/sdk/openadsdk/e/a/q;)V

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->G:Lcom/bytedance/sdk/openadsdk/e/a/q;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/e/b/e;->a(Lcom/bytedance/sdk/openadsdk/e/a/q;)V

    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->G:Lcom/bytedance/sdk/openadsdk/e/a/q;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/e/b/g;->a(Lcom/bytedance/sdk/openadsdk/e/a/q;Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)V

    .line 193
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->G:Lcom/bytedance/sdk/openadsdk/e/a/q;

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/e/b/c;->a(Lcom/bytedance/sdk/openadsdk/e/a/q;Lcom/bytedance/sdk/openadsdk/core/x;)V

    .line 194
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->G:Lcom/bytedance/sdk/openadsdk/e/a/q;

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/e/b/d;->a(Lcom/bytedance/sdk/openadsdk/e/a/q;Lcom/bytedance/sdk/openadsdk/core/x;)V

    .line 195
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->G:Lcom/bytedance/sdk/openadsdk/e/a/q;

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/e/b/i;->a(Lcom/bytedance/sdk/openadsdk/e/a/q;Lcom/bytedance/sdk/openadsdk/core/x;)V

    .line 196
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->G:Lcom/bytedance/sdk/openadsdk/e/a/q;

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/e/b/a;->a(Lcom/bytedance/sdk/openadsdk/e/a/q;Lcom/bytedance/sdk/openadsdk/core/x;)V

    .line 197
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/d/d;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .line 324
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->s:Lcom/bytedance/sdk/openadsdk/d/d;

    .line 325
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/f/a;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .line 354
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->t:Lcom/bytedance/sdk/openadsdk/f/a;

    .line 355
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/f/b;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .line 271
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->y:Lcom/bytedance/sdk/openadsdk/f/b;

    .line 272
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/f/d;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .line 364
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->v:Lcom/bytedance/sdk/openadsdk/f/d;

    .line 365
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/f/e;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .line 359
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->u:Lcom/bytedance/sdk/openadsdk/f/e;

    .line 360
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/f/h;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->z:Lcom/bytedance/sdk/openadsdk/f/h;

    .line 286
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->H:Ljava/lang/String;

    .line 161
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/x;"
        }
    .end annotation

    .line 369
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->B:Ljava/util/List;

    .line 370
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/x;"
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->a:Ljava/util/Map;

    .line 350
    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .line 339
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->r:Lorg/json/JSONObject;

    .line 340
    return-object p0
.end method

.method public a(Z)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .line 219
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->b:Z

    .line 220
    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/openadsdk/e/a/q;
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->G:Lcom/bytedance/sdk/openadsdk/e/a/q;

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/x$a;I)Lorg/json/JSONObject;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 425
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->a:Ljava/lang/String;

    const-string v4, "call"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 426
    const/4 v1, 0x0

    return-object v1

    .line 428
    :cond_12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/i;->v()Z

    move-result v3

    const-string v4, "TTAndroidObject"

    if-eqz v3, :cond_57

    .line 429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[JSB-REQ] version:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " method:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " params="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    if-eqz v5, :cond_4a

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4c

    :cond_4a
    const-string v5, ""

    :goto_4c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_57
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 432
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->c:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x1

    sparse-switch v6, :sswitch_data_372

    :cond_69
    goto/16 :goto_1ce

    :sswitch_6b
    const-string v6, "landscape_click"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0xf

    goto/16 :goto_1cf

    :sswitch_77
    const-string v6, "skipVideo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0x13

    goto/16 :goto_1cf

    :sswitch_83
    const-string v6, "playable_style"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/4 v5, 0x2

    goto/16 :goto_1cf

    :sswitch_8e
    const-string v6, "getNetworkData"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0x19

    goto/16 :goto_1cf

    :sswitch_9a
    const-string v6, "endcard_load"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0x1a

    goto/16 :goto_1cf

    :sswitch_a6
    const-string v6, "removeLoading"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0x9

    goto/16 :goto_1cf

    :sswitch_b2
    const-string v6, "renderDidFinish"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0x11

    goto/16 :goto_1cf

    :sswitch_be
    const-string v6, "muteVideo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0x14

    goto/16 :goto_1cf

    :sswitch_ca
    const-string v6, "pauseWebViewTimers"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0x1c

    goto/16 :goto_1cf

    :sswitch_d6
    const-string v6, "getVolume"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0x8

    goto/16 :goto_1cf

    :sswitch_e2
    const-string v6, "getCurrentVideoState"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0x16

    goto/16 :goto_1cf

    :sswitch_ee
    const-string v6, "cancel_download_app_ad"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0xd

    goto/16 :goto_1cf

    :sswitch_fa
    const-string v6, "getTemplateInfo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    move v5, v7

    goto/16 :goto_1cf

    :sswitch_105
    const-string v6, "dynamicTrack"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0x12

    goto/16 :goto_1cf

    :sswitch_111
    const-string v6, "sendReward"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0xa

    goto/16 :goto_1cf

    :sswitch_11d
    const-string v6, "isViewable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/4 v5, 0x5

    goto/16 :goto_1cf

    :sswitch_128
    const-string v6, "getCloseButtonInfo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/4 v5, 0x7

    goto/16 :goto_1cf

    :sswitch_133
    const-string v6, "getDownloadStatus"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0x1e

    goto/16 :goto_1cf

    :sswitch_13f
    const-string v6, "unsubscribe_app_ad"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0xe

    goto/16 :goto_1cf

    :sswitch_14b
    const-string v6, "download_app_ad"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0xc

    goto/16 :goto_1cf

    :sswitch_157
    const-string v6, "getTeMaiAds"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/4 v5, 0x4

    goto/16 :goto_1cf

    :sswitch_162
    const-string v6, "send_temai_product_ids"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0x17

    goto/16 :goto_1cf

    :sswitch_16e
    const-string v6, "getMaterialMeta"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0x18

    goto :goto_1cf

    :sswitch_179
    const-string v6, "getScreenSize"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/4 v5, 0x6

    goto :goto_1cf

    :sswitch_183
    const-string v6, "appInfo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    move v5, v8

    goto :goto_1cf

    :sswitch_18d
    const-string v6, "clickEvent"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0x10

    goto :goto_1cf

    :sswitch_198
    const-string v6, "webview_time_track"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0x1d

    goto :goto_1cf

    :sswitch_1a3
    const-string v6, "changeVideoState"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0x15

    goto :goto_1cf

    :sswitch_1ae
    const-string v6, "pauseWebView"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0x1b

    goto :goto_1cf

    :sswitch_1b9
    const-string v6, "adInfo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    move v5, v10

    goto :goto_1cf

    :sswitch_1c3
    const-string v6, "subscribe_app_ad"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0xb

    goto :goto_1cf

    :goto_1ce
    move v5, v9

    :goto_1cf
    packed-switch v5, :pswitch_data_3f0

    goto/16 :goto_335

    .line 583
    :pswitch_1d4
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/e/b/e;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    goto/16 :goto_335

    .line 580
    :pswitch_1dc
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    invoke-direct {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/x;->f(Lorg/json/JSONObject;)V

    .line 581
    goto/16 :goto_335

    .line 577
    :pswitch_1e3
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/x;->t()V

    .line 578
    goto/16 :goto_335

    .line 574
    :pswitch_1e8
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/x;->s()V

    .line 575
    goto/16 :goto_335

    .line 571
    :pswitch_1ed
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    invoke-direct {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/x;->g(Lorg/json/JSONObject;)V

    .line 572
    goto/16 :goto_335

    .line 568
    :pswitch_1f4
    invoke-direct {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/x$a;Lorg/json/JSONObject;)V

    .line 569
    goto/16 :goto_335

    .line 565
    :pswitch_1f9
    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/x;->o(Lorg/json/JSONObject;)Z

    .line 566
    goto/16 :goto_335

    .line 562
    :pswitch_1fe
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    invoke-direct {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/x;->n(Lorg/json/JSONObject;)V

    .line 563
    goto/16 :goto_335

    .line 559
    :pswitch_205
    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/x;->j(Lorg/json/JSONObject;)Z

    .line 560
    goto/16 :goto_335

    .line 556
    :pswitch_20a
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    invoke-direct {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/x;->i(Lorg/json/JSONObject;)V

    .line 557
    goto/16 :goto_335

    .line 553
    :pswitch_211
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    invoke-direct {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/x;->h(Lorg/json/JSONObject;)V

    .line 554
    goto/16 :goto_335

    .line 550
    :pswitch_218
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/x;->u()V

    .line 551
    goto/16 :goto_335

    .line 547
    :pswitch_21d
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    invoke-direct {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/x;->m(Lorg/json/JSONObject;)V

    .line 548
    goto/16 :goto_335

    .line 544
    :pswitch_224
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    invoke-direct {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/x;->l(Lorg/json/JSONObject;)V

    .line 545
    goto/16 :goto_335

    .line 541
    :pswitch_22b
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    invoke-direct {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/x;->k(Lorg/json/JSONObject;)V

    .line 542
    goto/16 :goto_335

    .line 534
    :pswitch_232
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/x;->g:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_335

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    if-eqz v5, :cond_335

    .line 535
    instance-of v6, v5, Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    if-eqz v6, :cond_335

    .line 536
    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->W()V

    goto/16 :goto_335

    .line 528
    :pswitch_249
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    if-eqz v5, :cond_335

    .line 529
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    invoke-interface {v5, v6}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_335

    .line 523
    :pswitch_254
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    .line 525
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    invoke-interface {v5, v6}, Lcom/bytedance/sdk/openadsdk/d/c;->b(Lorg/json/JSONObject;)V

    .line 526
    goto/16 :goto_335

    .line 512
    :pswitch_25d
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/x;->x:Lcom/bytedance/sdk/openadsdk/core/a/d;

    if-eqz v5, :cond_268

    .line 513
    iget-boolean v6, v0, Lcom/bytedance/sdk/openadsdk/core/x;->A:Z

    invoke-interface {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/a/d;->a(Z)V

    goto/16 :goto_335

    .line 514
    :cond_268
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    if-eqz v5, :cond_335

    .line 516
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/x;->g:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_27f

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    if-eqz v5, :cond_27f

    .line 517
    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    invoke-interface {v6, v5, v7}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 519
    :cond_27f
    goto/16 :goto_335

    .line 504
    :pswitch_281
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/x;->y()V

    .line 506
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/x;->g:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_335

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/content/Context;

    if-eqz v12, :cond_335

    .line 507
    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->d:Lorg/json/JSONObject;

    iget-object v14, v0, Lcom/bytedance/sdk/openadsdk/core/x;->k:Ljava/lang/String;

    iget v15, v0, Lcom/bytedance/sdk/openadsdk/core/x;->l:I

    iget-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/core/x;->o:Z

    move/from16 v16, v5

    invoke-interface/range {v11 .. v16}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;IZ)V

    goto/16 :goto_335

    .line 497
    :pswitch_2a2
    iput-boolean v10, v0, Lcom/bytedance/sdk/openadsdk/core/x;->c:Z

    .line 498
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/x;->u:Lcom/bytedance/sdk/openadsdk/f/e;

    if-eqz v5, :cond_335

    .line 499
    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/f/e;->a()V

    goto/16 :goto_335

    .line 491
    :pswitch_2ad
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/x;->v:Lcom/bytedance/sdk/openadsdk/f/d;

    if-eqz v5, :cond_335

    .line 492
    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/f/d;->a()V

    goto/16 :goto_335

    .line 479
    :pswitch_2b6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 480
    nop

    .line 481
    if-eqz v5, :cond_2df

    .line 482
    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    .line 483
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u97f3\u4e50\u97f3\u91cf >>>> AudioManager-->currentVolume="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_2df
    if-gtz v9, :cond_2e2

    move v8, v10

    .line 487
    :cond_2e2
    const-string v5, "endcard_mute"

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 488
    goto :goto_335

    .line 472
    :pswitch_2e8
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/x;->q()Lorg/json/JSONObject;

    move-result-object v5

    .line 473
    if-eqz v5, :cond_335

    .line 474
    move-object v3, v5

    goto :goto_335

    .line 463
    :pswitch_2f0
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/x;->t:Lcom/bytedance/sdk/openadsdk/f/a;

    if-eqz v5, :cond_335

    .line 464
    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/f/a;->b()I

    move-result v5

    .line 465
    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/x;->t:Lcom/bytedance/sdk/openadsdk/f/a;

    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/f/a;->a()I

    move-result v6

    .line 466
    const-string v7, "width"

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 467
    const-string v5, "height"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 468
    goto :goto_335

    .line 459
    :pswitch_309
    iget-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/core/x;->E:Z

    const-string v6, "viewStatus"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 460
    goto :goto_335

    .line 453
    :pswitch_311
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/x;->w:Lorg/json/JSONObject;

    if-eqz v5, :cond_335

    .line 454
    move-object v3, v5

    goto :goto_335

    .line 446
    :pswitch_317
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/x;->r:Lorg/json/JSONObject;

    if-eqz v3, :cond_324

    .line 447
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/x;->v()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "setting"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 449
    :cond_324
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/x;->r:Lorg/json/JSONObject;

    .line 450
    goto :goto_335

    .line 442
    :pswitch_327
    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/x;->e(Lorg/json/JSONObject;)V

    .line 443
    goto :goto_335

    .line 438
    :pswitch_32b
    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/x;->d(Lorg/json/JSONObject;)V

    .line 439
    goto :goto_335

    .line 434
    :pswitch_32f
    iget v5, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->e:I

    invoke-direct {v0, v3, v5}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lorg/json/JSONObject;I)V

    .line 435
    nop

    .line 590
    :cond_335
    :goto_335
    if-ne v2, v10, :cond_36f

    .line 592
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_370

    .line 593
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/x;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 594
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i;->v()Z

    move-result v1

    if-eqz v1, :cond_370

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[JSB-RSP] version:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_370

    .line 598
    :cond_36f
    nop

    .line 601
    :cond_370
    :goto_370
    return-object v3

    nop

    :sswitch_data_372
    .sparse-switch
        -0x7966d06a -> :sswitch_1c3
        -0x54d5e48f -> :sswitch_1b9
        -0x4f555ebd -> :sswitch_1ae
        -0x45af975a -> :sswitch_1a3
        -0x325352a1 -> :sswitch_198
        -0x2fbc0e0e -> :sswitch_18d
        -0x2f57a591 -> :sswitch_183
        -0x2aa0497d -> :sswitch_179
        -0x1d2a69be -> :sswitch_16e
        -0x1097c80a -> :sswitch_162
        -0xa5b419e -> :sswitch_157
        0x1a8c298 -> :sswitch_14b
        0x642ec2f -> :sswitch_13f
        0x14fecb90 -> :sswitch_133
        0x17d08ce2 -> :sswitch_128
        0x18049cc9 -> :sswitch_11d
        0x1a6244d7 -> :sswitch_111
        0x220cf04c -> :sswitch_105
        0x26c16abe -> :sswitch_fa
        0x281c12d3 -> :sswitch_ee
        0x2a6ab279 -> :sswitch_e2
        0x34c20a10 -> :sswitch_d6
        0x420130f1 -> :sswitch_ca
        0x44a639e2 -> :sswitch_be
        0x49bca8fc -> :sswitch_b2
        0x5b52a418 -> :sswitch_a6
        0x616caa3a -> :sswitch_9a
        0x66233dc2 -> :sswitch_8e
        0x673944c0 -> :sswitch_83
        0x7c55d63c -> :sswitch_77
        0x7d77e304 -> :sswitch_6b
    .end sparse-switch

    :pswitch_data_3f0
    .packed-switch 0x0
        :pswitch_32f
        :pswitch_32b
        :pswitch_327
        :pswitch_317
        :pswitch_311
        :pswitch_309
        :pswitch_2f0
        :pswitch_2e8
        :pswitch_2b6
        :pswitch_2ad
        :pswitch_2a2
        :pswitch_281
        :pswitch_25d
        :pswitch_254
        :pswitch_249
        :pswitch_232
        :pswitch_22b
        :pswitch_224
        :pswitch_21d
        :pswitch_218
        :pswitch_211
        :pswitch_20a
        :pswitch_205
        :pswitch_1fe
        :pswitch_1f9
        :pswitch_1f4
        :pswitch_1ed
        :pswitch_1e8
        :pswitch_1e3
        :pswitch_1dc
        :pswitch_1d4
    .end packed-switch
.end method

.method public a(Landroid/os/Message;)V
    .registers 3

    .line 1555
    if-nez p1, :cond_3

    .line 1556
    return-void

    .line 1558
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_19

    .line 1560
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/x$a;

    if-eqz v0, :cond_19

    .line 1562
    :try_start_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/x$a;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/x$a;I)Lorg/json/JSONObject;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_18

    .line 1564
    goto :goto_19

    .line 1563
    :catch_18
    move-exception p1

    .line 1568
    :cond_19
    :goto_19
    return-void

    :pswitch_data_1a
    .packed-switch 0xb
        :pswitch_9
    .end packed-switch
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 4

    .line 1254
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/x$8;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/x$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/f/c;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 1263
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    .line 1596
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/x;->d(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1597
    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/f/c;)V
    .registers 4

    .line 1153
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/f/c;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 1154
    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/f/c;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 10

    .line 1159
    if-nez p2, :cond_3

    .line 1160
    return-void

    .line 1162
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->n:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_66

    .line 1166
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Ljava/lang/String;)I

    move-result v0

    .line 1168
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->n:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->p()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    .line 1169
    if-nez v1, :cond_1f

    .line 1170
    goto :goto_20

    .line 1169
    :cond_1f
    move-object p3, v1

    .line 1173
    :goto_20
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/m;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/d/m;-><init>()V

    .line 1174
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/x;->n:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->M()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1175
    const/4 v2, 0x2

    iput v2, v1, Lcom/bytedance/sdk/openadsdk/core/d/m;->e:I

    .line 1177
    :cond_30
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/x;->n:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->at()Lorg/json/JSONObject;

    move-result-object v2

    .line 1178
    if-nez v2, :cond_3d

    .line 1179
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1181
    :cond_3d
    if-eqz p1, :cond_57

    .line 1182
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1183
    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 1184
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1185
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1186
    goto :goto_43

    .line 1188
    :cond_57
    iput-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/d/m;->j:Lorg/json/JSONObject;

    .line 1189
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->f()Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object p1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/x$7;

    invoke-direct {v2, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/x$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/f/c;)V

    invoke-interface {p1, p3, v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;ILcom/bytedance/sdk/openadsdk/core/q$b;)V

    .line 1206
    goto :goto_74

    .line 1163
    :cond_66
    :goto_66
    const/4 p1, 0x0

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/f/c;->a(ZLjava/util/List;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6b} :catch_6c

    .line 1164
    return-void

    .line 1204
    :catch_6c
    move-exception p1

    .line 1205
    const-string p2, "TTAndroidObject"

    const-string p3, "get ads error"

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1207
    :goto_74
    return-void
.end method

.method public a(Landroid/net/Uri;)Z
    .registers 5

    .line 1346
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1347
    return v0

    .line 1350
    :cond_4
    :try_start_4
    const-string v1, "bytedance"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1351
    return v0

    .line 1353
    :cond_11
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 1354
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/x;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_20

    if-eqz p1, :cond_1f

    .line 1355
    const/4 p1, 0x1

    return p1

    .line 1358
    :cond_1f
    goto :goto_21

    .line 1357
    :catch_20
    move-exception p1

    .line 1359
    :goto_21
    return v0
.end method

.method public adInfo()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 674
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 676
    :try_start_5
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->d(Lorg/json/JSONObject;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    .line 678
    goto :goto_a

    .line 677
    :catch_9
    move-exception v1

    .line 679
    :goto_a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public appInfo()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 684
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 686
    const/4 v1, 0x0

    :try_start_6
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lorg/json/JSONObject;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    .line 688
    goto :goto_b

    .line 687
    :catch_a
    move-exception v1

    .line 689
    :goto_b
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 3

    .line 209
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->d:Ljava/lang/ref/WeakReference;

    .line 210
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->i:Ljava/lang/String;

    .line 230
    return-object p0
.end method

.method public b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .line 344
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->w:Lorg/json/JSONObject;

    .line 345
    return-object p0
.end method

.method public b(Z)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .line 224
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->E:Z

    .line 225
    return-object p0
.end method

.method public b()V
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_21

    .line 279
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;

    if-eqz v0, :cond_20

    .line 280
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 282
    :cond_20
    return-void

    .line 277
    :cond_21
    :goto_21
    return-void
.end method

.method public b(Landroid/net/Uri;)V
    .registers 13

    .line 1365
    const-string v0, "TTAndroidObject"

    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 1366
    const-string v2, "log_event"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "custom_event"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "log_event_v3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_40

    .line 1398
    :cond_1f
    const-string v2, "private"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "dispatch_message"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_37

    .line 1401
    :cond_30
    const-string p1, "handlrUir: not match schema host"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a6

    .line 1399
    :cond_37
    :goto_37
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/x;->h(Ljava/lang/String;)V

    goto/16 :goto_a6

    .line 1367
    :cond_40
    :goto_40
    const-string v1, "category"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1369
    const-string v1, "tag"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1370
    const-string v3, "label"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1371
    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/x;->f(Ljava/lang/String;)Z

    move-result v3
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_56} :catch_a7

    if-nez v3, :cond_59

    .line 1372
    return-void

    .line 1374
    :cond_59
    nop

    .line 1376
    const-wide/16 v5, 0x0

    :try_start_5c
    const-string v3, "value"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_66} :catch_67

    .line 1378
    goto :goto_69

    .line 1377
    :catch_67
    move-exception v3

    move-wide v7, v5

    .line 1379
    :goto_69
    nop

    .line 1381
    :try_start_6a
    const-string v3, "ext_value"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_74} :catch_76

    .line 1383
    move-wide v9, v5

    goto :goto_78

    .line 1382
    :catch_76
    move-exception v3

    move-wide v9, v5

    .line 1384
    :goto_78
    const/4 v3, 0x0

    .line 1385
    :try_start_79
    const-string v5, "extra"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_83} :catch_a7

    if-nez v5, :cond_8d

    .line 1388
    :try_start_85
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8a} :catch_8c

    .line 1390
    move-object v3, v5

    goto :goto_8d

    .line 1389
    :catch_8c
    move-exception p1

    .line 1393
    :cond_8d
    :goto_8d
    :try_start_8d
    const-string p1, "click"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 1394
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/x;->q(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_9b

    .line 1393
    :cond_9a
    move-object p1, v3

    .line 1396
    :goto_9b
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1397
    move-wide v5, v7

    move-wide v7, v9

    move-object v9, p1

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_a5} :catch_a7

    .line 1398
    nop

    .line 1405
    :goto_a6
    goto :goto_ad

    .line 1403
    :catch_a7
    move-exception p1

    .line 1404
    const-string v1, "handleUri exception: "

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1406
    :goto_ad
    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .line 1602
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->G:Lcom/bytedance/sdk/openadsdk/e/a/q;

    if-eqz v0, :cond_7

    .line 1603
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/e/a/q;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 1607
    :cond_7
    goto :goto_10

    .line 1605
    :catchall_8
    move-exception p1

    .line 1606
    const-string p2, "TTAndroidObject"

    const-string v0, "sendJsMsg2020 error"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1608
    :goto_10
    return-void
.end method

.method public c()Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->n:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .line 298
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->k:Ljava/lang/String;

    .line 299
    return-object p0
.end method

.method public c(Z)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .line 334
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->A:Z

    .line 335
    return-object p0
.end method

.method public c(Lorg/json/JSONObject;)V
    .registers 39

    .line 885
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-nez v0, :cond_7

    .line 886
    return-void

    .line 888
    :cond_7
    const-string v2, "TTAndroidObject"

    const-string v3, "TTAndroidObject handleNewClickEvent"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const/4 v2, 0x1

    :try_start_f
    const-string v3, "adId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 891
    const-string v4, "areaType"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 892
    const-string v5, "downloadDialogStatus"

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 893
    if-ne v5, v2, :cond_26

    move v5, v2

    goto :goto_27

    :cond_26
    const/4 v5, 0x0

    .line 894
    :goto_27
    const-string v7, "clickInfo"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 896
    nop

    .line 897
    const-wide/16 v7, 0x0

    if-eqz v0, :cond_7e

    .line 898
    const-string v9, "down_x"

    invoke-virtual {v0, v9, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    .line 899
    const-string v11, "down_y"

    invoke-virtual {v0, v11, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    .line 900
    const-string v13, "up_x"

    invoke-virtual {v0, v13, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v13

    .line 901
    const-string v15, "up_y"

    invoke-virtual {v0, v15, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v15

    .line 902
    const-string v6, "down_time"

    invoke-virtual {v0, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v17

    .line 903
    const-string v6, "up_time"

    invoke-virtual {v0, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v19

    .line 904
    const-string v6, "button_x"

    invoke-virtual {v0, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v21

    .line 905
    const-string v6, "button_y"

    invoke-virtual {v0, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v23

    .line 906
    const-string v6, "button_width"

    invoke-virtual {v0, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v25

    .line 907
    const-string v6, "button_height"

    invoke-virtual {v0, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    move-object v0, v3

    move-wide/from16 v35, v7

    move-wide v7, v9

    move-wide v9, v15

    move-wide/from16 v2, v17

    move-wide/from16 v27, v19

    move-wide/from16 v29, v21

    move-wide/from16 v31, v23

    move-wide/from16 v33, v25

    goto :goto_8d

    .line 897
    :cond_7e
    move-object v0, v3

    move-wide v2, v7

    move-wide v9, v2

    move-wide v11, v9

    move-wide v13, v11

    move-wide/from16 v27, v13

    move-wide/from16 v29, v27

    move-wide/from16 v31, v29

    move-wide/from16 v33, v31

    move-wide/from16 v35, v33

    .line 909
    :goto_8d
    new-instance v15, Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    invoke-direct {v15}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;-><init>()V

    double-to-int v7, v7

    .line 910
    invoke-virtual {v15, v7}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->d(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v7

    double-to-int v8, v11

    .line 911
    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->c(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v7

    double-to-int v8, v13

    .line 912
    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->b(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v7

    double-to-int v8, v9

    .line 913
    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->a(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v7

    double-to-long v2, v2

    .line 914
    invoke-virtual {v7, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->b(J)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v2

    move-wide/from16 v7, v27

    double-to-long v7, v7

    .line 915
    invoke-virtual {v2, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->a(J)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v2

    move-wide/from16 v7, v29

    double-to-int v3, v7

    .line 916
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->e(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v2

    move-wide/from16 v7, v31

    double-to-int v3, v7

    .line 917
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->f(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v2

    move-wide/from16 v7, v33

    double-to-int v3, v7

    .line 918
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->g(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v2

    move-wide/from16 v7, v35

    double-to-int v3, v7

    .line 919
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->h(I)Lcom/bytedance/sdk/openadsdk/core/d/j$a;

    move-result-object v2

    .line 920
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/j$a;->a()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v2

    .line 921
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/x;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    if-eqz v3, :cond_de

    .line 922
    if-nez v5, :cond_da

    const/4 v5, 0x1

    goto :goto_db

    :cond_da
    const/4 v5, 0x0

    :goto_db
    invoke-interface {v3, v4, v2, v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;->a(ILcom/bytedance/sdk/openadsdk/core/d/j;Z)V

    .line 924
    :cond_de
    invoke-direct {v1, v0, v4, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/d/j;)Z
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_e1} :catch_e2

    .line 929
    goto :goto_ed

    .line 925
    :catch_e2
    move-exception v0

    .line 926
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/x;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    if-eqz v0, :cond_ed

    .line 927
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;->a(ILcom/bytedance/sdk/openadsdk/core/d/j;Z)V

    .line 930
    :cond_ed
    :goto_ed
    return-void
.end method

.method public changeVideoState(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 747
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 748
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_13

    .line 749
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->i(Lorg/json/JSONObject;)V

    goto :goto_24

    .line 752
    :cond_13
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/x$3;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    .line 761
    :goto_24
    goto :goto_26

    .line 759
    :catch_25
    move-exception p1

    .line 762
    :goto_26
    return-void
.end method

.method public clickEvent(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 768
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 769
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_13

    .line 770
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->k(Lorg/json/JSONObject;)V

    goto :goto_24

    .line 773
    :cond_13
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/x$4;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    .line 782
    :goto_24
    goto :goto_26

    .line 780
    :catch_25
    move-exception p1

    .line 783
    :goto_26
    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 2

    .line 309
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->m:Ljava/lang/String;

    .line 310
    return-object p0
.end method

.method public d()Z
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->n:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public dynamicTrack(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 737
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 738
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->m(Lorg/json/JSONObject;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 741
    goto :goto_a

    .line 739
    :catch_9
    move-exception p1

    .line 742
    :goto_a
    return-void
.end method

.method public e()Z
    .registers 2

    .line 374
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->c:Z

    return v0
.end method

.method public f()V
    .registers 3

    .line 1107
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/x$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/x$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/f/c;)V

    .line 1116
    return-void
.end method

.method public g()V
    .registers 4

    .line 1214
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1215
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->B:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1216
    const-string v2, "material"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1217
    const-string v1, "materialMeta"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 1219
    goto :goto_17

    .line 1218
    :catch_16
    move-exception v0

    .line 1220
    :goto_17
    return-void
.end method

.method public getCurrentVideoState()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 792
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 793
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->j(Lorg/json/JSONObject;)Z

    .line 794
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateInfo()Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 694
    const-string v0, "getTemplateInfo"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Ljava/lang/String;Z)V

    .line 696
    :try_start_6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->r:Lorg/json/JSONObject;

    if-eqz v1, :cond_13

    .line 697
    const-string v2, "setting"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->v()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 699
    :cond_13
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Ljava/lang/String;Z)V

    .line 700
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->r:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_1e

    return-object v0

    .line 701
    :catch_1e
    move-exception v0

    .line 703
    const-string v0, ""

    return-object v0
.end method

.method h()Z
    .registers 4

    .line 1423
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->n:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1424
    return v1

    .line 1426
    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->I()I

    move-result v0

    .line 1427
    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    .line 1428
    return v2

    .line 1430
    :cond_e
    return v1
.end method

.method public i()V
    .registers 2

    .line 1460
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->n:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_5

    .line 1461
    return-void

    .line 1463
    :cond_5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Q()Ljava/lang/String;

    move-result-object v0

    .line 1464
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;)V

    .line 1465
    return-void
.end method

.method public j()V
    .registers 4

    .line 1468
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->n:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/content/Context;Ljava/lang/String;)V

    .line 1469
    return-void
.end method

.method public k()Lorg/json/JSONObject;
    .registers 4

    .line 1472
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1473
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x;->n:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v1, :cond_a

    .line 1474
    return-object v0

    .line 1476
    :cond_a
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Q()Ljava/lang/String;

    move-result-object v1

    .line 1478
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1480
    :try_start_14
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_1b

    .line 1483
    move-object v0, v2

    goto :goto_1f

    .line 1481
    :catch_1b
    move-exception v1

    .line 1482
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1485
    :cond_1f
    :goto_1f
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 1490
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->l:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()V
    .registers 2

    .line 1533
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    if-eqz v0, :cond_7

    .line 1534
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/d/c;->a()V

    .line 1536
    :cond_7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->x()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1537
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->f()V

    .line 1539
    :cond_10
    return-void
.end method

.method public muteVideo(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 718
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 719
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_13

    .line 720
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->h(Lorg/json/JSONObject;)V

    goto :goto_24

    .line 723
    :cond_13
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/x$2;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    .line 732
    :goto_24
    goto :goto_2d

    .line 730
    :catch_25
    move-exception p1

    .line 731
    const-string p1, "TTAndroidObject"

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :goto_2d
    return-void
.end method

.method public n()V
    .registers 2

    .line 1542
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    if-eqz v0, :cond_7

    .line 1543
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/d/c;->b()V

    .line 1545
    :cond_7
    return-void
.end method

.method public o()V
    .registers 2

    .line 1548
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    if-eqz v0, :cond_7

    .line 1549
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/d/c;->c()V

    .line 1551
    :cond_7
    return-void
.end method

.method public renderDidFinish(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 709
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 710
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->l(Lorg/json/JSONObject;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 712
    goto :goto_a

    .line 711
    :catch_9
    move-exception p1

    .line 713
    :goto_a
    return-void
.end method

.method public skipVideo()V
    .registers 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 787
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/x;->u()V

    .line 788
    return-void
.end method
