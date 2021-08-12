.class public Lcom/kwad/sdk/core/config/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "gifshow.com"

    const-string v1, "kuaishou.com"

    const-string v2, "static.yximgs.com"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/core/config/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/kwad/sdk/core/config/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {p0}, Lcom/kwad/sdk/core/config/a;->c(Ljava/lang/String;)Z

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_1f

    if-eqz p0, :cond_1e

    :cond_1d
    const/4 v1, 0x1

    :cond_1e
    return v1

    :catch_1f
    move-exception p0

    return v1
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    sget-object v0, Lcom/kwad/sdk/core/config/a;->a:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_c
    if-ge v3, v2, :cond_1b

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1b
    return v1
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/kwad/sdk/core/config/c;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_24
    return v1
.end method
