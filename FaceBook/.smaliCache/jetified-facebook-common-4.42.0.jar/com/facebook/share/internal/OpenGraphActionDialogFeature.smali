.class public final enum Lcom/facebook/share/internal/OpenGraphActionDialogFeature;
.super Ljava/lang/Enum;
.source "OpenGraphActionDialogFeature.java"

# interfaces
.implements Lcom/facebook/internal/DialogFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/internal/OpenGraphActionDialogFeature;",
        ">;",
        "Lcom/facebook/internal/DialogFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/internal/OpenGraphActionDialogFeature;

.field public static final enum OG_ACTION_DIALOG:Lcom/facebook/share/internal/OpenGraphActionDialogFeature;


# instance fields
.field private minVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 36
    new-instance v0, Lcom/facebook/share/internal/OpenGraphActionDialogFeature;

    const-string v1, "OG_ACTION_DIALOG"

    const/4 v2, 0x0

    const v3, 0x1332b3a

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/share/internal/OpenGraphActionDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/share/internal/OpenGraphActionDialogFeature;->OG_ACTION_DIALOG:Lcom/facebook/share/internal/OpenGraphActionDialogFeature;

    .line 31
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/share/internal/OpenGraphActionDialogFeature;

    aput-object v0, v1, v2

    sput-object v1, Lcom/facebook/share/internal/OpenGraphActionDialogFeature;->$VALUES:[Lcom/facebook/share/internal/OpenGraphActionDialogFeature;

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

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/facebook/share/internal/OpenGraphActionDialogFeature;->minVersion:I

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/internal/OpenGraphActionDialogFeature;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lcom/facebook/share/internal/OpenGraphActionDialogFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/OpenGraphActionDialogFeature;

    return-object v0
.end method

.method public static values()[Lcom/facebook/share/internal/OpenGraphActionDialogFeature;
    .registers 1

    .line 31
    sget-object v0, Lcom/facebook/share/internal/OpenGraphActionDialogFeature;->$VALUES:[Lcom/facebook/share/internal/OpenGraphActionDialogFeature;

    invoke-virtual {v0}, [Lcom/facebook/share/internal/OpenGraphActionDialogFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/internal/OpenGraphActionDialogFeature;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    .line 48
    const-string v0, "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

    return-object v0
.end method

.method public getMinVersion()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/facebook/share/internal/OpenGraphActionDialogFeature;->minVersion:I

    return v0
.end method
