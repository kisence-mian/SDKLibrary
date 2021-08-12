.class Lcom/bytedance/embedapplog/cc$1;
.super Lcom/bytedance/embedapplog/bs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embedapplog/cc;
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
.field final synthetic a:Lcom/bytedance/embedapplog/cc;


# direct methods
.method constructor <init>(Lcom/bytedance/embedapplog/cc;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/bytedance/embedapplog/cc$1;->a:Lcom/bytedance/embedapplog/cc;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/bs;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 12
    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/cc$1;->c([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected varargs c([Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 4

    .line 16
    const/4 v0, 0x0

    :try_start_1
    aget-object p1, p1, v0

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 17
    if-eqz p1, :cond_1b

    .line 18
    const-string v1, "com.meizu.flyme.openidsdk"

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    .line 19
    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    move p1, v0

    :goto_16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1c

    return-object p1

    .line 23
    :cond_1b
    goto :goto_1d

    .line 21
    :catch_1c
    move-exception p1

    .line 24
    :goto_1d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
