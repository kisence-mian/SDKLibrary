.class public Lmobi/oneway/export/h/i;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String; = "POST"

.field static final b:Ljava/lang/String; = "GET"

.field static final c:Ljava/lang/String; = "HEAD"

.field static final d:Ljava/lang/String; = "Content-Type"

.field static final e:Ljava/lang/String; = "application/json"

.field static final f:J = 0x3a98L


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Lmobi/oneway/export/h/i;
    .registers 4

    iput-wide p1, p0, Lmobi/oneway/export/h/i;->i:J

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lmobi/oneway/export/h/i;
    .registers 2

    iput-object p1, p0, Lmobi/oneway/export/h/i;->g:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lorg/json/JSONObject;
    .registers 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "GET"

    invoke-virtual {p0, v0}, Lmobi/oneway/export/h/i;->b(Ljava/lang/String;)Lmobi/oneway/export/h/i;

    :try_start_a
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lmobi/oneway/export/h/i;->g:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_18

    :goto_17
    return-object v1

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17
.end method

.method public b(Ljava/lang/String;)Lmobi/oneway/export/h/i;
    .registers 2

    iput-object p1, p0, Lmobi/oneway/export/h/i;->h:Ljava/lang/String;

    return-object p0
.end method
