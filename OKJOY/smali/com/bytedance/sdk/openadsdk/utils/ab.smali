.class public final Lcom/bytedance/sdk/openadsdk/utils/ab;
.super Ljava/lang/Object;
.source "ResourceHelp.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ab;->a:Ljava/lang/String;

    .line 18
    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ab;->b:Landroid/content/res/Resources;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 28
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ab;->b:Landroid/content/res/Resources;

    if-nez v0, :cond_a

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ab;->b:Landroid/content/res/Resources;

    .line 31
    :cond_a
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ab;->b:Landroid/content/res/Resources;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ab;->a:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ab;->a:Ljava/lang/String;

    .line 24
    :cond_a
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ab;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 39
    const-string v0, "string"

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 51
    const-string v0, "drawable"

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 59
    const-string v0, "id"

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 63
    const-string v0, "layout"

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 71
    const-string v0, "style"

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 79
    const-string v0, "dimen"

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->j(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 87
    const-string v0, "color"

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 95
    const-string v0, "integer"

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method
