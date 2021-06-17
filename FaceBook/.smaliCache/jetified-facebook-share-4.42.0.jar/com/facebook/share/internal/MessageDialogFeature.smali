.class public final enum Lcom/facebook/share/internal/MessageDialogFeature;
.super Ljava/lang/Enum;
.source "MessageDialogFeature.java"

# interfaces
.implements Lcom/facebook/internal/DialogFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/internal/MessageDialogFeature;",
        ">;",
        "Lcom/facebook/internal/DialogFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/internal/MessageDialogFeature;

.field public static final enum MESSAGE_DIALOG:Lcom/facebook/share/internal/MessageDialogFeature;

.field public static final enum MESSENGER_GENERIC_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

.field public static final enum MESSENGER_MEDIA_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

.field public static final enum MESSENGER_OPEN_GRAPH_MUSIC_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

.field public static final enum PHOTOS:Lcom/facebook/share/internal/MessageDialogFeature;

.field public static final enum VIDEO:Lcom/facebook/share/internal/MessageDialogFeature;


# instance fields
.field private minVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 36
    new-instance v0, Lcom/facebook/share/internal/MessageDialogFeature;

    const-string v1, "MESSAGE_DIALOG"

    const/4 v2, 0x0

    const v3, 0x13350ac

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/share/internal/MessageDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/share/internal/MessageDialogFeature;->MESSAGE_DIALOG:Lcom/facebook/share/internal/MessageDialogFeature;

    .line 40
    new-instance v1, Lcom/facebook/share/internal/MessageDialogFeature;

    const-string v3, "PHOTOS"

    const/4 v4, 0x1

    const v5, 0x1335124

    invoke-direct {v1, v3, v4, v5}, Lcom/facebook/share/internal/MessageDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/share/internal/MessageDialogFeature;->PHOTOS:Lcom/facebook/share/internal/MessageDialogFeature;

    .line 44
    new-instance v3, Lcom/facebook/share/internal/MessageDialogFeature;

    const-string v5, "VIDEO"

    const/4 v6, 0x2

    const v7, 0x13354a2

    invoke-direct {v3, v5, v6, v7}, Lcom/facebook/share/internal/MessageDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/facebook/share/internal/MessageDialogFeature;->VIDEO:Lcom/facebook/share/internal/MessageDialogFeature;

    .line 50
    new-instance v5, Lcom/facebook/share/internal/MessageDialogFeature;

    const-string v7, "MESSENGER_GENERIC_TEMPLATE"

    const/4 v8, 0x3

    const v9, 0x133c96b

    invoke-direct {v5, v7, v8, v9}, Lcom/facebook/share/internal/MessageDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_GENERIC_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    .line 56
    new-instance v7, Lcom/facebook/share/internal/MessageDialogFeature;

    const-string v10, "MESSENGER_OPEN_GRAPH_MUSIC_TEMPLATE"

    const/4 v11, 0x4

    invoke-direct {v7, v10, v11, v9}, Lcom/facebook/share/internal/MessageDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_OPEN_GRAPH_MUSIC_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    .line 62
    new-instance v10, Lcom/facebook/share/internal/MessageDialogFeature;

    const-string v12, "MESSENGER_MEDIA_TEMPLATE"

    const/4 v13, 0x5

    invoke-direct {v10, v12, v13, v9}, Lcom/facebook/share/internal/MessageDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_MEDIA_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    .line 31
    const/4 v9, 0x6

    new-array v9, v9, [Lcom/facebook/share/internal/MessageDialogFeature;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v11

    aput-object v10, v9, v13

    sput-object v9, Lcom/facebook/share/internal/MessageDialogFeature;->$VALUES:[Lcom/facebook/share/internal/MessageDialogFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "minVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput p3, p0, Lcom/facebook/share/internal/MessageDialogFeature;->minVersion:I

    .line 69
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/internal/MessageDialogFeature;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lcom/facebook/share/internal/MessageDialogFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/MessageDialogFeature;

    return-object v0
.end method

.method public static values()[Lcom/facebook/share/internal/MessageDialogFeature;
    .registers 1

    .line 31
    sget-object v0, Lcom/facebook/share/internal/MessageDialogFeature;->$VALUES:[Lcom/facebook/share/internal/MessageDialogFeature;

    invoke-virtual {v0}, [Lcom/facebook/share/internal/MessageDialogFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/internal/MessageDialogFeature;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    .line 75
    const-string v0, "com.facebook.platform.action.request.MESSAGE_DIALOG"

    return-object v0
.end method

.method public getMinVersion()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/facebook/share/internal/MessageDialogFeature;->minVersion:I

    return v0
.end method
