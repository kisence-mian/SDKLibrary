.class public Lcom/facebook/bidding/a/c/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Lcom/facebook/bidding/a/h/a/g;
    .registers 4

    invoke-static {p0}, Lcom/facebook/bidding/a/i/a;->a(Landroid/content/Context;)Lcom/facebook/bidding/a/h/a/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/facebook/bidding/a/h/a/a;->a(I)V

    invoke-static {}, Lcom/facebook/bidding/a/c/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v0, "application/x-www-form-urlencoded;charset=UTF-8"

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/bidding/a/h/a/a;->a(Ljava/lang/String;Ljava/lang/String;[B)Lcom/facebook/bidding/a/h/a/g;

    move-result-object p0

    return-object p0
.end method

.method private static a()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/facebook/ads/AdSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "https://an.facebook.com/placementbid.ortb"

    goto :goto_15

    :cond_d
    const-string v1, "https://an.%s.facebook.com/placementbid.ortb"

    const-string v2, "%s"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0
.end method
