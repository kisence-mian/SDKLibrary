.class Lcom/sigmob/sdk/videoAd/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/f/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/g;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lcom/sigmob/sdk/base/a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/sigmob/sdk/videoAd/g;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/g;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/g$2;->d:Lcom/sigmob/sdk/videoAd/g;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/g$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p3, p0, Lcom/sigmob/sdk/videoAd/g$2;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/sigmob/sdk/videoAd/g$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/g$2;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sigmob/sdk/common/f/j;->a(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/g$2;->d:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/g;->c(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/g$a;

    move-result-object p1

    if-eqz p1, :cond_4b

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/g$2;->d:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/g;->c(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/g$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/videoAd/g$a;->b_()V
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_32

    goto :goto_4b

    :catchall_32
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/g$2;->d:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/g;->c(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/g$a;

    move-result-object p1

    if-eqz p1, :cond_4b

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/g$2;->d:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/g;->c(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/g$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/videoAd/g$a;->c_()V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/g$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/g$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/g$2;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_15
    :try_start_15
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/g$2;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/g$2;->c:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/j;->a(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/g$2;->d:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/g;->c(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/g$a;

    move-result-object p1

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/g$2;->d:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/g;->c(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/g$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/videoAd/g$a;->b_()V
    :try_end_35
    .catch Lcom/sigmob/sdk/common/c/b; {:try_start_15 .. :try_end_35} :catch_36

    goto :goto_4f

    :catch_36
    move-exception p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/c/b;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/g$2;->d:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/g;->c(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/g$a;

    move-result-object p1

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/g$2;->d:Lcom/sigmob/sdk/videoAd/g;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/g;->c(Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/videoAd/g$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/videoAd/g$a;->c_()V

    :cond_4f
    :goto_4f
    return-void
.end method
