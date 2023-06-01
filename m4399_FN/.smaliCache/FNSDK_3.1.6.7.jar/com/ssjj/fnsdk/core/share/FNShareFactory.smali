.class public Lcom/ssjj/fnsdk/core/share/FNShareFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/ssjj/fnsdk/core/share/FNShareItem;)V
    .registers 2

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->uid:Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getRoleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->roleId:Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getRoleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->roleName:Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getServerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->serverId:Ljava/lang/String;

    return-void
.end method

.method public static createImage(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/share/FNShareItem;
    .registers 3

    new-instance v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/share/FNShareItem;-><init>()V

    const-string v1, "image"

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareType:Ljava/lang/String;

    iput-object p0, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/FNShareFactory;->a(Lcom/ssjj/fnsdk/core/share/FNShareItem;)V

    return-object v0
.end method

.method public static createImageByUrl(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/share/FNShareItem;
    .registers 3

    new-instance v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/share/FNShareItem;-><init>()V

    const-string v1, "image"

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareType:Ljava/lang/String;

    iput-object p0, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/FNShareFactory;->a(Lcom/ssjj/fnsdk/core/share/FNShareItem;)V

    return-object v0
.end method

.method public static createImageWithText(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/share/FNShareItem;
    .registers 4

    new-instance v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/share/FNShareItem;-><init>()V

    const-string v1, "imageWithText"

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareType:Ljava/lang/String;

    iput-object p0, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->imagePath:Ljava/lang/String;

    iput-object p1, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->desc:Ljava/lang/String;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/FNShareFactory;->a(Lcom/ssjj/fnsdk/core/share/FNShareItem;)V

    return-object v0
.end method

.method public static createLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/share/FNShareItem;
    .registers 6

    new-instance v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/share/FNShareItem;-><init>()V

    const-string v1, "link"

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareType:Ljava/lang/String;

    iput-object p0, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->title:Ljava/lang/String;

    iput-object p1, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->desc:Ljava/lang/String;

    iput-object p2, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->link:Ljava/lang/String;

    iput-object p3, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->thumbPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/FNShareFactory;->a(Lcom/ssjj/fnsdk/core/share/FNShareItem;)V

    return-object v0
.end method

.method public static createText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/share/FNShareItem;
    .registers 3

    new-instance v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/share/FNShareItem;-><init>()V

    const-string v1, "text"

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareType:Ljava/lang/String;

    iput-object p0, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->desc:Ljava/lang/String;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/FNShareFactory;->a(Lcom/ssjj/fnsdk/core/share/FNShareItem;)V

    return-object v0
.end method
