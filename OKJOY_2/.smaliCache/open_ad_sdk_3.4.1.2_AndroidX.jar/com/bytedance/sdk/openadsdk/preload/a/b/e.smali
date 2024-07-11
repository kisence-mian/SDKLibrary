.class public final Lcom/bytedance/sdk/openadsdk/preload/a/b/e;
.super Ljava/lang/Object;
.source "JavaVersion.java"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/a/b/e;->c()I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/e;->a:I

    return-void
.end method

.method public static a()I
    .registers 1

    .line 81
    sget v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/e;->a:I

    return v0
.end method

.method static a(Ljava/lang/String;)I
    .registers 3

    .line 35
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/e;->b(Ljava/lang/String;)I

    move-result v0

    .line 36
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 37
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/e;->c(Ljava/lang/String;)I

    move-result v0

    .line 39
    :cond_b
    if-ne v0, v1, :cond_f

    .line 40
    const/4 p0, 0x6

    return p0

    .line 42
    :cond_f
    return v0
.end method

.method private static b(Ljava/lang/String;)I
    .registers 4

    .line 48
    :try_start_0
    const-string v0, "[._]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 49
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 50
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    array-length v2, p0

    if-le v2, v1, :cond_1a

    .line 51
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_19} :catch_1b

    return p0

    .line 53
    :cond_1a
    return v0

    .line 55
    :catch_1b
    move-exception p0

    .line 56
    const/4 p0, -0x1

    return p0
.end method

.method public static b()Z
    .registers 2

    .line 88
    sget v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/e;->a:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static c()I
    .registers 1

    .line 29
    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/e;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static c(Ljava/lang/String;)I
    .registers 5

    .line 62
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 65
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 71
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_24} :catch_25

    return p0

    .line 72
    :catch_25
    move-exception p0

    .line 73
    const/4 p0, -0x1

    return p0
.end method
