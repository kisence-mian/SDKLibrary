.class final Lcom/bytedance/embedapplog/bv;
.super Lcom/bytedance/embedapplog/bt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/embedapplog/bt<",
        "Lcom/bytedance/embedapplog/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 17
    const-string v0, "com.mdid.msa"

    invoke-direct {p0, v0}, Lcom/bytedance/embedapplog/bt;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    const-string v1, "com.mdid.msa"

    const-string v2, "com.mdid.msa.service.MsaKlService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v1, "com.bun.msa.action.start.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v1, "com.bun.msa.param.pkgname"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    :try_start_16
    const-string p2, "com.bun.msa.param.runinset"

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_20

    .line 70
    goto :goto_24

    .line 68
    :catch_20
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    :goto_24
    return-void
.end method


# virtual methods
.method protected a()Lcom/bytedance/embedapplog/cn$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/embedapplog/cn$b<",
            "Lcom/bytedance/embedapplog/a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/bytedance/embedapplog/bv$1;

    invoke-direct {v0, p0}, Lcom/bytedance/embedapplog/bv$1;-><init>(Lcom/bytedance/embedapplog/bv;)V

    return-object v0
.end method

.method public b(Landroid/content/Context;)Lcom/bytedance/embedapplog/cf$a;
    .registers 3

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/bytedance/embedapplog/bv;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    invoke-super {p0, p1}, Lcom/bytedance/embedapplog/bt;->b(Landroid/content/Context;)Lcom/bytedance/embedapplog/cf$a;

    move-result-object p1

    return-object p1
.end method

.method protected c(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    const-string v1, "com.mdid.msa"

    const-string v2, "com.mdid.msa.service.MsaIdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v1, "com.bun.msa.action.bindto.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.bun.msa.param.pkgname"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    return-object v0
.end method
