.class Lcom/kwad/sdk/api/loader/f;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "newversion"

    sput-object v0, Lcom/kwad/sdk/api/loader/f;->a:Ljava/lang/String;

    const-string v0, "curversion"

    sput-object v0, Lcom/kwad/sdk/api/loader/f;->b:Ljava/lang/String;

    const-string v0, "apiversion"

    sput-object v0, Lcom/kwad/sdk/api/loader/f;->c:Ljava/lang/String;

    const-string v0, "_enable"

    sput-object v0, Lcom/kwad/sdk/api/loader/f;->d:Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/kwad/sdk/api/loader/f;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/kwad/sdk/api/loader/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/kwad/sdk/api/loader/q;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/kwad/sdk/api/loader/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    :cond_15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_23

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    return v2

    :cond_23
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v0, v1

    :goto_2e
    array-length v3, p0

    if-ge v0, v3, :cond_4c

    array-length v3, p1

    if-ge v0, v3, :cond_4c

    :try_start_34
    aget-object v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_40} :catch_4a

    sub-int/2addr v3, v4

    if-lez v3, :cond_44

    return v2

    :cond_44
    if-gez v3, :cond_47

    return v1

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :catch_4a
    move-exception p0

    return v1

    :cond_4c
    array-length p0, p0

    array-length p1, p1

    if-le p0, p1, :cond_51

    move v1, v2

    :cond_51
    return v1
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/kwad/sdk/api/loader/f;->c:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/kwad/sdk/api/loader/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
