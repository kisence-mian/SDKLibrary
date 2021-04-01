.class public final Lcom/bytedance/sdk/a/b/a/c/e;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-string v0, " +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)"

    .line 47
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c/e;->a:Ljava/util/regex/Pattern;

    .line 46
    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 254
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_12

    .line 255
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 256
    const/16 v1, 0x20

    if-eq v0, v1, :cond_13

    const/16 v1, 0x9

    if-eq v0, v1, :cond_13

    .line 260
    :cond_12
    return p1

    .line 254
    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5

    .prologue
    .line 241
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_11

    .line 242
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 246
    :cond_11
    return p1

    .line 241
    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/bytedance/sdk/a/b/aa;)J
    .registers 3

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->f()Lcom/bytedance/sdk/a/b/r;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c/e;->a(Lcom/bytedance/sdk/a/b/r;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/bytedance/sdk/a/b/r;)J
    .registers 3

    .prologue
    .line 57
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c/e;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/lang/String;)J
    .registers 4

    .prologue
    const-wide/16 v0, -0x1

    .line 61
    if-nez p0, :cond_5

    .line 65
    :goto_4
    return-wide v0

    .line 63
    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-wide v0

    goto :goto_4

    .line 64
    :catch_a
    move-exception v2

    goto :goto_4
.end method

.method public static a(Lcom/bytedance/sdk/a/b/m;Lcom/bytedance/sdk/a/b/s;Lcom/bytedance/sdk/a/b/r;)V
    .registers 5

    .prologue
    .line 202
    sget-object v0, Lcom/bytedance/sdk/a/b/m;->a:Lcom/bytedance/sdk/a/b/m;

    if-ne p0, v0, :cond_5

    .line 208
    :cond_4
    :goto_4
    return-void

    .line 204
    :cond_5
    invoke-static {p1, p2}, Lcom/bytedance/sdk/a/b/l;->a(Lcom/bytedance/sdk/a/b/s;Lcom/bytedance/sdk/a/b/r;)Ljava/util/List;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 207
    invoke-interface {p0, p1, v0}, Lcom/bytedance/sdk/a/b/m;->a(Lcom/bytedance/sdk/a/b/s;Ljava/util/List;)V

    goto :goto_4
.end method

.method public static b(Ljava/lang/String;I)I
    .registers 6

    .prologue
    .line 269
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_19

    move-result-wide v0

    .line 270
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_f

    .line 271
    const p1, 0x7fffffff

    .line 278
    :goto_e
    return p1

    .line 272
    :cond_f
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_17

    .line 273
    const/4 p1, 0x0

    goto :goto_e

    .line 275
    :cond_17
    long-to-int p1, v0

    goto :goto_e

    .line 277
    :catch_19
    move-exception v0

    goto :goto_e
.end method

.method public static b(Lcom/bytedance/sdk/a/b/aa;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/y;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 233
    :cond_12
    :goto_12
    return v0

    .line 219
    :cond_13
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v2

    .line 220
    const/16 v3, 0x64

    if-lt v2, v3, :cond_1f

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_29

    :cond_1f
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_29

    const/16 v3, 0x130

    if-eq v2, v3, :cond_29

    move v0, v1

    .line 223
    goto :goto_12

    .line 228
    :cond_29
    invoke-static {p0}, Lcom/bytedance/sdk/a/b/a/c/e;->a(Lcom/bytedance/sdk/a/b/aa;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_41

    const-string v2, "chunked"

    const-string v3, "Transfer-Encoding"

    .line 229
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/a/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_41
    move v0, v1

    .line 230
    goto :goto_12
.end method
