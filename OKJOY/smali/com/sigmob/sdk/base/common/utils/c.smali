.class public Lcom/sigmob/sdk/base/common/utils/c;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final a:I = 0xa


# instance fields
.field private final b:Lcom/sigmob/sdk/base/common/utils/d;


# direct methods
.method private constructor <init>(Lcom/sigmob/sdk/base/common/utils/d;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/utils/c;->b:Lcom/sigmob/sdk/base/common/utils/d;

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "(fsname=)(.*?apk)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v0

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private static a(Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_18

    const/16 v2, 0x190

    if-ge v1, v2, :cond_18

    :try_start_d
    const-string v0, "Content-Disposition"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_17} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_17} :catch_38

    move-result-object v0

    :cond_18
    return-object v0

    :catch_19
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid URL redirection. baseUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/net/URISyntaxException;

    const-string v1, "Unable to parse invalid URL"

    invoke-direct {v0, p0, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_38
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URL redirection. baseUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/utils/d;)V
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/c;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/common/utils/c;-><init>(Lcom/sigmob/sdk/base/common/utils/d;)V

    const/4 v1, 0x1

    :try_start_6
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/l;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    const-string v1, "Failed to resolve url"

    invoke-interface {p1, v1, v0}, Lcom/sigmob/sdk/base/common/utils/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    move-object v0, p1

    :goto_2
    if-eqz v0, :cond_b

    :try_start_4
    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/c;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_d

    move-result-object p1

    move-object v1, v0

    move-object v0, p1

    goto :goto_2

    :cond_b
    move-object v0, v1

    :goto_c
    return-object v0

    :catch_d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_c
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_37
    .catchall {:try_start_1 .. :try_end_c} :catchall_45

    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    sget-object v2, Lcom/sigmob/sdk/base/c/p;->b:Lcom/sigmob/sdk/base/c/p;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/c/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_26} :catch_54
    .catchall {:try_start_d .. :try_end_26} :catchall_4c

    move-result-object v2

    const/16 v4, 0x12c

    if-lt v3, v4, :cond_30

    const/16 v4, 0x190

    if-ge v3, v4, :cond_30

    move-object v1, v2

    :cond_30
    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    :goto_36
    return-object v0

    :catch_37
    move-exception v0

    move-object v2, v1

    :goto_39
    :try_start_39
    const-string v3, "resolveRedirectLocation fail"

    invoke-static {v3, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_51

    if-eqz v2, :cond_59

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    goto :goto_36

    :catchall_45
    move-exception v0

    :goto_46
    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4b
    throw v0

    :catchall_4c
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_46

    :catchall_51
    move-exception v0

    move-object v1, v2

    goto :goto_46

    :catch_54
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_39

    :cond_59
    move-object v0, v1

    goto :goto_36

    :cond_5b
    move-object v0, v1

    goto :goto_36
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_8c
    .catchall {:try_start_1 .. :try_end_c} :catchall_9a

    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    sget-object v2, Lcom/sigmob/sdk/base/c/p;->b:Lcom/sigmob/sdk/base/c/p;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/c/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "fsname="

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_28} :catch_a9
    .catchall {:try_start_d .. :try_end_28} :catchall_a1

    move-result-object v1

    :cond_29
    :goto_29
    if-eqz v0, :cond_b0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    :goto_2f
    return-object v0

    :cond_30
    :try_start_30
    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/c;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_45

    const-string v3, "fsname="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_43
    move-object v1, v2

    goto :goto_29

    :cond_45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_62

    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v3, v2

    :cond_62
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_74

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    :cond_74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_8a} :catch_a9
    .catchall {:try_start_30 .. :try_end_8a} :catchall_a1

    move-result-object v1

    goto :goto_29

    :catch_8c
    move-exception v0

    move-object v2, v1

    :goto_8e
    :try_start_8e
    const-string v3, "getDownloadUrlFilename"

    invoke-static {v3, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_93
    .catchall {:try_start_8e .. :try_end_93} :catchall_a6

    if-eqz v2, :cond_ae

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    goto :goto_2f

    :catchall_9a
    move-exception v0

    :goto_9b
    if-eqz v1, :cond_a0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a0
    throw v0

    :catchall_a1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_9b

    :catchall_a6
    move-exception v0

    move-object v1, v2

    goto :goto_9b

    :catch_a9
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_8e

    :cond_ae
    move-object v0, v1

    goto :goto_2f

    :cond_b0
    move-object v0, v1

    goto/16 :goto_2f
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :try_start_d
    aget-object v1, p1, v1
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_f} :catch_22

    :try_start_f
    invoke-direct {p0, v1}, Lcom/sigmob/sdk/base/common/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_27

    move-result-object v1

    :goto_13
    :try_start_13
    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/base/common/utils/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fileName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_21} :catch_22

    goto :goto_6

    :catch_22
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :catch_27
    move-exception v2

    :try_start_28
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2f} :catch_22

    goto :goto_13
.end method

.method protected a(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_19

    const-string v0, "fileName"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_13
    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/c;->b:Lcom/sigmob/sdk/base/common/utils/d;

    invoke-interface {v2, v0, v1}, Lcom/sigmob/sdk/base/common/utils/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    move-object v0, v1

    goto :goto_13
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/utils/c;->a([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .registers 4

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/c;->b:Lcom/sigmob/sdk/base/common/utils/d;

    const-string v1, "Task for resolving url was cancelled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/utils/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/utils/c;->a(Ljava/util/HashMap;)V

    return-void
.end method
