.class final Lcom/kwad/sdk/api/loader/o$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/loader/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# direct methods
.method static synthetic a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/kwad/sdk/api/loader/o$f;->b(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    .registers 4

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/kwad/sdk/api/loader/o$f;->c(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :try_start_9
    invoke-static {p1, p2}, Lcom/kwad/sdk/api/loader/o$a;->a(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p0, Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object p0
.end method

.method private static c(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    .registers 11

    const-string v0, "mThemeValues"

    const-string v1, "android.content.res.VivoResources"

    invoke-static {v1}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/String;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/res/AssetManager;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/util/DisplayMetrics;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/content/res/Configuration;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    aput-object p2, v2, v6

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    aput-object p2, v2, v7

    invoke-virtual {v1, v3, v2}, Lcom/kwad/sdk/api/loader/Reflect;->a([Ljava/lang/Class;[Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kwad/sdk/api/loader/Reflect;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/res/Resources;

    if-eqz p2, :cond_67

    :try_start_36
    invoke-static {p2}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object v1

    const-string v2, "init"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;
    :try_end_4d
    .catch Lcom/kwad/sdk/api/loader/Reflect$ReflectException; {:try_start_36 .. :try_end_4d} :catch_4e

    goto :goto_52

    :catch_4e
    move-exception p0

    invoke-virtual {p0}, Lcom/kwad/sdk/api/loader/Reflect$ReflectException;->printStackTrace()V

    :goto_52
    :try_start_52
    invoke-static {p1}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/api/loader/Reflect;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;
    :try_end_61
    .catch Lcom/kwad/sdk/api/loader/Reflect$ReflectException; {:try_start_52 .. :try_end_61} :catch_62

    goto :goto_66

    :catch_62
    move-exception p0

    invoke-virtual {p0}, Lcom/kwad/sdk/api/loader/Reflect$ReflectException;->printStackTrace()V

    :goto_66
    return-object p2

    :cond_67
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Can not create Resources"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
