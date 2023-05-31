.class public Lcom/bytedance/sdk/openadsdk/g/d;
.super Ljava/lang/Object;
.source "TTHostNameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field public static final a:Lcom/bytedance/sdk/openadsdk/g/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/g/d;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/g/d;->a:Lcom/bytedance/sdk/openadsdk/g/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 5

    .prologue
    .line 22
    const/4 v0, 0x1

    .line 24
    :try_start_1
    const-string v1, "is.snssdk.com"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "pangolin.snssdk.com"

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 26
    :cond_11
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a([Ljavax/security/cert/Certificate;)Z
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_18} :catch_1a

    move-result v0

    .line 31
    :cond_19
    :goto_19
    return v0

    .line 29
    :catch_1a
    move-exception v1

    goto :goto_19
.end method
