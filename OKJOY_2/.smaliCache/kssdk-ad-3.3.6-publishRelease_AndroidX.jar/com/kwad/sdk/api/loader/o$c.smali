.class final Lcom/kwad/sdk/api/loader/o$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/loader/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method static synthetic a(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    .registers 2

    invoke-static {p0, p1}, Lcom/kwad/sdk/api/loader/o$c;->b(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    .registers 4

    :try_start_0
    invoke-static {p0, p1}, Lcom/kwad/sdk/api/loader/o$c;->c(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :try_start_9
    invoke-static {p0, p1}, Lcom/kwad/sdk/api/loader/o$a;->a(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method private static c(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    .registers 9

    const-string v0, "android.content.res.MiuiResourcesImpl"

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/Reflect;->a(Ljava/lang/String;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/res/AssetManager;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/util/DisplayMetrics;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Landroid/content/res/Configuration;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    aput-object p0, v1, v6

    invoke-virtual {v0, v2, v1}, Lcom/kwad/sdk/api/loader/Reflect;->a([Ljava/lang/Class;[Ljava/lang/Object;)Lcom/kwad/sdk/api/loader/Reflect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/kwad/sdk/api/loader/Reflect;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;

    if-eqz p0, :cond_35

    return-object p0

    :cond_35
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Can not create Resources"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
