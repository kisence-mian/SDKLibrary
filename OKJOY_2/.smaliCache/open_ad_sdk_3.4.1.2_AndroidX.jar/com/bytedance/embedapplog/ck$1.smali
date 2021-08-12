.class Lcom/bytedance/embedapplog/ck$1;
.super Lcom/bytedance/embedapplog/bs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embedapplog/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/embedapplog/bs<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/embedapplog/ck;


# direct methods
.method constructor <init>(Lcom/bytedance/embedapplog/ck;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/bytedance/embedapplog/ck$1;->a:Lcom/bytedance/embedapplog/ck;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/bs;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/ck$1;->c([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected varargs c([Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 7

    .line 23
    const/4 v0, 0x0

    :try_start_1
    aget-object p1, p1, v0

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 24
    const-string v1, "com.heytap.openid"

    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 26
    if-nez p1, :cond_16

    .line 27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 30
    :cond_16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_21

    .line 31
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    goto :goto_24

    .line 33
    :cond_21
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v1, p1

    .line 35
    :goto_24
    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-ltz p1, :cond_2c

    const/4 p1, 0x1

    goto :goto_2d

    :cond_2c
    move p1, v0

    :goto_2d
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_32

    return-object p1

    .line 36
    :catchall_32
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
