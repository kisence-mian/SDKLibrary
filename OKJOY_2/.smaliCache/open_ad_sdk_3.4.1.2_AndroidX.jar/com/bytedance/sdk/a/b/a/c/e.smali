.class public final Lcom/bytedance/sdk/a/b/a/c/e;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    nop

    .line 47
    const-string v0, " +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c/e;->a:Ljava/util/regex/Pattern;

    .line 46
    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .registers 4

    .line 254
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_16

    .line 255
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 256
    const/16 v1, 0x20

    if-eq v0, v1, :cond_13

    const/16 v1, 0x9

    if-eq v0, v1, :cond_13

    .line 257
    goto :goto_16

    .line 254
    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 260
    :cond_16
    :goto_16
    return p1
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5

    .line 241
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 242
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 243
    goto :goto_15

    .line 241
    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 246
    :cond_15
    :goto_15
    return p1
.end method

.method public static a(Lcom/bytedance/sdk/a/b/aa;)J
    .registers 3

    .line 53
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/r;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/a/b/a/c/e;->a(Lcom/bytedance/sdk/a/b/r;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/bytedance/sdk/a/b/r;)J
    .registers 3

    .line 57
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/a/b/a/c/e;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/lang/String;)J
    .registers 3

    .line 61
    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    return-wide v0

    .line 63
    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_9} :catch_a

    return-wide v0

    .line 64
    :catch_a
    move-exception p0

    .line 65
    return-wide v0
.end method

.method public static a(Lcom/bytedance/sdk/a/b/m;Lcom/bytedance/sdk/a/b/s;Lcom/bytedance/sdk/a/b/r;)V
    .registers 4

    .line 202
    sget-object v0, Lcom/bytedance/sdk/a/b/m;->a:Lcom/bytedance/sdk/a/b/m;

    if-ne p0, v0, :cond_5

    return-void

    .line 204
    :cond_5
    invoke-static {p1, p2}, Lcom/bytedance/sdk/a/b/l;->a(Lcom/bytedance/sdk/a/b/s;Lcom/bytedance/sdk/a/b/r;)Ljava/util/List;

    move-result-object p2

    .line 205
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 207
    :cond_10
    invoke-interface {p0, p1, p2}, Lcom/bytedance/sdk/a/b/m;->a(Lcom/bytedance/sdk/a/b/s;Ljava/util/List;)V

    .line 208
    return-void
.end method

.method public static b(Ljava/lang/String;I)I
    .registers 4

    .line 269
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_19

    .line 270
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_f

    .line 271
    const p0, 0x7fffffff

    return p0

    .line 272
    :cond_f
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_17

    .line 273
    const/4 p0, 0x0

    return p0

    .line 275
    :cond_17
    long-to-int p0, p0

    return p0

    .line 277
    :catch_19
    move-exception p0

    .line 278
    return p1
.end method

.method public static b(Lcom/bytedance/sdk/a/b/aa;)Z
    .registers 9

    .line 215
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/y;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 216
    return v1

    .line 219
    :cond_12
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v0

    .line 220
    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1f

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_28

    :cond_1f
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_28

    const/16 v2, 0x130

    if-eq v0, v2, :cond_28

    .line 223
    return v3

    .line 228
    :cond_28
    invoke-static {p0}, Lcom/bytedance/sdk/a/b/a/c/e;->a(Lcom/bytedance/sdk/a/b/aa;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_42

    .line 229
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_42

    .line 233
    :cond_41
    return v1

    .line 230
    :cond_42
    :goto_42
    return v3
.end method
