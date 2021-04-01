.class public Lcom/mintegral/msdk/f/e;
.super Lcom/mintegral/msdk/f/m;
.source "HttpProxyCache.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private final e:Lcom/mintegral/msdk/f/h;

.field private final f:Lcom/mintegral/msdk/f/a/b;

.field private g:Lcom/mintegral/msdk/f/b;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/mintegral/msdk/f/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/f/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mintegral/msdk/f/h;Lcom/mintegral/msdk/f/a/b;)V
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/f/m;-><init>(Lcom/mintegral/msdk/f/p;Lcom/mintegral/msdk/f/a;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/f/e;->h:Z

    .line 30
    iput-object p2, p0, Lcom/mintegral/msdk/f/e;->f:Lcom/mintegral/msdk/f/a/b;

    .line 31
    iput-object p1, p0, Lcom/mintegral/msdk/f/e;->e:Lcom/mintegral/msdk/f/h;

    .line 32
    return-void
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 143
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/OutputStream;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/f/n;
        }
    .end annotation

    .prologue
    .line 102
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 105
    :goto_4
    :try_start_4
    invoke-virtual {p0, v0, p2, p3}, Lcom/mintegral/msdk/f/e;->a([BJ)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    iget-boolean v2, p0, Lcom/mintegral/msdk/f/e;->c:Z

    if-nez v2, :cond_16

    .line 106
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 107
    int-to-long v2, v1

    add-long/2addr p2, v2

    goto :goto_4

    .line 109
    :cond_16
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_19} :catch_1d
    .catchall {:try_start_4 .. :try_end_19} :catchall_24

    .line 113
    :try_start_19
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_29

    .line 116
    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    .line 113
    :try_start_1e
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_1c

    .line 116
    :catch_22
    move-exception v0

    goto :goto_1c

    .line 112
    :catchall_24
    move-exception v0

    .line 113
    :try_start_25
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_2b

    .line 115
    :goto_28
    throw v0

    .line 116
    :catch_29
    move-exception v0

    goto :goto_1c

    :catch_2b
    move-exception v1

    goto :goto_28
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/f/e;->h:Z

    .line 72
    return-void
.end method

.method protected final a(I)V
    .registers 5

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mintegral/msdk/f/e;->g:Lcom/mintegral/msdk/f/b;

    if-eqz v0, :cond_13

    .line 149
    iget-object v0, p0, Lcom/mintegral/msdk/f/e;->g:Lcom/mintegral/msdk/f/b;

    iget-object v1, p0, Lcom/mintegral/msdk/f/e;->f:Lcom/mintegral/msdk/f/a/b;

    iget-object v1, v1, Lcom/mintegral/msdk/f/a/b;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/mintegral/msdk/f/e;->e:Lcom/mintegral/msdk/f/h;

    invoke-virtual {v2}, Lcom/mintegral/msdk/f/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/mintegral/msdk/f/b;->onCacheAvailable(Ljava/io/File;Ljava/lang/String;I)V

    .line 151
    :cond_13
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/f/b;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mintegral/msdk/f/e;->g:Lcom/mintegral/msdk/f/b;

    .line 36
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/f/d;Ljava/net/Socket;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mintegral/msdk/f/n;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1085
    iget-object v0, p0, Lcom/mintegral/msdk/f/e;->e:Lcom/mintegral/msdk/f/h;

    invoke-virtual {v0}, Lcom/mintegral/msdk/f/h;->c()Ljava/lang/String;

    move-result-object v11

    .line 1086
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ba

    move v0, v1

    .line 1087
    :goto_18
    iget-object v3, p0, Lcom/mintegral/msdk/f/e;->f:Lcom/mintegral/msdk/f/a/b;

    invoke-virtual {v3}, Lcom/mintegral/msdk/f/a/b;->d()Z

    move-result v3

    if-eqz v3, :cond_bd

    iget-object v3, p0, Lcom/mintegral/msdk/f/e;->f:Lcom/mintegral/msdk/f/a/b;

    invoke-virtual {v3}, Lcom/mintegral/msdk/f/a/b;->a()J

    move-result-wide v8

    .line 1088
    :goto_26
    const-wide/16 v4, 0x0

    cmp-long v3, v8, v4

    if-ltz v3, :cond_c5

    move v3, v1

    .line 1089
    :goto_2d
    iget-boolean v4, p1, Lcom/mintegral/msdk/f/d;->c:Z

    if-eqz v4, :cond_c8

    iget-wide v4, p1, Lcom/mintegral/msdk/f/d;->b:J

    sub-long v4, v8, v4

    move-wide v6, v4

    .line 1090
    :goto_36
    if-eqz v3, :cond_cb

    iget-boolean v4, p1, Lcom/mintegral/msdk/f/d;->c:Z

    if-eqz v4, :cond_cb

    move v4, v1

    .line 1091
    :goto_3d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p1, Lcom/mintegral/msdk/f/d;->c:Z

    if-eqz v5, :cond_ce

    const-string v5, "HTTP/1.1 206 PARTIAL CONTENT\n"

    .line 1092
    :goto_48
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "Accept-Ranges: bytes\n"

    .line 1093
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_d2

    const-string v3, "Content-Length: %d\n"

    new-array v12, v1, [Ljava/lang/Object;

    .line 1094
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v12, v2

    invoke-static {v3, v12}, Lcom/mintegral/msdk/f/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_62
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v4, :cond_d5

    const-string v3, "Content-Range: bytes %d-%d/%d\n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v6, p1, Lcom/mintegral/msdk/f/d;->b:J

    .line 1095
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v2

    const-wide/16 v6, 0x1

    sub-long v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v1

    const/4 v6, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Lcom/mintegral/msdk/f/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_8a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_d8

    const-string v0, "Content-Type: %s\n"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v11, v1, v2

    .line 1096
    invoke-static {v0, v1}, Lcom/mintegral/msdk/f/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_9a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    .line 1097
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1098
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/OutputStream;->write([B)V

    .line 49
    iget-wide v0, p1, Lcom/mintegral/msdk/f/d;->b:J

    .line 51
    invoke-virtual {p0}, Lcom/mintegral/msdk/f/e;->c()V

    .line 53
    :try_start_b6
    invoke-direct {p0, v10, v0, v1}, Lcom/mintegral/msdk/f/e;->a(Ljava/io/OutputStream;J)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b9} :catch_db

    .line 65
    :goto_b9
    return-void

    :cond_ba
    move v0, v2

    .line 1086
    goto/16 :goto_18

    .line 1087
    :cond_bd
    iget-object v3, p0, Lcom/mintegral/msdk/f/e;->e:Lcom/mintegral/msdk/f/h;

    invoke-virtual {v3}, Lcom/mintegral/msdk/f/h;->a()J

    move-result-wide v8

    goto/16 :goto_26

    :cond_c5
    move v3, v2

    .line 1088
    goto/16 :goto_2d

    :cond_c8
    move-wide v6, v8

    .line 1089
    goto/16 :goto_36

    :cond_cb
    move v4, v2

    .line 1090
    goto/16 :goto_3d

    .line 1091
    :cond_ce
    const-string v5, "HTTP/1.1 200 OK\n"

    goto/16 :goto_48

    .line 1094
    :cond_d2
    const-string v3, ""

    goto :goto_62

    .line 1095
    :cond_d5
    const-string v3, ""

    goto :goto_8a

    .line 1096
    :cond_d8
    const-string v0, ""

    goto :goto_9a

    .line 65
    :catch_db
    move-exception v0

    goto :goto_b9
.end method
