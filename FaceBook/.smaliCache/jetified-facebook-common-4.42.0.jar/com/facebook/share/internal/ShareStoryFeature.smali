.class public final enum Lcom/facebook/share/internal/ShareStoryFeature;
.super Ljava/lang/Enum;
.source "ShareStoryFeature.java"

# interfaces
.implements Lcom/facebook/internal/DialogFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/internal/ShareStoryFeature;",
        ">;",
        "Lcom/facebook/internal/DialogFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/internal/ShareStoryFeature;

.field public static final enum SHARE_STORY_ASSET:Lcom/facebook/share/internal/ShareStoryFeature;


# instance fields
.field private minVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 14
    new-instance v0, Lcom/facebook/share/internal/ShareStoryFeature;

    const-string v1, "SHARE_STORY_ASSET"

    const/4 v2, 0x0

    const v3, 0x133c6b1

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/share/internal/ShareStoryFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/share/internal/ShareStoryFeature;->SHARE_STORY_ASSET:Lcom/facebook/share/internal/ShareStoryFeature;

    .line 13
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/share/internal/ShareStoryFeature;

    aput-object v0, v1, v2

    sput-object v1, Lcom/facebook/share/internal/ShareStoryFeature;->$VALUES:[Lcom/facebook/share/internal/ShareStoryFeature;

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

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/facebook/share/internal/ShareStoryFeature;->minVersion:I

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/internal/ShareStoryFeature;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 13
    const-class v0, Lcom/facebook/share/internal/ShareStoryFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/ShareStoryFeature;

    return-object v0
.end method

.method public static values()[Lcom/facebook/share/internal/ShareStoryFeature;
    .registers 1

    .line 13
    sget-object v0, Lcom/facebook/share/internal/ShareStoryFeature;->$VALUES:[Lcom/facebook/share/internal/ShareStoryFeature;

    invoke-virtual {v0}, [Lcom/facebook/share/internal/ShareStoryFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/internal/ShareStoryFeature;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    .line 27
    const-string v0, "com.facebook.platform.action.request.SHARE_STORY"

    return-object v0
.end method

.method public getMinVersion()I
    .registers 2

    .line 35
    iget v0, p0, Lcom/facebook/share/internal/ShareStoryFeature;->minVersion:I

    return v0
.end method
