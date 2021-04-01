.class public final Lcom/anythink/core/b/k;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x23

.field public static final b:Ljava/lang/String; = "isDefaultOffer"

.field private static h:Lcom/anythink/core/b/k;


# instance fields
.field c:Ljava/lang/reflect/Method;

.field d:Ljava/lang/reflect/Method;

.field e:Ljava/lang/reflect/Method;

.field f:Ljava/lang/reflect/Method;

.field g:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 6

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    :try_start_3
    const-string v0, "com.anythink.network.myoffer.MyOfferAPI"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 26
    const-string v1, "initTopOnOffer"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/anythink/core/b/c/i;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/b/k;->c:Ljava/lang/reflect/Method;

    .line 27
    const-string v1, "getOutOfCapOfferIds"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/b/k;->d:Ljava/lang/reflect/Method;

    .line 28
    const-string v1, "getCacheOfferIds"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/b/k;->e:Ljava/lang/reflect/Method;

    .line 29
    const-string v1, "getDefaultOfferId"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/b/k;->f:Ljava/lang/reflect/Method;

    .line 30
    const-string v1, "checkOffersOutOfCap"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/k;->g:Ljava/lang/reflect/Method;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_68} :catch_69

    .line 35
    :goto_68
    return-void

    .line 32
    :catch_69
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_68
.end method

.method public static declared-synchronized a()Lcom/anythink/core/b/k;
    .registers 2

    .prologue
    .line 38
    const-class v1, Lcom/anythink/core/b/k;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/anythink/core/b/k;->h:Lcom/anythink/core/b/k;

    if-nez v0, :cond_e

    .line 39
    new-instance v0, Lcom/anythink/core/b/k;

    invoke-direct {v0}, Lcom/anythink/core/b/k;-><init>()V

    sput-object v0, Lcom/anythink/core/b/k;->h:Lcom/anythink/core/b/k;

    .line 41
    :cond_e
    sget-object v0, Lcom/anythink/core/b/k;->h:Lcom/anythink/core/b/k;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/k;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    .line 93
    iget-object v0, p0, Lcom/anythink/core/b/k;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 94
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 100
    :goto_1a
    return-object v0

    .line 98
    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    :cond_1f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1a
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/k;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1d

    .line 109
    iget-object v0, p0, Lcom/anythink/core/b/k;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v0

    .line 115
    :goto_18
    return-object v0

    .line 113
    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    :cond_1d
    const-string v0, ""

    goto :goto_18
.end method

.method public final a(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 6

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/k;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    .line 75
    iget-object v0, p0, Lcom/anythink/core/b/k;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 76
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 82
    :goto_1a
    return-object v0

    .line 80
    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    :cond_1f
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_1a
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12

    .prologue
    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/k;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_22

    .line 53
    new-instance v0, Lcom/anythink/core/b/c/i;

    invoke-direct {v0}, Lcom/anythink/core/b/c/i;-><init>()V

    .line 54
    iput-object p2, v0, Lcom/anythink/core/b/c/i;->a:Ljava/lang/String;

    .line 55
    iput-object p3, v0, Lcom/anythink/core/b/c/i;->b:Ljava/lang/String;

    .line 56
    iput-object p4, v0, Lcom/anythink/core/b/c/i;->c:Ljava/lang/String;

    .line 57
    iput-object p5, v0, Lcom/anythink/core/b/c/i;->d:Ljava/lang/String;

    .line 58
    iput-boolean p6, v0, Lcom/anythink/core/b/c/i;->e:Z

    .line 59
    iget-object v1, p0, Lcom/anythink/core/b/k;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 65
    :cond_22
    :goto_22
    return-void

    .line 62
    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 128
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/b/k;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    .line 129
    iget-object v0, p0, Lcom/anythink/core/b/k;->g:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1c

    move-result v0

    .line 135
    :goto_1b
    return v0

    .line 133
    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_20
    move v0, v1

    .line 135
    goto :goto_1b
.end method
