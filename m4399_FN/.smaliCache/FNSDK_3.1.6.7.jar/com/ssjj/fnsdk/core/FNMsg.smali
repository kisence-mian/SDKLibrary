.class public Lcom/ssjj/fnsdk/core/FNMsg;
.super Ljava/lang/Object;


# static fields
.field public static MSG_BIND_DELAY:Ljava/lang/String;

.field public static MSG_BIND_WHEN_PAY:Ljava/lang/String;

.field public static MSG_OAUTH_HAS_BIND:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\u60a8\u5f53\u524d\u4e3a\u6e38\u5ba2\u8d26\u53f7\uff0c\u4e3a\u9632\u6b62\u8d26\u53f7\u4e22\u5931\uff0c\u8bf7\u5148\u7ed1\u5b9a\u5e10\u53f7\u518d\u5145\u503c"

    sput-object v0, Lcom/ssjj/fnsdk/core/FNMsg;->MSG_BIND_WHEN_PAY:Ljava/lang/String;

    const-string v0, "\u60a8\u5f53\u524d\u4e3a\u6e38\u5ba2\u8d26\u53f7\uff0c\u4e3a\u9632\u6b62\u8d26\u53f7\u4e22\u5931\uff0c\u8bf7\u7ed1\u5b9a\u5e10\u53f7"

    sput-object v0, Lcom/ssjj/fnsdk/core/FNMsg;->MSG_BIND_DELAY:Ljava/lang/String;

    const-string v0, "\u8be5\u767b\u5f55\u5e10\u53f7\u5df2\u7ecf\u7ed1\u5b9a\u8fc7\u5176\u4ed6\u6e38\u5ba2\u5e10\u53f7\uff0c\u8bf7\u767b\u5f55\u522b\u7684\u5e10\u53f7\u7ed1\u5b9a"

    sput-object v0, Lcom/ssjj/fnsdk/core/FNMsg;->MSG_OAUTH_HAS_BIND:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
