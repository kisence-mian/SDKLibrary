.class Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Consent update successful."


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/sigmob/windad/consent/WindAdConsentInformation;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/sigmob/windad/consent/ConsentInfoUpdateListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/sigmob/windad/consent/WindAdConsentInformation;Ljava/lang/String;Lcom/sigmob/windad/consent/ConsentInfoUpdateListener;)V
    .registers 5

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateTask;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateTask;->e:Lcom/sigmob/windad/consent/ConsentInfoUpdateListener;

    iput-object p3, p0, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateTask;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateTask;->c:Lcom/sigmob/windad/consent/WindAdConsentInformation;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateResponse;
    .registers 6

    const/4 v3, 0x0

    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2f

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateTask;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateTask;->c:Lcom/sigmob/windad/consent/WindAdConsentInformation;

    iget-object v2, p0, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateTask;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->a(Lcom/sigmob/windad/consent/WindAdConsentInformation;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateResponse;

    const/4 v1, 0x1

    const-string v2, "Consent update successful."

    invoke-direct {v0, v1, v2}, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateResponse;-><init>(ZLjava/lang/String;)V

    :goto_2e
    return-object v0

    :cond_2f
    new-instance v1, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateResponse;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateResponse;-><init>(ZLjava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_3b

    move-object v0, v1

    goto :goto_2e

    :catch_3b
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateResponse;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateResponse;-><init>(ZLjava/lang/String;)V

    goto :goto_2e
.end method

.method private a()Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/sigmob/windad/WindAds;->getVersion()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const-string v0, "unknown"

    goto :goto_4
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8

    const/16 v0, 0x400

    new-array v0, v0, [B

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_e
    :try_start_e
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2e

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1e} :catch_1f
    .catchall {:try_start_e .. :try_end_1e} :catchall_4c

    goto :goto_e

    :catch_1f
    move-exception v0

    :try_start_20
    const-string v1, "ConsentInformation"

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_4c

    const/4 v0, 0x0

    :try_start_2a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_41

    :goto_2d
    return-object v0

    :cond_2e
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_36

    :goto_31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :catch_36
    move-exception v0

    const-string v2, "ConsentInformation"

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :catch_41
    move-exception v1

    const-string v2, "ConsentInformation"

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :catchall_4c
    move-exception v0

    :try_start_4d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    :goto_50
    throw v0

    :catch_51
    move-exception v1

    const-string v2, "ConsentInformation"

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50
.end method


# virtual methods
.method protected a(Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateResponse;)V
    .registers 4

    iget-boolean v0, p1, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateResponse;->a:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateTask;->e:Lcom/sigmob/windad/consent/ConsentInfoUpdateListener;

    iget-object v1, p0, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateTask;->c:Lcom/sigmob/windad/consent/WindAdConsentInformation;

    invoke-virtual {v1}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->getConsentStatus()Lcom/sigmob/windad/consent/ConsentStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/windad/consent/ConsentInfoUpdateListener;->onConsentInfoUpdated(Lcom/sigmob/windad/consent/ConsentStatus;)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateTask;->e:Lcom/sigmob/windad/consent/ConsentInfoUpdateListener;

    iget-object v1, p1, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateResponse;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sigmob/windad/consent/ConsentInfoUpdateListener;->onFailedToUpdateConsentInfo(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateResponse;
    .registers 5

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateTask;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "appId"

    iget-object v2, p0, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateTask;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sdkVersion"

    invoke-direct {p0}, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateTask;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateTask;->a(Ljava/lang/String;)Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateTask;->doInBackground([Ljava/lang/Void;)Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateResponse;

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateTask;->a(Lcom/sigmob/windad/consent/WindAdConsentInformation$ConsentInfoUpdateResponse;)V

    return-void
.end method
