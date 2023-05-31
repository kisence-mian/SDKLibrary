.class final Lcom/mintegral/msdk/base/common/net/e;
.super Ljava/lang/Object;
.source "CommonHttpMultipartEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/base/common/net/e$a;
    }
.end annotation


# static fields
.field private static final a:[B

.field private static final b:[B


# instance fields
.field private c:Ljava/lang/String;

.field private d:[B

.field private e:[B

.field private f:Ljava/io/ByteArrayOutputStream;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/common/net/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/mintegral/msdk/base/common/net/g;

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/common/net/e;->a:[B

    .line 35
    const-string v0, "Content-Transfer-Encoding: 8bit\r\n"

    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/common/net/e;->b:[B

    .line 35
    return-void
.end method

.method constructor <init>(Lcom/mintegral/msdk/base/common/net/g;)V
    .registers 4

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->f:Ljava/io/ByteArrayOutputStream;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->g:Ljava/util/List;

    .line 66
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->c:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->d:[B

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->e:[B

    .line 70
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/net/e;->h:Lcom/mintegral/msdk/base/common/net/g;

    .line 71
    return-void
.end method

.method private a(I)V
    .registers 5

    .prologue
    .line 191
    iget v0, p0, Lcom/mintegral/msdk/base/common/net/e;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mintegral/msdk/base/common/net/e;->i:I

    .line 192
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->h:Lcom/mintegral/msdk/base/common/net/g;

    if-eqz v0, :cond_12

    .line 193
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->h:Lcom/mintegral/msdk/base/common/net/g;

    iget v1, p0, Lcom/mintegral/msdk/base/common/net/e;->i:I

    iget v2, p0, Lcom/mintegral/msdk/base/common/net/e;->j:I

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/base/common/net/g;->a(II)V

    .line 196
    :cond_12
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/base/common/net/e;I)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/common/net/e;->a(I)V

    return-void
.end method

.method static synthetic a()[B
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/mintegral/msdk/base/common/net/e;->b:[B

    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/base/common/net/e;)[B
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->d:[B

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)[B
    .registers 2

    .prologue
    .line 25
    invoke-static {p0}, Lcom/mintegral/msdk/base/common/net/e;->b(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()[B
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/mintegral/msdk/base/common/net/e;->a:[B

    return-object v0
.end method

.method private static b(Ljava/lang/String;)[B
    .registers 3

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 3

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/mintegral/msdk/base/common/net/e;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 181
    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 112
    iget-object v6, p0, Lcom/mintegral/msdk/base/common/net/e;->g:Ljava/util/List;

    new-instance v0, Lcom/mintegral/msdk/base/common/net/e$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/base/common/net/e$a;-><init>(Lcom/mintegral/msdk/base/common/net/e;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 80
    const-string v0, "text/plain; charset=UTF-8"

    .line 1092
    :try_start_2
    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/e;->f:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lcom/mintegral/msdk/base/common/net/e;->d:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1093
    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/e;->f:Ljava/io/ByteArrayOutputStream;

    .line 1168
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content-Disposition: form-data; name=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1169
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1093
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1094
    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/e;->f:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/net/e;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1095
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->f:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/mintegral/msdk/base/common/net/e;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1096
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->f:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1097
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->f:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/mintegral/msdk/base/common/net/e;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_47} :catch_48

    .line 1100
    :goto_47
    return-void

    .line 1098
    :catch_48
    move-exception v0

    .line 1099
    const-string v1, "HttpMultipartEntity"

    const-string v2, "addParam to RequestParamBufferStream exception"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_47
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->f:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/e;->d:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 129
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->f:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1, p2}, Lcom/mintegral/msdk/base/common/net/e;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 130
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->f:Ljava/io/ByteArrayOutputStream;

    invoke-static {p4}, Lcom/mintegral/msdk/base/common/net/e;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 131
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->f:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/mintegral/msdk/base/common/net/e;->b:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 132
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->f:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/mintegral/msdk/base/common/net/e;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 135
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 137
    :goto_2b
    invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_39

    .line 138
    iget-object v2, p0, Lcom/mintegral/msdk/base/common/net/e;->f:Ljava/io/ByteArrayOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2b

    .line 141
    :cond_39
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->f:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/mintegral/msdk/base/common/net/e;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 142
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->f:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 144
    :try_start_45
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    .line 148
    :goto_48
    return-void

    .line 145
    :catch_49
    move-exception v0

    .line 146
    const-string v1, "HttpMultipartEntity"

    const-string v2, "Cannot close input stream"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_48
.end method

.method public final consumeContent()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final getContentEncoding()Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContentLength()J
    .registers 9

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->f:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    .line 204
    iget-object v2, p0, Lcom/mintegral/msdk/base/common/net/e;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/common/net/e$a;

    .line 205
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/net/e$a;->a()J

    move-result-wide v0

    .line 206
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-gez v5, :cond_2e

    .line 207
    const-string v0, "HttpMultipartEntity"

    const-string v1, "get FileParam length failed."

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-wide/16 v0, -0x1

    .line 213
    :goto_2d
    return-wide v0

    .line 210
    :cond_2e
    add-long/2addr v0, v2

    move-wide v2, v0

    .line 211
    goto :goto_e

    .line 212
    :cond_31
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->e:[B

    array-length v0, v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 213
    goto :goto_2d
.end method

.method public final getContentType()Lorg/apache/http/Header;
    .registers 5

    .prologue
    .line 221
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "multipart/form-data; boundary="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mintegral/msdk/base/common/net/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final isChunked()Z
    .registers 2

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public final isRepeatable()Z
    .registers 2

    .prologue
    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method public final isStreaming()Z
    .registers 2

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/base/common/net/e;->i:I

    .line 231
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/common/net/e;->getContentLength()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/mintegral/msdk/base/common/net/e;->j:I

    .line 232
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->f:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 234
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->f:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/common/net/e;->a(I)V

    .line 236
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/common/net/e$a;

    .line 237
    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/common/net/e$a;->a(Ljava/io/OutputStream;)V

    goto :goto_1e

    .line 239
    :cond_2e
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->e:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 240
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e;->e:[B

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/common/net/e;->a(I)V

    .line 241
    return-void
.end method
