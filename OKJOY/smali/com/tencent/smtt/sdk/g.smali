.class public Lcom/tencent/smtt/sdk/g;
.super Ljava/lang/Object;


# static fields
.field static a:I

.field static b:I

.field static c:[C

.field static d:Ljava/lang/String;

.field static e:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x5

    sput v0, Lcom/tencent/smtt/sdk/g;->a:I

    const/16 v0, 0x10

    sput v0, Lcom/tencent/smtt/sdk/g;->b:I

    new-array v0, v0, [C

    sput-object v0, Lcom/tencent/smtt/sdk/g;->c:[C

    const-string v0, "dex2oat-cmdline"

    sput-object v0, Lcom/tencent/smtt/sdk/g;->d:Ljava/lang/String;

    const-wide/16 v0, 0x1000

    sput-wide v0, Lcom/tencent/smtt/sdk/g;->e:J

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x1

    new-instance v1, Lcom/tencent/smtt/utils/c;

    invoke-direct {v1, p1}, Lcom/tencent/smtt/utils/c;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/smtt/sdk/g;->c:[C

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/utils/c;->a([C)I

    sget-object v2, Lcom/tencent/smtt/sdk/g;->c:[C

    sget v3, Lcom/tencent/smtt/sdk/g;->a:I

    aget-char v2, v2, v3

    if-ne v2, v0, :cond_29

    :goto_13
    invoke-virtual {v1, v0}, Lcom/tencent/smtt/utils/c;->a(Z)V

    sget-wide v2, Lcom/tencent/smtt/sdk/g;->e:J

    invoke-virtual {v1, v2, v3}, Lcom/tencent/smtt/utils/c;->a(J)V

    invoke-static {v1}, Lcom/tencent/smtt/sdk/g;->a(Lcom/tencent/smtt/utils/c;)[C

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1}, Lcom/tencent/smtt/sdk/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/String;

    const-string v1, "\u0000"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :cond_c
    array-length v1, v2

    if-ge v0, v1, :cond_21

    add-int/lit8 v1, v0, 0x1

    aget-object v3, v2, v0

    add-int/lit8 v0, v1, 0x1

    aget-object v1, v2, v1

    sget-object v4, Lcom/tencent/smtt/sdk/g;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v0, v1

    :goto_20
    return-object v0

    :cond_21
    const-string v0, ""

    goto :goto_20
.end method

.method public static a(Lcom/tencent/smtt/utils/c;)[C
    .registers 9

    const/4 v1, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-array v0, v1, [C

    new-array v1, v1, [C

    invoke-virtual {p0, v0}, Lcom/tencent/smtt/utils/c;->a([C)I

    aget-char v2, v0, v6

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_1d

    aget-char v2, v0, v5

    const/16 v3, 0x61

    if-ne v2, v3, :cond_1d

    aget-char v2, v0, v7

    const/16 v3, 0x74

    if-eq v2, v3, :cond_44

    :cond_1d
    new-instance v1, Ljava/util/UnknownFormatConversionException;

    const-string v2, "Invalid art magic %c%c%c"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aget-char v4, v0, v6

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v6

    aget-char v4, v0, v5

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v5

    aget-char v0, v0, v7

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_44
    invoke-virtual {p0, v1}, Lcom/tencent/smtt/utils/c;->a([C)I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    aget-char v0, v1, v5

    const/16 v1, 0x34

    if-gt v0, v1, :cond_6e

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    :cond_6e
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v0

    new-array v0, v0, [C

    invoke-virtual {p0, v0}, Lcom/tencent/smtt/utils/c;->a([C)I

    return-object v0
.end method
