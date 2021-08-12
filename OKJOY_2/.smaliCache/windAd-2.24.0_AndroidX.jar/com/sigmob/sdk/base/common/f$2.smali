.class Lcom/sigmob/sdk/base/common/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/f/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/f;->b(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/sigmob/sdk/base/common/f;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/f$2;->d:Lcom/sigmob/sdk/base/common/f;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/f$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/f$2;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/sigmob/sdk/base/common/f$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/f$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/f$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/f$2;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sigmob/sdk/common/f/j;->a(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_20
    .catch Lcom/sigmob/sdk/common/c/b; {:try_start_13 .. :try_end_20} :catch_21

    goto :goto_29

    :catch_21
    move-exception p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/c/b;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_29
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/f$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/f$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/f$2;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_15
    :try_start_15
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/f$2;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/f$2;->c:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/j;->a(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_24
    .catch Lcom/sigmob/sdk/common/c/b; {:try_start_15 .. :try_end_24} :catch_25

    goto :goto_2d

    :catch_25
    move-exception p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/c/b;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_2d
    return-void
.end method
