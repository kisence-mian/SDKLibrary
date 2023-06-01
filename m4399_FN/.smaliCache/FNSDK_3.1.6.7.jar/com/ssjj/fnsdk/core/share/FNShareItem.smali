.class public Lcom/ssjj/fnsdk/core/share/FNShareItem;
.super Lcom/ssjj/fnsdk/core/SsjjFNParams;


# static fields
.field public static final TYPE_IMAGE:Ljava/lang/String; = "image"

.field public static final TYPE_IMAGE_WITH_TEXT:Ljava/lang/String; = "imageWithText"

.field public static final TYPE_LINK:Ljava/lang/String; = "link"

.field public static final TYPE_TEXT:Ljava/lang/String; = "text"

.field private static final serialVersionUID:J = 0x235745726fe9a47dL


# instance fields
.field public action:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public imagePath:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field public roleId:Ljava/lang/String;

.field public roleName:Ljava/lang/String;

.field public serverId:Ljava/lang/String;

.field public shareScene:Ljava/lang/String;

.field public shareTo:Ljava/lang/String;

.field public shareType:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public thumbPath:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareType:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareTo:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareScene:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->uid:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->roleId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->roleName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->serverId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->action:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->link:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->imagePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->imageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->thumbPath:Ljava/lang/String;

    return-void
.end method
