.class public final Lcom/bytedance/sdk/a/b/u;
.super Ljava/lang/Object;
.source "MediaType.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-string v0, "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/u;->a:Ljava/util/regex/Pattern;

    .line 31
    const-string v0, ";\\s*(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)|\"([^\"]*)\"))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/u;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/u;->c:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/u;->d:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/bytedance/sdk/a/b/u;->e:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/bytedance/sdk/a/b/u;->f:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/u;
    .registers 11

    .line 51
    sget-object v0, Lcom/bytedance/sdk/a/b/u;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return-object v2

    .line 53
    :cond_e
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 54
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 56
    nop

    .line 57
    sget-object v6, Lcom/bytedance/sdk/a/b/u;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 58
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    move-object v7, v2

    :goto_30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_8d

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v0, v8}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 60
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-nez v0, :cond_44

    return-object v2

    .line 62
    :cond_44
    invoke-virtual {v6, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_88

    const-string v8, "charset"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_88

    .line 65
    :cond_53
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_79

    .line 68
    const-string v8, "\'"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_77

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_77

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v4, :cond_77

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v1

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_7e

    :cond_77
    nop

    goto :goto_7e

    .line 73
    :cond_79
    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_7e
    if-eqz v7, :cond_87

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_87

    .line 76
    return-object v2

    .line 78
    :cond_87
    move-object v7, v0

    .line 58
    :cond_88
    :goto_88
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    goto :goto_30

    .line 81
    :cond_8d
    new-instance v0, Lcom/bytedance/sdk/a/b/u;

    invoke-direct {v0, p0, v3, v5, v7}, Lcom/bytedance/sdk/a/b/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/nio/charset/Charset;
    .registers 2

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/u;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .registers 3

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/u;->f:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    :cond_8
    return-object p1

    .line 113
    :catch_9
    move-exception v0

    .line 114
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 129
    instance-of v0, p1, Lcom/bytedance/sdk/a/b/u;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/bytedance/sdk/a/b/u;

    iget-object p1, p1, Lcom/bytedance/sdk/a/b/u;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/u;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/u;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/u;->c:Ljava/lang/String;

    return-object v0
.end method
