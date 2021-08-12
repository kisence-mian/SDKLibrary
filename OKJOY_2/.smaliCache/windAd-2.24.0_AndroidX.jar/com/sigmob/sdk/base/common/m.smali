.class public Lcom/sigmob/sdk/base/common/m;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/common/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/sigmob/sdk/base/common/m$a;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    return-object v0

    :cond_17
    invoke-static {p0}, Lcom/sigmob/sdk/base/common/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    return-object p0

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 6

    const-string v0, "Invalid URL redirection. baseUrl="

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xc8

    if-lt v1, v3, :cond_4d

    const/16 v3, 0x190

    if-ge v1, v3, :cond_4d

    :try_start_f
    const-string v1, "Content-Disposition"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_19} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    throw p1

    :catch_30
    move-exception p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    new-instance p1, Ljava/net/URISyntaxException;

    const-string v0, "Unable to parse invalid URL"

    invoke-direct {p1, p0, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_4d
    return-object v2
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "(fsname=)(.*?apk)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object p0

    :catchall_16
    move-exception p0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "[\\w\\.]+\\.apk"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-object p0

    :catchall_17
    move-exception p0

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_14

    :try_start_3
    invoke-static {p1}, Lcom/sigmob/sdk/base/common/m;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_1

    :catchall_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_15

    :cond_14
    move-object p1, v0

    :goto_15
    return-object p1
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_38

    const/4 v1, 0x0

    :try_start_d
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    sget-object v1, Lcom/sigmob/sdk/common/e/i;->b:Lcom/sigmob/sdk/common/e/i;

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/e/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const-string v2, "Location"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_36

    const/16 v3, 0x12c

    if-lt v1, v3, :cond_30

    const/16 v3, 0x190

    if-ge v1, v3, :cond_30

    move-object v0, v2

    :cond_30
    if-eqz p0, :cond_42

    :goto_32
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_42

    :catchall_36
    move-exception v1

    goto :goto_3a

    :catchall_38
    move-exception v1

    move-object p0, v0

    :goto_3a
    :try_start_3a
    const-string v2, "resolveRedirectLocation fail"

    invoke-static {v2, v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_43

    if-eqz p0, :cond_42

    goto :goto_32

    :cond_42
    :goto_42
    return-object v0

    :catchall_43
    move-exception v0

    if-eqz p0, :cond_49

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_49
    throw v0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_90

    :cond_d
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_99

    const/4 v2, 0x0

    :try_start_19
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    sget-object v2, Lcom/sigmob/sdk/common/e/i;->b:Lcom/sigmob/sdk/common/e/i;

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/e/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/sigmob/sdk/base/common/m;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_97

    const-string v3, ".apk"

    if-eqz v2, :cond_4c

    :try_start_31
    const-string v4, "fsname="

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8f

    :cond_3e
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_49

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8f

    :cond_49
    move-object v0, v1

    move-object p1, v2

    goto :goto_90

    :cond_4c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8e

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_68

    array-length v2, v4

    sub-int/2addr v2, v6

    aget-object v2, v4, v2

    :cond_68
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_78

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8e

    :cond_78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_8d
    .catchall {:try_start_31 .. :try_end_8d} :catchall_97

    goto :goto_8f

    :cond_8e
    move-object p1, v0

    :goto_8f
    move-object v0, v1

    :goto_90
    if-eqz v0, :cond_95

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_95
    move-object v0, p1

    goto :goto_a5

    :catchall_97
    move-exception p1

    goto :goto_9b

    :catchall_99
    move-exception p1

    move-object v1, v0

    :goto_9b
    :try_start_9b
    const-string v2, "getDownloadUrlFilename"

    invoke-static {v2, p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a0
    .catchall {:try_start_9b .. :try_end_a0} :catchall_a6

    if-eqz v1, :cond_a5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a5
    :goto_a5
    return-object v0

    :catchall_a6
    move-exception p1

    if-eqz v1, :cond_ac

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ac
    throw p1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_33

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_33

    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :try_start_c
    aget-object p1, p1, v1
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_2a

    :try_start_e
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_13

    goto :goto_1b

    :catchall_13
    move-exception v1

    :try_start_14
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_1b
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/m;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "fileName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_2a

    goto :goto_32

    :catchall_2a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_32
    return-object v0

    :cond_33
    :goto_33
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    const-string v0, "fileName"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_15

    :cond_14
    move-object p1, v0

    :goto_15
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/m;->a:Lcom/sigmob/sdk/base/common/m$a;

    invoke-interface {v1, v0, p1}, Lcom/sigmob/sdk/base/common/m$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/m;->a([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .registers 4

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/m;->a:Lcom/sigmob/sdk/base/common/m$a;

    const-string v1, "Task for resolving url was cancelled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/m$a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/m;->a(Ljava/util/HashMap;)V

    return-void
.end method
