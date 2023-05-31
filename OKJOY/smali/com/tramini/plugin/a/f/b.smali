.class public Lcom/tramini/plugin/a/f/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static e:[C

.field private static f:[B

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 15
    const-class v0, Lcom/tramini/plugin/a/f/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tramini/plugin/a/f/b;->b:Ljava/lang/String;

    .line 20
    sput-object v1, Lcom/tramini/plugin/a/f/b;->c:Ljava/util/Map;

    .line 21
    sput-object v1, Lcom/tramini/plugin/a/f/b;->d:Ljava/util/Map;

    .line 23
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_36

    sput-object v0, Lcom/tramini/plugin/a/f/b;->e:[C

    .line 28
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_7a

    sput-object v0, Lcom/tramini/plugin/a/f/b;->f:[B

    .line 39
    const-string v0, ""

    sput-object v0, Lcom/tramini/plugin/a/f/b;->a:Ljava/lang/String;

    .line 40
    const-string v0, ""

    sput-object v0, Lcom/tramini/plugin/a/f/b;->g:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tramini/plugin/a/f/b;->d:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tramini/plugin/a/f/b;->c:Ljava/util/Map;

    .line 46
    return-void

    .line 23
    :array_36
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    .line 28
    :array_7a
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private static a(C)Ljava/lang/Character;
    .registers 5

    .prologue
    .line 138
    sget-object v0, Lcom/tramini/plugin/a/f/b;->d:Ljava/util/Map;

    if-nez v0, :cond_30

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tramini/plugin/a/f/b;->d:Ljava/util/Map;

    .line 142
    const/4 v0, 0x0

    :goto_c
    sget-object v1, Lcom/tramini/plugin/a/f/b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 143
    sget-object v1, Lcom/tramini/plugin/a/f/b;->d:Ljava/util/Map;

    sget-object v2, Lcom/tramini/plugin/a/f/b;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v3, Lcom/tramini/plugin/a/f/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 147
    :cond_30
    sget-object v0, Lcom/tramini/plugin/a/f/b;->d:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 148
    sget-object v0, Lcom/tramini/plugin/a/f/b;->d:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 150
    :goto_48
    return-object v0

    :cond_49
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_48
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 172
    const-string v1, ""

    .line 177
    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 178
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 180
    if-eqz v4, :cond_78

    array-length v0, v4

    if-lez v0, :cond_78

    .line 181
    array-length v0, v4

    new-array v5, v0, [C

    move v3, v2

    .line 182
    :goto_16
    array-length v0, v4

    if-ge v3, v0, :cond_72

    .line 183
    aget-char v6, v4, v3

    .line 1138
    sget-object v0, Lcom/tramini/plugin/a/f/b;->d:Ljava/util/Map;

    if-nez v0, :cond_4b

    .line 1140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tramini/plugin/a/f/b;->d:Ljava/util/Map;

    move v0, v2

    .line 1142
    :goto_27
    sget-object v7, Lcom/tramini/plugin/a/f/b;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_4b

    .line 1143
    sget-object v7, Lcom/tramini/plugin/a/f/b;->d:Ljava/util/Map;

    sget-object v8, Lcom/tramini/plugin/a/f/b;->g:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    sget-object v9, Lcom/tramini/plugin/a/f/b;->a:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 1147
    :cond_4b
    sget-object v0, Lcom/tramini/plugin/a/f/b;->d:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1148
    sget-object v0, Lcom/tramini/plugin/a/f/b;->d:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 183
    :goto_63
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    aput-char v0, v5, v3

    .line 182
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_16

    .line 1150
    :cond_6d
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_63

    .line 185
    :cond_72
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_77} :catch_82

    move-object v1, v0

    .line 187
    :cond_78
    :try_start_78
    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, Lcom/tramini/plugin/a/f/b;->d(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_81} :catch_8a

    .line 193
    :goto_81
    return-object v0

    .line 191
    :catch_82
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_86
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_81

    :catch_8a
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_86

    :cond_8f
    move-object v0, v1

    goto :goto_81
.end method

.method private static a([B)Ljava/lang/String;
    .registers 9

    .prologue
    .line 52
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    array-length v2, p0

    .line 54
    const/4 v0, 0x0

    .line 57
    :goto_7
    if-ge v0, v2, :cond_2a

    .line 58
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v4, v0, 0xff

    .line 59
    if-ne v3, v2, :cond_2f

    .line 60
    sget-object v0, Lcom/tramini/plugin/a/f/b;->e:[C

    ushr-int/lit8 v2, v4, 0x2

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 61
    sget-object v0, Lcom/tramini/plugin/a/f/b;->e:[C

    and-int/lit8 v2, v4, 0x3

    shl-int/lit8 v2, v2, 0x4

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 62
    const-string v0, "=="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    :cond_2a
    :goto_2a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :cond_2f
    add-int/lit8 v5, v3, 0x1

    aget-byte v0, p0, v3

    and-int/lit16 v3, v0, 0xff

    .line 66
    if-ne v5, v2, :cond_61

    .line 67
    sget-object v0, Lcom/tramini/plugin/a/f/b;->e:[C

    ushr-int/lit8 v2, v4, 0x2

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    sget-object v0, Lcom/tramini/plugin/a/f/b;->e:[C

    and-int/lit8 v2, v4, 0x3

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v4, v3, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    or-int/2addr v2, v4

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    sget-object v0, Lcom/tramini/plugin/a/f/b;->e:[C

    and-int/lit8 v2, v3, 0xf

    shl-int/lit8 v2, v2, 0x2

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 70
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2a

    .line 73
    :cond_61
    add-int/lit8 v0, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 74
    sget-object v6, Lcom/tramini/plugin/a/f/b;->e:[C

    ushr-int/lit8 v7, v4, 0x2

    aget-char v6, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 75
    sget-object v6, Lcom/tramini/plugin/a/f/b;->e:[C

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    and-int/lit16 v7, v3, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    or-int/2addr v4, v7

    aget-char v4, v6, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 76
    sget-object v4, Lcom/tramini/plugin/a/f/b;->e:[C

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x2

    and-int/lit16 v6, v5, 0xc0

    ushr-int/lit8 v6, v6, 0x6

    or-int/2addr v3, v6

    aget-char v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 77
    sget-object v3, Lcom/tramini/plugin/a/f/b;->e:[C

    and-int/lit8 v4, v5, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_7
.end method

.method private static b(C)Ljava/lang/Character;
    .registers 5

    .prologue
    .line 155
    sget-object v0, Lcom/tramini/plugin/a/f/b;->c:Ljava/util/Map;

    if-nez v0, :cond_30

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tramini/plugin/a/f/b;->c:Ljava/util/Map;

    .line 158
    const/4 v0, 0x0

    :goto_c
    sget-object v1, Lcom/tramini/plugin/a/f/b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 159
    sget-object v1, Lcom/tramini/plugin/a/f/b;->c:Ljava/util/Map;

    sget-object v2, Lcom/tramini/plugin/a/f/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v3, Lcom/tramini/plugin/a/f/b;->g:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 163
    :cond_30
    sget-object v0, Lcom/tramini/plugin/a/f/b;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 164
    sget-object v0, Lcom/tramini/plugin/a/f/b;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 166
    :goto_48
    return-object v0

    :cond_49
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_48
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 197
    const-string v1, ""

    .line 202
    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8f

    .line 203
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 2052
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2053
    array-length v5, v3

    move v2, v0

    .line 2057
    :goto_14
    if-ge v2, v5, :cond_37

    .line 2058
    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v3, v2

    and-int/lit16 v7, v2, 0xff

    .line 2059
    if-ne v6, v5, :cond_59

    .line 2060
    sget-object v2, Lcom/tramini/plugin/a/f/b;->e:[C

    ushr-int/lit8 v3, v7, 0x2

    aget-char v2, v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2061
    sget-object v2, Lcom/tramini/plugin/a/f/b;->e:[C

    and-int/lit8 v3, v7, 0x3

    shl-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2062
    const-string v2, "=="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2079
    :cond_37
    :goto_37
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 207
    if-eqz v2, :cond_8f

    array-length v3, v2

    if-lez v3, :cond_8f

    .line 208
    array-length v3, v2

    new-array v3, v3, [C

    .line 209
    :goto_47
    array-length v4, v2

    if-ge v0, v4, :cond_cb

    .line 210
    aget-char v4, v2, v0

    invoke-static {v4}, Lcom/tramini/plugin/a/f/b;->b(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    aput-char v4, v3, v0

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 2065
    :cond_59
    add-int/lit8 v8, v6, 0x1

    aget-byte v2, v3, v6

    and-int/lit16 v6, v2, 0xff

    .line 2066
    if-ne v8, v5, :cond_91

    .line 2067
    sget-object v2, Lcom/tramini/plugin/a/f/b;->e:[C

    ushr-int/lit8 v3, v7, 0x2

    aget-char v2, v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2068
    sget-object v2, Lcom/tramini/plugin/a/f/b;->e:[C

    and-int/lit8 v3, v7, 0x3

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v5, v6, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    or-int/2addr v3, v5

    aget-char v2, v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2069
    sget-object v2, Lcom/tramini/plugin/a/f/b;->e:[C

    and-int/lit8 v3, v6, 0xf

    shl-int/lit8 v3, v3, 0x2

    aget-char v2, v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2070
    const-string v2, "="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8a} :catch_8b

    goto :goto_37

    .line 217
    :catch_8b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8f
    move-object v0, v1

    .line 219
    :goto_90
    return-object v0

    .line 2073
    :cond_91
    add-int/lit8 v2, v8, 0x1

    :try_start_93
    aget-byte v8, v3, v8

    and-int/lit16 v8, v8, 0xff

    .line 2074
    sget-object v9, Lcom/tramini/plugin/a/f/b;->e:[C

    ushr-int/lit8 v10, v7, 0x2

    aget-char v9, v9, v10

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2075
    sget-object v9, Lcom/tramini/plugin/a/f/b;->e:[C

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    and-int/lit16 v10, v6, 0xf0

    ushr-int/lit8 v10, v10, 0x4

    or-int/2addr v7, v10

    aget-char v7, v9, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2076
    sget-object v7, Lcom/tramini/plugin/a/f/b;->e:[C

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0x2

    and-int/lit16 v9, v8, 0xc0

    ushr-int/lit8 v9, v9, 0x6

    or-int/2addr v6, v9

    aget-char v6, v7, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2077
    sget-object v6, Lcom/tramini/plugin/a/f/b;->e:[C

    and-int/lit8 v7, v8, 0x3f

    aget-char v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_14

    .line 212
    :cond_cb
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_d0} :catch_8b

    goto :goto_90
.end method

.method public static c(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 224
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 225
    const-string v2, "k"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    const-string v3, "v"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6c

    .line 229
    sput-object v2, Lcom/tramini/plugin/a/f/b;->a:Ljava/lang/String;

    .line 230
    sput-object v1, Lcom/tramini/plugin/a/f/b;->g:Ljava/lang/String;

    move v1, v0

    .line 231
    :goto_23
    sget-object v2, Lcom/tramini/plugin/a/f/b;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_47

    .line 232
    sget-object v2, Lcom/tramini/plugin/a/f/b;->d:Ljava/util/Map;

    sget-object v3, Lcom/tramini/plugin/a/f/b;->g:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    sget-object v4, Lcom/tramini/plugin/a/f/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 234
    :cond_47
    :goto_47
    sget-object v1, Lcom/tramini/plugin/a/f/b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6c

    .line 235
    sget-object v1, Lcom/tramini/plugin/a/f/b;->c:Ljava/util/Map;

    sget-object v2, Lcom/tramini/plugin/a/f/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v3, Lcom/tramini/plugin/a/f/b;->g:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_68} :catch_6b

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 245
    :catch_6b
    move-exception v0

    :cond_6c
    return-void
.end method

.method private static d(Ljava/lang/String;)[B
    .registers 10

    .prologue
    const/16 v8, 0x3d

    const/4 v7, -0x1

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 84
    array-length v3, v2

    .line 85
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 86
    const/4 v0, 0x0

    .line 89
    :goto_e
    if-ge v0, v3, :cond_75

    .line 93
    :goto_10
    sget-object v5, Lcom/tramini/plugin/a/f/b;->f:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    aget-byte v5, v5, v0

    .line 94
    if-ge v1, v3, :cond_1c

    if-eq v5, v7, :cond_80

    .line 95
    :cond_1c
    if-eq v5, v7, :cond_75

    .line 101
    :goto_1e
    sget-object v6, Lcom/tramini/plugin/a/f/b;->f:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    aget-byte v6, v6, v1

    .line 102
    if-ge v0, v3, :cond_2a

    if-eq v6, v7, :cond_7e

    .line 103
    :cond_2a
    if-eq v6, v7, :cond_75

    .line 106
    shl-int/lit8 v1, v5, 0x2

    and-int/lit8 v5, v6, 0x30

    ushr-int/lit8 v5, v5, 0x4

    or-int/2addr v1, v5

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 110
    :goto_36
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    .line 111
    if-ne v0, v8, :cond_41

    .line 112
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 134
    :goto_40
    return-object v0

    .line 114
    :cond_41
    sget-object v5, Lcom/tramini/plugin/a/f/b;->f:[B

    aget-byte v5, v5, v0

    .line 115
    if-ge v1, v3, :cond_49

    if-eq v5, v7, :cond_7c

    .line 116
    :cond_49
    if-eq v5, v7, :cond_75

    .line 119
    and-int/lit8 v0, v6, 0xf

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v6, v5, 0x3c

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v0, v6

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 123
    :goto_57
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    .line 124
    if-ne v1, v8, :cond_62

    .line 125
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_40

    .line 127
    :cond_62
    sget-object v6, Lcom/tramini/plugin/a/f/b;->f:[B

    aget-byte v1, v6, v1

    .line 128
    if-ge v0, v3, :cond_6a

    if-eq v1, v7, :cond_7a

    .line 129
    :cond_6a
    if-eq v1, v7, :cond_75

    .line 132
    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v1, v5

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_e

    .line 134
    :cond_75
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_40

    :cond_7a
    move v1, v0

    goto :goto_57

    :cond_7c
    move v0, v1

    goto :goto_36

    :cond_7e
    move v1, v0

    goto :goto_1e

    :cond_80
    move v0, v1

    goto :goto_10
.end method
