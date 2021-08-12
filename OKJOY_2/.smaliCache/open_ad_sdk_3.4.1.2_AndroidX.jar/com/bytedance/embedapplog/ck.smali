.class final Lcom/bytedance/embedapplog/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/embedapplog/cf;


# instance fields
.field private final a:Lcom/bytedance/embedapplog/cf;

.field private b:Lcom/bytedance/embedapplog/bs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/embedapplog/bs<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/embedapplog/ck;-><init>(Lcom/bytedance/embedapplog/cf;)V

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/bytedance/embedapplog/cf;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/bytedance/embedapplog/ck$1;

    invoke-direct {v0, p0}, Lcom/bytedance/embedapplog/ck$1;-><init>(Lcom/bytedance/embedapplog/ck;)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/ck;->b:Lcom/bytedance/embedapplog/bs;

    .line 48
    iput-object p1, p0, Lcom/bytedance/embedapplog/ck;->a:Lcom/bytedance/embedapplog/cf;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/bytedance/embedapplog/ck;Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/ck;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    .line 107
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 109
    if-eqz p1, :cond_14

    .line 110
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_16

    goto :goto_15

    .line 112
    :cond_14
    move-object p1, v0

    .line 117
    :goto_15
    goto :goto_1b

    .line 114
    :catchall_16
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    move-object p1, v0

    .line 119
    :goto_1b
    if-eqz p1, :cond_5b

    array-length v1, p1

    if-lez v1, :cond_5b

    .line 120
    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    .line 122
    :try_start_27
    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 123
    if-eqz v2, :cond_56

    .line 124
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    array-length v3, p1

    :goto_39
    if-ge v1, v3, :cond_51

    aget-byte v4, p1, v1

    .line 127
    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 129
    :cond_51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_55} :catch_57

    return-object p1

    .line 133
    :cond_56
    goto :goto_5b

    .line 131
    :catch_57
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    :cond_5b
    :goto_5b
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .registers 5

    .line 53
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 54
    return v0

    .line 56
    :cond_4
    iget-object v1, p0, Lcom/bytedance/embedapplog/ck;->b:Lcom/bytedance/embedapplog/bs;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/bytedance/embedapplog/bs;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 57
    iget-object v1, p0, Lcom/bytedance/embedapplog/ck;->a:Lcom/bytedance/embedapplog/cf;

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_22

    .line 58
    iget-object v0, p0, Lcom/bytedance/embedapplog/ck;->a:Lcom/bytedance/embedapplog/cf;

    invoke-interface {v0, p1}, Lcom/bytedance/embedapplog/cf;->a(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 60
    :cond_22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;)Lcom/bytedance/embedapplog/cf$a;
    .registers 6

    .line 65
    iget-object v0, p0, Lcom/bytedance/embedapplog/ck;->a:Lcom/bytedance/embedapplog/cf;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bytedance/embedapplog/ck;->b:Lcom/bytedance/embedapplog/bs;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/bs;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 66
    iget-object v0, p0, Lcom/bytedance/embedapplog/ck;->a:Lcom/bytedance/embedapplog/cf;

    invoke-interface {v0, p1}, Lcom/bytedance/embedapplog/cf;->b(Landroid/content/Context;)Lcom/bytedance/embedapplog/cf$a;

    move-result-object p1

    return-object p1

    .line 68
    :cond_1c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.heytap.openid"

    const-string v3, "com.heytap.openid.IdentifyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 70
    const-string v1, "action.com.heytap.openid.OPEN_ID_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    new-instance v1, Lcom/bytedance/embedapplog/cn;

    new-instance v2, Lcom/bytedance/embedapplog/ck$2;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/embedapplog/ck$2;-><init>(Lcom/bytedance/embedapplog/ck;Landroid/content/Context;)V

    invoke-direct {v1, p1, v0, v2}, Lcom/bytedance/embedapplog/cn;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/embedapplog/cn$b;)V

    .line 90
    invoke-virtual {v1}, Lcom/bytedance/embedapplog/cn;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 91
    new-instance v0, Lcom/bytedance/embedapplog/cf$a;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/cf$a;-><init>()V

    .line 92
    iput-object p1, v0, Lcom/bytedance/embedapplog/cf$a;->b:Ljava/lang/String;

    .line 93
    return-object v0
.end method
