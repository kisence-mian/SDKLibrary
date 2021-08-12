.class Lcom/sigmob/volley/toolbox/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/volley/toolbox/j;->a(Ljava/net/URL;Lcom/sigmob/volley/m;)Ljava/net/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/volley/toolbox/j;


# direct methods
.method constructor <init>(Lcom/sigmob/volley/toolbox/j;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/j$1;->a:Lcom/sigmob/volley/toolbox/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method
