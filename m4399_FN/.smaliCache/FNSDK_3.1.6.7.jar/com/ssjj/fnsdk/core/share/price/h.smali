.class Lcom/ssjj/fnsdk/core/share/price/h;
.super Lcom/ssjj/fnsdk/core/share/process/DownloadTask;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;

.field private final synthetic h:Ljava/lang/String;

.field private final synthetic i:Ljava/lang/String;

.field private final synthetic j:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 8

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/price/h;->a:Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/share/price/h;->h:Ljava/lang/String;

    iput-object p6, p0, Lcom/ssjj/fnsdk/core/share/price/h;->i:Ljava/lang/String;

    iput-object p7, p0, Lcom/ssjj/fnsdk/core/share/price/h;->j:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0, p2, p3, p4}, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Boolean;)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_28

    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/price/h;->h:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/price/h;->i:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/price/h;->i:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/price/h;->j:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v2, :cond_3b

    const/4 v3, 0x0

    if-eqz p1, :cond_36

    const-string p1, "\u4e0b\u8f7d\u6210\u529f"

    invoke-interface {v2, v1, p1, v3}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_3b

    :cond_36
    const-string p1, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-interface {v2, v0, p1, v3}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_3b
    :goto_3b
    return-void
.end method
