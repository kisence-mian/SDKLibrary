.class public Lcom/qq/e/ads/cfg/SDKSrcConfig;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSdkSrc()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/qq/e/ads/cfg/SDKSrcConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static setSdkSrc(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/qq/e/ads/cfg/SDKSrcConfig;->a:Ljava/lang/String;

    return-void
.end method
