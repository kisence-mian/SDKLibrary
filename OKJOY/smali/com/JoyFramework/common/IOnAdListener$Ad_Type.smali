.class public final enum Lcom/JoyFramework/common/IOnAdListener$Ad_Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/JoyFramework/common/IOnAdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ad_Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/JoyFramework/common/IOnAdListener$Ad_Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

.field public static final enum Ad_Type_Banner:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

.field public static final enum Ad_Type_Insert:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

.field public static final enum Ad_Type_Inspire:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

.field public static final enum Ad_Type_Other:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    const-string v1, "Ad_Type_Insert"

    invoke-direct {v0, v1, v2}, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Insert:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    .line 16
    new-instance v0, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    const-string v1, "Ad_Type_Banner"

    invoke-direct {v0, v1, v3}, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Banner:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    .line 17
    new-instance v0, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    const-string v1, "Ad_Type_Inspire"

    invoke-direct {v0, v1, v4}, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Inspire:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    .line 18
    new-instance v0, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    const-string v1, "Ad_Type_Other"

    invoke-direct {v0, v1, v5}, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Other:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Insert:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Banner:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Inspire:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Other:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->$VALUES:[Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/JoyFramework/common/IOnAdListener$Ad_Type;
    .registers 2

    .prologue
    .line 14
    const-class v0, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    return-object v0
.end method

.method public static values()[Lcom/JoyFramework/common/IOnAdListener$Ad_Type;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->$VALUES:[Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-virtual {v0}, [Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    return-object v0
.end method
