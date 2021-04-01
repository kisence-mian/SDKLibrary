.class final enum Lcom/JoyFramework/d/aj$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/JoyFramework/d/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/JoyFramework/d/aj$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/JoyFramework/d/aj$a;

.field public static final enum b:Lcom/JoyFramework/d/aj$a;

.field private static final synthetic c:[Lcom/JoyFramework/d/aj$a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/JoyFramework/d/aj$a;

    const-string v1, "ICON_TYPE"

    invoke-direct {v0, v1, v2}, Lcom/JoyFramework/d/aj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/JoyFramework/d/aj$a;->a:Lcom/JoyFramework/d/aj$a;

    .line 39
    new-instance v0, Lcom/JoyFramework/d/aj$a;

    const-string v1, "RESOURCE_TYPE"

    invoke-direct {v0, v1, v3}, Lcom/JoyFramework/d/aj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/JoyFramework/d/aj$a;->b:Lcom/JoyFramework/d/aj$a;

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/JoyFramework/d/aj$a;

    sget-object v1, Lcom/JoyFramework/d/aj$a;->a:Lcom/JoyFramework/d/aj$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/JoyFramework/d/aj$a;->b:Lcom/JoyFramework/d/aj$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/JoyFramework/d/aj$a;->c:[Lcom/JoyFramework/d/aj$a;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/JoyFramework/d/aj$a;
    .registers 2

    .prologue
    .line 35
    const-class v0, Lcom/JoyFramework/d/aj$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/d/aj$a;

    return-object v0
.end method

.method public static values()[Lcom/JoyFramework/d/aj$a;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/JoyFramework/d/aj$a;->c:[Lcom/JoyFramework/d/aj$a;

    invoke-virtual {v0}, [Lcom/JoyFramework/d/aj$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/JoyFramework/d/aj$a;

    return-object v0
.end method
