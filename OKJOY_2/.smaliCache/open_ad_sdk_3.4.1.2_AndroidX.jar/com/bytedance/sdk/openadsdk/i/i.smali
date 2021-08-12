.class public Lcom/bytedance/sdk/openadsdk/i/i;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/i/i$d;,
        Lcom/bytedance/sdk/openadsdk/i/i$a;,
        Lcom/bytedance/sdk/openadsdk/i/i$b;,
        Lcom/bytedance/sdk/openadsdk/i/i$c;
    }
.end annotation


# instance fields
.field public final a:Lcom/bytedance/sdk/openadsdk/i/i$c;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/i/i$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/bytedance/sdk/openadsdk/i/i$a;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/i/i$c;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/i/i$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/i/i$c;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/i/i$b;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/i/i$a;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/i;->a:Lcom/bytedance/sdk/openadsdk/i/i$c;

    .line 34
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/i/i;->b:Ljava/util/List;

    .line 35
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/i/i;->c:Lcom/bytedance/sdk/openadsdk/i/i$a;

    .line 36
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/bytedance/sdk/openadsdk/i/i;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/openadsdk/i/i$d;
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/i/g/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 42
    nop

    .line 43
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 45
    :goto_13
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 46
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 48
    if-nez v1, :cond_28

    .line 49
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/i/i$c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/i$c;

    move-result-object v1

    goto :goto_13

    .line 51
    :cond_28
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/i/i$b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/i$b;

    move-result-object v2

    .line 52
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    goto :goto_13

    .line 56
    :cond_30
    if-eqz v1, :cond_3c

    .line 60
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/i;

    invoke-static {v1, p0}, Lcom/bytedance/sdk/openadsdk/i/i$a;->a(Lcom/bytedance/sdk/openadsdk/i/i$c;Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/i/i$a;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/i/i;-><init>(Lcom/bytedance/sdk/openadsdk/i/i$c;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/i/i$a;)V

    return-object v0

    .line 57
    :cond_3c
    new-instance p0, Lcom/bytedance/sdk/openadsdk/i/i$d;

    const-string v0, "request line is null"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/i/i$d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 297
    const/4 v1, 0x0

    move-object v2, v1

    .line 299
    :goto_9
    if-eqz v2, :cond_1b

    .line 300
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 302
    return-object v1

    .line 304
    :cond_13
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 306
    :cond_1b
    invoke-static {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/i/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 307
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc00

    if-gt v3, v4, :cond_28

    .line 308
    return-object v2

    .line 307
    :cond_28
    goto :goto_9
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 312
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 313
    const-string v0, "rk"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string p1, "&"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "k"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    :goto_36
    if-ge v1, p2, :cond_5a

    .line 317
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "u"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 320
    :cond_5a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{requestLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/i;->a:Lcom/bytedance/sdk/openadsdk/i/i$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/i;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/i;->c:Lcom/bytedance/sdk/openadsdk/i/i$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
