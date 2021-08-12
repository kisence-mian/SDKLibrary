.class public final Lcom/anythink/core/common/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x23

.field public static final b:Ljava/lang/String; = "isDefaultOffer"

.field private static h:Lcom/anythink/core/common/m;


# instance fields
.field c:Ljava/lang/reflect/Method;

.field d:Ljava/lang/reflect/Method;

.field e:Ljava/lang/reflect/Method;

.field f:Ljava/lang/reflect/Method;

.field g:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 8

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    :try_start_3
    const-string v0, "com.anythink.network.myoffer.MyOfferAPI"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 34
    const-string v1, "preloadTopOnOffer"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/anythink/core/common/d/q;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/m;->c:Ljava/lang/reflect/Method;

    .line 35
    const-string v1, "getOutOfCapOfferIds"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/m;->d:Ljava/lang/reflect/Method;

    .line 36
    const-string v1, "getCacheOfferIds"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Lcom/anythink/core/common/d/r;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/m;->e:Ljava/lang/reflect/Method;

    .line 37
    const-string v1, "getDefaultOfferId"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/m;->f:Ljava/lang/reflect/Method;

    .line 38
    const-string v1, "checkOffersOutOfCap"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/m;->g:Ljava/lang/reflect/Method;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_67} :catch_68

    .line 41
    return-void

    .line 40
    :catch_68
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    return-void
.end method

.method public static declared-synchronized a()Lcom/anythink/core/common/m;
    .registers 2

    const-class v0, Lcom/anythink/core/common/m;

    monitor-enter v0

    .line 46
    :try_start_3
    sget-object v1, Lcom/anythink/core/common/m;->h:Lcom/anythink/core/common/m;

    if-nez v1, :cond_e

    .line 47
    new-instance v1, Lcom/anythink/core/common/m;

    invoke-direct {v1}, Lcom/anythink/core/common/m;-><init>()V

    sput-object v1, Lcom/anythink/core/common/m;->h:Lcom/anythink/core/common/m;

    .line 49
    :cond_e
    sget-object v1, Lcom/anythink/core/common/m;->h:Lcom/anythink/core/common/m;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 45
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/common/d/r;)Lorg/json/JSONObject;
    .registers 8

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/m;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    .line 96
    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 97
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_20

    .line 98
    return-object p2

    .line 102
    :cond_1f
    goto :goto_24

    .line 101
    :catch_20
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    :goto_24
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 6

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/m;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_19

    .line 78
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 79
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    .line 80
    return-object v0

    .line 84
    :cond_19
    goto :goto_1e

    .line 83
    :catch_1a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    :goto_1e
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/m;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1a

    .line 60
    new-instance v0, Lcom/anythink/core/common/d/q;

    invoke-direct {v0}, Lcom/anythink/core/common/d/q;-><init>()V

    .line 61
    iput-object p2, v0, Lcom/anythink/core/common/d/q;->a:Ljava/lang/String;

    .line 62
    iget-object p2, p0, Lcom/anythink/core/common/m;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-virtual {p2, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 66
    :cond_1a
    return-void

    .line 65
    :catch_1b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/m;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_17

    .line 112
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    return-object p1

    .line 117
    :cond_17
    goto :goto_1c

    .line 116
    :catch_18
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    :goto_1c
    const-string p1, ""

    return-object p1
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    .line 131
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/anythink/core/common/m;->g:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_19

    .line 132
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const/4 p1, 0x1

    aput-object p2, v3, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 133
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_1a

    return p1

    .line 137
    :cond_19
    goto :goto_1e

    .line 136
    :catch_1a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    :goto_1e
    return v0
.end method
