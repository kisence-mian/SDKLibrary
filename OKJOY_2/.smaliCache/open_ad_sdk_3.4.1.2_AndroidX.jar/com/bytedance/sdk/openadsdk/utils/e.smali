.class public Lcom/bytedance/sdk/openadsdk/utils/e;
.super Ljava/lang/Object;
.source "AppSigning.java"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/e;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    const-string v1, "SHA1"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 70
    if-eqz p0, :cond_33

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_33

    .line 71
    const/4 v1, 0x0

    :goto_14
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 72
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_30

    .line 74
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 78
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 134
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    .line 135
    const-string v0, "error!"

    .line 137
    :try_start_6
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 138
    if-eqz p1, :cond_46

    .line 139
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_18
    const/4 v4, 0x1

    if-ge v3, v1, :cond_39

    aget-byte v5, p0, v3

    .line 142
    and-int/lit16 v5, v5, 0xff

    or-int/lit16 v5, v5, 0x100

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 145
    :cond_39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {p1, v2, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_46} :catch_47

    .line 149
    :cond_46
    goto :goto_4f

    .line 147
    :catch_47
    move-exception p0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;)V

    .line 151
    :goto_4f
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    const-string v0, "SHA256"

    const-string v1, "SHA1"

    const-string v2, "MD5"

    const/4 v3, 0x0

    if-eqz p0, :cond_6a

    if-nez p1, :cond_c

    goto :goto_6a

    .line 33
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 34
    if-nez v4, :cond_13

    .line 35
    return-object v3

    .line 37
    :cond_13
    sget-object v3, Lcom/bytedance/sdk/openadsdk/utils/e;->a:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 38
    sget-object p0, Lcom/bytedance/sdk/openadsdk/utils/e;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0

    .line 40
    :cond_24
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    :try_start_29
    invoke-static {p0, v4}, Lcom/bytedance/sdk/openadsdk/utils/e;->b(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object p0

    .line 43
    array-length v4, p0

    const/4 v5, 0x0

    :goto_2f
    if-ge v5, v4, :cond_5b

    aget-object v6, p0, v5

    .line 44
    const-string v7, "error!"

    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_40

    .line 46
    invoke-static {v6, v2}, Lcom/bytedance/sdk/openadsdk/utils/e;->a(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_55

    .line 47
    :cond_40
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 48
    invoke-static {v6, v1}, Lcom/bytedance/sdk/openadsdk/utils/e;->a(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_55

    .line 49
    :cond_4b
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_55

    .line 50
    invoke-static {v6, v0}, Lcom/bytedance/sdk/openadsdk/utils/e;->a(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 52
    :cond_55
    :goto_55
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_58} :catch_5c

    .line 43
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 56
    :cond_5b
    goto :goto_64

    .line 54
    :catch_5c
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;)V

    .line 57
    :goto_64
    sget-object p0, Lcom/bytedance/sdk/openadsdk/utils/e;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-object v3

    .line 31
    :cond_6a
    :goto_6a
    return-object v3
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .registers 3

    .line 89
    nop

    .line 91
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x40

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 92
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_e

    return-object p0

    .line 93
    :catch_e
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;)V

    .line 96
    const/4 p0, 0x0

    return-object p0
.end method
