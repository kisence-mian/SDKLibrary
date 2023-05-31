.class public final enum Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/JoyFramework/remote/bean/MoreGameItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MoreGameItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;

.field public static final enum b:Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;

.field private static final synthetic c:[Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    new-instance v0, Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;

    const-string v1, "PIC_TYPE"

    invoke-direct {v0, v1, v2}, Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;->a:Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;

    .line 99
    new-instance v0, Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;

    const-string v1, "VIDEO_TYPE"

    invoke-direct {v0, v1, v3}, Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;->b:Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;

    sget-object v1, Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;->a:Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;->b:Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;->c:[Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;

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
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;
    .registers 2

    .prologue
    .line 97
    const-class v0, Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;

    return-object v0
.end method

.method public static values()[Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;
    .registers 1

    .prologue
    .line 97
    sget-object v0, Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;->c:[Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;

    invoke-virtual {v0}, [Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;

    return-object v0
.end method
