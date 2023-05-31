.class Lcom/sigmob/volley/toolbox/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/volley/toolbox/m;->a(Ljava/net/URL;Lcom/sigmob/volley/q;)Ljava/net/HttpURLConnection;
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/volley/toolbox/m;


# direct methods
.method constructor <init>(Lcom/sigmob/volley/toolbox/m;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/m$1;->a:Lcom/sigmob/volley/toolbox/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method
