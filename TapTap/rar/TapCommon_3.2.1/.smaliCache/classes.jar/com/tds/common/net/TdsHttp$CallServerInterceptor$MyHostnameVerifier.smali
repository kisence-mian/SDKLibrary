.class Lcom/tds/common/net/TdsHttp$CallServerInterceptor$MyHostnameVerifier;
.super Ljava/lang/Object;
.source "TdsHttp.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/TdsHttp$CallServerInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHostnameVerifier"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/common/net/TdsHttp$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/tds/common/net/TdsHttp$1;

    .line 818
    invoke-direct {p0}, Lcom/tds/common/net/TdsHttp$CallServerInterceptor$MyHostnameVerifier;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 4
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .line 821
    const/4 v0, 0x1

    return v0
.end method
