.class final Lcom/mintegral/msdk/videocommon/download/e$1;
.super Lcom/mintegral/msdk/base/common/f/a;
.source "DownLoadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/videocommon/download/e;->a(Ljava/lang/String;Lcom/mintegral/msdk/videocommon/download/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/videocommon/download/g$b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videocommon/download/g$b;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/download/e$1;->a:Lcom/mintegral/msdk/videocommon/download/g$b;

    iput-object p2, p0, Lcom/mintegral/msdk/videocommon/download/e$1;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/videocommon/download/e$1;->c:Z

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 13

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 41
    const-string v7, ""

    .line 53
    :try_start_4
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/e$1;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 54
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 55
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 56
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 57
    const-string v3, "DownLoadUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "response code "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_bb

    .line 59
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3a} :catch_15d
    .catchall {:try_start_4 .. :try_end_3a} :catchall_e5

    move-result-object v5

    .line 60
    const/16 v1, 0x1800

    :try_start_3d
    new-array v1, v1, [B

    .line 61
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_44} :catch_163
    .catchall {:try_start_3d .. :try_end_44} :catchall_154

    .line 63
    :goto_44
    :try_start_44
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_8f

    .line 65
    const/4 v8, 0x0

    invoke-virtual {v4, v1, v8, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4f} :catch_50
    .catchall {:try_start_44 .. :try_end_4f} :catchall_156

    goto :goto_44

    .line 80
    :catch_50
    move-exception v0

    move-object v1, v4

    move-object v3, v5

    move-object v4, v2

    .line 82
    :goto_54
    :try_start_54
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 89
    const-string v7, "DownLoadUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getStringFromUrl failed "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_54 .. :try_end_70} :catchall_159

    .line 92
    if-eqz v3, :cond_75

    .line 93
    :try_start_72
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 95
    :cond_75
    if-eqz v1, :cond_7a

    .line 96
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7a} :catch_da

    :cond_7a
    move v0, v6

    move-object v1, v5

    .line 108
    :goto_7c
    if-eqz v0, :cond_fa

    :try_start_7e
    iget-boolean v3, p0, Lcom/mintegral/msdk/videocommon/download/e$1;->c:Z

    if-eqz v3, :cond_fa

    if-eqz v2, :cond_fa

    array-length v3, v2

    if-lez v3, :cond_fa

    .line 109
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/e$1;->a:Lcom/mintegral/msdk/videocommon/download/g$b;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/e$1;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/mintegral/msdk/videocommon/download/g$b;->a([BLjava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_8e} :catch_11d

    .line 135
    :cond_8e
    :goto_8e
    return-void

    .line 68
    :cond_8f
    :try_start_8f
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    if-eqz v1, :cond_174

    .line 69
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_98} :catch_50
    .catchall {:try_start_8f .. :try_end_98} :catchall_156

    move-result-object v1

    .line 70
    :try_start_99
    iget-boolean v3, p0, Lcom/mintegral/msdk/videocommon/download/e$1;->c:Z

    if-nez v3, :cond_a3

    .line 71
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a2} :catch_169
    .catchall {:try_start_99 .. :try_end_a2} :catchall_156

    move-object v2, v3

    .line 74
    :cond_a3
    :goto_a3
    const/4 v3, 0x1

    move-object v10, v1

    move-object v1, v4

    move-object v4, v2

    move-object v2, v10

    move-object v11, v5

    move v5, v3

    move-object v3, v11

    .line 79
    :goto_ab
    :try_start_ab
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ae} :catch_171
    .catchall {:try_start_ab .. :try_end_ae} :catchall_159

    .line 92
    if-eqz v3, :cond_b3

    .line 93
    :try_start_b0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 95
    :cond_b3
    if-eqz v1, :cond_b8

    .line 96
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b8} :catch_cf

    :cond_b8
    move v0, v5

    move-object v1, v7

    .line 102
    goto :goto_7c

    .line 77
    :cond_bb
    :try_start_bb
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "responseCode is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c9} :catch_15d
    .catchall {:try_start_bb .. :try_end_c9} :catchall_e5

    move-result-object v7

    move-object v1, v2

    move v5, v6

    move-object v3, v2

    move-object v4, v2

    goto :goto_ab

    .line 98
    :catch_cf
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v6

    .line 103
    goto :goto_7c

    .line 98
    :catch_da
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v6

    .line 103
    goto :goto_7c

    .line 91
    :catchall_e5
    move-exception v0

    move-object v5, v2

    .line 92
    :goto_e7
    if-eqz v5, :cond_ec

    .line 93
    :try_start_e9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 95
    :cond_ec
    if-eqz v2, :cond_f1

    .line 96
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_f1} :catch_f2

    .line 102
    :cond_f1
    :goto_f1
    throw v0

    .line 98
    :catch_f2
    move-exception v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_f1

    .line 111
    :cond_fa
    if-eqz v0, :cond_13a

    :try_start_fc
    invoke-static {v4}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 112
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13a

    const-string v0, "<mintegralloadend></mintegralloadend>"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 114
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/e$1;->a:Lcom/mintegral/msdk/videocommon/download/g$b;

    if-eqz v0, :cond_8e

    .line 115
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/e$1;->a:Lcom/mintegral/msdk/videocommon/download/g$b;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/e$1;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/mintegral/msdk/videocommon/download/g$b;->a([BLjava/lang/String;)V
    :try_end_11b
    .catch Ljava/lang/Throwable; {:try_start_fc .. :try_end_11b} :catch_11d

    goto/16 :goto_8e

    .line 123
    :catch_11d
    move-exception v0

    .line 124
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_125

    .line 125
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    :cond_125
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/e$1;->a:Lcom/mintegral/msdk/videocommon/download/g$b;

    if-eqz v1, :cond_8e

    .line 129
    :try_start_129
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/e$1;->a:Lcom/mintegral/msdk/videocommon/download/g$b;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/videocommon/download/g$b;->a(Ljava/lang/String;)V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_132} :catch_134

    goto/16 :goto_8e

    .line 131
    :catch_134
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8e

    .line 118
    :cond_13a
    :try_start_13a
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/e$1;->a:Lcom/mintegral/msdk/videocommon/download/g$b;

    if-eqz v0, :cond_8e

    .line 119
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/e$1;->a:Lcom/mintegral/msdk/videocommon/download/g$b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content write failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/videocommon/download/g$b;->a(Ljava/lang/String;)V
    :try_end_152
    .catch Ljava/lang/Throwable; {:try_start_13a .. :try_end_152} :catch_11d

    goto/16 :goto_8e

    .line 91
    :catchall_154
    move-exception v0

    goto :goto_e7

    :catchall_156
    move-exception v0

    move-object v2, v4

    goto :goto_e7

    :catchall_159
    move-exception v0

    move-object v2, v1

    move-object v5, v3

    goto :goto_e7

    .line 80
    :catch_15d
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_54

    :catch_163
    move-exception v0

    move-object v1, v2

    move-object v3, v5

    move-object v4, v2

    goto/16 :goto_54

    :catch_169
    move-exception v0

    move-object v3, v5

    move-object v10, v4

    move-object v4, v2

    move-object v2, v1

    move-object v1, v10

    goto/16 :goto_54

    :catch_171
    move-exception v0

    goto/16 :goto_54

    :cond_174
    move-object v1, v2

    goto/16 :goto_a3
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 140
    return-void
.end method
