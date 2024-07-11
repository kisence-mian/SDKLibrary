.class public final enum Lcom/facebook/share/internal/AppInviteDialogFeature;
.super Ljava/lang/Enum;
.source "AppInviteDialogFeature.java"

# interfaces
.implements Lcom/facebook/internal/DialogFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/internal/AppInviteDialogFeature;",
        ">;",
        "Lcom/facebook/internal/DialogFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/internal/AppInviteDialogFeature;

.field public static final enum APP_INVITES_DIALOG:Lcom/facebook/share/internal/AppInviteDialogFeature;


# instance fields
.field private minVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 34
    new-instance v0, Lcom/facebook/share/internal/AppInviteDialogFeature;

    const-string v1, "APP_INVITES_DIALOG"

    const/4 v2, 0x0

    const v3, 0x133529d

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/share/internal/AppInviteDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/share/internal/AppInviteDialogFeature;->APP_INVITES_DIALOG:Lcom/facebook/share/internal/AppInviteDialogFeature;

    .line 31
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/share/internal/AppInviteDialogFeature;

    aput-object v0, v1, v2

    sput-object v1, Lcom/facebook/share/internal/AppInviteDialogFeature;->$VALUES:[Lcom/facebook/share/internal/AppInviteDialogFeature;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/facebook/share/internal/AppInviteDialogFeature;->minVersion:I

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/internal/AppInviteDialogFeature;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lcom/facebook/share/internal/AppInviteDialogFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/AppInviteDialogFeature;

    return-object v0
.end method

.method public static values()[Lcom/facebook/share/internal/AppInviteDialogFeature;
    .registers 1

    .line 31
    sget-object v0, Lcom/facebook/share/internal/AppInviteDialogFeature;->$VALUES:[Lcom/facebook/share/internal/AppInviteDialogFeature;

    invoke-virtual {v0}, [Lcom/facebook/share/internal/AppInviteDialogFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/internal/AppInviteDialogFeature;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    .line 43
    const-string v0, "com.facebook.platform.action.request.APPINVITES_DIALOG"

    return-object v0
.end method

.method public getMinVersion()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/facebook/share/internal/AppInviteDialogFeature;->minVersion:I

    return v0
.end method
