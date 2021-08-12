.class public final Lcom/tencent/bugly/proguard/d;
.super Lcom/tencent/bugly/proguard/c;
.source "BUGLY"


# static fields
.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field


# instance fields
.field private e:Lcom/tencent/bugly/proguard/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/proguard/d;->f:Ljava/util/HashMap;

    .line 84
    sput-object v0, Lcom/tencent/bugly/proguard/d;->g:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/c;-><init>()V

    .line 14
    new-instance v0, Lcom/tencent/bugly/proguard/f;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/d;->e:Lcom/tencent/bugly/proguard/f;

    .line 259
    const/4 v1, 0x2

    iput-short v1, v0, Lcom/tencent/bugly/proguard/f;->a:S

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 32
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 35
    invoke-super {p0, p1, p2}, Lcom/tencent/bugly/proguard/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    return-void

    .line 33
    :cond_c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "put name can not startwith . , now is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final a([B)V
    .registers 6

    .line 144
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_81

    .line 149
    :try_start_4
    new-instance v0, Lcom/tencent/bugly/proguard/i;

    invoke-direct {v0, p1, v1}, Lcom/tencent/bugly/proguard/i;-><init>([BI)V

    .line 150
    iget-object p1, p0, Lcom/tencent/bugly/proguard/d;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;)I

    .line 151
    iget-object p1, p0, Lcom/tencent/bugly/proguard/d;->e:Lcom/tencent/bugly/proguard/f;

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/f;->a(Lcom/tencent/bugly/proguard/i;)V

    .line 152
    iget-object p1, p0, Lcom/tencent/bugly/proguard/d;->e:Lcom/tencent/bugly/proguard/f;

    iget-short p1, p1, Lcom/tencent/bugly/proguard/f;->a:S
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_7a

    const/4 v0, 0x3

    const-string v1, ""

    const/4 v2, 0x0

    if-ne p1, v0, :cond_44

    .line 153
    :try_start_1d
    new-instance p1, Lcom/tencent/bugly/proguard/i;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/d;->e:Lcom/tencent/bugly/proguard/f;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/f;->e:[B

    invoke-direct {p1, v0}, Lcom/tencent/bugly/proguard/i;-><init>([B)V

    .line 154
    iget-object v0, p0, Lcom/tencent/bugly/proguard/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;)I

    .line 155
    sget-object v0, Lcom/tencent/bugly/proguard/d;->f:Ljava/util/HashMap;

    if-nez v0, :cond_3b

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    sput-object v0, Lcom/tencent/bugly/proguard/d;->f:Ljava/util/HashMap;

    new-array v3, v2, [B

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_3b
    sget-object v0, Lcom/tencent/bugly/proguard/d;->f:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/d;->d:Ljava/util/HashMap;

    .line 177
    return-void

    .line 161
    :cond_44
    new-instance p1, Lcom/tencent/bugly/proguard/i;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/d;->e:Lcom/tencent/bugly/proguard/f;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/f;->e:[B

    invoke-direct {p1, v0}, Lcom/tencent/bugly/proguard/i;-><init>([B)V

    .line 162
    iget-object v0, p0, Lcom/tencent/bugly/proguard/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;)I

    .line 163
    sget-object v0, Lcom/tencent/bugly/proguard/d;->g:Ljava/util/HashMap;

    if-nez v0, :cond_6c

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/d;->g:Ljava/util/HashMap;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 166
    new-array v3, v2, [B

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v3, Lcom/tencent/bugly/proguard/d;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_6c
    sget-object v0, Lcom/tencent/bugly/proguard/d;->g:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/d;->a:Ljava/util/HashMap;

    .line 170
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_79} :catch_7a

    .line 174
    return-void

    .line 172
    :catch_7a
    move-exception p1

    .line 173
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 145
    :cond_81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "decode package must include size head"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()[B
    .registers 5

    .line 50
    iget-object v0, p0, Lcom/tencent/bugly/proguard/d;->e:Lcom/tencent/bugly/proguard/f;

    iget-short v0, v0, Lcom/tencent/bugly/proguard/f;->a:S

    const/4 v1, 0x2

    const-string v2, ""

    if-ne v0, v1, :cond_2e

    .line 51
    iget-object v0, p0, Lcom/tencent/bugly/proguard/d;->e:Lcom/tencent/bugly/proguard/f;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 54
    iget-object v0, p0, Lcom/tencent/bugly/proguard/d;->e:Lcom/tencent/bugly/proguard/f;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_42

    .line 55
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "funcName can not is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "servantName can not is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2e
    iget-object v0, p0, Lcom/tencent/bugly/proguard/d;->e:Lcom/tencent/bugly/proguard/f;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/f;->c:Ljava/lang/String;

    if-nez v0, :cond_38

    .line 59
    iget-object v0, p0, Lcom/tencent/bugly/proguard/d;->e:Lcom/tencent/bugly/proguard/f;

    iput-object v2, v0, Lcom/tencent/bugly/proguard/f;->c:Ljava/lang/String;

    .line 61
    :cond_38
    iget-object v0, p0, Lcom/tencent/bugly/proguard/d;->e:Lcom/tencent/bugly/proguard/f;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/f;->d:Ljava/lang/String;

    if-nez v0, :cond_42

    .line 62
    iget-object v0, p0, Lcom/tencent/bugly/proguard/d;->e:Lcom/tencent/bugly/proguard/f;

    iput-object v2, v0, Lcom/tencent/bugly/proguard/f;->d:Ljava/lang/String;

    .line 65
    :cond_42
    :goto_42
    new-instance v0, Lcom/tencent/bugly/proguard/j;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/tencent/bugly/proguard/j;-><init>(I)V

    .line 66
    iget-object v3, p0, Lcom/tencent/bugly/proguard/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;)I

    .line 67
    iget-object v3, p0, Lcom/tencent/bugly/proguard/d;->e:Lcom/tencent/bugly/proguard/f;

    iget-short v3, v3, Lcom/tencent/bugly/proguard/f;->a:S

    if-ne v3, v1, :cond_59

    .line 68
    iget-object v1, p0, Lcom/tencent/bugly/proguard/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Map;I)V

    goto :goto_5e

    .line 70
    :cond_59
    iget-object v1, p0, Lcom/tencent/bugly/proguard/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Map;I)V

    .line 72
    :goto_5e
    iget-object v1, p0, Lcom/tencent/bugly/proguard/d;->e:Lcom/tencent/bugly/proguard/f;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/j;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/l;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/proguard/f;->e:[B

    .line 73
    new-instance v0, Lcom/tencent/bugly/proguard/j;

    invoke-direct {v0, v2}, Lcom/tencent/bugly/proguard/j;-><init>(I)V

    .line 74
    iget-object v1, p0, Lcom/tencent/bugly/proguard/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/tencent/bugly/proguard/d;->e:Lcom/tencent/bugly/proguard/f;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/f;->a(Lcom/tencent/bugly/proguard/j;)V

    .line 76
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/j;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/l;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 77
    array-length v1, v0

    .line 78
    add-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 79
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 80
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .registers 3

    .line 230
    iget-object p1, p0, Lcom/tencent/bugly/proguard/d;->e:Lcom/tencent/bugly/proguard/f;

    const/4 v0, 0x1

    iput v0, p1, Lcom/tencent/bugly/proguard/f;->b:I

    .line 231
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/tencent/bugly/proguard/d;->e:Lcom/tencent/bugly/proguard/f;

    iput-object p1, v0, Lcom/tencent/bugly/proguard/f;->c:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public final c()V
    .registers 3

    .line 42
    invoke-super {p0}, Lcom/tencent/bugly/proguard/c;->c()V

    .line 43
    iget-object v0, p0, Lcom/tencent/bugly/proguard/d;->e:Lcom/tencent/bugly/proguard/f;

    const/4 v1, 0x3

    iput-short v1, v0, Lcom/tencent/bugly/proguard/f;->a:S

    .line 44
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/tencent/bugly/proguard/d;->e:Lcom/tencent/bugly/proguard/f;

    iput-object p1, v0, Lcom/tencent/bugly/proguard/f;->d:Ljava/lang/String;

    .line 213
    return-void
.end method
