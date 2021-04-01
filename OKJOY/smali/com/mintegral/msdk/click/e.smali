.class public Lcom/mintegral/msdk/click/e;
.super Ljava/lang/Object;
.source "JavaHttpSpider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/click/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/mintegral/msdk/c/a;

.field private c:Ljava/lang/String;

.field private d:Z

.field private final e:I

.field private f:Lcom/mintegral/msdk/click/e$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/mintegral/msdk/click/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/click/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/e;->d:Z

    .line 32
    const/high16 v0, 0x300000

    iput v0, p0, Lcom/mintegral/msdk/click/e;->e:I

    .line 39
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/click/e;->b:Lcom/mintegral/msdk/c/a;

    .line 40
    iget-object v0, p0, Lcom/mintegral/msdk/click/e;->b:Lcom/mintegral/msdk/c/a;

    if-nez v0, :cond_28

    .line 41
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/click/e;->b:Lcom/mintegral/msdk/c/a;

    .line 43
    :cond_28
    return-void
.end method

.method private a(Ljava/io/InputStream;Z)Ljava/lang/String;
    .registers 8

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    if-eqz p2, :cond_e

    .line 226
    :try_start_8
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 228
    :cond_e
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_61
    .catchall {:try_start_8 .. :try_end_18} :catchall_52

    .line 229
    :goto_18
    :try_start_18
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 230
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_22
    .catchall {:try_start_18 .. :try_end_21} :catchall_5e

    goto :goto_18

    .line 233
    :catch_22
    move-exception v0

    move-object v1, v2

    .line 234
    :goto_24
    :try_start_24
    iget-object v2, p0, Lcom/mintegral/msdk/click/e;->f:Lcom/mintegral/msdk/click/e$a;

    if-nez v2, :cond_37

    .line 235
    new-instance v2, Lcom/mintegral/msdk/click/e$a;

    invoke-direct {v2}, Lcom/mintegral/msdk/click/e$a;-><init>()V

    iput-object v2, p0, Lcom/mintegral/msdk/click/e;->f:Lcom/mintegral/msdk/click/e$a;

    .line 236
    iget-object v2, p0, Lcom/mintegral/msdk/click/e;->f:Lcom/mintegral/msdk/click/e$a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mintegral/msdk/click/e$a;->h:Ljava/lang/String;

    .line 238
    :cond_37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_52

    .line 240
    if-eqz v1, :cond_3f

    .line 242
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_4d

    .line 250
    :cond_3f
    :goto_3f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 242
    :cond_44
    :try_start_44
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_3f

    .line 244
    :catch_48
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f

    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f

    .line 240
    :catchall_52
    move-exception v0

    :goto_53
    if-eqz v1, :cond_58

    .line 242
    :try_start_55
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_59

    .line 245
    :cond_58
    :goto_58
    throw v0

    .line 244
    :catch_59
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_58

    .line 240
    :catchall_5e
    move-exception v0

    move-object v1, v2

    goto :goto_53

    .line 233
    :catch_61
    move-exception v0

    goto :goto_24
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZZLcom/mintegral/msdk/base/entity/CampaignEx;)Lcom/mintegral/msdk/click/e$a;
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x300000

    const/4 v4, 0x1

    .line 112
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    move-object v0, v1

    .line 216
    :cond_b
    :goto_b
    return-object v0

    .line 115
    :cond_c
    const-string v0, " "

    const-string v2, "%20"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-static {v2}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    .line 126
    sget-object v0, Lcom/mintegral/msdk/click/e;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcom/mintegral/msdk/click/e$a;

    invoke-direct {v0}, Lcom/mintegral/msdk/click/e$a;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/click/e;->f:Lcom/mintegral/msdk/click/e$a;

    .line 132
    :try_start_23
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2e} :catch_135
    .catchall {:try_start_23 .. :try_end_2e} :catchall_14e

    .line 133
    :try_start_2e
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 137
    if-nez p2, :cond_37

    if-eqz p3, :cond_39

    :cond_37
    if-nez p4, :cond_42

    .line 138
    :cond_39
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_42
    if-eqz p2, :cond_55

    if-eqz p4, :cond_55

    .line 141
    invoke-virtual {p4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getcUA()I

    move-result v1

    .line 142
    if-ne v1, v4, :cond_55

    .line 143
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_55
    if-eqz p3, :cond_68

    if-eqz p4, :cond_68

    .line 147
    invoke-virtual {p4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpUA()I

    move-result v1

    .line 148
    if-ne v1, v4, :cond_68

    .line 149
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_68
    const-string v1, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/mintegral/msdk/click/e;->b:Lcom/mintegral/msdk/c/a;

    invoke-virtual {v1}, Lcom/mintegral/msdk/c/a;->aD()Z

    move-result v1

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/mintegral/msdk/click/e;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_86

    .line 160
    const-string v1, "referer"

    iget-object v3, p0, Lcom/mintegral/msdk/click/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_86
    const v1, 0xea60

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 164
    const v1, 0xea60

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 167
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 170
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 173
    iget-object v1, p0, Lcom/mintegral/msdk/click/e;->f:Lcom/mintegral/msdk/click/e$a;

    const-string v3, "Location"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mintegral/msdk/click/e$a;->a:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/mintegral/msdk/click/e;->f:Lcom/mintegral/msdk/click/e$a;

    const-string v3, "Referer"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mintegral/msdk/click/e$a;->d:Ljava/lang/String;

    .line 175
    iget-object v1, p0, Lcom/mintegral/msdk/click/e;->f:Lcom/mintegral/msdk/click/e$a;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, v1, Lcom/mintegral/msdk/click/e$a;->f:I

    .line 176
    iget-object v1, p0, Lcom/mintegral/msdk/click/e;->f:Lcom/mintegral/msdk/click/e$a;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mintegral/msdk/click/e$a;->b:Ljava/lang/String;

    .line 177
    iget-object v1, p0, Lcom/mintegral/msdk/click/e;->f:Lcom/mintegral/msdk/click/e$a;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    iput v3, v1, Lcom/mintegral/msdk/click/e$a;->e:I

    .line 178
    iget-object v1, p0, Lcom/mintegral/msdk/click/e;->f:Lcom/mintegral/msdk/click/e$a;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mintegral/msdk/click/e$a;->c:Ljava/lang/String;

    .line 180
    sget-object v1, Lcom/mintegral/msdk/click/e;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/mintegral/msdk/click/e;->f:Lcom/mintegral/msdk/click/e$a;

    invoke-virtual {v3}, Lcom/mintegral/msdk/click/e$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "gzip"

    iget-object v3, p0, Lcom/mintegral/msdk/click/e;->f:Lcom/mintegral/msdk/click/e$a;

    iget-object v3, v3, Lcom/mintegral/msdk/click/e$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 185
    iget-object v3, p0, Lcom/mintegral/msdk/click/e;->f:Lcom/mintegral/msdk/click/e$a;

    iget v3, v3, Lcom/mintegral/msdk/click/e$a;->f:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_12a

    iget-boolean v3, p0, Lcom/mintegral/msdk/click/e;->d:Z

    if-eqz v3, :cond_12a

    iget-object v3, p0, Lcom/mintegral/msdk/click/e;->f:Lcom/mintegral/msdk/click/e$a;

    iget v3, v3, Lcom/mintegral/msdk/click/e$a;->e:I

    if-lez v3, :cond_12a

    iget-object v3, p0, Lcom/mintegral/msdk/click/e;->f:Lcom/mintegral/msdk/click/e$a;

    iget v3, v3, Lcom/mintegral/msdk/click/e$a;->e:I

    if-ge v3, v5, :cond_12a

    .line 189
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12a

    const-string v3, ".apk"

    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_105
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_105} :catch_15a
    .catchall {:try_start_2e .. :try_end_105} :catchall_155

    move-result v3

    if-nez v3, :cond_12a

    .line 193
    :try_start_108
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/mintegral/msdk/click/e;->a(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12a

    .line 195
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 196
    if-eqz v3, :cond_12a

    array-length v4, v3

    if-lez v4, :cond_12a

    .line 197
    array-length v3, v3

    if-ge v3, v5, :cond_12a

    .line 198
    iget-object v3, p0, Lcom/mintegral/msdk/click/e;->f:Lcom/mintegral/msdk/click/e$a;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/mintegral/msdk/click/e$a;->g:Ljava/lang/String;
    :try_end_12a
    .catch Ljava/lang/Throwable; {:try_start_108 .. :try_end_12a} :catch_15f
    .catchall {:try_start_108 .. :try_end_12a} :catchall_155

    .line 205
    :cond_12a
    :goto_12a
    :try_start_12a
    iput-object v2, p0, Lcom/mintegral/msdk/click/e;->c:Ljava/lang/String;
    :try_end_12c
    .catch Ljava/lang/Throwable; {:try_start_12a .. :try_end_12c} :catch_15a
    .catchall {:try_start_12a .. :try_end_12c} :catchall_155

    .line 212
    if-eqz v0, :cond_131

    .line 213
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 216
    :cond_131
    iget-object v0, p0, Lcom/mintegral/msdk/click/e;->f:Lcom/mintegral/msdk/click/e$a;

    goto/16 :goto_b

    .line 206
    :catch_135
    move-exception v0

    .line 207
    :goto_136
    :try_start_136
    iget-object v2, p0, Lcom/mintegral/msdk/click/e;->f:Lcom/mintegral/msdk/click/e$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/mintegral/msdk/click/e$a;->h:Ljava/lang/String;

    .line 208
    const-string v0, "http jump"

    const-string v2, "connecting"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/mintegral/msdk/click/e;->f:Lcom/mintegral/msdk/click/e$a;
    :try_end_147
    .catchall {:try_start_136 .. :try_end_147} :catchall_14e

    .line 212
    if-eqz v1, :cond_b

    .line 213
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_b

    .line 212
    :catchall_14e
    move-exception v0

    :goto_14f
    if-eqz v1, :cond_154

    .line 213
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_154
    throw v0

    .line 212
    :catchall_155
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_14f

    .line 206
    :catch_15a
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_136

    :catch_15f
    move-exception v1

    goto :goto_12a
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/e;->d:Z

    .line 36
    return-void
.end method
