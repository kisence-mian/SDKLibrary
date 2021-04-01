.class public Lcom/mintegral/msdk/f/h;
.super Ljava/lang/Object;
.source "HttpUrlSource.java"

# interfaces
.implements Lcom/mintegral/msdk/f/p;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/mintegral/msdk/f/c/c;

.field private final c:Lcom/mintegral/msdk/f/b/b;

.field private d:Lcom/mintegral/msdk/f/q;

.field private e:Ljava/net/HttpURLConnection;

.field private f:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/mintegral/msdk/f/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/f/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 42
    .line 1012
    new-instance v0, Lcom/mintegral/msdk/f/c/b;

    invoke-direct {v0}, Lcom/mintegral/msdk/f/c/b;-><init>()V

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/mintegral/msdk/f/h;-><init>(Ljava/lang/String;Lcom/mintegral/msdk/f/c/c;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/mintegral/msdk/f/c/c;)V
    .registers 4

    .prologue
    .line 46
    new-instance v0, Lcom/mintegral/msdk/f/b/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/f/b/a;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/mintegral/msdk/f/h;-><init>(Ljava/lang/String;Lcom/mintegral/msdk/f/c/c;Lcom/mintegral/msdk/f/b/b;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mintegral/msdk/f/c/c;Lcom/mintegral/msdk/f/b/b;)V
    .registers 8

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p2}, Lcom/mintegral/msdk/f/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/f/c/c;

    iput-object v0, p0, Lcom/mintegral/msdk/f/h;->b:Lcom/mintegral/msdk/f/c/c;

    .line 51
    invoke-static {p3}, Lcom/mintegral/msdk/f/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/f/b/b;

    iput-object v0, p0, Lcom/mintegral/msdk/f/h;->c:Lcom/mintegral/msdk/f/b/b;

    .line 52
    invoke-interface {p2, p1}, Lcom/mintegral/msdk/f/c/c;->a(Ljava/lang/String;)Lcom/mintegral/msdk/f/q;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_1c

    .line 54
    :goto_19
    iput-object v0, p0, Lcom/mintegral/msdk/f/h;->d:Lcom/mintegral/msdk/f/q;

    .line 55
    return-void

    .line 53
    :cond_1c
    new-instance v0, Lcom/mintegral/msdk/f/q;

    const-wide/32 v2, -0x80000000

    .line 54
    invoke-static {p1}, Lcom/mintegral/msdk/f/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/mintegral/msdk/f/q;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_19
.end method

.method private static a(Ljava/net/HttpURLConnection;)J
    .registers 3

    .prologue
    .line 92
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    if-nez v0, :cond_b

    const-wide/16 v0, -0x1

    :goto_a
    return-wide v0

    :cond_b
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_a
.end method

.method private a(JI)Ljava/net/HttpURLConnection;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mintegral/msdk/f/n;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    .line 144
    .line 145
    iget-object v0, p0, Lcom/mintegral/msdk/f/h;->d:Lcom/mintegral/msdk/f/q;

    iget-object v1, v0, Lcom/mintegral/msdk/f/q;->a:Ljava/lang/String;

    move v2, v4

    .line 147
    :cond_8
    if-lez p3, :cond_a9

    .line 148
    sget-object v3, Lcom/mintegral/msdk/f/h;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "fetchContentInfo "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    cmp-long v0, p1, v8

    if-lez v0, :cond_a5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, " with offset "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_26
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_3b
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 154
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/f/h;->b(Ljava/net/HttpURLConnection;)V

    .line 155
    cmp-long v3, p1, v8

    if-lez v3, :cond_67

    .line 156
    const-string v3, "Range"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bytes="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_67
    if-lez p3, :cond_df

    .line 159
    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 160
    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 170
    :goto_6f
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 171
    const/16 v5, 0x12d

    if-eq v3, v5, :cond_7f

    const/16 v5, 0x12e

    if-eq v3, v5, :cond_7f

    const/16 v5, 0x12f

    if-ne v3, v5, :cond_ea

    :cond_7f
    const/4 v3, 0x1

    .line 172
    :goto_80
    if-eqz v3, :cond_8d

    .line 173
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    add-int/lit8 v2, v2, 0x1

    .line 175
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 177
    :cond_8d
    const/4 v5, 0x5

    if-le v2, v5, :cond_ec

    .line 178
    new-instance v0, Lcom/mintegral/msdk/f/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Too many redirects: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/f/n;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_a5
    const-string v0, ""

    goto/16 :goto_26

    .line 150
    :cond_a9
    sget-object v3, Lcom/mintegral/msdk/f/h;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "open connection "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    cmp-long v0, p1, v8

    if-lez v0, :cond_dc

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, " with offset "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b

    :cond_dc
    const-string v0, ""

    goto :goto_c5

    .line 162
    :cond_df
    const/16 v3, 0x3a98

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 163
    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    goto :goto_6f

    :cond_ea
    move v3, v4

    .line 171
    goto :goto_80

    .line 180
    :cond_ec
    if-nez v3, :cond_8

    .line 181
    return-object v0
.end method

.method private b(Ljava/net/HttpURLConnection;)V
    .registers 5

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mintegral/msdk/f/h;->c:Lcom/mintegral/msdk/f/b/b;

    invoke-interface {v0}, Lcom/mintegral/msdk/f/b/b;->a()Ljava/util/Map;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 189
    :cond_2a
    return-void
.end method

.method private e()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/f/n;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 123
    .line 126
    const-wide/16 v2, 0x0

    const/16 v1, 0x2710

    :try_start_5
    invoke-direct {p0, v2, v3, v1}, Lcom/mintegral/msdk/f/h;->a(JI)Ljava/net/HttpURLConnection;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_34
    .catchall {:try_start_5 .. :try_end_8} :catchall_3f

    move-result-object v1

    .line 127
    :try_start_9
    invoke-static {v1}, Lcom/mintegral/msdk/f/h;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v2

    .line 128
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_59
    .catchall {:try_start_9 .. :try_end_14} :catchall_4d

    move-result-object v0

    .line 130
    :try_start_15
    new-instance v5, Lcom/mintegral/msdk/f/q;

    iget-object v6, p0, Lcom/mintegral/msdk/f/h;->d:Lcom/mintegral/msdk/f/q;

    iget-object v6, v6, Lcom/mintegral/msdk/f/q;->a:Ljava/lang/String;

    invoke-direct {v5, v6, v2, v3, v4}, Lcom/mintegral/msdk/f/q;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v5, p0, Lcom/mintegral/msdk/f/h;->d:Lcom/mintegral/msdk/f/q;

    .line 131
    iget-object v2, p0, Lcom/mintegral/msdk/f/h;->b:Lcom/mintegral/msdk/f/c/c;

    iget-object v3, p0, Lcom/mintegral/msdk/f/h;->d:Lcom/mintegral/msdk/f/q;

    iget-object v3, v3, Lcom/mintegral/msdk/f/q;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/mintegral/msdk/f/h;->d:Lcom/mintegral/msdk/f/q;

    invoke-interface {v2, v3, v4}, Lcom/mintegral/msdk/f/c/c;->a(Ljava/lang/String;Lcom/mintegral/msdk/f/q;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2b} :catch_59
    .catchall {:try_start_15 .. :try_end_2b} :catchall_53

    .line 134
    invoke-static {v0}, Lcom/mintegral/msdk/f/o;->a(Ljava/io/Closeable;)V

    .line 135
    if-eqz v1, :cond_33

    .line 136
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 139
    :cond_33
    :goto_33
    return-void

    .line 134
    :catch_34
    move-exception v1

    move-object v1, v0

    :goto_36
    invoke-static {v0}, Lcom/mintegral/msdk/f/o;->a(Ljava/io/Closeable;)V

    .line 135
    if-eqz v1, :cond_33

    .line 136
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_33

    .line 134
    :catchall_3f
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_44
    invoke-static {v1}, Lcom/mintegral/msdk/f/o;->a(Ljava/io/Closeable;)V

    .line 135
    if-eqz v2, :cond_4c

    .line 136
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4c
    throw v0

    .line 134
    :catchall_4d
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_44

    :catchall_53
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_44

    :catch_59
    move-exception v2

    goto :goto_36
.end method


# virtual methods
.method public final a([B)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/f/n;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mintegral/msdk/f/h;->f:Ljava/io/InputStream;

    if-nez v0, :cond_23

    .line 111
    new-instance v0, Lcom/mintegral/msdk/f/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error reading data from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/f/h;->d:Lcom/mintegral/msdk/f/q;

    iget-object v2, v2, Lcom/mintegral/msdk/f/q;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": connection is absent!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/f/n;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/mintegral/msdk/f/h;->f:Ljava/io/InputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_2a
    .catch Ljava/io/InterruptedIOException; {:try_start_23 .. :try_end_2a} :catch_2c
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2a} :catch_4c

    move-result v0

    return v0

    .line 115
    :catch_2c
    move-exception v0

    .line 116
    new-instance v1, Lcom/mintegral/msdk/f/j;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reading source "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mintegral/msdk/f/h;->d:Lcom/mintegral/msdk/f/q;

    iget-object v3, v3, Lcom/mintegral/msdk/f/q;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is interrupted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/mintegral/msdk/f/j;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 117
    :catch_4c
    move-exception v0

    .line 118
    new-instance v1, Lcom/mintegral/msdk/f/n;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error reading data from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mintegral/msdk/f/h;->d:Lcom/mintegral/msdk/f/q;

    iget-object v3, v3, Lcom/mintegral/msdk/f/q;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/mintegral/msdk/f/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final declared-synchronized a()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/f/n;
        }
    .end annotation

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/f/h;->d:Lcom/mintegral/msdk/f/q;

    iget-wide v0, v0, Lcom/mintegral/msdk/f/q;->b:J

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 66
    invoke-direct {p0}, Lcom/mintegral/msdk/f/h;->e()V

    .line 68
    :cond_f
    iget-object v0, p0, Lcom/mintegral/msdk/f/h;->d:Lcom/mintegral/msdk/f/q;

    iget-wide v0, v0, Lcom/mintegral/msdk/f/q;->b:J
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-wide v0

    .line 65
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/f/n;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, -0x1

    :try_start_1
    invoke-direct {p0, p1, p2, v0}, Lcom/mintegral/msdk/f/h;->a(JI)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/f/h;->e:Ljava/net/HttpURLConnection;

    .line 75
    iget-object v0, p0, Lcom/mintegral/msdk/f/h;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 76
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/mintegral/msdk/f/h;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v3, 0x2000

    invoke-direct {v0, v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/mintegral/msdk/f/h;->f:Ljava/io/InputStream;

    .line 77
    iget-object v0, p0, Lcom/mintegral/msdk/f/h;->e:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/mintegral/msdk/f/h;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 1086
    invoke-static {v0}, Lcom/mintegral/msdk/f/h;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    .line 1087
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_43

    .line 78
    :goto_2c
    new-instance v3, Lcom/mintegral/msdk/f/q;

    iget-object v4, p0, Lcom/mintegral/msdk/f/h;->d:Lcom/mintegral/msdk/f/q;

    iget-object v4, v4, Lcom/mintegral/msdk/f/q;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/mintegral/msdk/f/q;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v3, p0, Lcom/mintegral/msdk/f/h;->d:Lcom/mintegral/msdk/f/q;

    .line 79
    iget-object v0, p0, Lcom/mintegral/msdk/f/h;->b:Lcom/mintegral/msdk/f/c/c;

    iget-object v1, p0, Lcom/mintegral/msdk/f/h;->d:Lcom/mintegral/msdk/f/q;

    iget-object v1, v1, Lcom/mintegral/msdk/f/q;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/f/h;->d:Lcom/mintegral/msdk/f/q;

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/f/c/c;->a(Ljava/lang/String;Lcom/mintegral/msdk/f/q;)V

    .line 82
    return-void

    .line 1087
    :cond_43
    const/16 v4, 0xce

    if-ne v3, v4, :cond_49

    add-long/2addr v0, p1

    goto :goto_2c

    :cond_49
    iget-object v0, p0, Lcom/mintegral/msdk/f/h;->d:Lcom/mintegral/msdk/f/q;

    iget-wide v0, v0, Lcom/mintegral/msdk/f/q;->b:J
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4d} :catch_4e

    goto :goto_2c

    .line 80
    :catch_4e
    move-exception v0

    .line 81
    new-instance v1, Lcom/mintegral/msdk/f/n;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error opening connection for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mintegral/msdk/f/h;->d:Lcom/mintegral/msdk/f/q;

    iget-object v3, v3, Lcom/mintegral/msdk/f/q;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/mintegral/msdk/f/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/f/n;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mintegral/msdk/f/h;->e:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_9

    .line 100
    :try_start_4
    iget-object v0, p0, Lcom/mintegral/msdk/f/h;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_9} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_9} :catch_e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_9} :catch_a

    .line 106
    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9

    .line 104
    :catch_c
    move-exception v0

    goto :goto_9

    :catch_e
    move-exception v0

    goto :goto_9
.end method

.method public final declared-synchronized c()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/f/n;
        }
    .end annotation

    .prologue
    .line 192
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/f/h;->d:Lcom/mintegral/msdk/f/q;

    iget-object v0, v0, Lcom/mintegral/msdk/f/q;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 193
    invoke-direct {p0}, Lcom/mintegral/msdk/f/h;->e()V

    .line 195
    :cond_e
    iget-object v0, p0, Lcom/mintegral/msdk/f/h;->d:Lcom/mintegral/msdk/f/q;

    iget-object v0, v0, Lcom/mintegral/msdk/f/q;->c:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    .line 192
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mintegral/msdk/f/h;->d:Lcom/mintegral/msdk/f/q;

    iget-object v0, v0, Lcom/mintegral/msdk/f/q;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpUrlSource{sourceInfo=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mintegral/msdk/f/h;->d:Lcom/mintegral/msdk/f/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
