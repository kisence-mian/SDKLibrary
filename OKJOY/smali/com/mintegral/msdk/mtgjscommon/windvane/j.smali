.class public final Lcom/mintegral/msdk/mtgjscommon/windvane/j;
.super Ljava/lang/Object;
.source "WindVaneUtil.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 17
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "wv_hybrid:"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "mraid:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ssp:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "mvb_hybrid:"

    aput-object v3, v1, v2

    sput-object v1, Lcom/mintegral/msdk/mtgjscommon/windvane/j;->a:[Ljava/lang/String;

    .line 18
    const-string v1, "hybrid://(.+?):(.+?)/(.+?)(\\?(.*?))?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/mintegral/msdk/mtgjscommon/windvane/j;->b:Ljava/util/regex/Pattern;

    .line 19
    const-string v1, "mraid://(.+?):(.+?)/(.+?)(\\?(.*?))?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/mintegral/msdk/mtgjscommon/windvane/j;->c:Ljava/util/regex/Pattern;

    .line 20
    const-string v1, "ssp://(.+?):(.+?)/(.+?)(\\?(.*?))?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/mintegral/msdk/mtgjscommon/windvane/j;->d:Ljava/util/regex/Pattern;

    .line 21
    const-string v1, "mv://(.+?):(.+?)/(.+?)(\\?(.*?))?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/mintegral/msdk/mtgjscommon/windvane/j;->e:Ljava/util/regex/Pattern;

    .line 22
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mintegral/msdk/mtgjscommon/windvane/j;->f:Ljava/util/Map;

    .line 24
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/e;->a()[Lcom/mintegral/msdk/mtgjscommon/windvane/e;

    move-result-object v1

    array-length v2, v1

    :goto_45
    if-ge v0, v2, :cond_59

    aget-object v3, v1, v0

    .line 25
    sget-object v4, Lcom/mintegral/msdk/mtgjscommon/windvane/j;->f:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/mintegral/msdk/mtgjscommon/windvane/e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/mintegral/msdk/mtgjscommon/windvane/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 27
    :cond_59
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 36
    sget-object v2, Lcom/mintegral/msdk/mtgjscommon/windvane/j;->a:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_10

    aget-object v4, v2, v1

    .line 37
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 38
    const/4 v0, 0x1

    .line 41
    :cond_10
    return v0

    .line 36
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public static b(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 2

    .prologue
    .line 45
    const-string v0, "wv_hybrid:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 46
    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/windvane/j;->e:Ljava/util/regex/Pattern;

    .line 54
    :goto_a
    return-object v0

    .line 47
    :cond_b
    const-string v0, "mraid:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 48
    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/windvane/j;->c:Ljava/util/regex/Pattern;

    goto :goto_a

    .line 49
    :cond_16
    const-string v0, "ssp:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 50
    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/windvane/j;->d:Ljava/util/regex/Pattern;

    goto :goto_a

    .line 51
    :cond_21
    const-string v0, "mvb_hybrid:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 52
    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/windvane/j;->e:Ljava/util/regex/Pattern;

    goto :goto_a

    .line 54
    :cond_2c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 58
    new-array v4, v8, [C

    fill-array-data v4, :array_84

    .line 61
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v0, 0x3e8

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 64
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    move v0, v1

    .line 66
    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_7c

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 68
    const/16 v2, 0xff

    if-le v6, v2, :cond_59

    .line 69
    const-string v2, "\\u"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    ushr-int/lit8 v2, v6, 0x8

    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v3, :cond_3b

    .line 73
    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    :cond_3b
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    and-int/lit16 v2, v6, 0xff

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v3, :cond_53

    .line 78
    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    :cond_53
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    :cond_56
    :goto_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_59
    move v2, v1

    .line 81
    :goto_5a
    if-ge v2, v8, :cond_82

    aget-char v7, v4, v2

    .line 82
    if-ne v7, v6, :cond_79

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "\\"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v3

    .line 88
    :goto_73
    if-nez v2, :cond_56

    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_56

    .line 81
    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 94
    :cond_7c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v0

    :cond_82
    move v2, v1

    goto :goto_73

    .line 58
    :array_84
    .array-data 2
        0x27s
        0x5cs
    .end array-data
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 98
    invoke-static {p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 103
    .line 1112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1114
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1115
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1116
    if-eqz v0, :cond_2c

    .line 1117
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1118
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2c

    .line 1119
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_1f
    sget-object v1, Lcom/mintegral/msdk/mtgjscommon/windvane/j;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    if-nez v0, :cond_2b

    .line 106
    const-string v0, ""

    .line 108
    :cond_2b
    return-object v0

    .line 1122
    :cond_2c
    const-string v0, ""

    goto :goto_1f
.end method
