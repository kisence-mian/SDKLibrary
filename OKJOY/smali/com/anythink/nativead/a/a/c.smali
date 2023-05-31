.class public final Lcom/anythink/nativead/a/a/c;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/c/c;Lcom/anythink/core/c/c$b;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;",
            "Lcom/anythink/core/c/c;",
            "Lcom/anythink/core/c/c$b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 34
    :try_start_1
    invoke-static {p0}, Lcom/anythink/core/b/g/c;->j(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_36

    invoke-virtual {p2}, Lcom/anythink/core/c/c;->z()I

    move-result v1

    if-ne v1, v0, :cond_36

    .line 35
    :goto_e
    sget-object v1, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->IS_AUTO_PLAY_KEY:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->AD_REQUEST_NUM:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/anythink/core/c/c$b;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_38

    .line 47
    :goto_24
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v6

    new-instance v0, Lcom/anythink/nativead/a/a/c$1;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p6

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/anythink/nativead/a/a/c$1;-><init>(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v6, v0}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 64
    return-void

    .line 34
    :cond_36
    const/4 v0, 0x0

    goto :goto_e

    :catch_38
    move-exception v0

    goto :goto_24
.end method
