.class final Lcom/didi/virtualapk/internal/ResourcesManager$VivoResourcesCompat;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/virtualapk/internal/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VivoResourcesCompat"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    .registers 4
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/content/res/Resources;
    .param p2, "x2"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {p0, p1, p2}, Lcom/didi/virtualapk/internal/ResourcesManager$VivoResourcesCompat;->createResources(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private static createResources(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    .registers 11
    .param p0, "hostContext"    # Landroid/content/Context;
    .param p1, "hostResources"    # Landroid/content/res/Resources;
    .param p2, "assetManager"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 247
    const-string v2, "android.content.res.VivoResources"

    invoke-static {v2}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v1

    .line 248
    .local v1, "reflector":Lcom/didi/virtualapk/utils/Reflector;
    new-array v2, v4, [Ljava/lang/Class;

    const-class v3, Landroid/content/res/AssetManager;

    aput-object v3, v2, v5

    const-class v3, Landroid/util/DisplayMetrics;

    aput-object v3, v2, v6

    const-class v3, Landroid/content/res/Configuration;

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/didi/virtualapk/utils/Reflector;->constructor([Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v5

    .line 249
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/didi/virtualapk/utils/Reflector;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    .line 250
    .local v0, "newResources":Landroid/content/res/Resources;
    const-string v2, "init"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/didi/virtualapk/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Lcom/didi/virtualapk/utils/Reflector;->callByCaller(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v2, "mThemeValues"

    invoke-virtual {v1, v2}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    .line 252
    invoke-virtual {v1, p1}, Lcom/didi/virtualapk/utils/Reflector;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    .line 253
    return-object v0
.end method
